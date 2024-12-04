CREATE TABLE [MDM].[UserPermissionHistory] (
    [Name]       NVARCHAR (100) NULL,
    [Code]       NVARCHAR (100) NOT NULL,
    [User]       NVARCHAR (100) NULL,
    [Region]     NVARCHAR (100) NULL,
    [Subregion]  NVARCHAR (100) NULL,
    [Branch]     NVARCHAR (100) NULL,
    [Sales]      NVARCHAR (100) NULL,
    [AggSales]   NVARCHAR (100) NULL,
    [Operations] NVARCHAR (100) NULL,
    [AggOps]     NVARCHAR (100) NULL,
    [PnL]        NVARCHAR (100) NULL,
    [FullAccess] NVARCHAR (100) NULL,
    [ValidFrom]  DATETIME2 (7)  NOT NULL,
    [ValidTo]    DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_UserPermissionHistory]
    ON [MDM].[UserPermissionHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

