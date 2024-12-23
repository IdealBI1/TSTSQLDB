﻿CREATE TABLE [HSTG].[HSTG_EBS_AR_PAYMENT_SCHEDULES_ALL] (
    [PAYMENT_SCHEDULE_ID]            FLOAT (53)     NULL,
    [STAGED_DUNNING_LEVEL]           FLOAT (53)     NULL,
    [DUNNING_LEVEL_OVERRIDE_DATE]    DATETIME2 (7)  NULL,
    [LAST_UPDATE_DATE]               DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]                FLOAT (53)     NULL,
    [CREATION_DATE]                  DATETIME2 (7)  NULL,
    [CREATED_BY]                     FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]              FLOAT (53)     NULL,
    [DUE_DATE]                       DATETIME2 (7)  NULL,
    [AMOUNT_DUE_ORIGINAL]            FLOAT (53)     NULL,
    [AMOUNT_DUE_REMAINING]           FLOAT (53)     NULL,
    [NUMBER_OF_DUE_DATES]            FLOAT (53)     NULL,
    [STATUS]                         VARCHAR (100)  NULL,
    [INVOICE_CURRENCY_CODE]          VARCHAR (100)  NULL,
    [CLASS]                          VARCHAR (100)  NULL,
    [CUST_TRX_TYPE_ID]               FLOAT (53)     NULL,
    [CUSTOMER_ID]                    FLOAT (53)     NULL,
    [CUSTOMER_SITE_USE_ID]           FLOAT (53)     NULL,
    [CUSTOMER_TRX_ID]                FLOAT (53)     NULL,
    [CASH_RECEIPT_ID]                FLOAT (53)     NULL,
    [ASSOCIATED_CASH_RECEIPT_ID]     FLOAT (53)     NULL,
    [TERM_ID]                        FLOAT (53)     NULL,
    [TERMS_SEQUENCE_NUMBER]          FLOAT (53)     NULL,
    [GL_DATE_CLOSED]                 DATETIME2 (7)  NULL,
    [ACTUAL_DATE_CLOSED]             DATETIME2 (7)  NULL,
    [DISCOUNT_DATE]                  DATETIME2 (7)  NULL,
    [AMOUNT_LINE_ITEMS_ORIGINAL]     FLOAT (53)     NULL,
    [AMOUNT_LINE_ITEMS_REMAINING]    FLOAT (53)     NULL,
    [AMOUNT_APPLIED]                 FLOAT (53)     NULL,
    [AMOUNT_ADJUSTED]                FLOAT (53)     NULL,
    [AMOUNT_IN_DISPUTE]              FLOAT (53)     NULL,
    [AMOUNT_CREDITED]                FLOAT (53)     NULL,
    [RECEIVABLES_CHARGES_CHARGED]    FLOAT (53)     NULL,
    [RECEIVABLES_CHARGES_REMAINING]  FLOAT (53)     NULL,
    [FREIGHT_ORIGINAL]               FLOAT (53)     NULL,
    [FREIGHT_REMAINING]              FLOAT (53)     NULL,
    [TAX_ORIGINAL]                   FLOAT (53)     NULL,
    [TAX_REMAINING]                  FLOAT (53)     NULL,
    [DISCOUNT_ORIGINAL]              FLOAT (53)     NULL,
    [DISCOUNT_REMAINING]             FLOAT (53)     NULL,
    [DISCOUNT_TAKEN_EARNED]          FLOAT (53)     NULL,
    [DISCOUNT_TAKEN_UNEARNED]        FLOAT (53)     NULL,
    [IN_COLLECTION]                  VARCHAR (100)  NULL,
    [CASH_APPLIED_ID_LAST]           FLOAT (53)     NULL,
    [CASH_APPLIED_DATE_LAST]         DATETIME2 (7)  NULL,
    [CASH_APPLIED_AMOUNT_LAST]       FLOAT (53)     NULL,
    [CASH_APPLIED_STATUS_LAST]       VARCHAR (100)  NULL,
    [CASH_GL_DATE_LAST]              DATETIME2 (7)  NULL,
    [CASH_RECEIPT_ID_LAST]           FLOAT (53)     NULL,
    [CASH_RECEIPT_DATE_LAST]         DATETIME2 (7)  NULL,
    [CASH_RECEIPT_AMOUNT_LAST]       FLOAT (53)     NULL,
    [CASH_RECEIPT_STATUS_LAST]       VARCHAR (100)  NULL,
    [EXCHANGE_RATE_TYPE]             VARCHAR (100)  NULL,
    [EXCHANGE_DATE]                  DATETIME2 (7)  NULL,
    [EXCHANGE_RATE]                  FLOAT (53)     NULL,
    [ADJUSTMENT_ID_LAST]             FLOAT (53)     NULL,
    [ADJUSTMENT_DATE_LAST]           DATETIME2 (7)  NULL,
    [ADJUSTMENT_GL_DATE_LAST]        DATETIME2 (7)  NULL,
    [ADJUSTMENT_AMOUNT_LAST]         FLOAT (53)     NULL,
    [FOLLOW_UP_DATE_LAST]            DATETIME2 (7)  NULL,
    [FOLLOW_UP_CODE_LAST]            VARCHAR (100)  NULL,
    [PROMISE_DATE_LAST]              DATETIME2 (7)  NULL,
    [PROMISE_AMOUNT_LAST]            FLOAT (53)     NULL,
    [COLLECTOR_LAST]                 FLOAT (53)     NULL,
    [CALL_DATE_LAST]                 DATETIME2 (7)  NULL,
    [TRX_NUMBER]                     VARCHAR (100)  NULL,
    [TRX_DATE]                       DATETIME2 (7)  NULL,
    [ATTRIBUTE_CATEGORY]             VARCHAR (100)  NULL,
    [ATTRIBUTE1]                     VARCHAR (1000) NULL,
    [ATTRIBUTE2]                     VARCHAR (1000) NULL,
    [ATTRIBUTE3]                     VARCHAR (1000) NULL,
    [ATTRIBUTE4]                     VARCHAR (1000) NULL,
    [ATTRIBUTE5]                     VARCHAR (1000) NULL,
    [ATTRIBUTE6]                     VARCHAR (1000) NULL,
    [ATTRIBUTE7]                     VARCHAR (1000) NULL,
    [ATTRIBUTE8]                     VARCHAR (1000) NULL,
    [ATTRIBUTE9]                     VARCHAR (1000) NULL,
    [ATTRIBUTE10]                    VARCHAR (1000) NULL,
    [REVERSED_CASH_RECEIPT_ID]       FLOAT (53)     NULL,
    [AMOUNT_ADJUSTED_PENDING]        FLOAT (53)     NULL,
    [ATTRIBUTE11]                    VARCHAR (1000) NULL,
    [ATTRIBUTE12]                    VARCHAR (1000) NULL,
    [ATTRIBUTE13]                    VARCHAR (1000) NULL,
    [ATTRIBUTE14]                    VARCHAR (1000) NULL,
    [ATTRIBUTE15]                    VARCHAR (1000) NULL,
    [GL_DATE]                        DATETIME2 (7)  NULL,
    [ACCTD_AMOUNT_DUE_REMAINING]     FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]         FLOAT (53)     NULL,
    [PROGRAM_ID]                     FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]            DATETIME2 (7)  NULL,
    [RECEIPT_CONFIRMED_FLAG]         VARCHAR (100)  NULL,
    [REQUEST_ID]                     FLOAT (53)     NULL,
    [SELECTED_FOR_RECEIPT_BATCH_ID]  FLOAT (53)     NULL,
    [LAST_CHARGE_DATE]               DATETIME2 (7)  NULL,
    [SECOND_LAST_CHARGE_DATE]        DATETIME2 (7)  NULL,
    [DISPUTE_DATE]                   DATETIME2 (7)  NULL,
    [ORG_ID]                         FLOAT (53)     NULL,
    [GLOBAL_ATTRIBUTE1]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE2]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE3]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE4]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE5]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE6]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE7]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE8]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE9]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE10]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE11]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE12]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE13]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE14]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE15]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE16]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE17]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE18]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE19]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE20]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      VARCHAR (100)  NULL,
    [CONS_INV_ID]                    FLOAT (53)     NULL,
    [CONS_INV_ID_REV]                FLOAT (53)     NULL,
    [EXCLUDE_FROM_DUNNING_FLAG]      VARCHAR (100)  NULL,
    [MRC_CUSTOMER_TRX_ID]            VARCHAR (8000) NULL,
    [MRC_EXCHANGE_RATE_TYPE]         VARCHAR (8000) NULL,
    [MRC_EXCHANGE_DATE]              VARCHAR (8000) NULL,
    [MRC_EXCHANGE_RATE]              VARCHAR (8000) NULL,
    [MRC_ACCTD_AMOUNT_DUE_REMAINING] VARCHAR (8000) NULL,
    [BR_AMOUNT_ASSIGNED]             FLOAT (53)     NULL,
    [RESERVED_TYPE]                  VARCHAR (100)  NULL,
    [RESERVED_VALUE]                 FLOAT (53)     NULL,
    [ACTIVE_CLAIM_FLAG]              VARCHAR (100)  NULL,
    [EXCLUDE_FROM_CONS_BILL_FLAG]    VARCHAR (100)  NULL,
    [PAYMENT_APPROVAL]               VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000) NOT NULL,
    [OMD_HASH_FULL_RECORD]           VARCHAR (1000) NULL,
    [OMD_IS_RECORD_DELETED]          VARCHAR (1)    NULL,
    [OMD_CURRENT_RECORD_INDICATOR]   VARCHAR (1)    NULL
);

