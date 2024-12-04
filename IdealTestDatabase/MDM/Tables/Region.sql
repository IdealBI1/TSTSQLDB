CREATE TABLE [MDM].[Region] (
    [Name]      NVARCHAR (100)                              NULL,
    [Code]      NVARCHAR (100)                              NOT NULL,
    [ValidFrom] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Code] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[MDM].[RegionHistory], DATA_CONSISTENCY_CHECK=ON));

