
CREATE PROCEDURE [DW].[usp_Update_Fact_InventoryTransfer]

/****************************************************************************
* Name:		usp_Update_Fact_InventoryTransfer
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Inventory Transfer Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022Dim_Transfer
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	27/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Declare @Fact_UpdateDateTime datetime2 = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

Begin Try
Begin Transaction


Merge Into [DW].[Fact_InventoryTransfer] T
Using [DW].[Fact_InventoryTransfer_v] S
On T.Dim_Transfer_Key = S.Dim_Transfer_Key

When Matched And T.Dim_Type1HashDiff <> S.Dim_Type1HashDiff
Then Update
Set [Dim_Location_Key] = S.[Dim_Location_Key]
    , [Dim_LocationFrom_Key] = S.[Dim_LocationFrom_Key]
    , [Dim_Customer_Key] = S.[Dim_Customer_Key]
    , [Dim_Product_Key] = S.[Dim_Product_Key]
    , [Dim_ProductCategory_Key] = S.[Dim_ProductCategory_Key]
    , [Dim_RequestDate_Key] = S.[Dim_RequestDate_Key]
    , [RequestDate] = S.[RequestDate]
    , [AcceptDate] = S.[AcceptDate]
    , [FillDate] = S.[FillDate]
    , [PublishDate] = S.[PublishDate]
    , [ExpectDate] = S.[ExpectDate]
    , [ItemCode] = S.[ItemCode]
    , [RequestByLocation] = S.[RequestByLocation]
    , [RequestFromLocation] = S.[RequestFromLocation]
    , [RequestQty] = S.[RequestQty]
    , [DispatchQty] = S.[DispatchQty]
    , [RejectQty] = S.[RejectQty]
    , [OutstandingQty] = S.[OutstandingQty]
    , [RejectReason] = S.[RejectReason]
    , [SalesOrder#] = S.[SalesOrder#]
    , [SalesOrderLine#] = S.[SalesOrderLine#]
    , [PurchaseOrder#] = S.[PurchaseOrder#]
    , [PurchaseOrderLine#] = S.[PurchaseOrderLine#]
    , [PubRef#] = S.[PubRef#]
    , [PubRefLine#] = S.[PubRefLine#]
    , [Dim_Type1HashDiff] = S.[Dim_Type1HashDiff]
    , [Dim_SourceSystem] = S.[Dim_SourceSystem]
    , [Fact_UpdateDateTime] = @Fact_UpdateDateTime

When Not Matched
Then Insert ([Dim_Transfer_Key], [Dim_Location_Key], [Dim_LocationFrom_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_RequestDate_Key], [RequestDate], [AcceptDate], [FillDate], [PublishDate], [ExpectDate], [ItemCode], [RequestByLocation], [RequestFromLocation], [RequestQty], [DispatchQty], [RejectQty], [OutstandingQty], [RejectReason], [SalesOrder#], [SalesOrderLine#], [PurchaseOrder#], [PurchaseOrderLine#], [PubRef#], [PubRefLine#], [Dim_Type1HashDiff], [Dim_SourceSystem], [Fact_InsertDateTime], [Fact_UpdateDateTime])
Values ([Dim_Transfer_Key], [Dim_Location_Key], [Dim_LocationFrom_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_RequestDate_Key], [RequestDate], [AcceptDate], [FillDate], [PublishDate], [ExpectDate], [ItemCode], [RequestByLocation], [RequestFromLocation], [RequestQty], [DispatchQty], [RejectQty], [OutstandingQty], [RejectReason], [SalesOrder#], [SalesOrderLine#], [PurchaseOrder#], [PurchaseOrderLine#], [PubRef#], [PubRefLine#], [Dim_Type1HashDiff], [Dim_SourceSystem], @Fact_UpdateDateTime, @Fact_UpdateDateTime)
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

