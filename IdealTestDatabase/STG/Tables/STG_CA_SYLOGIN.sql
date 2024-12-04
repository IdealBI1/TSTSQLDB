CREATE TABLE [STG].[STG_CA_SYLOGIN] (
    [Login]                NVARCHAR (30)  NULL,
    [User Name]            NVARCHAR (120) NULL,
    [Function Role Title]  NVARCHAR (50)  NULL,
    [Loc]                  NVARCHAR (6)   NULL,
    [PwordDate]            DATETIME2 (7)  NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]        VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000) NULL
);

