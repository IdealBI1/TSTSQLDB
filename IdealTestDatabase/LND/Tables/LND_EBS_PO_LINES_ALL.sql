﻿CREATE TABLE [LND].[LND_EBS_PO_LINES_ALL] (
    [PO_LINE_ID]                  NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]             NVARCHAR (4000) NULL,
    [PO_HEADER_ID]                NVARCHAR (4000) NULL,
    [LINE_TYPE_ID]                NVARCHAR (4000) NULL,
    [LINE_NUM]                    NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]           NVARCHAR (4000) NULL,
    [CREATION_DATE]               NVARCHAR (4000) NULL,
    [CREATED_BY]                  NVARCHAR (4000) NULL,
    [ITEM_ID]                     NVARCHAR (4000) NULL,
    [ITEM_REVISION]               NVARCHAR (4000) NULL,
    [CATEGORY_ID]                 NVARCHAR (4000) NULL,
    [ITEM_DESCRIPTION]            NVARCHAR (4000) NULL,
    [UNIT_MEAS_LOOKUP_CODE]       NVARCHAR (4000) NULL,
    [QUANTITY_COMMITTED]          NVARCHAR (4000) NULL,
    [COMMITTED_AMOUNT]            NVARCHAR (4000) NULL,
    [ALLOW_PRICE_OVERRIDE_FLAG]   NVARCHAR (4000) NULL,
    [NOT_TO_EXCEED_PRICE]         NVARCHAR (4000) NULL,
    [LIST_PRICE_PER_UNIT]         NVARCHAR (4000) NULL,
    [UNIT_PRICE]                  NVARCHAR (4000) NULL,
    [QUANTITY]                    NVARCHAR (4000) NULL,
    [UN_NUMBER_ID]                NVARCHAR (4000) NULL,
    [HAZARD_CLASS_ID]             NVARCHAR (4000) NULL,
    [NOTE_TO_VENDOR]              NVARCHAR (4000) NULL,
    [FROM_HEADER_ID]              NVARCHAR (4000) NULL,
    [FROM_LINE_ID]                NVARCHAR (4000) NULL,
    [MIN_ORDER_QUANTITY]          NVARCHAR (4000) NULL,
    [MAX_ORDER_QUANTITY]          NVARCHAR (4000) NULL,
    [QTY_RCV_TOLERANCE]           NVARCHAR (4000) NULL,
    [OVER_TOLERANCE_ERROR_FLAG]   NVARCHAR (4000) NULL,
    [MARKET_PRICE]                NVARCHAR (4000) NULL,
    [UNORDERED_FLAG]              NVARCHAR (4000) NULL,
    [CLOSED_FLAG]                 NVARCHAR (4000) NULL,
    [USER_HOLD_FLAG]              NVARCHAR (4000) NULL,
    [CANCEL_FLAG]                 NVARCHAR (4000) NULL,
    [CANCELLED_BY]                NVARCHAR (4000) NULL,
    [CANCEL_DATE]                 NVARCHAR (4000) NULL,
    [CANCEL_REASON]               NVARCHAR (4000) NULL,
    [FIRM_STATUS_LOOKUP_CODE]     NVARCHAR (4000) NULL,
    [FIRM_DATE]                   NVARCHAR (4000) NULL,
    [VENDOR_PRODUCT_NUM]          NVARCHAR (4000) NULL,
    [CONTRACT_NUM]                NVARCHAR (4000) NULL,
    [TAXABLE_FLAG]                NVARCHAR (4000) NULL,
    [TAX_NAME]                    NVARCHAR (4000) NULL,
    [TYPE_1099]                   NVARCHAR (4000) NULL,
    [CAPITAL_EXPENSE_FLAG]        NVARCHAR (4000) NULL,
    [NEGOTIATED_BY_PREPARER_FLAG] NVARCHAR (4000) NULL,
    [ATTRIBUTE_CATEGORY]          NVARCHAR (4000) NULL,
    [ATTRIBUTE1]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE2]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE3]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE4]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE5]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE6]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE7]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE8]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE9]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE10]                 NVARCHAR (4000) NULL,
    [REFERENCE_NUM]               NVARCHAR (4000) NULL,
    [ATTRIBUTE11]                 NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                 NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                 NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                 NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                 NVARCHAR (4000) NULL,
    [MIN_RELEASE_AMOUNT]          NVARCHAR (4000) NULL,
    [PRICE_TYPE_LOOKUP_CODE]      NVARCHAR (4000) NULL,
    [CLOSED_CODE]                 NVARCHAR (4000) NULL,
    [PRICE_BREAK_LOOKUP_CODE]     NVARCHAR (4000) NULL,
    [USSGL_TRANSACTION_CODE]      NVARCHAR (4000) NULL,
    [GOVERNMENT_CONTEXT]          NVARCHAR (4000) NULL,
    [REQUEST_ID]                  NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]      NVARCHAR (4000) NULL,
    [PROGRAM_ID]                  NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]         NVARCHAR (4000) NULL,
    [CLOSED_DATE]                 NVARCHAR (4000) NULL,
    [CLOSED_REASON]               NVARCHAR (4000) NULL,
    [CLOSED_BY]                   NVARCHAR (4000) NULL,
    [TRANSACTION_REASON_CODE]     NVARCHAR (4000) NULL,
    [ORG_ID]                      NVARCHAR (4000) NULL,
    [QC_GRADE]                    NVARCHAR (4000) NULL,
    [BASE_UOM]                    NVARCHAR (4000) NULL,
    [BASE_QTY]                    NVARCHAR (4000) NULL,
    [SECONDARY_UOM]               NVARCHAR (4000) NULL,
    [SECONDARY_QTY]               NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]   NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE1]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE2]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE3]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE4]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE5]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE6]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE7]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE8]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE9]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE10]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE11]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE12]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE13]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE14]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE15]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE16]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE17]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE18]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE19]          NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE20]          NVARCHAR (4000) NULL,
    [LINE_REFERENCE_NUM]          NVARCHAR (4000) NULL,
    [PROJECT_ID]                  NVARCHAR (4000) NULL,
    [TASK_ID]                     NVARCHAR (4000) NULL,
    [EXPIRATION_DATE]             NVARCHAR (4000) NULL,
    [TAX_CODE_ID]                 NVARCHAR (4000) NULL,
    [OKE_CONTRACT_HEADER_ID]      NVARCHAR (4000) NULL,
    [OKE_CONTRACT_VERSION_ID]     NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY]          NVARCHAR (4000) NULL,
    [SECONDARY_UNIT_OF_MEASURE]   NVARCHAR (4000) NULL,
    [PREFERRED_GRADE]             NVARCHAR (4000) NULL,
    [AUCTION_HEADER_ID]           NVARCHAR (4000) NULL,
    [AUCTION_DISPLAY_NUMBER]      NVARCHAR (4000) NULL,
    [AUCTION_LINE_NUMBER]         NVARCHAR (4000) NULL,
    [BID_NUMBER]                  NVARCHAR (4000) NULL,
    [BID_LINE_NUMBER]             NVARCHAR (4000) NULL,
    [RETROACTIVE_DATE]            NVARCHAR (4000) NULL,
    [FROM_LINE_LOCATION_ID]       NVARCHAR (4000) NULL,
    [SUPPLIER_REF_NUMBER]         NVARCHAR (4000) NULL,
    [CONTRACT_ID]                 NVARCHAR (4000) NULL,
    [START_DATE]                  NVARCHAR (4000) NULL,
    [AMOUNT]                      NVARCHAR (4000) NULL,
    [JOB_ID]                      NVARCHAR (4000) NULL,
    [CONTRACTOR_FIRST_NAME]       NVARCHAR (4000) NULL,
    [CONTRACTOR_LAST_NAME]        NVARCHAR (4000) NULL,
    [ORDER_TYPE_LOOKUP_CODE]      NVARCHAR (4000) NULL,
    [PURCHASE_BASIS]              NVARCHAR (4000) NULL,
    [MATCHING_BASIS]              NVARCHAR (4000) NULL,
    [SVC_AMOUNT_NOTIF_SENT]       NVARCHAR (4000) NULL,
    [SVC_COMPLETION_NOTIF_SENT]   NVARCHAR (4000) NULL,
    [BASE_UNIT_PRICE]             NVARCHAR (4000) NULL,
    [MANUAL_PRICE_CHANGE_FLAG]    NVARCHAR (4000) NULL,
    [RETAINAGE_RATE]              NVARCHAR (4000) NULL,
    [MAX_RETAINAGE_AMOUNT]        NVARCHAR (4000) NULL,
    [PROGRESS_PAYMENT_RATE]       NVARCHAR (4000) NULL,
    [RECOUPMENT_RATE]             NVARCHAR (4000) NULL,
    [CATALOG_NAME]                NVARCHAR (4000) NULL,
    [SUPPLIER_PART_AUXID]         NVARCHAR (4000) NULL,
    [IP_CATEGORY_ID]              NVARCHAR (4000) NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]   NVARCHAR (4000) NULL,
    [LAST_UPDATED_PROGRAM]        NVARCHAR (4000) NULL,
    [GROUP_LINE_ID]               NVARCHAR (4000) NULL,
    [LINE_NUM_DISPLAY]            NVARCHAR (4000) NULL,
    [CLM_INFO_FLAG]               NVARCHAR (4000) NULL,
    [CLM_OPTION_INDICATOR]        NVARCHAR (4000) NULL,
    [CLM_BASE_LINE_NUM]           NVARCHAR (4000) NULL,
    [CLM_OPTION_NUM]              NVARCHAR (4000) NULL,
    [CLM_OPTION_FROM_DATE]        NVARCHAR (4000) NULL,
    [CLM_OPTION_TO_DATE]          NVARCHAR (4000) NULL,
    [CLM_FUNDED_FLAG]             NVARCHAR (4000) NULL,
    [CONTRACT_TYPE]               NVARCHAR (4000) NULL,
    [COST_CONSTRAINT]             NVARCHAR (4000) NULL,
    [CLM_IDC_TYPE]                NVARCHAR (4000) NULL,
    [UDA_TEMPLATE_ID]             NVARCHAR (4000) NULL,
    [USER_DOCUMENT_STATUS]        NVARCHAR (4000) NULL,
    [DRAFT_ID]                    NVARCHAR (4000) NULL,
    [CLM_EXERCISED_FLAG]          NVARCHAR (4000) NULL,
    [CLM_EXERCISED_DATE]          NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]         DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]               VARCHAR (8000)  NOT NULL
);

