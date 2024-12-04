CREATE TABLE [STG].[STG_CA_INRFR] (
    [Rfr#]                 DECIMAL (36, 4) NULL,
    [Rfrl]                 DECIMAL (36, 4) NULL,
    [ReplaceDat]           DATE            NULL,
    [Sup#]                 DECIMAL (36, 4) NULL,
    [Loc]                  NVARCHAR (100)  NULL,
    [Item Code]            NVARCHAR (100)  NULL,
    [Replacement Inv]      NVARCHAR (100)  NULL,
    [Reason]               NVARCHAR (100)  NULL,
    [Ret Qty]              DECIMAL (36, 4) NULL,
    [Rby]                  NVARCHAR (100)  NULL,
    [Comment]              NVARCHAR (1000) NULL,
    [Start Date]           DATE            NULL,
    [STime]                TIME (7)        NULL,
    [Start By]             NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

