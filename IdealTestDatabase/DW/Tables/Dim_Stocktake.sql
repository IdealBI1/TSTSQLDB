CREATE TABLE [DW].[Dim_Stocktake] (
    [Dim_Stocktake_Key]   INT           IDENTITY (1, 1) NOT NULL,
    [Dim_Location_Key]    INT           NOT NULL,
    [LocationCode]        CHAR (3)      NULL,
    [StocktakeInProgress] CHAR (1)      NULL,
    [StocktakeDate]       DATE          NULL,
    [StocktakeEndDate]    DATE          NULL,
    [Dim_SourceSystem]    NVARCHAR (20) NULL,
    [Dim_InsertDateTime]  DATETIME2 (7) NULL,
    [Dim_UpdateDateTime]  DATETIME2 (7) NULL
);

