
CREATE PROCEDURE [DW].[usp_Update_Fact_IndentAgeMonthly]

/****************************************************************************
* Name:		usp_Update_Fact_IndentAgeMonthly
* Author:	Sameh Hassan
* Desc:		Inserts/updates the IndentAgeMonthly Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Dec 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	01/12/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Begin Try
Begin Transaction

INSERT INTO DW.Fact_IndentAgeMonthly (DateKey, Dim_Location_Key, Dim_Product_Key, InventoryDateKey, InventoryQty, InventoryValue, InventoryAge, Fact_UpdateDateTime)
SELECT  Convert(int, Convert(char, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS Date), 112))
        , Fact_IndentAge.Dim_Location_Key 
        , Fact_IndentAge.Dim_Product_Key 
        , InventoryDateKey
        , Fact_IndentAge.InventoryQty 
        , Fact_InventoryHistory.InventoryValue + Fact_InventoryHistory.OnConsignmentValue + Fact_InventoryHistory.InTransitValue AS IOHValue
        -- , CEILING(DateDiff(Day, CONVERT(datetime, CAST(Fact_IndentAge.InventoryDateKey AS VARCHAR(10)), 112)
        --                     , CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS Date))
        --                 / 31.0) As InventoryAge
        , CEILING(DW.uf_MonthsBetween(CONVERT(datetime, CAST(Fact_IndentAge.InventoryDateKey AS VARCHAR(10)), 112)
                                    , CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS Date))) As InventoryAge
        -- DateDiff(Month
        --         , CONVERT(datetime, CAST(Fact_IndentAge.InventoryDateKey AS VARCHAR(10)), 112)
        --         , CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS Date)) As InventoryAge
        , Fact_IndentAge.Fact_UpdateDateTime
FROM    DW.Fact_IndentAge (nolock)
        Join DW.Dim_Location (nolock)
            On Fact_IndentAge.Dim_Location_Key = Dim_Location.Dim_Location_Key
        Join DW.Dim_Product (nolock)
            On Fact_IndentAge.Dim_Product_Key = Dim_Product.Dim_Product_Key
        JOIN DW.Fact_InventoryHistory (nolock)
            Join DW.Dim_Location InvLocation (nolock)
                On Fact_InventoryHistory.Dim_Location_Key = InvLocation.Dim_Location_Key
            Join DW.Dim_Product InvProduct (nolock)
                On Fact_InventoryHistory.Dim_Product_Key = InvProduct.Dim_Product_Key
            ON Dim_Location.LocationCode = InvLocation.LocationCode 
            And Dim_Product.ItemCode = InvProduct.ItemCode 
            AND Fact_InventoryHistory.SnapshotDateKey = Convert(int, Convert(char, Dateadd(Day, -1, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))
WHERE   Fact_IndentAge.InventoryQty <> 0
        And Day(CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)) = 1 --First Day of the month

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

