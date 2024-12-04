
CREATE View [DW].[Fact_IndentAge_v] 

As

SELECT  Fact_InventoryHistory.Dim_Location_Key
        , Fact_InventoryHistory.Dim_Product_Key
        , Dim_Product.ItemCode
        , Dim_Location.LocationCode
        , Fact_InventoryHistory.InventoryQty
            + Fact_InventoryHistory.InTransitQty 
            + Fact_InventoryHistory.OnConsignmentQty  AS InventoryQty
        , Fact_InventoryHistory.SnapshotDateKey       AS InventoryDateKey
FROM    DW.Fact_InventoryHistory (nolock)
        JOIN DW.Dim_Product (nolock)
            ON Fact_InventoryHistory.Dim_Product_Key = Dim_Product.Dim_Product_Key
        JOIN DW.Dim_Location (nolock)
            ON Fact_InventoryHistory.Dim_Location_Key = Dim_Location.Dim_Location_Key
WHERE   Fact_InventoryHistory.SnapshotDateKey = Convert(int, Convert(char, Dateadd(Day, -1, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)), 112))                    
        AND Dim_Product.Indent = 'Y'
        And Day(CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)) = 1 --First Day of the month

