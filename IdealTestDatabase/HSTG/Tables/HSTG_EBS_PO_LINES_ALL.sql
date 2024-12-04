﻿CREATE TABLE [HSTG].[HSTG_EBS_PO_LINES_ALL] (
    [PO_LINE_ID]                   FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]             DATETIME       NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [PO_HEADER_ID]                 FLOAT (53)     NULL,
    [LINE_TYPE_ID]                 FLOAT (53)     NULL,
    [LINE_NUM]                     FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME       NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [ITEM_ID]                      FLOAT (53)     NULL,
    [ITEM_REVISION]                VARCHAR (100)  NULL,
    [CATEGORY_ID]                  FLOAT (53)     NULL,
    [ITEM_DESCRIPTION]             VARCHAR (1000) NULL,
    [UNIT_MEAS_LOOKUP_CODE]        VARCHAR (100)  NULL,
    [QUANTITY_COMMITTED]           FLOAT (53)     NULL,
    [COMMITTED_AMOUNT]             FLOAT (53)     NULL,
    [ALLOW_PRICE_OVERRIDE_FLAG]    VARCHAR (100)  NULL,
    [NOT_TO_EXCEED_PRICE]          FLOAT (53)     NULL,
    [LIST_PRICE_PER_UNIT]          FLOAT (53)     NULL,
    [UNIT_PRICE]                   FLOAT (53)     NULL,
    [QUANTITY]                     FLOAT (53)     NULL,
    [UN_NUMBER_ID]                 FLOAT (53)     NULL,
    [HAZARD_CLASS_ID]              FLOAT (53)     NULL,
    [NOTE_TO_VENDOR]               VARCHAR (1000) NULL,
    [FROM_HEADER_ID]               FLOAT (53)     NULL,
    [FROM_LINE_ID]                 FLOAT (53)     NULL,
    [MIN_ORDER_QUANTITY]           FLOAT (53)     NULL,
    [MAX_ORDER_QUANTITY]           FLOAT (53)     NULL,
    [QTY_RCV_TOLERANCE]            FLOAT (53)     NULL,
    [OVER_TOLERANCE_ERROR_FLAG]    VARCHAR (100)  NULL,
    [MARKET_PRICE]                 FLOAT (53)     NULL,
    [UNORDERED_FLAG]               VARCHAR (100)  NULL,
    [CLOSED_FLAG]                  VARCHAR (100)  NULL,
    [USER_HOLD_FLAG]               VARCHAR (100)  NULL,
    [CANCEL_FLAG]                  VARCHAR (100)  NULL,
    [CANCELLED_BY]                 FLOAT (53)     NULL,
    [CANCEL_DATE]                  DATETIME       NULL,
    [CANCEL_REASON]                VARCHAR (1000) NULL,
    [FIRM_STATUS_LOOKUP_CODE]      VARCHAR (100)  NULL,
    [FIRM_DATE]                    DATETIME       NULL,
    [VENDOR_PRODUCT_NUM]           VARCHAR (100)  NULL,
    [CONTRACT_NUM]                 VARCHAR (100)  NULL,
    [TAXABLE_FLAG]                 VARCHAR (100)  NULL,
    [TAX_NAME]                     VARCHAR (100)  NULL,
    [TYPE_1099]                    VARCHAR (100)  NULL,
    [CAPITAL_EXPENSE_FLAG]         VARCHAR (100)  NULL,
    [NEGOTIATED_BY_PREPARER_FLAG]  VARCHAR (100)  NULL,
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
    [REFERENCE_NUM]                VARCHAR (100)  NULL,
    [ATTRIBUTE11]                  VARCHAR (1000) NULL,
    [ATTRIBUTE12]                  VARCHAR (1000) NULL,
    [ATTRIBUTE13]                  VARCHAR (1000) NULL,
    [ATTRIBUTE14]                  VARCHAR (1000) NULL,
    [ATTRIBUTE15]                  VARCHAR (1000) NULL,
    [MIN_RELEASE_AMOUNT]           FLOAT (53)     NULL,
    [PRICE_TYPE_LOOKUP_CODE]       VARCHAR (100)  NULL,
    [CLOSED_CODE]                  VARCHAR (100)  NULL,
    [PRICE_BREAK_LOOKUP_CODE]      VARCHAR (100)  NULL,
    [USSGL_TRANSACTION_CODE]       VARCHAR (100)  NULL,
    [GOVERNMENT_CONTEXT]           VARCHAR (100)  NULL,
    [REQUEST_ID]                   FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]       FLOAT (53)     NULL,
    [PROGRAM_ID]                   FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]          DATETIME       NULL,
    [CLOSED_DATE]                  DATETIME       NULL,
    [CLOSED_REASON]                VARCHAR (1000) NULL,
    [CLOSED_BY]                    FLOAT (53)     NULL,
    [TRANSACTION_REASON_CODE]      VARCHAR (100)  NULL,
    [ORG_ID]                       FLOAT (53)     NULL,
    [QC_GRADE]                     VARCHAR (100)  NULL,
    [BASE_UOM]                     VARCHAR (100)  NULL,
    [BASE_QTY]                     FLOAT (53)     NULL,
    [SECONDARY_UOM]                VARCHAR (100)  NULL,
    [SECONDARY_QTY]                FLOAT (53)     NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]    VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE1]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE2]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE3]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE4]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE5]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE6]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE7]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE8]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE9]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE10]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE11]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE12]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE13]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE14]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE15]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE16]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE17]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE18]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE19]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE20]           VARCHAR (1000) NULL,
    [LINE_REFERENCE_NUM]           VARCHAR (100)  NULL,
    [PROJECT_ID]                   FLOAT (53)     NULL,
    [TASK_ID]                      FLOAT (53)     NULL,
    [EXPIRATION_DATE]              DATETIME       NULL,
    [TAX_CODE_ID]                  FLOAT (53)     NULL,
    [OKE_CONTRACT_HEADER_ID]       FLOAT (53)     NULL,
    [OKE_CONTRACT_VERSION_ID]      FLOAT (53)     NULL,
    [SECONDARY_QUANTITY]           FLOAT (53)     NULL,
    [SECONDARY_UNIT_OF_MEASURE]    VARCHAR (100)  NULL,
    [PREFERRED_GRADE]              VARCHAR (1000) NULL,
    [AUCTION_HEADER_ID]            FLOAT (53)     NULL,
    [AUCTION_DISPLAY_NUMBER]       VARCHAR (100)  NULL,
    [AUCTION_LINE_NUMBER]          FLOAT (53)     NULL,
    [BID_NUMBER]                   FLOAT (53)     NULL,
    [BID_LINE_NUMBER]              FLOAT (53)     NULL,
    [RETROACTIVE_DATE]             DATETIME       NULL,
    [FROM_LINE_LOCATION_ID]        FLOAT (53)     NULL,
    [SUPPLIER_REF_NUMBER]          VARCHAR (1000) NULL,
    [CONTRACT_ID]                  FLOAT (53)     NULL,
    [START_DATE]                   DATETIME       NULL,
    [AMOUNT]                       FLOAT (53)     NULL,
    [JOB_ID]                       FLOAT (53)     NULL,
    [CONTRACTOR_FIRST_NAME]        VARCHAR (1000) NULL,
    [CONTRACTOR_LAST_NAME]         VARCHAR (1000) NULL,
    [ORDER_TYPE_LOOKUP_CODE]       VARCHAR (100)  NULL,
    [PURCHASE_BASIS]               VARCHAR (100)  NULL,
    [MATCHING_BASIS]               VARCHAR (100)  NULL,
    [SVC_AMOUNT_NOTIF_SENT]        VARCHAR (100)  NULL,
    [SVC_COMPLETION_NOTIF_SENT]    VARCHAR (100)  NULL,
    [BASE_UNIT_PRICE]              FLOAT (53)     NULL,
    [MANUAL_PRICE_CHANGE_FLAG]     VARCHAR (100)  NULL,
    [RETAINAGE_RATE]               FLOAT (53)     NULL,
    [MAX_RETAINAGE_AMOUNT]         FLOAT (53)     NULL,
    [PROGRESS_PAYMENT_RATE]        FLOAT (53)     NULL,
    [RECOUPMENT_RATE]              FLOAT (53)     NULL,
    [CATALOG_NAME]                 VARCHAR (1000) NULL,
    [SUPPLIER_PART_AUXID]          VARCHAR (1000) NULL,
    [IP_CATEGORY_ID]               FLOAT (53)     NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]    VARCHAR (100)  NULL,
    [LAST_UPDATED_PROGRAM]         VARCHAR (1000) NULL,
    [GROUP_LINE_ID]                FLOAT (53)     NULL,
    [LINE_NUM_DISPLAY]             VARCHAR (1000) NULL,
    [CLM_INFO_FLAG]                VARCHAR (100)  NULL,
    [CLM_OPTION_INDICATOR]         VARCHAR (100)  NULL,
    [CLM_BASE_LINE_NUM]            FLOAT (53)     NULL,
    [CLM_OPTION_NUM]               FLOAT (53)     NULL,
    [CLM_OPTION_FROM_DATE]         DATETIME       NULL,
    [CLM_OPTION_TO_DATE]           DATETIME       NULL,
    [CLM_FUNDED_FLAG]              VARCHAR (100)  NULL,
    [CONTRACT_TYPE]                VARCHAR (1000) NULL,
    [COST_CONSTRAINT]              VARCHAR (1000) NULL,
    [CLM_IDC_TYPE]                 VARCHAR (1000) NULL,
    [UDA_TEMPLATE_ID]              FLOAT (53)     NULL,
    [USER_DOCUMENT_STATUS]         VARCHAR (100)  NULL,
    [DRAFT_ID]                     FLOAT (53)     NULL,
    [CLM_EXERCISED_FLAG]           VARCHAR (100)  NULL,
    [CLM_EXERCISED_DATE]           DATETIME       NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)    NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL
);

