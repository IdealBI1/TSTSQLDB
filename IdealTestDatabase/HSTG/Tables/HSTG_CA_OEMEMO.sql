CREATE TABLE [HSTG].[HSTG_CA_OEMEMO] (
    [Memo#]                        DECIMAL (36, 4) NULL,
    [Memo Ref]                     NVARCHAR (20)   NULL,
    [Memo]                         NVARCHAR (2000) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

