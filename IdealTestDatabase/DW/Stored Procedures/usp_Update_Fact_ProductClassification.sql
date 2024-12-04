
CREATE PROCEDURE [DW].[usp_Update_Fact_ProductClassification]

/****************************************************************************
* Name:		usp_Update_Fact_ProductClassification
* Author:	Sameh Hassan
* Desc:		Inserts/updates the ProductClassification Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	20/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

-- Get Last Daily Snapshot to keep date

Declare @LastDailySnapshotKey int = Convert(int, Convert(char, Dateadd(Month, -2, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))

Begin Try
Begin Transaction

    Insert INTO DW.Fact_ProductClassification ([SnapshotDateKey], [Dim_Location_Key], [locationCode], [loc], [Dim_Product_Key], [ItemCode], [Dim_Bin_Key], [Dim_Classification_Key], [PerformanceCassification], [SurplusFlag], [ObsolescenceFlag], [ProductMin], [ProductMax], [FlagExpiryDate], [ManualFlagExpiry], [SetDate], [StartDate], [LastSale], [LastPurchase], [LocalBuyPrice], [Fact_SourceSystem], [Fact_UpdateDateTime])
    SELECT  [SnapshotDateKey], [Dim_Location_Key], [locationCode], [loc], [Dim_Product_Key], [ItemCode], [Dim_Bin_Key], [Dim_Classification_Key], [PerformanceCassification], [SurplusFlag], [ObsolescenceFlag], [ProductMin], [ProductMax], [FlagExpiryDate], [ManualFlagExpiry], [SetDate], [StartDate], [LastSale], [LastPurchase], [LocalBuyPrice], [Fact_SourceSystem], [Fact_UpdateDateTime]
    FROM    [DW].[Fact_ProductClassification_v] 

	-- Delete Snapshots older than 2 Months unless for EOM date
	Delete  [DW].[Fact_ProductClassification]
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

