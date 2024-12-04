CREATE TABLE [HSTG].[HSTG_CA_SYTABLES_DLCA] (
    [Crm Territory Description]    NVARCHAR (240)  NULL,
    [Crl]                          NVARCHAR (120)  NULL,
    [Sp1]                          NVARCHAR (20)   NULL,
    [Sp2]                          NVARCHAR (20)   NULL,
    [Sp3]                          NVARCHAR (20)   NULL,
    [Sp4]                          NVARCHAR (20)   NULL,
    [Sp5]                          NVARCHAR (20)   NULL,
    [Sp6]                          NVARCHAR (20)   NULL,
    [Msp]                          NVARCHAR (20)   NULL,
    [Crmt]                         DECIMAL (36, 4) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

