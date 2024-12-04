﻿CREATE TABLE [STG].[STG_EBS_CST_ITEM_COSTS] (
    [INVENTORY_ITEM_ID]       FLOAT (53)     NULL,
    [ORGANIZATION_ID]         FLOAT (53)     NULL,
    [COST_TYPE_ID]            FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]        DATETIME       NULL,
    [LAST_UPDATED_BY]         FLOAT (53)     NULL,
    [CREATION_DATE]           DATETIME       NULL,
    [CREATED_BY]              FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]       FLOAT (53)     NULL,
    [INVENTORY_ASSET_FLAG]    FLOAT (53)     NULL,
    [LOT_SIZE]                FLOAT (53)     NULL,
    [BASED_ON_ROLLUP_FLAG]    FLOAT (53)     NULL,
    [SHRINKAGE_RATE]          FLOAT (53)     NULL,
    [DEFAULTED_FLAG]          FLOAT (53)     NULL,
    [COST_UPDATE_ID]          FLOAT (53)     NULL,
    [PL_MATERIAL]             FLOAT (53)     NULL,
    [PL_MATERIAL_OVERHEAD]    FLOAT (53)     NULL,
    [PL_RESOURCE]             FLOAT (53)     NULL,
    [PL_OUTSIDE_PROCESSING]   FLOAT (53)     NULL,
    [PL_OVERHEAD]             FLOAT (53)     NULL,
    [TL_MATERIAL]             FLOAT (53)     NULL,
    [TL_MATERIAL_OVERHEAD]    FLOAT (53)     NULL,
    [TL_RESOURCE]             FLOAT (53)     NULL,
    [TL_OUTSIDE_PROCESSING]   FLOAT (53)     NULL,
    [TL_OVERHEAD]             FLOAT (53)     NULL,
    [MATERIAL_COST]           FLOAT (53)     NULL,
    [MATERIAL_OVERHEAD_COST]  FLOAT (53)     NULL,
    [RESOURCE_COST]           FLOAT (53)     NULL,
    [OUTSIDE_PROCESSING_COST] FLOAT (53)     NULL,
    [OVERHEAD_COST]           FLOAT (53)     NULL,
    [PL_ITEM_COST]            FLOAT (53)     NULL,
    [TL_ITEM_COST]            FLOAT (53)     NULL,
    [ITEM_COST]               FLOAT (53)     NULL,
    [UNBURDENED_COST]         FLOAT (53)     NULL,
    [BURDEN_COST]             FLOAT (53)     NULL,
    [ATTRIBUTE_CATEGORY]      VARCHAR (100)  NULL,
    [ATTRIBUTE1]              VARCHAR (1000) NULL,
    [ATTRIBUTE2]              VARCHAR (1000) NULL,
    [ATTRIBUTE3]              VARCHAR (1000) NULL,
    [ATTRIBUTE4]              VARCHAR (1000) NULL,
    [ATTRIBUTE5]              VARCHAR (1000) NULL,
    [ATTRIBUTE6]              VARCHAR (1000) NULL,
    [ATTRIBUTE7]              VARCHAR (1000) NULL,
    [ATTRIBUTE8]              VARCHAR (1000) NULL,
    [ATTRIBUTE9]              VARCHAR (1000) NULL,
    [ATTRIBUTE10]             VARCHAR (1000) NULL,
    [ATTRIBUTE11]             VARCHAR (1000) NULL,
    [ATTRIBUTE12]             VARCHAR (1000) NULL,
    [ATTRIBUTE13]             VARCHAR (1000) NULL,
    [ATTRIBUTE14]             VARCHAR (1000) NULL,
    [ATTRIBUTE15]             VARCHAR (1000) NULL,
    [REQUEST_ID]              FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]  FLOAT (53)     NULL,
    [PROGRAM_ID]              FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]     DATETIME       NULL,
    [ROLLUP_ID]               FLOAT (53)     NULL,
    [ASSIGNMENT_SET_ID]       FLOAT (53)     NULL,
    [OMD_INSERT_DATETIME]     DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]           VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD]    VARCHAR (1000) NULL
);

