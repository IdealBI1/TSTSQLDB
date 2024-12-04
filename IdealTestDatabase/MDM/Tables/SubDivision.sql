CREATE TABLE [MDM].[SubDivision] (
    [Name]                 NVARCHAR (100)                              NULL,
    [Code]                 NVARCHAR (100)                              NOT NULL,
    [V2Division]           NVARCHAR (100)                              NULL,
    [RegionalManager]      NVARCHAR (100)                              NULL,
    [RegionalManagerEmail] NVARCHAR (100)                              NULL,
    [ValidFrom]            DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]              DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Code] ASC),
    FOREIGN KEY ([V2Division]) REFERENCES [MDM].[Subregion] ([Code]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[MDM].[SubDivisionHistory], DATA_CONSISTENCY_CHECK=ON));

