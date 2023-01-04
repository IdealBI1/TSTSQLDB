CREATE TABLE [MDM].[Subregion] (
    [Name]            NVARCHAR (100)                              NULL,
    [Code]            NVARCHAR (100)                              NOT NULL,
    [Region]          NVARCHAR (100)                              NULL,
    [SaturdayWeight]  NVARCHAR (100)                              NULL,
    [RegionalManager] NVARCHAR (100)                              NULL,
    [ValidFrom]       DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]         DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Code] ASC),
    FOREIGN KEY ([Region]) REFERENCES [MDM].[Region] ([Code]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[MDM].[SubregionHistory], DATA_CONSISTENCY_CHECK=ON));

