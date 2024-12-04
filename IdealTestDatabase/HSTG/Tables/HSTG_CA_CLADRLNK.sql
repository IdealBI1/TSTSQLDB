CREATE TABLE [HSTG].[HSTG_CA_CLADRLNK] (
    [Loc]                          NVARCHAR (100)  NULL,
    [Sup#]                         DECIMAL (36, 4) NULL,
    [Code]                         NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

