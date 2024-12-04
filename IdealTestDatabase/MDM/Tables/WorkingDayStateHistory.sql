CREATE TABLE [MDM].[WorkingDayStateHistory] (
    [Name]      NVARCHAR (100) NULL,
    [Code]      NVARCHAR (100) NOT NULL,
    [ValidFrom] DATETIME2 (7)  NOT NULL,
    [ValidTo]   DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_WorkingDayStateHistory]
    ON [MDM].[WorkingDayStateHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

