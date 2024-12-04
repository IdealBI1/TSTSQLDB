
CREATE PROCEDURE [DW].[usp_Update_Dim_SalesTransaction]

/****************************************************************************
* Name:		usp_Update_Dim_SalesTransaction
* Author:	Sameh Hassan
* Desc:		Inserts/updates the SalesTransaction dimension
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

If Not Exists (Select Dim_SalesTransaction_key From DW.Dim_SalesTransaction Where Dim_SalesTransaction_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_SalesTransaction On
	Insert Into DW.Dim_SalesTransaction ([Dim_SalesTransaction_Key], [TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_SalesTransaction_Key]
			, 'Unk'								As [TransactionType]
			, 0									As [TransactionNumber]
			, '1999-12-31'						As [TransactionDate]
			, -1								As [Dim_Date_Key]
			, 0									As [ValueIncGST]
			, 'Unknown'							As [OrderNumber]
			, 'U'								As [HasDebitNote]
			, 'U'								As [HasCreditNote]
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_SalesTransaction Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Max(Dim_UpdateDateTime), '2000-01-01')
From	[DW].Dim_SalesTransaction (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_SalesTransaction
Select	*
Into	#Dim_SalesTransaction
From	[DW].Dim_SalesTransaction
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_SalesTransaction ([TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])
Select	[TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], Latest_Dim_InsertDateTime
  FROM [DW].[Dim_SalesTransaction_v]
Where	Latest_Dim_InsertDateTime >= @Dim_UpdateDateTime

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[TransactionType]
		, [TransactionNumber]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[TransactionType]
			, [TransactionNumber]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_SalesTransaction T2
				Where	T2.[TransactionType] = #Dim_SalesTransaction.[TransactionType]
						And T2.[TransactionNumber] = #Dim_SalesTransaction.[TransactionNumber]
						And T2.[Dim_Type2HashDiff] <> #Dim_SalesTransaction.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_SalesTransaction.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_SalesTransaction
	) x
Group By [TransactionType]
		, [TransactionNumber]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_SalesTransaction_Final
SELECT	#Dim_SalesTransaction.TransactionType
		, #Dim_SalesTransaction.TransactionNumber
		, TransactionDate
		, Dim_Date_Key
		, ValueIncGST
		, OrderNumber
		, HasDebitNote
		, HasCreditNote
		, Dim_SourceSystem
		, Dim_Type1HashDiff
		, #Dim_SalesTransaction.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) 
			From #Dim_SalesTransaction D 
			Where D.TransactionType = #Dim_SalesTransaction.TransactionType
				And D.TransactionNumber = #Dim_SalesTransaction.TransactionNumber
			) As First_Dim_EffectiveFrom
Into	#Dim_SalesTransaction_Final
From	#Dim_SalesTransaction
		Join #ChangeDates
			On #Dim_SalesTransaction.TransactionType = #ChangeDates.TransactionType
			And #Dim_SalesTransaction.TransactionNumber = #ChangeDates.TransactionNumber
			And #Dim_SalesTransaction.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_SalesTransaction.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo

Begin Try
Begin Transaction

	-- Check for New SalesTransactions OR SalesTransactions with Type I Change only
	Merge	[DW].Dim_SalesTransaction As T -- Merge Target 
    Using	(Select		*
				From	#Dim_SalesTransaction_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the SalesTransaction record
				On T.TransactionType = S.TransactionType 
				And T.TransactionNumber = S.TransactionNumber 
				And T.Dim_EffectiveTo = '9999-12-31'
	
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.TransactionDate = S.TransactionDate
			, T.Dim_Date_Key = S.Dim_Date_Key
			, T.ValueIncGST = S.ValueIncGST
			, T.OrderNumber = S.OrderNumber
			, T.HasDebitNote = S.HasDebitNote
			, T.HasCreditNote = S.HasCreditNote
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New SalesTransaction
	Then Insert ([TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Values ([TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

DROP TABLE If Exists #Dim_SalesTransaction_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By [TransactionType], [TransactionNumber]) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By [TransactionType], [TransactionNumber] Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_SalesTransaction_Type2
From	#Dim_SalesTransaction_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom

	-- Check for SalesTransactions with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedTransactionType VARCHAR(3), UpdatedTransactionNumber float)

		Merge	[DW].Dim_SalesTransaction As T -- Merge Target 
		Using	(Select	*
				From #Dim_SalesTransaction_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.TransactionType = S.TransactionType 
				And T.TransactionNumber = S.TransactionNumber 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.TransactionType As UpdatedTransactionType
				, Inserted.TransactionNumber As UpdatedTransactionNumber
		Into @SummaryOfChanges
	;

	-- Insert New Instances for SalesTransactions updated by a Type II change
	Insert Into DW.Dim_SalesTransaction ([TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [TransactionType], [TransactionNumber], [TransactionDate], [Dim_Date_Key], [ValueIncGST], [OrderNumber], [HasDebitNote], [HasCreditNote], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	From	#Dim_SalesTransaction_Type2
			Join @SummaryOfChanges
				On TransactionType = UpdatedTransactionType
				And TransactionNumber = UpdatedTransactionNumber

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

