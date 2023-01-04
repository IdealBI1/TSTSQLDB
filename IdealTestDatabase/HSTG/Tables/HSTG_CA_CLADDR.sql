CREATE TABLE [HSTG].[HSTG_CA_CLADDR] (
    [Sup#]                         DECIMAL (36, 4) NULL,
    [Code]                         NVARCHAR (100)  NULL,
    [Supplier Local Name]          NVARCHAR (100)  NULL,
    [Supplier Local Address 1]     NVARCHAR (100)  NULL,
    [Supplier Local Address 2]     NVARCHAR (100)  NULL,
    [Supplier Local Address 3]     NVARCHAR (100)  NULL,
    [Supplier Local Address 4]     NVARCHAR (100)  NULL,
    [Contact]                      NVARCHAR (100)  NULL,
    [Phone]                        NVARCHAR (100)  NULL,
    [Mobile]                       NVARCHAR (100)  NULL,
    [Email Contact]                NVARCHAR (100)  NULL,
    [Email Po]                     NVARCHAR (100)  NULL,
    [Free Phone]                   NVARCHAR (100)  NULL,
    [Email Rfc]                    NVARCHAR (1000) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

