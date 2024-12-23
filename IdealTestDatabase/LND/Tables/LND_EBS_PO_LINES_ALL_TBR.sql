﻿CREATE TABLE [LND].[LND_EBS_PO_LINES_ALL_TBR] (
    [PO_LINE_ID]                  FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]            DATETIME2 (0)  NULL,
    [LAST_UPDATED_BY]             FLOAT (53)     NULL,
    [PO_HEADER_ID]                FLOAT (53)     NULL,
    [LINE_TYPE_ID]                FLOAT (53)     NULL,
    [LINE_NUM]                    FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]           FLOAT (53)     NULL,
    [CREATION_DATE]               DATETIME2 (0)  NULL,
    [CREATED_BY]                  FLOAT (53)     NULL,
    [ITEM_ID]                     FLOAT (53)     NULL,
    [ITEM_REVISION]               NVARCHAR (3)   NULL,
    [CATEGORY_ID]                 FLOAT (53)     NULL,
    [ITEM_DESCRIPTION]            NVARCHAR (240) NULL,
    [UNIT_MEAS_LOOKUP_CODE]       NVARCHAR (25)  NULL,
    [QUANTITY_COMMITTED]          FLOAT (53)     NULL,
    [COMMITTED_AMOUNT]            FLOAT (53)     NULL,
    [ALLOW_PRICE_OVERRIDE_FLAG]   NVARCHAR (1)   NULL,
    [NOT_TO_EXCEED_PRICE]         FLOAT (53)     NULL,
    [LIST_PRICE_PER_UNIT]         FLOAT (53)     NULL,
    [UNIT_PRICE]                  FLOAT (53)     NULL,
    [QUANTITY]                    FLOAT (53)     NULL,
    [UN_NUMBER_ID]                FLOAT (53)     NULL,
    [HAZARD_CLASS_ID]             FLOAT (53)     NULL,
    [NOTE_TO_VENDOR]              NVARCHAR (480) NULL,
    [FROM_HEADER_ID]              FLOAT (53)     NULL,
    [FROM_LINE_ID]                FLOAT (53)     NULL,
    [MIN_ORDER_QUANTITY]          FLOAT (53)     NULL,
    [MAX_ORDER_QUANTITY]          FLOAT (53)     NULL,
    [QTY_RCV_TOLERANCE]           FLOAT (53)     NULL,
    [OVER_TOLERANCE_ERROR_FLAG]   NVARCHAR (25)  NULL,
    [MARKET_PRICE]                FLOAT (53)     NULL,
    [UNORDERED_FLAG]              NVARCHAR (1)   NULL,
    [CLOSED_FLAG]                 NVARCHAR (1)   NULL,
    [USER_HOLD_FLAG]              NVARCHAR (1)   NULL,
    [CANCEL_FLAG]                 NVARCHAR (1)   NULL,
    [CANCELLED_BY]                DECIMAL (9)    NULL,
    [CANCEL_DATE]                 DATETIME2 (0)  NULL,
    [CANCEL_REASON]               NVARCHAR (240) NULL,
    [FIRM_STATUS_LOOKUP_CODE]     NVARCHAR (30)  NULL,
    [FIRM_DATE]                   DATETIME2 (0)  NULL,
    [VENDOR_PRODUCT_NUM]          NVARCHAR (25)  NULL,
    [CONTRACT_NUM]                NVARCHAR (25)  NULL,
    [TAXABLE_FLAG]                NVARCHAR (1)   NULL,
    [TAX_NAME]                    NVARCHAR (30)  NULL,
    [TYPE_1099]                   NVARCHAR (10)  NULL,
    [CAPITAL_EXPENSE_FLAG]        NVARCHAR (1)   NULL,
    [NEGOTIATED_BY_PREPARER_FLAG] NVARCHAR (1)   NULL,
    [ATTRIBUTE_CATEGORY]          NVARCHAR (30)  NULL,
    [ATTRIBUTE1]                  NVARCHAR (150) NULL,
    [ATTRIBUTE2]                  NVARCHAR (150) NULL,
    [ATTRIBUTE3]                  NVARCHAR (150) NULL,
    [ATTRIBUTE4]                  NVARCHAR (150) NULL,
    [ATTRIBUTE5]                  NVARCHAR (150) NULL,
    [ATTRIBUTE6]                  NVARCHAR (150) NULL,
    [ATTRIBUTE7]                  NVARCHAR (150) NULL,
    [ATTRIBUTE8]                  NVARCHAR (150) NULL,
    [ATTRIBUTE9]                  NVARCHAR (150) NULL,
    [ATTRIBUTE10]                 NVARCHAR (150) NULL,
    [REFERENCE_NUM]               NVARCHAR (25)  NULL,
    [ATTRIBUTE11]                 NVARCHAR (150) NULL,
    [ATTRIBUTE12]                 NVARCHAR (150) NULL,
    [ATTRIBUTE13]                 NVARCHAR (150) NULL,
    [ATTRIBUTE14]                 NVARCHAR (150) NULL,
    [ATTRIBUTE15]                 NVARCHAR (150) NULL,
    [MIN_RELEASE_AMOUNT]          FLOAT (53)     NULL,
    [PRICE_TYPE_LOOKUP_CODE]      NVARCHAR (25)  NULL,
    [CLOSED_CODE]                 NVARCHAR (25)  NULL,
    [PRICE_BREAK_LOOKUP_CODE]     NVARCHAR (25)  NULL,
    [USSGL_TRANSACTION_CODE]      NVARCHAR (30)  NULL,
    [GOVERNMENT_CONTEXT]          NVARCHAR (30)  NULL,
    [REQUEST_ID]                  FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]      FLOAT (53)     NULL,
    [PROGRAM_ID]                  FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]         DATETIME2 (0)  NULL,
    [CLOSED_DATE]                 DATETIME2 (0)  NULL,
    [CLOSED_REASON]               NVARCHAR (240) NULL,
    [CLOSED_BY]                   DECIMAL (9)    NULL,
    [TRANSACTION_REASON_CODE]     NVARCHAR (25)  NULL,
    [ORG_ID]                      FLOAT (53)     NULL,
    [QC_GRADE]                    NVARCHAR (25)  NULL,
    [BASE_UOM]                    NVARCHAR (25)  NULL,
    [BASE_QTY]                    FLOAT (53)     NULL,
    [SECONDARY_UOM]               NVARCHAR (25)  NULL,
    [SECONDARY_QTY]               FLOAT (53)     NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]   NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE1]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE2]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE3]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE4]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE5]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE6]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE7]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE8]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE9]           NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE10]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE11]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE12]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE13]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE14]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE15]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE16]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE17]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE18]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE19]          NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE20]          NVARCHAR (150) NULL,
    [LINE_REFERENCE_NUM]          NVARCHAR (25)  NULL,
    [PROJECT_ID]                  FLOAT (53)     NULL,
    [TASK_ID]                     FLOAT (53)     NULL,
    [EXPIRATION_DATE]             DATETIME2 (0)  NULL,
    [TAX_CODE_ID]                 FLOAT (53)     NULL,
    [OKE_CONTRACT_HEADER_ID]      FLOAT (53)     NULL,
    [OKE_CONTRACT_VERSION_ID]     FLOAT (53)     NULL,
    [SECONDARY_QUANTITY]          FLOAT (53)     NULL,
    [SECONDARY_UNIT_OF_MEASURE]   NVARCHAR (25)  NULL,
    [PREFERRED_GRADE]             NVARCHAR (150) NULL,
    [AUCTION_HEADER_ID]           FLOAT (53)     NULL,
    [AUCTION_DISPLAY_NUMBER]      NVARCHAR (40)  NULL,
    [AUCTION_LINE_NUMBER]         FLOAT (53)     NULL,
    [BID_NUMBER]                  FLOAT (53)     NULL,
    [BID_LINE_NUMBER]             FLOAT (53)     NULL,
    [RETROACTIVE_DATE]            DATETIME2 (0)  NULL,
    [FROM_LINE_LOCATION_ID]       FLOAT (53)     NULL,
    [SUPPLIER_REF_NUMBER]         NVARCHAR (150) NULL,
    [CONTRACT_ID]                 FLOAT (53)     NULL,
    [START_DATE]                  DATETIME2 (0)  NULL,
    [AMOUNT]                      FLOAT (53)     NULL,
    [JOB_ID]                      FLOAT (53)     NULL,
    [CONTRACTOR_FIRST_NAME]       NVARCHAR (240) NULL,
    [CONTRACTOR_LAST_NAME]        NVARCHAR (240) NULL,
    [ORDER_TYPE_LOOKUP_CODE]      NVARCHAR (25)  NULL,
    [PURCHASE_BASIS]              NVARCHAR (30)  NULL,
    [MATCHING_BASIS]              NVARCHAR (30)  NULL,
    [SVC_AMOUNT_NOTIF_SENT]       NVARCHAR (1)   NULL,
    [SVC_COMPLETION_NOTIF_SENT]   NVARCHAR (1)   NULL,
    [BASE_UNIT_PRICE]             FLOAT (53)     NULL,
    [MANUAL_PRICE_CHANGE_FLAG]    NVARCHAR (1)   NULL,
    [RETAINAGE_RATE]              FLOAT (53)     NULL,
    [MAX_RETAINAGE_AMOUNT]        FLOAT (53)     NULL,
    [PROGRESS_PAYMENT_RATE]       FLOAT (53)     NULL,
    [RECOUPMENT_RATE]             FLOAT (53)     NULL,
    [CATALOG_NAME]                NVARCHAR (255) NULL,
    [SUPPLIER_PART_AUXID]         NVARCHAR (255) NULL,
    [IP_CATEGORY_ID]              FLOAT (53)     NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]   NVARCHAR (15)  NULL,
    [LAST_UPDATED_PROGRAM]        NVARCHAR (255) NULL,
    [GROUP_LINE_ID]               FLOAT (53)     NULL,
    [LINE_NUM_DISPLAY]            NVARCHAR (240) NULL,
    [CLM_INFO_FLAG]               NVARCHAR (1)   NULL,
    [CLM_OPTION_INDICATOR]        NVARCHAR (1)   NULL,
    [CLM_BASE_LINE_NUM]           FLOAT (53)     NULL,
    [CLM_OPTION_NUM]              FLOAT (53)     NULL,
    [CLM_OPTION_FROM_DATE]        DATETIME2 (0)  NULL,
    [CLM_OPTION_TO_DATE]          DATETIME2 (0)  NULL,
    [CLM_FUNDED_FLAG]             NVARCHAR (1)   NULL,
    [CONTRACT_TYPE]               NVARCHAR (240) NULL,
    [COST_CONSTRAINT]             NVARCHAR (240) NULL,
    [CLM_IDC_TYPE]                NVARCHAR (240) NULL,
    [UDA_TEMPLATE_ID]             FLOAT (53)     NULL,
    [USER_DOCUMENT_STATUS]        NVARCHAR (30)  NULL,
    [DRAFT_ID]                    FLOAT (53)     NULL,
    [CLM_EXERCISED_FLAG]          NVARCHAR (1)   NULL,
    [CLM_EXERCISED_DATE]          DATETIME2 (0)  NULL
);

