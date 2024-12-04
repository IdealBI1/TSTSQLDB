CREATE TABLE [DW].[Fact_InventoryTarget] (
    [TargetDateKey]        INT             NULL,
    [Dim_Location_Key]     INT             NOT NULL,
    [Rolling12MSalesValue] DECIMAL (38, 4) NULL,
    [Fact_SourceSystem]    VARCHAR (16)    NOT NULL,
    [Fact_UpdateDateTime]  DATETIME2 (7)   NULL
);

