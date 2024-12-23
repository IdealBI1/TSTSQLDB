﻿CREATE TABLE [STG].[STG_CA_CLMAST] (
    [Sup#]                 DECIMAL (36, 4) NULL,
    [Supplier Name]        NVARCHAR (100)  NULL,
    [Key]                  NVARCHAR (100)  NULL,
    [Address Line 1]       NVARCHAR (100)  NULL,
    [Address Line 2]       NVARCHAR (100)  NULL,
    [Address Line 3]       NVARCHAR (100)  NULL,
    [Phone]                NVARCHAR (100)  NULL,
    [Address Line 4]       NVARCHAR (100)  NULL,
    [Typ]                  NVARCHAR (100)  NULL,
    [Cat]                  NVARCHAR (100)  NULL,
    [OraId#]               NVARCHAR (100)  NULL,
    [Email]                NVARCHAR (100)  NULL,
    [Mobile]               NVARCHAR (100)  NULL,
    [T]                    NVARCHAR (100)  NULL,
    [R]                    NVARCHAR (100)  NULL,
    [P]                    NVARCHAR (100)  NULL,
    [C]                    NVARCHAR (100)  NULL,
    [A]                    NVARCHAR (100)  NULL,
    [B]                    NVARCHAR (100)  NULL,
    [Email Po]             NVARCHAR (1000) NULL,
    [Po Popup]             NVARCHAR (1000) NULL,
    [Rfc Popup]            NVARCHAR (1000) NULL,
    [Start Date]           DATE            NULL,
    [LstOrdDate]           DATE            NULL,
    [LstDelDate]           DATE            NULL,
    [LstRetDate]           DATE            NULL,
    [Uninvoiced]           DECIMAL (36, 4) NULL,
    [Uncredited]           DECIMAL (36, 4) NULL,
    [Free Phone]           NVARCHAR (100)  NULL,
    [Email Rfc]            NVARCHAR (1000) NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

