CREATE TABLE [HSTG].[HSTG_CA_SOLSTAT] (
    [So#]                          NVARCHAR (20)   NULL,
    [Sol#]                         DECIMAL (36, 4) NULL,
    [Cust#]                        DECIMAL (36, 4) NULL,
    [Order Date]                   DATETIME2 (7)   NULL,
    [S]                            NVARCHAR (2)    NULL,
    [I]                            NVARCHAR (2)    NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

