﻿CREATE TABLE [STG].[STG_EBS_RD_BI_ITEM_PREF_VENDORS] (
    [DC]                      VARCHAR (1000) NULL,
    [ITEM_ID]                 FLOAT (53)     NULL,
    [ITEM_CODE]               VARCHAR (1000) NULL,
    [VENDOR_NUMBER]           VARCHAR (8000) NULL,
    [LAST_UPDATE_DATE]        DATETIME2 (7)  NULL,
    [META_EFFECTIVE_DATETIME] DATETIME2 (7)  NULL,
    [META_FILE_NAME]          VARCHAR (8000) NULL,
    [META_RECORD_KEY]         VARCHAR (1000) NULL,
    [META_RECORD_CHECKSUM]    VARCHAR (1000) NULL,
    [META_RECORD_SOURCE]      VARCHAR (8000) NULL,
    [META_ROW_ID]             BIGINT         IDENTITY (1, 1) NOT NULL
);

