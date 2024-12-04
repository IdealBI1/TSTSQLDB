CREATE TABLE [DW].[Fact_IndentAge] (
    [Dim_Location_Key]    INT           NOT NULL,
    [Dim_Product_Key]     INT           NOT NULL,
    [InventoryDateKey]    INT           NOT NULL,
    [InventoryQty]        MONEY         NOT NULL,
    [Fact_InsertDateTime] DATETIME2 (7) NOT NULL,
    [Fact_UpdateDateTime] DATETIME2 (7) NOT NULL
);

