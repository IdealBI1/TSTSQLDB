
CREATE PROCEDURE [DW].[usp_Update_Fact_Inventory]

/****************************************************************************
* Name:		usp_Update_Fact_Inventory
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Inventory Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Oct 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	29/10/2022	Sameh Hassan    Created SP
****************************************************************************/

As

-- Get Latest Snapshot Date

Declare @SnapshotDateKey int = Convert(int, Convert(char, Dateadd(Day, -1, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))

Begin Try
Begin Transaction

    Truncate Table [DW].[Fact_Inventory]

    Insert INTO DW.Fact_Inventory (SnapshotDateKey, Dim_Location_Key, Dim_Product_Key, Dim_Bin_Key, StartDate, LastSale, LastPurchase, LastBuyPrice, InventoryTotalQty, InventoryTotalValue, InventoryAVGPrice, CommitedInventoryQty, CommitedInventoryValue, InTransitQty, InTransitValue, OnConsignmentQty, OnConsignmentValue, InventoryQty, InventoryValue, OnRequestQty, BackorderQty, POQty, Fact_SourceSystem, Fact_UpdateDateTime)
    SELECT  SnapshotDateKey, Dim_Location_Key, Dim_Product_Key, Dim_Bin_Key, StartDate, LastSale, LastPurchase, LastBuyPrice, InventoryTotalQty, InventoryTotalValue, InventoryAVGPrice, CommitedInventoryQty, CommitedInventoryValue, InTransitQty, InTransitValue, OnConsignmentQty, OnConsignmentValue, InventoryQty, InventoryValue, OnRequestQty, BackorderQty, POQty, Fact_SourceSystem, Fact_UpdateDateTime
    FROM    [DW].[Fact_InventoryHistory]
    WHERE   SnapshotDateKey = @SnapshotDateKey

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

