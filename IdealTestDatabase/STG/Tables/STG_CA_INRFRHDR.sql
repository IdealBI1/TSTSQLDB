CREATE TABLE [STG].[STG_CA_INRFRHDR] (
    [Rfr#]                 DECIMAL (36, 4) NULL,
    [ReturnDate]           DATE            NULL,
    [Sup#]                 DECIMAL (36, 4) NULL,
    [Loc]                  NVARCHAR (100)  NULL,
    [Eby]                  NVARCHAR (100)  NULL,
    [Batch#]               DECIMAL (36, 4) NULL,
    [Invoice#]             NVARCHAR (100)  NULL,
    [Gra]                  NVARCHAR (100)  NULL,
    [Adr#]                 NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

