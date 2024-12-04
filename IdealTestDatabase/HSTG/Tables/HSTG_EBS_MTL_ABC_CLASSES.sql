﻿CREATE TABLE [HSTG].[HSTG_EBS_MTL_ABC_CLASSES] (
    [ABC_CLASS_ID]                  FLOAT (53)     NULL,
    [ABC_CLASS_NAME]                VARCHAR (100)  NULL,
    [ORGANIZATION_ID]               FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]              DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]               FLOAT (53)     NULL,
    [CREATION_DATE]                 DATETIME2 (7)  NULL,
    [CREATED_BY]                    FLOAT (53)     NULL,
    [DESCRIPTION]                   VARCHAR (1000) NULL,
    [DISABLE_DATE]                  DATETIME2 (7)  NULL,
    [REQUEST_ID]                    FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]        FLOAT (53)     NULL,
    [PROGRAM_ID]                    FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]           DATETIME2 (7)  NULL,
    [META_RECORD_KEY]               VARCHAR (1000) NULL,
    [META_EFFECTIVE_DATETIME]       DATETIME2 (7)  NULL,
    [META_EXPIRY_DATETIME]          DATETIME2 (7)  NULL,
    [META_CDC_OPERATION]            VARCHAR (1000) NULL,
    [META_FILE_NAME]                VARCHAR (8000) NULL,
    [META_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL,
    [META_DELETE_INDICATOR]         VARCHAR (1)    NULL,
    [META_RECORD_CHECKSUM]          VARCHAR (1000) NULL,
    [META_RECORD_SOURCE]            VARCHAR (8000) NULL,
    [META_ROW_ID]                   BIGINT         IDENTITY (1, 1) NOT NULL
);

