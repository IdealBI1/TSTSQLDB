﻿CREATE TABLE [STG].[STG_CA_POMAST] (
    [Po#]                  DECIMAL (36, 4) NULL,
    [Sup#]                 DECIMAL (36, 4) NULL,
    [Order Date]           DATE            NULL,
    [ExpectDate]           DATE            NULL,
    [Recpt Date]           DATE            NULL,
    [RequestDat]           DATE            NULL,
    [S]                    NVARCHAR (100)  NULL,
    [Lst Invoice Ref]      NVARCHAR (100)  NULL,
    [Deliver to (legal)]   NVARCHAR (100)  NULL,
    [Delivery Street & No] NVARCHAR (100)  NULL,
    [Delivery District]    NVARCHAR (100)  NULL,
    [Delivery Region]      NVARCHAR (100)  NULL,
    [Site Name / Details]  NVARCHAR (100)  NULL,
    [Site Contact / Phone] NVARCHAR (100)  NULL,
    [Order Value]          DECIMAL (36, 4) NULL,
    [Receipt Val]          DECIMAL (36, 4) NULL,
    [Invoice Val]          DECIMAL (36, 4) NULL,
    [Oby]                  NVARCHAR (100)  NULL,
    [Supplier Ref]         NVARCHAR (100)  NULL,
    [Adr#]                 NVARCHAR (100)  NULL,
    [Supplier Message]     NVARCHAR (2000) NULL,
    [Transmission Message] NVARCHAR (100)  NULL,
    [Delivery Method]      NVARCHAR (100)  NULL,
    [Flags]                NVARCHAR (100)  NULL,
    [Start Date]           DATE            NULL,
    [STime]                TIME (7)        NULL,
    [Start By]             NVARCHAR (100)  NULL,
    [Amend Date]           DATE            NULL,
    [ATime]                TIME (7)        NULL,
    [Amend By]             NVARCHAR (100)  NULL,
    [Internal Notes]       NVARCHAR (2000) NULL,
    [Loc]                  NVARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);
