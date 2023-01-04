CREATE TABLE [STG].[STG_CA_INREASON] (
    [C]                    NVARCHAR (1)    NULL,
    [Adjustment Reason]    NVARCHAR (1000) NULL,
    [GlAccount#]           DECIMAL (36, 4) NULL,
    [A]                    NVARCHAR (1)    NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

