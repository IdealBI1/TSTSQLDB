
CREATE PROCEDURE [DW].[usp_Update_Dim_Customer]

/****************************************************************************
* Name:		usp_Update_Dim_Customer
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Customer dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
** 02	16/08/2022	Sameh HAssan	Fixed an issue with missing Type 2 updates
******************************************************************************/

As

If Not Exists (Select Dim_Customer_key From DW.Dim_Customer Where Dim_Customer_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Customer On
	Insert Into DW.Dim_Customer ([Dim_Customer_Key], [CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_Customer_Key]
			, 0									As [CustomerNumber]
			, 'Unknown'							As [CustomerSortKey]
			, 'Unknown'							As [CustomerName]
			, 'Unknown'							As [AddressLine1]
			, 'Unknown'							As [AddressLine2]
			, 'Unknown'							As [AddressLine3]
			, 'Unknown'							As [Contact]
			, 'Unknown'							As [Phone]
			, 'Unknown'							As [Mobile]
			, 'Unkn'							As [PostCode]
			, 'Unknown'							As [ContactEmail]
			, 'Unknown'							As [InvoiceEmail]
			, 0									As [CurrentBalance]
			, Cast ('2000-01-01' As datetime2)	As [LastSale]
			, 0									As [CreditLimit]
			, Cast ('2000-01-01' As datetime2)	As [StartDate]
			, '0'								As Dim_CustomerBranch_Key
			, 'Unknown'							As [CustomerTypeDescription]
			, 'Unknown'							As [CustomerSector]
			, 'Unknown'							As [CustomerSalesType]
			, 'Unknown'							As [SalespersonName]
			, 'Unknown'							As [CrmTerritory]
			, 0									As [CRMTNumber]
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_Customer Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Max(Dim_UpdateDateTime), '2000-01-01')
From	[DW].Dim_Customer (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_Customer
Select	*
Into	#Dim_Customer
From	[DW].Dim_Customer
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_Customer ([CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])

SELECT [CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Latest_Dim_InsertDateTime]
  FROM [DW].[Dim_Customer_v]
Where	Latest_Dim_InsertDateTime > @Dim_UpdateDateTime

-- Remove records older than the current effective from date
Delete	#Dim_Customer
From	#Dim_Customer
		Join (Select CustomerNumber, Dim_EffectiveFrom
					From DW.Dim_Customer
					Where Dim_EffectiveTo = '9999-12-31') Dim_Customer
			On #Dim_Customer.CustomerNumber = Dim_Customer.CustomerNumber
Where	#Dim_Customer.Dim_EffectiveFrom <= Dim_Customer.Dim_EffectiveFrom

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[CustomerNumber]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[CustomerNumber]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_Customer T2
				Where	T2.CustomerNumber = #Dim_Customer.CustomerNumber
						And T2.[Dim_Type2HashDiff] <> #Dim_Customer.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_Customer.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_Customer
	) x
Group By [CustomerNumber]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_Customer_Final
SELECT	#Dim_Customer.[CustomerNumber]
		, [CustomerSortKey]
		, [CustomerName]
		, [AddressLine1]
		, [AddressLine2]
		, [AddressLine3]
		, [Contact]
		, [Phone]
		, [Mobile]
		, [PostCode]
		, [ContactEmail]
		, [InvoiceEmail]
		, [CurrentBalance]
		, [LastSale]
		, [CreditLimit]
		, [StartDate]
		, [Dim_CustomerBranch_Key]
		, [CustomerTypeDescription]
		, [CustomerSector]
		, [CustomerSalesType]
		, [SalespersonName]
		, [CrmTerritory]
		, [CRMTNumber]
		, [Dim_SourceSystem]
		, [Dim_Type1HashDiff]
		, #Dim_Customer.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) From #Dim_Customer D Where D.CustomerNumber = #Dim_Customer.CustomerNumber) As First_Dim_EffectiveFrom
Into	#Dim_Customer_Final
From	#Dim_Customer
		Join #ChangeDates
			On #Dim_Customer.CustomerNumber = #ChangeDates.CustomerNumber
			And #Dim_Customer.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_Customer.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo

Print 'Start Merge'

Begin Try
Begin Transaction

	-- Check for New Customers OR Customers with Type I Change only
	Merge	[DW].Dim_Customer As T -- Merge Target 
    Using	(Select		*
				From	#Dim_Customer_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the Customer record
				On T.CustomerNumber = S.CustomerNumber 
				And T.Dim_EffectiveTo = '9999-12-31'
	
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.CustomerName = S.CustomerName
			, T.AddressLine1 = S.AddressLine1
			, T.AddressLine2 = S.AddressLine2
			, T.AddressLine3 = S.AddressLine3
			, T.Contact = S.Contact
			, T.Phone = S.Phone
			, T.Mobile = S.Mobile
			, T.PostCode = S.PostCode
			, T.ContactEmail = S.ContactEmail
			, T.InvoiceEmail = S.InvoiceEmail
			, T.CurrentBalance = S.CurrentBalance
			, T.LastSale = S.LastSale
			, T.CreditLimit = S.CreditLimit
			, T.StartDate = S.StartDate
			, T.CustomerTypeDescription = S.CustomerTypeDescription
			, T.CustomerSector = S.CustomerSector
			, T.CustomerSalesType = S.CustomerSalesType
			, T.CrmTerritory = S.CrmTerritory
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New Customer
	Then Insert ([CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
		Values (S.[CustomerNumber], S.[CustomerSortKey], S.[CustomerName], S.[AddressLine1], S.[AddressLine2], S.[AddressLine3], S.[Contact], S.[Phone], S.[Mobile], S.[PostCode], S.[ContactEmail], S.[InvoiceEmail], S.[CurrentBalance], S.[LastSale], S.[CreditLimit], S.[StartDate], S.[Dim_CustomerBranch_Key], S.[CustomerTypeDescription], S.[CustomerSector], S.[CustomerSalesType], S.[SalespersonName], S.[CrmTerritory], S.[CRMTNumber], S.[Dim_SourceSystem], S.[Dim_Type1HashDiff], S.[Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

Print 'Start Merge2'

DROP TABLE If Exists #Dim_Customer_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By CustomerNumber) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By CustomerNumber Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_Customer_Type2
From	#Dim_Customer_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom
--********* Following line added on 16/08/22 to fix an issue with missing Type 2 updates
		Or Dim_Type2HashDiff not in (Select Dim_Type2HashDiff From [DW].[Dim_Customer] Where CustomerNumber = #Dim_Customer_Final.CustomerNumber And  Dim_EffectiveTo = '9999-12-31')

	-- Check for Customers with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedCustomer int)

		Merge	[DW].Dim_Customer As T -- Merge Target 
		Using	(Select	*
				From #Dim_Customer_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.CustomerNumber = S.CustomerNumber 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.CustomerNumber As UpdatedCustomer
		Into @SummaryOfChanges
	;

	-- Insert New Instances for Customers updated by a Type II change
	Insert Into DW.Dim_Customer ([CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [CustomerNumber], [CustomerSortKey], [CustomerName], [AddressLine1], [AddressLine2], [AddressLine3], [Contact], [Phone], [Mobile], [PostCode], [ContactEmail], [InvoiceEmail], [CurrentBalance], [LastSale], [CreditLimit], [StartDate], [Dim_CustomerBranch_Key], [CustomerTypeDescription], [CustomerSector], [CustomerSalesType], [SalespersonName], [CrmTerritory], [CRMTNumber], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	
	From	#Dim_Customer_Type2
			Join @SummaryOfChanges
				On CustomerNumber = UpdatedCustomer

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

