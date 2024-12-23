﻿CREATE TABLE [LND].[LND_EBS_MTL_PHYSICAL_INVENTORIES] (
    [PHYSICAL_INVENTORY_ID]     NVARCHAR (4000) NULL,
    [ORGANIZATION_ID]           NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]          NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]           NVARCHAR (4000) NULL,
    [CREATION_DATE]             NVARCHAR (4000) NULL,
    [CREATED_BY]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]         NVARCHAR (4000) NULL,
    [PHYSICAL_INVENTORY_DATE]   NVARCHAR (4000) NULL,
    [LAST_ADJUSTMENT_DATE]      NVARCHAR (4000) NULL,
    [TOTAL_ADJUSTMENT_VALUE]    NVARCHAR (4000) NULL,
    [DESCRIPTION]               NVARCHAR (4000) NULL,
    [FREEZE_DATE]               NVARCHAR (4000) NULL,
    [PHYSICAL_INVENTORY_NAME]   NVARCHAR (4000) NULL,
    [APPROVAL_REQUIRED]         NVARCHAR (4000) NULL,
    [ALL_SUBINVENTORIES_FLAG]   NVARCHAR (4000) NULL,
    [NEXT_TAG_NUMBER]           NVARCHAR (4000) NULL,
    [TAG_NUMBER_INCREMENTS]     NVARCHAR (4000) NULL,
    [DEFAULT_GL_ADJUST_ACCOUNT] NVARCHAR (4000) NULL,
    [REQUEST_ID]                NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]    NVARCHAR (4000) NULL,
    [PROGRAM_ID]                NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]       NVARCHAR (4000) NULL,
    [APPROVAL_TOLERANCE_POS]    NVARCHAR (4000) NULL,
    [APPROVAL_TOLERANCE_NEG]    NVARCHAR (4000) NULL,
    [COST_VARIANCE_POS]         NVARCHAR (4000) NULL,
    [COST_VARIANCE_NEG]         NVARCHAR (4000) NULL,
    [NUMBER_OF_SKUS]            NVARCHAR (4000) NULL,
    [DYNAMIC_TAG_ENTRY_FLAG]    NVARCHAR (4000) NULL,
    [ATTRIBUTE1]                NVARCHAR (4000) NULL,
    [ATTRIBUTE2]                NVARCHAR (4000) NULL,
    [ATTRIBUTE3]                NVARCHAR (4000) NULL,
    [ATTRIBUTE4]                NVARCHAR (4000) NULL,
    [ATTRIBUTE5]                NVARCHAR (4000) NULL,
    [ATTRIBUTE6]                NVARCHAR (4000) NULL,
    [ATTRIBUTE7]                NVARCHAR (4000) NULL,
    [ATTRIBUTE8]                NVARCHAR (4000) NULL,
    [ATTRIBUTE9]                NVARCHAR (4000) NULL,
    [ATTRIBUTE10]               NVARCHAR (4000) NULL,
    [ATTRIBUTE11]               NVARCHAR (4000) NULL,
    [ATTRIBUTE12]               NVARCHAR (4000) NULL,
    [ATTRIBUTE13]               NVARCHAR (4000) NULL,
    [ATTRIBUTE14]               NVARCHAR (4000) NULL,
    [ATTRIBUTE15]               NVARCHAR (4000) NULL,
    [ATTRIBUTE_CATEGORY]        NVARCHAR (4000) NULL,
    [EXCLUDE_ZERO_BALANCE]      NVARCHAR (4000) NULL,
    [EXCLUDE_NEGATIVE_BALANCE]  NVARCHAR (4000) NULL,
    [META_EFFECTIVE_DATETIME]   DATETIME2 (7)   NULL,
    [META_FILE_NAME]            NVARCHAR (MAX)  NULL,
    [META_RECORD_SOURCE]        NVARCHAR (MAX)  NULL
);

