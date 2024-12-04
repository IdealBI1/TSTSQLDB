
CREATE PROCEDURE [DW].[usp_Update_Fact_InventoryHistory]

/****************************************************************************
* Name:		usp_Update_Fact_InventoryHistory
* Author:	Sameh Hassan
* Desc:		Inserts/updates the InventoryHistory Fact
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

-- Get Last Daily Snapshot to keep date

Declare @LastDailySnapshotKey int = Convert(int, Convert(char, Dateadd(Month, -2, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))

Begin Try
Begin Transaction

    Insert INTO DW.Fact_InventoryHistory (SnapshotDateKey, Dim_Location_Key, Dim_Product_Key, Dim_Bin_Key, StartDate, LastSale, LastPurchase, LastBuyPrice, InventoryTotalQty, InventoryTotalValue, InventoryAVGPrice, CommitedInventoryQty, CommitedInventoryValue, InTransitQty, InTransitValue, OnConsignmentQty, OnConsignmentValue, InventoryQty, InventoryValue, OnRequestQty, BackorderQty, POQty, Fact_SourceSystem, Fact_UpdateDateTime)
    SELECT  SnapshotDateKey, Dim_Location_Key, Dim_Product_Key, Dim_Bin_Key, StartDate, LastSale, LastPurchase, LastBuyPrice, InventoryTotalQty, InventoryTotalValue, InventoryAVGPrice, CommitedInventoryQty, CommitedInventoryValue, InTransitQty, InTransitValue, OnConsignmentQty, OnConsignmentValue, InventoryQty, InventoryValue, OnRequestQty, BackorderQty, POQty, Fact_SourceSystem, Fact_UpdateDateTime
    FROM    [DW].[Fact_InventoryHistory_v] 

	-- Delete Snapshots older than 2 Months unless for EOM date
	Delete  [DW].[Fact_InventoryHistory]
	Where	SnapshotDateKey < @LastDailySnapshotKey
			And SnapshotDateKey Not in (Select	Cal_Date_key
									From	dw.dim_date
									Where	Caldate < DateAdd(Month, -2, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2))
											And Caldate = [CallastDayOfMonth])

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

