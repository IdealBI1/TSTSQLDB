CREATE TABLE [STG].[STG_CA_OECRDLNK] (
    [Invoice#]             DECIMAL (36, 4) NULL,
    [Inl#]                 DECIMAL (36, 4) NULL,
    [Credit#]              DECIMAL (36, 4) NULL,
    [Crl#]                 DECIMAL (36, 4) NULL,
    [Credit Qty]           DECIMAL (36, 4) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

