CREATE TABLE [HSTG].[HSTG_CA_INRFRHDR] (
    [Rfr#]                         DECIMAL (36, 4) NULL,
    [ReturnDate]                   DATE            NULL,
    [Sup#]                         DECIMAL (36, 4) NULL,
    [Loc]                          NVARCHAR (100)  NULL,
    [Eby]                          NVARCHAR (100)  NULL,
    [Batch#]                       DECIMAL (36, 4) NULL,
    [Invoice#]                     NVARCHAR (100)  NULL,
    [Gra]                          NVARCHAR (100)  NULL,
    [Adr#]                         NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

