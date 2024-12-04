CREATE TABLE [DW].[Fact_IndentAgeMonthly] (
    [DateKey]             INT           NOT NULL,
    [Dim_Location_Key]    INT           NOT NULL,
    [Dim_Product_Key]     INT           NOT NULL,
    [InventoryDateKey]    INT           NOT NULL,
    [InventoryQty]        MONEY         NOT NULL,
    [InventoryValue]      MONEY         NOT NULL,
    [InventoryAge]        SMALLINT      NOT NULL,
    [Fact_UpdateDateTime] DATETIME2 (7) NOT NULL
);

