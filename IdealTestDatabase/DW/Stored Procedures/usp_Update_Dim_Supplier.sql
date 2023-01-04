
CREATE PROCEDURE [DW].[usp_Update_Dim_Supplier]

/****************************************************************************
* Name:		usp_Update_Dim_Supplier
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Supplier dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		Oct 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	04/10/2022	Sameh Hassan    Created SP
******************************************************************************/

As

If Not Exists (Select Dim_Supplier_key From DW.Dim_Supplier Where Dim_Supplier_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Supplier On
	Insert Into DW.Dim_Supplier ([Dim_Supplier_Key], [SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_Supplier_Key]
			, 0									As [SupplierNumber]
			, 'Unknown'							As [SupplierSortKey]
			, 'Unknown'							As [SupplierName]
			, 'Unkn'							As [KissAndKindInd]
			, 'Unknown'							As [AddressLine1]
			, 'Unknown'							As [AddressLine2]
			, 'Unknown'							As [AddressLine3]
			, 'Unknown'							As [Phone]
			, 'Unknown'							As [Mobile]
			, Cast ('2000-01-01' As datetime2)	As [StartDate]
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_Supplier Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Max(Dim_UpdateDateTime), '2000-01-01')
From	[DW].Dim_Supplier (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_Supplier
Select	*
Into	#Dim_Supplier
From	[DW].Dim_Supplier
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_Supplier ([SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])

SELECT [SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Latest_Dim_InsertDateTime]
  FROM [DW].[Dim_Supplier_v]
Where	Latest_Dim_InsertDateTime > @Dim_UpdateDateTime

-- Remove records older than the current effective from date
Delete	#Dim_Supplier
From	#Dim_Supplier
		Join (Select SupplierNumber, Dim_EffectiveFrom
					From DW.Dim_Supplier
					Where Dim_EffectiveTo = '9999-12-31') Dim_Supplier
			On #Dim_Supplier.SupplierNumber = Dim_Supplier.SupplierNumber
Where	#Dim_Supplier.Dim_EffectiveFrom <= Dim_Supplier.Dim_EffectiveFrom

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[SupplierNumber]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[SupplierNumber]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_Supplier T2
				Where	T2.SupplierNumber = #Dim_Supplier.SupplierNumber
						And T2.[Dim_Type2HashDiff] <> #Dim_Supplier.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_Supplier.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_Supplier
	) x
Group By [SupplierNumber]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_Supplier_Final
SELECT	#Dim_Supplier.[SupplierNumber]
		, [SupplierSortKey]
		, [SupplierName]
        , [KissAndKindInd]
		, [AddressLine1]
		, [AddressLine2]
		, [AddressLine3]
		, [Phone]
		, [Mobile]
        , [StartDate]
		, [Dim_SourceSystem]
		, [Dim_Type1HashDiff]
		, #Dim_Supplier.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) From #Dim_Supplier D Where D.SupplierNumber = #Dim_Supplier.SupplierNumber) As First_Dim_EffectiveFrom
Into	#Dim_Supplier_Final
From	#Dim_Supplier
		Join #ChangeDates
			On #Dim_Supplier.SupplierNumber = #ChangeDates.SupplierNumber
			And #Dim_Supplier.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_Supplier.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo

Print 'Start Merge'

Begin Try
Begin Transaction

	-- Check for New Suppliers OR Suppliers with Type I Change only
	Merge	[DW].Dim_Supplier As T -- Merge Target 
    Using	(Select		*
				From	#Dim_Supplier_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the Supplier record
				On T.SupplierNumber = S.SupplierNumber 
				And T.Dim_EffectiveTo = '9999-12-31'
	
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.SupplierName = S.SupplierName
            , T.KissAndKindInd = S.KissAndKindInd
			, T.AddressLine1 = S.AddressLine1
			, T.AddressLine2 = S.AddressLine2
			, T.AddressLine3 = S.AddressLine3
			, T.Phone = S.Phone
			, T.Mobile = S.Mobile
			, T.StartDate = S.StartDate
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New Supplier
	Then Insert ([SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
		Values (S.[SupplierNumber], S.[SupplierSortKey], S.[SupplierName], S.[KissAndKindInd], S.[AddressLine1], S.[AddressLine2], S.[AddressLine3], S.[Phone], S.[Mobile], S.[StartDate], S.[Dim_SourceSystem], S.[Dim_Type1HashDiff], S.[Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

Print 'Start Merge2'

DROP TABLE If Exists #Dim_Supplier_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By SupplierNumber) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By SupplierNumber Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_Supplier_Type2
From	#Dim_Supplier_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom
--********* Following line added on 16/08/22 to fix an issue with missing Type 2 updates
		Or Dim_Type2HashDiff not in (Select Dim_Type2HashDiff From [DW].[Dim_Supplier] Where SupplierNumber = #Dim_Supplier_Final.SupplierNumber And  Dim_EffectiveTo = '9999-12-31')

	-- Check for Suppliers with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedSupplier int)

		Merge	[DW].Dim_Supplier As T -- Merge Target 
		Using	(Select	*
				From #Dim_Supplier_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.SupplierNumber = S.SupplierNumber 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.SupplierNumber As UpdatedSupplier
		Into @SummaryOfChanges
	;

	-- Insert New Instances for Suppliers updated by a Type II change
	Insert Into DW.Dim_Supplier ([SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [SupplierNumber], [SupplierSortKey], [SupplierName], [KissAndKindInd], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Mobile], [StartDate], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	
	From	#Dim_Supplier_Type2
			Join @SummaryOfChanges
				On SupplierNumber = UpdatedSupplier

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

