CREATE TABLE [STG].[STG_CA_SOMSTAT] (
    [So#]                  NVARCHAR (20)   NULL,
    [Cust#]                DECIMAL (36, 4) NULL,
    [Order Date]           DATETIME2 (7)   NULL,
    [S]                    NVARCHAR (2)    NULL,
    [I]                    NVARCHAR (2)    NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

