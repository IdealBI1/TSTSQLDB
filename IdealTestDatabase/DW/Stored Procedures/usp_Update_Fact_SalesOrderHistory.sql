
CREATE PROCEDURE [DW].[usp_Update_Fact_SalesOrderHistory]

/****************************************************************************
* Name:		usp_Update_Fact_SalesOrderHistory
* Author:	Sameh Hassan
* Desc:		Inserts/updates the SalesOrderHistory Fact
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

Declare @SnapshotDateKey int = Convert(int, Convert(char, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2), 112))
		, @LastDailySnapshotKey int = Convert(int, Convert(char, Dateadd(Month, -2, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))

Begin Try
Begin Transaction


	-- Delete Today's Snapshot if exists
	Delete [DW].[Fact_SalesOrderHistory]
	Where	SnapshotDateKey = @SnapshotDateKey

	-- Add Today's Snapshot
	Insert Into [DW].[Fact_SalesOrderHistory] (SnapshotDateKey, [OrderNumber], [LineNumber], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_OrderDate_Key], [OrderDate], [DaysOpen], [Dim_DeliveryDate_Key], [DeliveryDate], [Priority], [UserID], [Hold], [Project], [OrderedQty], [CancelledQt], [BackorderedQty], [ShippedQty], [LinePrice], [OnOrderQty], [SalesValueExGST], [GstValue], [COGS], [DiscountRate], [DiscountValue], [OnOrderValueExclGST], [SourceSystem])
	Select @SnapshotDateKey, [OrderNumber], [LineNumber], [Dim_Location_Key], [Dim_Customer_Key], [Dim_Product_Key], [Dim_ProductCategory_Key], [Dim_TransactionSource_Key], [Dim_OrderDate_Key], [OrderDate], [DaysOpen], [Dim_DeliveryDate_Key], [DeliveryDate], [Priority], [UserID], [Hold], [Project], [OrderedQty], [CancelledQt], [BackorderedQty], [ShippedQty], [LinePrice], [OnOrderQty], [SalesValueExGST], [GstValue], [COGS], [DiscountRate], [DiscountValue], [OnOrderValueExclGST], [SourceSystem]
	From	[DW].[Fact_SalesOrderOpen]

	-- Delete Snapshots older than 2 Months unless for EOM date
	Delete [DW].[Fact_SalesOrderHistory]
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

