CREATE TABLE [HSTG].[HSTG_CA_OELREB] (
    [Invoice#]                     DECIMAL (36, 4) NULL,
    [Inl#]                         DECIMAL (36, 4) NULL,
    [T]                            NVARCHAR (2)    NULL,
    [RebateVal]                    DECIMAL (36, 4) NULL,
    [Line Date]                    DATETIME2 (7)   NULL,
    [Pd]                           DECIMAL (36, 4) NULL,
    [OeIncat]                      NVARCHAR (20)   NULL,
    [Item Code]                    NVARCHAR (60)   NULL,
    [Loc]                          NVARCHAR (6)    NULL,
    [Cust#]                        DECIMAL (36, 4) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

