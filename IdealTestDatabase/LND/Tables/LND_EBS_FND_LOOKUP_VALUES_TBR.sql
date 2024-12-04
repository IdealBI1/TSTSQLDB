﻿CREATE TABLE [LND].[LND_EBS_FND_LOOKUP_VALUES_TBR] (
    [LOOKUP_TYPE]         NVARCHAR (30)  NULL,
    [LANGUAGE]            NVARCHAR (30)  NULL,
    [LOOKUP_CODE]         NVARCHAR (30)  NULL,
    [MEANING]             NVARCHAR (80)  NULL,
    [DESCRIPTION]         NVARCHAR (240) NULL,
    [ENABLED_FLAG]        NVARCHAR (1)   NULL,
    [START_DATE_ACTIVE]   DATETIME2 (0)  NULL,
    [END_DATE_ACTIVE]     DATETIME2 (0)  NULL,
    [CREATED_BY]          DECIMAL (15)   NULL,
    [CREATION_DATE]       DATETIME2 (0)  NULL,
    [LAST_UPDATED_BY]     DECIMAL (15)   NULL,
    [LAST_UPDATE_LOGIN]   DECIMAL (15)   NULL,
    [LAST_UPDATE_DATE]    DATETIME2 (0)  NULL,
    [SOURCE_LANG]         NVARCHAR (4)   NULL,
    [SECURITY_GROUP_ID]   DECIMAL (15)   NULL,
    [VIEW_APPLICATION_ID] DECIMAL (15)   NULL,
    [TERRITORY_CODE]      NVARCHAR (2)   NULL,
    [ATTRIBUTE_CATEGORY]  NVARCHAR (30)  NULL,
    [ATTRIBUTE1]          NVARCHAR (150) NULL,
    [ATTRIBUTE2]          NVARCHAR (150) NULL,
    [ATTRIBUTE3]          NVARCHAR (150) NULL,
    [ATTRIBUTE4]          NVARCHAR (150) NULL,
    [ATTRIBUTE5]          NVARCHAR (150) NULL,
    [ATTRIBUTE6]          NVARCHAR (150) NULL,
    [ATTRIBUTE7]          NVARCHAR (150) NULL,
    [ATTRIBUTE8]          NVARCHAR (150) NULL,
    [ATTRIBUTE9]          NVARCHAR (150) NULL,
    [ATTRIBUTE10]         NVARCHAR (150) NULL,
    [ATTRIBUTE11]         NVARCHAR (150) NULL,
    [ATTRIBUTE12]         NVARCHAR (150) NULL,
    [ATTRIBUTE13]         NVARCHAR (150) NULL,
    [ATTRIBUTE14]         NVARCHAR (150) NULL,
    [ATTRIBUTE15]         NVARCHAR (150) NULL,
    [TAG]                 NVARCHAR (150) NULL,
    [LEAF_NODE]           NVARCHAR (1)   NULL
);
