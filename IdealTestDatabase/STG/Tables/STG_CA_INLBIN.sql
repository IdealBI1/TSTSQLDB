CREATE TABLE [STG].[STG_CA_INLBIN] (
    [Loc]                  DECIMAL (36, 4) NULL,
    [Bin]                  NVARCHAR (100)  NULL,
    [Seq]                  DECIMAL (36, 4) NULL,
    [Item Code]            NVARCHAR (100)  NULL,
    [Comment]              NVARCHAR (1000) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

