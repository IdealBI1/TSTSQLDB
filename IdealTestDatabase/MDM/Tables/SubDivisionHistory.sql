CREATE TABLE [MDM].[SubDivisionHistory] (
    [Name]                 NVARCHAR (100) NULL,
    [Code]                 NVARCHAR (100) NOT NULL,
    [V2Division]           NVARCHAR (100) NULL,
    [RegionalManager]      NVARCHAR (100) NULL,
    [RegionalManagerEmail] NVARCHAR (100) NULL,
    [ValidFrom]            DATETIME2 (7)  NOT NULL,
    [ValidTo]              DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_SubDivisionHistory]
    ON [MDM].[SubDivisionHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

