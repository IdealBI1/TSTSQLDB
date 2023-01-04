CREATE TABLE [DW].[Fact_Inventory] (
    [SnapshotDateKey]        INT             NULL,
    [Dim_Location_Key]       INT             NOT NULL,
    [Dim_Product_Key]        INT             NOT NULL,
    [Dim_Bin_Key]            INT             NOT NULL,
    [StartDate]              DATE            NULL,
    [LastSale]               DATE            NULL,
    [LastPurchase]           DATE            NULL,
    [LastBuyPrice]           DECIMAL (36, 4) NULL,
    [InventoryTotalQty]      DECIMAL (36, 4) NULL,
    [InventoryTotalValue]    DECIMAL (36, 4) NULL,
    [InventoryAVGPrice]      DECIMAL (36, 4) NULL,
    [CommitedInventoryQty]   DECIMAL (36, 4) NULL,
    [CommitedInventoryValue] DECIMAL (36, 4) NULL,
    [InTransitQty]           DECIMAL (36, 4) NULL,
    [InTransitValue]         DECIMAL (36, 4) NULL,
    [OnConsignmentQty]       DECIMAL (36, 4) NULL,
    [OnConsignmentValue]     DECIMAL (36, 4) NULL,
    [InventoryQty]           DECIMAL (36, 4) NULL,
    [InventoryValue]         DECIMAL (36, 4) NULL,
    [OnRequestQty]           DECIMAL (36, 4) NULL,
    [BackorderQty]           DECIMAL (36, 4) NULL,
    [POQty]                  DECIMAL (36, 4) NULL,
    [Fact_SourceSystem]      VARCHAR (16)    NOT NULL,
    [Fact_UpdateDateTime]    DATETIME2 (7)   NULL
);


GO
CREATE NONCLUSTERED INDEX [<Dim_ProductKey>]
    ON [DW].[Fact_Inventory]([Dim_Product_Key] ASC)
    INCLUDE([InventoryTotalQty], [InventoryTotalValue], [CommitedInventoryQty], [CommitedInventoryValue], [OnRequestQty]);

