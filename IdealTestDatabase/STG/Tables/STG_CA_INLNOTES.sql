﻿CREATE TABLE [STG].[STG_CA_INLNOTES] (
    [Item Code]            NVARCHAR (100)  NULL,
    [Loc]                  NVARCHAR (100)  NULL,
    [Item Location Notes]  NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

