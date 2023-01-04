CREATE TABLE [MDM].[UsersHistory] (
    [Name]           NVARCHAR (100) NULL,
    [Code]           NVARCHAR (100) NOT NULL,
    [Email]          NVARCHAR (100) NULL,
    [UserName]       NVARCHAR (100) NULL,
    [PowerBIEmail]   NVARCHAR (100) NULL,
    [PowerBIPersona] NVARCHAR (100) NULL,
    [ValidFrom]      DATETIME2 (7)  NOT NULL,
    [ValidTo]        DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_UsersHistory]
    ON [MDM].[UsersHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

