CREATE TABLE [MDM].[SubregionHistory] (
    [Name]            NVARCHAR (100) NULL,
    [Code]            NVARCHAR (100) NOT NULL,
    [Region]          NVARCHAR (100) NULL,
    [SaturdayWeight]  NVARCHAR (100) NULL,
    [RegionalManager] NVARCHAR (100) NULL,
    [ValidFrom]       DATETIME2 (7)  NOT NULL,
    [ValidTo]         DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_DivisionHistory]
    ON [MDM].[SubregionHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

