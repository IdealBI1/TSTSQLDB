CREATE TABLE [HSTG].[HSTG_EBS_WSH_DELIVERY_ASSIGNMENTS] (
    [DELIVERY_ASSIGNMENT_ID]       FLOAT (53)     NULL,
    [DELIVERY_ID]                  FLOAT (53)     NULL,
    [PARENT_DELIVERY_ID]           FLOAT (53)     NULL,
    [DELIVERY_DETAIL_ID]           FLOAT (53)     NULL,
    [PARENT_DELIVERY_DETAIL_ID]    FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME       NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]             DATETIME       NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]       FLOAT (53)     NULL,
    [PROGRAM_ID]                   FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]          DATETIME       NULL,
    [REQUEST_ID]                   FLOAT (53)     NULL,
    [ACTIVE_FLAG]                  VARCHAR (100)  NULL,
    [TYPE]                         VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)    NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL
);

