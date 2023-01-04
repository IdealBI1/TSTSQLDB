CREATE TABLE [STG].[STG_CA_OEMEMO] (
    [Memo#]                DECIMAL (36, 4) NULL,
    [Memo Ref]             NVARCHAR (20)   NULL,
    [Memo]                 NVARCHAR (2000) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

