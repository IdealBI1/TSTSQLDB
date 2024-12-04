CREATE TABLE [HSTG].[HSTG_EBS_FND_FLEX_VALUES_TL] (
    [FLEX_VALUE_ID]                FLOAT (53)     NULL,
    [LANGUAGE]                     VARCHAR (100)  NULL,
    [LAST_UPDATE_DATE]             DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME2 (7)  NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [DESCRIPTION]                  VARCHAR (1000) NULL,
    [SOURCE_LANG]                  VARCHAR (100)  NULL,
    [FLEX_VALUE_MEANING]           VARCHAR (1000) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)    NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL
);

