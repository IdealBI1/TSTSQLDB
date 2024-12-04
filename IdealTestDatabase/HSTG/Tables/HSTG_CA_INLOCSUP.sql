﻿CREATE TABLE [HSTG].[HSTG_CA_INLOCSUP] (
    [Item Code]                    NVARCHAR (100)  NULL,
    [Loc]                          DECIMAL (36, 4) NULL,
    [LSup]                         DECIMAL (36, 4) NULL,
    [Loc Supp Item Code]           NVARCHAR (100)  NULL,
    [Loc Buy Prc]                  DECIMAL (36, 4) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

