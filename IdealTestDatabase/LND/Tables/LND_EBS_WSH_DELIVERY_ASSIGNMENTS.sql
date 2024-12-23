﻿CREATE TABLE [LND].[LND_EBS_WSH_DELIVERY_ASSIGNMENTS] (
    [DELIVERY_ASSIGNMENT_ID]    NVARCHAR (4000) NULL,
    [DELIVERY_ID]               NVARCHAR (4000) NULL,
    [PARENT_DELIVERY_ID]        NVARCHAR (4000) NULL,
    [DELIVERY_DETAIL_ID]        NVARCHAR (4000) NULL,
    [PARENT_DELIVERY_DETAIL_ID] NVARCHAR (4000) NULL,
    [CREATION_DATE]             NVARCHAR (4000) NULL,
    [CREATED_BY]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]          NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]           NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]         NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]    NVARCHAR (4000) NULL,
    [PROGRAM_ID]                NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]       NVARCHAR (4000) NULL,
    [REQUEST_ID]                NVARCHAR (4000) NULL,
    [ACTIVE_FLAG]               NVARCHAR (4000) NULL,
    [TYPE]                      NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]       DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]             VARCHAR (8000)  NOT NULL
);

