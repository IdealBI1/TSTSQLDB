﻿CREATE TABLE [LND].[LND_EBS_RA_BATCH_SOURCES_ALL] (
    [BATCH_SOURCE_ID]              NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]             NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]              NVARCHAR (4000) NULL,
    [CREATION_DATE]                NVARCHAR (4000) NULL,
    [CREATED_BY]                   NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]            NVARCHAR (4000) NULL,
    [NAME]                         NVARCHAR (4000) NULL,
    [ORG_ID]                       NVARCHAR (4000) NULL,
    [DESCRIPTION]                  NVARCHAR (4000) NULL,
    [STATUS]                       NVARCHAR (4000) NULL,
    [LAST_BATCH_NUM]               NVARCHAR (4000) NULL,
    [DEFAULT_INV_TRX_TYPE]         NVARCHAR (4000) NULL,
    [ATTRIBUTE_CATEGORY]           NVARCHAR (4000) NULL,
    [ATTRIBUTE1]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE2]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE3]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE4]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE5]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE6]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE7]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE8]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE9]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE10]                  NVARCHAR (4000) NULL,
    [ACCOUNTING_FLEXFIELD_RULE]    NVARCHAR (4000) NULL,
    [ACCOUNTING_RULE_RULE]         NVARCHAR (4000) NULL,
    [AGREEMENT_RULE]               NVARCHAR (4000) NULL,
    [AUTO_BATCH_NUMBERING_FLAG]    NVARCHAR (4000) NULL,
    [AUTO_TRX_NUMBERING_FLAG]      NVARCHAR (4000) NULL,
    [BATCH_SOURCE_TYPE]            NVARCHAR (4000) NULL,
    [BILL_ADDRESS_RULE]            NVARCHAR (4000) NULL,
    [BILL_CONTACT_RULE]            NVARCHAR (4000) NULL,
    [BILL_CUSTOMER_RULE]           NVARCHAR (4000) NULL,
    [CREATE_CLEARING_FLAG]         NVARCHAR (4000) NULL,
    [CUST_TRX_TYPE_RULE]           NVARCHAR (4000) NULL,
    [DERIVE_DATE_FLAG]             NVARCHAR (4000) NULL,
    [END_DATE]                     NVARCHAR (4000) NULL,
    [FOB_POINT_RULE]               NVARCHAR (4000) NULL,
    [GL_DATE_PERIOD_RULE]          NVARCHAR (4000) NULL,
    [INVALID_LINES_RULE]           NVARCHAR (4000) NULL,
    [INVALID_TAX_RATE_RULE]        NVARCHAR (4000) NULL,
    [INVENTORY_ITEM_RULE]          NVARCHAR (4000) NULL,
    [INVOICING_RULE_RULE]          NVARCHAR (4000) NULL,
    [MEMO_REASON_RULE]             NVARCHAR (4000) NULL,
    [REV_ACC_ALLOCATION_RULE]      NVARCHAR (4000) NULL,
    [SALESPERSON_RULE]             NVARCHAR (4000) NULL,
    [SALES_CREDIT_RULE]            NVARCHAR (4000) NULL,
    [SALES_CREDIT_TYPE_RULE]       NVARCHAR (4000) NULL,
    [SALES_TERRITORY_RULE]         NVARCHAR (4000) NULL,
    [SHIP_ADDRESS_RULE]            NVARCHAR (4000) NULL,
    [SHIP_CONTACT_RULE]            NVARCHAR (4000) NULL,
    [SHIP_CUSTOMER_RULE]           NVARCHAR (4000) NULL,
    [SHIP_VIA_RULE]                NVARCHAR (4000) NULL,
    [SOLD_CUSTOMER_RULE]           NVARCHAR (4000) NULL,
    [START_DATE]                   NVARCHAR (4000) NULL,
    [TERM_RULE]                    NVARCHAR (4000) NULL,
    [UNIT_OF_MEASURE_RULE]         NVARCHAR (4000) NULL,
    [ATTRIBUTE11]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                  NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                  NVARCHAR (4000) NULL,
    [CUSTOMER_BANK_ACCOUNT_RULE]   NVARCHAR (4000) NULL,
    [MEMO_LINE_RULE]               NVARCHAR (4000) NULL,
    [RECEIPT_METHOD_RULE]          NVARCHAR (4000) NULL,
    [RELATED_DOCUMENT_RULE]        NVARCHAR (4000) NULL,
    [ALLOW_SALES_CREDIT_FLAG]      NVARCHAR (4000) NULL,
    [GROUPING_RULE_ID]             NVARCHAR (4000) NULL,
    [CREDIT_MEMO_BATCH_SOURCE_ID]  NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE1]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE2]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE3]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE4]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE5]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE6]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE7]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE8]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE9]            NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE10]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE11]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE12]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE13]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE14]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE15]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE16]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE17]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE18]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE19]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE20]           NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]    NVARCHAR (4000) NULL,
    [COPY_DOC_NUMBER_FLAG]         NVARCHAR (4000) NULL,
    [DEFAULT_REFERENCE]            NVARCHAR (4000) NULL,
    [COPY_INV_TIDFF_TO_CM_FLAG]    NVARCHAR (4000) NULL,
    [RECEIPT_HANDLING_OPTION]      NVARCHAR (4000) NULL,
    [ALLOW_DUPLICATE_TRX_NUM_FLAG] NVARCHAR (4000) NULL,
    [LEGAL_ENTITY_ID]              NVARCHAR (4000) NULL,
    [GEN_LINE_LEVEL_BAL_FLAG]      NVARCHAR (4000) NULL,
    [PAYMENT_DET_DEF_HIERARCHY]    NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL
);

