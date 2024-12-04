CREATE TABLE [STG].[STG_CA_INPRCAT] (
    [Prcat]                    NVARCHAR (100)  NULL,
    [Price Category Descriptn] NVARCHAR (100)  NULL,
    [MaxDis]                   DECIMAL (36, 4) NULL,
    [Usage]                    NVARCHAR (1000) NULL,
    [CatReb]                   DECIMAL (36, 4) NULL,
    [Sub Category Description] NVARCHAR (1000) NULL,
    [OMD_INSERT_DATETIME]      DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]            VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD]     VARCHAR (1000)  NULL
);

