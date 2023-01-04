CREATE TABLE [MDM].[UserPermission] (
    [Name]       NVARCHAR (100)                              NULL,
    [Code]       NVARCHAR (100)                              NOT NULL,
    [User]       NVARCHAR (100)                              NULL,
    [Region]     NVARCHAR (100)                              NULL,
    [Subregion]  NVARCHAR (100)                              NULL,
    [Branch]     NVARCHAR (100)                              NULL,
    [Sales]      NVARCHAR (100)                              NULL,
    [AggSales]   NVARCHAR (100)                              NULL,
    [Operations] NVARCHAR (100)                              NULL,
    [AggOps]     NVARCHAR (100)                              NULL,
    [PnL]        NVARCHAR (100)                              NULL,
    [FullAccess] NVARCHAR (100)                              NULL,
    [ValidFrom]  DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]    DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Code] ASC),
    FOREIGN KEY ([Branch]) REFERENCES [MDM].[Branch] ([Code]),
    FOREIGN KEY ([Region]) REFERENCES [MDM].[Region] ([Code]),
    FOREIGN KEY ([Subregion]) REFERENCES [MDM].[Subregion] ([Code]),
    FOREIGN KEY ([User]) REFERENCES [MDM].[Users] ([Code]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[MDM].[UserPermissionHistory], DATA_CONSISTENCY_CHECK=ON));

