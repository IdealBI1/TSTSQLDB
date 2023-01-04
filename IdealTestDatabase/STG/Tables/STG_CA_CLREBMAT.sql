CREATE TABLE [STG].[STG_CA_CLREBMAT] (
    [Sup#]                 DECIMAL (36, 4) NULL,
    [Rebate Cat]           NVARCHAR (100)  NULL,
    [TL]                   NVARCHAR (100)  NULL,
    [Valid From]           DATE            NULL,
    [Category Description] NVARCHAR (100)  NULL,
    [Valid To]             DATE            NULL,
    [Rate]                 DECIMAL (36, 4) NULL,
    [Comment]              NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

