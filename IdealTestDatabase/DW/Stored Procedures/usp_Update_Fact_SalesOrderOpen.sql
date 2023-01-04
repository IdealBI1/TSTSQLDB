
CREATE PROCEDURE [DW].[usp_Update_Fact_SalesOrderOpen]

/****************************************************************************
* Name:		usp_Update_Fact_SalesOrderOpen
* Author:	Sameh Hassan
* Desc:		Inserts/updates the SalesOrderOpen Fact
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

-- Create temp table to hold new and updated dimension source records.

Begin Try
Begin Transaction

	Truncate Table [DW].[Fact_SalesOrderOpen]

	Insert Into [DW].[Fact_SalesOrderOpen] ([OrderNumber], [LineNumber], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_OrderDate_Key], [OrderDate], [DaysOpen], [Dim_DeliveryDate_Key], [DeliveryDate], [Priority], [UserID], [Hold], [Project], [OrderedQty], [CancelledQt], [BackorderedQty], [ShippedQty], [LinePrice], [OnOrderQty], [SalesValueExGST], [GstValue], [COGS], [DiscountRate], [DiscountValue], [OnOrderValueExclGST], [SourceSystem])
	Select [OrderNumber], [LineNumber], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_OrderDate_Key], [OrderDate], [DaysOpen], [Dim_DeliveryDate_Key], [DeliveryDate], [Priority], [UserID], [Hold], [Project], [OrderedQty], [CancelledQt], [BackorderedQty], [ShippedQty], [LinePrice], [OnOrderQty], [SalesValueExGST], [GstValue], [COGS], [DiscountRate], [DiscountValue], [OnOrderValueExclGST], [SourceSystem]
	From	[DW].[Fact_SalesOrderOpen_V]

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

