CREATE TABLE [HSTG].[HSTG_EBS_FND_LOOKUP_VALUES] (
    [LOOKUP_TYPE]                  VARCHAR (100)  NULL,
    [LANGUAGE]                     VARCHAR (100)  NULL,
    [LOOKUP_CODE]                  VARCHAR (100)  NULL,
    [MEANING]                      VARCHAR (1000) NULL,
    [DESCRIPTION]                  VARCHAR (1000) NULL,
    [ENABLED_FLAG]                 VARCHAR (100)  NULL,
    [START_DATE_ACTIVE]            DATETIME2 (7)  NULL,
    [END_DATE_ACTIVE]              DATETIME2 (7)  NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]             DATETIME2 (7)  NULL,
    [SOURCE_LANG]                  VARCHAR (100)  NULL,
    [SECURITY_GROUP_ID]            FLOAT (53)     NULL,
    [VIEW_APPLICATION_ID]          FLOAT (53)     NULL,
    [TERRITORY_CODE]               VARCHAR (100)  NULL,
    [ATTRIBUTE_CATEGORY]           VARCHAR (100)  NULL,
    [ATTRIBUTE1]                   VARCHAR (1000) NULL,
    [ATTRIBUTE2]                   VARCHAR (1000) NULL,
    [ATTRIBUTE3]                   VARCHAR (1000) NULL,
    [ATTRIBUTE4]                   VARCHAR (1000) NULL,
    [ATTRIBUTE5]                   VARCHAR (1000) NULL,
    [ATTRIBUTE6]                   VARCHAR (1000) NULL,
    [ATTRIBUTE7]                   VARCHAR (1000) NULL,
    [ATTRIBUTE8]                   VARCHAR (1000) NULL,
    [ATTRIBUTE9]                   VARCHAR (1000) NULL,
    [ATTRIBUTE10]                  VARCHAR (1000) NULL,
    [ATTRIBUTE11]                  VARCHAR (1000) NULL,
    [ATTRIBUTE12]                  VARCHAR (1000) NULL,
    [ATTRIBUTE13]                  VARCHAR (1000) NULL,
    [ATTRIBUTE14]                  VARCHAR (1000) NULL,
    [ATTRIBUTE15]                  VARCHAR (1000) NULL,
    [TAG]                          VARCHAR (1000) NULL,
    [LEAF_NODE]                    VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)    NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_HSTG_EBS_FND_LOOKUP_VALUES_OMD_HASH_FULL_RECORD]
    ON [HSTG].[HSTG_EBS_FND_LOOKUP_VALUES]([OMD_HASH_FULL_RECORD] ASC)
    INCLUDE([OMD_IS_RECORD_DELETED], [OMD_CURRENT_RECORD_INDICATOR]);

