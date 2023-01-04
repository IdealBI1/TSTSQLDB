CREATE TABLE [LND].[LND_CA_INRFRHDR] (
    [Rfr#]                NVARCHAR (4000) NULL,
    [ReturnDate]          NVARCHAR (4000) NULL,
    [Sup#]                NVARCHAR (4000) NULL,
    [Loc]                 NVARCHAR (4000) NULL,
    [Eby]                 NVARCHAR (4000) NULL,
    [Batch#]              NVARCHAR (4000) NULL,
    [Invoice#]            NVARCHAR (4000) NULL,
    [Gra]                 NVARCHAR (4000) NULL,
    [Adr#]                NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME] DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]       VARCHAR (8000)  NOT NULL
);

