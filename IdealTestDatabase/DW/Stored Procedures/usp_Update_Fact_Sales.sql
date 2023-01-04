
CREATE PROCEDURE [DW].[usp_Update_Fact_Sales]

/****************************************************************************
* Name:		usp_Update_Fact_Sales
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Sales Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	08/05/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Declare @Fact_UpdateDateTime Datetime2
		, @BatchID int

Select	@Fact_UpdateDateTime = isNull(Max(Fact_UpdateDateTime), '2000-01-01')
From	[DW].Fact_Sales (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Fact_Sales
Select	*
Into	#Fact_Sales
From	[DW].Fact_Sales
Where	1=2

-- Get History Stage records added or updated after the lastest Fact_insertDateTime in the Dimension.
Insert Into #Fact_Sales ([InvoiceNumber], [LineNumber], [Dim_SalesTransaction_Key], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_Date_Key], [TransactionDate], [Dim_RequestedDate_Key], [RequestedDate], [Dim_DeliveryDate_Key], [DeliveryDate], [SalesOrder], [OrderSource], [SalesQuantity], [SalesValueExGST], [N3Rebate], [IndividualRebate], [CustomerRebate], [NetSalesValue], [COGS], [LoyaltyRebate], [RawMargin], [CommercialMargin], [SupplierRebate], [SalesCommercialMarginWithRebates], [Fact_SourceSystem], [Fact_insertDateTime])
SELECT [InvoiceNumber], [LineNumber], [Dim_SalesTransaction_Key], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_Date_Key], [TransactionDate], [Dim_RequestedDate_Key], [RequestedDate], [Dim_DeliveryDate_Key], [DeliveryDate], [SalesOrder], [OrderSource], [SalesQuantity], [SalesValueExGST], [N3Rebate], [IndividualRebate], [CustomerRebate], [NetSalesValue], [COGS], [LoyaltyRebate], [RawMargin], [CommercialMargin], [SupplierRebate], [SalesCommercialMarginWithRebates], [Fact_SourceSystem], Latest_Fact_insertDateTime
  FROM [DW].[Fact_Sales_v]
Where	Latest_Fact_insertDateTime >= @Fact_UpdateDateTime
		And [InvoiceNumber] Is Not Null

Begin Try
Begin Transaction

	Merge	[DW].Fact_Sales As T -- Merge Target 
    Using	#Fact_Sales S
				On T.[InvoiceNumber] = S.[InvoiceNumber]
				And T.[LineNumber] = S.[LineNumber]
	
	When Matched 
	Then Update -- Update Existing Records
		Set	[Dim_SalesTransaction_Key] = S.[Dim_SalesTransaction_Key]
			, [Dim_Location_Key] = S.[Dim_Location_Key]
			, [Dim_Customer_Key] = S.[Dim_Customer_Key]
			, [Dim_Product_Key] = S.[Dim_Product_Key]
			, [Dim_ProductCategory_Key] = S.[Dim_ProductCategory_Key]
			, [Dim_TransactionSource_Key] = S.[Dim_TransactionSource_Key]
			, [Dim_Date_Key] = S.[Dim_Date_Key]
			, [TransactionDate] = S.[TransactionDate]
			, [Dim_RequestedDate_Key] = S.[Dim_RequestedDate_Key]
			, [RequestedDate] = S.[RequestedDate]
			, [Dim_DeliveryDate_Key] = S.[Dim_DeliveryDate_Key]
			, [DeliveryDate] = S.[DeliveryDate]
			, [SalesOrder] = S.[SalesOrder]
			, [OrderSource] = S.[OrderSource]
			, [SalesQuantity] = S.[SalesQuantity]
			, [SalesValueExGST] = S.[SalesValueExGST]
			, [N3Rebate] = S.[N3Rebate]
			, [IndividualRebate] = S.[IndividualRebate]
			, [CustomerRebate] = S.[CustomerRebate]
			, [NetSalesValue] = S.[NetSalesValue]
			, [COGS] = S.[COGS]
			, [LoyaltyRebate] = S.[LoyaltyRebate]
			, [RawMargin] = S.[RawMargin]
			, [CommercialMargin] = S.[CommercialMargin]
			, [SupplierRebate] = S.[SupplierRebate]
			, [SalesCommercialMarginWithRebates] = S.[SalesCommercialMarginWithRebates]
			, T.Fact_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New Invoice Line
	Then Insert ([InvoiceNumber], [LineNumber], [Dim_SalesTransaction_Key], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_Date_Key], [TransactionDate], [Dim_RequestedDate_Key], [RequestedDate], [Dim_DeliveryDate_Key], [DeliveryDate], [SalesOrder], [OrderSource], [SalesQuantity], [SalesValueExGST], [N3Rebate], [IndividualRebate], [CustomerRebate], [NetSalesValue], [COGS], [LoyaltyRebate], [RawMargin], [CommercialMargin], [SupplierRebate], [SalesCommercialMarginWithRebates], [Fact_SourceSystem])
		Values (S.[InvoiceNumber], S.[LineNumber], S.[Dim_SalesTransaction_Key], S.[Dim_Location_Key], S.[Dim_Customer_Key], S.[Dim_Product_Key], S.[Dim_ProductCategory_Key], S.[Dim_TransactionSource_Key], S.[Dim_Date_Key], S.[TransactionDate], S.[Dim_RequestedDate_Key], S.[RequestedDate], S.[Dim_DeliveryDate_Key], S.[DeliveryDate], S.[SalesOrder], S.[OrderSource], S.[SalesQuantity], S.[SalesValueExGST], S.[N3Rebate], S.[IndividualRebate], S.[CustomerRebate], S.[NetSalesValue], S.[COGS], S.[LoyaltyRebate], S.[RawMargin], S.[CommercialMargin], S.[SupplierRebate], S.[SalesCommercialMarginWithRebates], S.[Fact_SourceSystem])
	;
	

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


