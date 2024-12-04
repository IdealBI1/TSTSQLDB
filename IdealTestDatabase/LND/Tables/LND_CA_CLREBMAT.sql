CREATE TABLE [LND].[LND_CA_CLREBMAT] (
    [Sup#]                 NVARCHAR (4000) NULL,
    [Rebate Cat]           NVARCHAR (4000) NULL,
    [TL]                   NVARCHAR (4000) NULL,
    [Valid From]           NVARCHAR (4000) NULL,
    [Category Description] NVARCHAR (4000) NULL,
    [Valid To]             NVARCHAR (4000) NULL,
    [Rate]                 NVARCHAR (4000) NULL,
    [Comment]              NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NOT NULL
);

