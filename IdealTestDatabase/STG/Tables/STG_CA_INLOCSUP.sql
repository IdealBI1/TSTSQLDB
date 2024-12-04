CREATE TABLE [STG].[STG_CA_INLOCSUP] (
    [Item Code]            NVARCHAR (100)  NULL,
    [Loc]                  DECIMAL (36, 4) NULL,
    [LSup]                 DECIMAL (36, 4) NULL,
    [Loc Supp Item Code]   NVARCHAR (100)  NULL,
    [Loc Buy Prc]          DECIMAL (36, 4) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

