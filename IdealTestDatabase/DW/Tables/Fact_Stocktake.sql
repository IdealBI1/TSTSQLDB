CREATE TABLE [DW].[Fact_Stocktake] (
    [Dim_ProductCategory_Key]   INT             NOT NULL,
    [Dim_Product_Key]           INT             NOT NULL,
    [ItemCode]                  NVARCHAR (30)   NOT NULL,
    [Dim_Location_Key]          INT             NOT NULL,
    [Dim_Bin_Key]               INT             NOT NULL,
    [Dim_Stocktake_Key]         INT             NOT NULL,
    [StocktakeInProgress]       CHAR (1)        NULL,
    [FrozenWAC]                 DECIMAL (38, 6) NULL,
    [VarianceValue]             FLOAT (53)      NULL,
    [MasterLastCostWAC]         DECIMAL (38, 6) NULL,
    [LastCostWAC]               DECIMAL (38, 6) NULL,
    [CurrentStocktakeQtyOnHand] FLOAT (53)      NULL,
    [FrozenQtyOnHand]           DECIMAL (36, 4) NULL,
    [QuantityVariance]          DECIMAL (37, 4) NULL,
    [Fact_SourceSystem]         VARCHAR (16)    NOT NULL,
    [Fact_HashDiff]             CHAR (32)       NOT NULL,
    [Fact_InsertDateTime]       DATETIME2 (7)   NULL,
    [Fact_UpdateDateTime]       DATETIME2 (7)   NULL
);

