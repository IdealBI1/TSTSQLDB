CREATE TABLE [STG].[STG_CA_OELATR] (
    [Invoice#]             DECIMAL (36, 4) NULL,
    [Inl#]                 DECIMAL (36, 4) NULL,
    [Atr]                  NVARCHAR (6)    NULL,
    [Code]                 NVARCHAR (8)    NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

