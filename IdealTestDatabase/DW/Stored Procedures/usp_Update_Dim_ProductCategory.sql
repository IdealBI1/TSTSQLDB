
CREATE PROCEDURE [DW].[usp_Update_Dim_ProductCategory]

/****************************************************************************
* Name:		usp_Update_Dim_ProductCategory
* Author:	Sameh Hassan
* Desc:		Inserts/updates the ProductCategory dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
****************************************************************************/

As

If Not Exists (Select Dim_ProductCategory_key From DW.Dim_ProductCategory Where Dim_ProductCategory_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_ProductCategory On
	Insert Into DW.Dim_ProductCategory ([Dim_ProductCategory_Key], [Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_ProductCategory_Key]
			, '0'								As [Incat]
			, '0'								As [CategoryCode]
			, 'Unknown'							As [CategoryDescription]
			, '0'								As [SubCategoryCode]
			, 'Unknown'							As [SubCategoryDescription]
			, 'Unk'								As [MagnitudeCode]
			, 'Unknown'							As MagnitudeClassification
			, 0									As CategoryRebatePCT
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_ProductCategory Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Max(Dim_UpdateDateTime), '2000-01-01')
From	[DW].Dim_ProductCategory (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_ProductCategory
Select	*
Into	#Dim_ProductCategory
From	[DW].Dim_ProductCategory
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_ProductCategory ([Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])
Select	[Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], Latest_Dim_InsertDateTime
  FROM [DW].[Dim_ProductCategory_v]
Where	Latest_Dim_InsertDateTime >= @Dim_UpdateDateTime

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[Incat]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[Incat]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_ProductCategory T2
				Where	T2.Incat = #Dim_ProductCategory.Incat
						And T2.[Dim_Type2HashDiff] <> #Dim_ProductCategory.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_ProductCategory.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_ProductCategory
	) x
Group By [Incat]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_ProductCategory_Final
SELECT	#Dim_ProductCategory.[Incat]
		, CategoryCode
		, CategoryDescription
		, SubCategoryCode
		, SubCategoryDescription
		, MagnitudeCode
		, MagnitudeClassification
		, CategoryRebatePCT
		, Dim_SourceSystem
		, Dim_Type1HashDiff
		, #Dim_ProductCategory.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) From #Dim_ProductCategory D Where D.Incat = #Dim_ProductCategory.Incat) As First_Dim_EffectiveFrom
Into	#Dim_ProductCategory_Final
From	#Dim_ProductCategory
		Join #ChangeDates
			On #Dim_ProductCategory.Incat = #ChangeDates.Incat
			And #Dim_ProductCategory.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_ProductCategory.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo

Begin Try
Begin Transaction

	-- Check for New ProductCategorys OR ProductCategorys with Type I Change only
	Merge	[DW].Dim_ProductCategory As T -- Merge Target 
    Using	(Select		*
				From	#Dim_ProductCategory_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the ProductCategory record
				On T.Incat = S.Incat 
				And T.Dim_EffectiveTo = '9999-12-31'
	
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.CategoryCode = S.CategoryCode
			, T.CategoryDescription = S.CategoryDescription
			, T.SubCategoryCode = S.SubCategoryCode
			, T.SubCategoryDescription = S.SubCategoryDescription
			, T.MagnitudeCode = S.MagnitudeCode
			, T.MagnitudeClassification = S.MagnitudeClassification
			, T.CategoryRebatePCT = S.CategoryRebatePCT
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New ProductCategory
	Then Insert ([Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Values (S.[Incat], S.[CategoryCode], S.[CategoryDescription], S.[SubCategoryCode], S.[SubCategoryDescription], S.[MagnitudeCode], S.[MagnitudeClassification], S.[CategoryRebatePCT], S.[Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

DROP TABLE If Exists #Dim_ProductCategory_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By Incat) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By Incat Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_ProductCategory_Type2
From	#Dim_ProductCategory_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom
		Or Dim_Type2HashDiff not in (Select Dim_Type2HashDiff From [DW].[Dim_ProductCategory] Where Incat = #Dim_ProductCategory_Final.Incat And  Dim_EffectiveTo = '9999-12-31')

	-- Check for ProductCategorys with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedProductCategory int)

		Merge	[DW].Dim_ProductCategory As T -- Merge Target 
		Using	(Select	*
				From #Dim_ProductCategory_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.Incat = S.Incat 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.Incat As UpdatedProductCategory
		Into @SummaryOfChanges
	;

	-- Insert New Instances for ProductCategorys updated by a Type II change
	Insert Into DW.Dim_ProductCategory ([Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [Incat], [CategoryCode], [CategoryDescription], [SubCategoryCode], [SubCategoryDescription], [MagnitudeCode], [MagnitudeClassification], [CategoryRebatePCT], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	From	#Dim_ProductCategory_Type2
			Join @SummaryOfChanges
				On Incat = UpdatedProductCategory
Commit
End Try
 
Begin Catch
 
  IF @@TRANCOUNT > 0
     Rollback
 
	Declare @ERROR_MESSAGE nvarchar(1000) = ERROR_MESSAGE()
			, @ERROR_SEVERITY int = ERROR_SEVERITY()

	Raiserror (@ERROR_MESSAGE, @ERROR_SEVERITY, -1) With Nowait

       Return;
END Catch

