CREATE TABLE [DW].[Fact_ProductClassification] (
    [SnapshotDateKey]          INT             NULL,
    [Dim_Location_Key]         INT             NOT NULL,
    [locationCode]             NVARCHAR (6)    NULL,
    [loc]                      DECIMAL (36, 4) NULL,
    [Dim_Product_Key]          INT             NOT NULL,
    [ItemCode]                 NVARCHAR (30)   NULL,
    [Dim_Bin_Key]              INT             NOT NULL,
    [Dim_Classification_Key]   INT             NOT NULL,
    [PerformanceCassification] NVARCHAR (20)   NOT NULL,
    [SurplusFlag]              NVARCHAR (20)   NULL,
    [ObsolescenceFlag]         NVARCHAR (20)   NULL,
    [ProductMin]               FLOAT (53)      NULL,
    [ProductMax]               FLOAT (53)      NULL,
    [FlagExpiryDate]           DATE            NULL,
    [ManualFlagExpiry]         VARCHAR (11)    NOT NULL,
    [SetDate]                  DATE            NULL,
    [StartDate]                DATETIME2 (7)   NULL,
    [LastSale]                 DATETIME2 (7)   NULL,
    [LastPurchase]             DATETIME2 (7)   NULL,
    [Fact_SourceSystem]        VARCHAR (16)    NOT NULL,
    [Fact_UpdateDateTime]      DATETIME2 (7)   NULL,
    [LocalBuyPrice]            DECIMAL (36)    NULL
);


GO
CREATE NONCLUSTERED INDEX [<SnapshotDate>]
    ON [DW].[Fact_ProductClassification]([Fact_SourceSystem] ASC)
    INCLUDE([SnapshotDateKey]);


GO
CREATE NONCLUSTERED INDEX [<PerformanceFlag>]
    ON [DW].[Fact_ProductClassification]([SnapshotDateKey] ASC, [PerformanceCassification] ASC, [Fact_SourceSystem] ASC)
    INCLUDE([Dim_Location_Key], [locationCode], [Dim_Product_Key], [ItemCode], [SurplusFlag], [ObsolescenceFlag], [ProductMin], [ProductMax], [FlagExpiryDate], [ManualFlagExpiry], [SetDate], [StartDate], [LastSale], [LastPurchase]);

