﻿CREATE TABLE [HSTG].[HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS] (
    [ADJUSTMENT_ID]                 FLOAT (53)     NULL,
    [ORGANIZATION_ID]               FLOAT (53)     NULL,
    [PHYSICAL_INVENTORY_ID]         FLOAT (53)     NULL,
    [INVENTORY_ITEM_ID]             FLOAT (53)     NULL,
    [SUBINVENTORY_NAME]             VARCHAR (100)  NULL,
    [SYSTEM_QUANTITY]               FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]              DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]               FLOAT (53)     NULL,
    [CREATION_DATE]                 DATETIME2 (7)  NULL,
    [CREATED_BY]                    FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]             FLOAT (53)     NULL,
    [COUNT_QUANTITY]                FLOAT (53)     NULL,
    [ADJUSTMENT_QUANTITY]           FLOAT (53)     NULL,
    [REVISION]                      VARCHAR (100)  NULL,
    [LOCATOR_ID]                    FLOAT (53)     NULL,
    [LOT_NUMBER]                    VARCHAR (1000) NULL,
    [LOT_EXPIRATION_DATE]           DATETIME2 (7)  NULL,
    [SERIAL_NUMBER]                 VARCHAR (100)  NULL,
    [ACTUAL_COST]                   FLOAT (53)     NULL,
    [APPROVAL_STATUS]               FLOAT (53)     NULL,
    [APPROVED_BY_EMPLOYEE_ID]       FLOAT (53)     NULL,
    [AUTOMATIC_APPROVAL_CODE]       FLOAT (53)     NULL,
    [GL_ADJUST_ACCOUNT]             FLOAT (53)     NULL,
    [REQUEST_ID]                    FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]        FLOAT (53)     NULL,
    [PROGRAM_ID]                    FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]           DATETIME2 (7)  NULL,
    [LOT_SERIAL_CONTROLS]           VARCHAR (100)  NULL,
    [TEMP_APPROVER]                 FLOAT (53)     NULL,
    [PARENT_LPN_ID]                 FLOAT (53)     NULL,
    [OUTERMOST_LPN_ID]              FLOAT (53)     NULL,
    [COST_GROUP_ID]                 FLOAT (53)     NULL,
    [SECONDARY_SYSTEM_QTY]          FLOAT (53)     NULL,
    [SECONDARY_COUNT_QTY]           FLOAT (53)     NULL,
    [SECONDARY_ADJUSTMENT_QTY]      FLOAT (53)     NULL,
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

