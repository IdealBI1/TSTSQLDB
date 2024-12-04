﻿CREATE TABLE [STG].[STG_EBS_AP_SUPPLIERS] (
    [VENDOR_ID]                      FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]               DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]                FLOAT (53)     NULL,
    [VENDOR_NAME]                    VARCHAR (1000) NULL,
    [VENDOR_NAME_ALT]                VARCHAR (1000) NULL,
    [SEGMENT1]                       VARCHAR (100)  NULL,
    [SUMMARY_FLAG]                   VARCHAR (100)  NULL,
    [ENABLED_FLAG]                   VARCHAR (100)  NULL,
    [SEGMENT2]                       VARCHAR (100)  NULL,
    [SEGMENT3]                       VARCHAR (100)  NULL,
    [SEGMENT4]                       VARCHAR (100)  NULL,
    [SEGMENT5]                       VARCHAR (100)  NULL,
    [LAST_UPDATE_LOGIN]              FLOAT (53)     NULL,
    [CREATION_DATE]                  DATETIME2 (7)  NULL,
    [CREATED_BY]                     FLOAT (53)     NULL,
    [EMPLOYEE_ID]                    FLOAT (53)     NULL,
    [VENDOR_TYPE_LOOKUP_CODE]        VARCHAR (100)  NULL,
    [CUSTOMER_NUM]                   VARCHAR (100)  NULL,
    [ONE_TIME_FLAG]                  VARCHAR (100)  NULL,
    [PARENT_VENDOR_ID]               FLOAT (53)     NULL,
    [MIN_ORDER_AMOUNT]               FLOAT (53)     NULL,
    [SHIP_TO_LOCATION_ID]            FLOAT (53)     NULL,
    [BILL_TO_LOCATION_ID]            FLOAT (53)     NULL,
    [SHIP_VIA_LOOKUP_CODE]           VARCHAR (100)  NULL,
    [FREIGHT_TERMS_LOOKUP_CODE]      VARCHAR (100)  NULL,
    [FOB_LOOKUP_CODE]                VARCHAR (100)  NULL,
    [TERMS_ID]                       FLOAT (53)     NULL,
    [SET_OF_BOOKS_ID]                FLOAT (53)     NULL,
    [CREDIT_STATUS_LOOKUP_CODE]      VARCHAR (100)  NULL,
    [CREDIT_LIMIT]                   FLOAT (53)     NULL,
    [ALWAYS_TAKE_DISC_FLAG]          VARCHAR (100)  NULL,
    [PAY_DATE_BASIS_LOOKUP_CODE]     VARCHAR (100)  NULL,
    [PAY_GROUP_LOOKUP_CODE]          VARCHAR (100)  NULL,
    [PAYMENT_PRIORITY]               FLOAT (53)     NULL,
    [INVOICE_CURRENCY_CODE]          VARCHAR (100)  NULL,
    [PAYMENT_CURRENCY_CODE]          VARCHAR (100)  NULL,
    [INVOICE_AMOUNT_LIMIT]           FLOAT (53)     NULL,
    [EXCHANGE_DATE_LOOKUP_CODE]      VARCHAR (100)  NULL,
    [HOLD_ALL_PAYMENTS_FLAG]         VARCHAR (100)  NULL,
    [HOLD_FUTURE_PAYMENTS_FLAG]      VARCHAR (100)  NULL,
    [HOLD_REASON]                    VARCHAR (1000) NULL,
    [DISTRIBUTION_SET_ID]            FLOAT (53)     NULL,
    [ACCTS_PAY_CODE_COMBINATION_ID]  FLOAT (53)     NULL,
    [DISC_LOST_CODE_COMBINATION_ID]  FLOAT (53)     NULL,
    [DISC_TAKEN_CODE_COMBINATION_ID] FLOAT (53)     NULL,
    [EXPENSE_CODE_COMBINATION_ID]    FLOAT (53)     NULL,
    [PREPAY_CODE_COMBINATION_ID]     FLOAT (53)     NULL,
    [NUM_1099]                       VARCHAR (100)  NULL,
    [TYPE_1099]                      VARCHAR (100)  NULL,
    [WITHHOLDING_STATUS_LOOKUP_CODE] VARCHAR (100)  NULL,
    [WITHHOLDING_START_DATE]         DATETIME2 (7)  NULL,
    [ORGANIZATION_TYPE_LOOKUP_CODE]  VARCHAR (100)  NULL,
    [VAT_CODE]                       VARCHAR (100)  NULL,
    [START_DATE_ACTIVE]              DATETIME2 (7)  NULL,
    [END_DATE_ACTIVE]                DATETIME2 (7)  NULL,
    [MINORITY_GROUP_LOOKUP_CODE]     VARCHAR (100)  NULL,
    [PAYMENT_METHOD_LOOKUP_CODE]     VARCHAR (100)  NULL,
    [BANK_ACCOUNT_NAME]              VARCHAR (1000) NULL,
    [BANK_ACCOUNT_NUM]               VARCHAR (100)  NULL,
    [BANK_NUM]                       VARCHAR (100)  NULL,
    [BANK_ACCOUNT_TYPE]              VARCHAR (100)  NULL,
    [WOMEN_OWNED_FLAG]               VARCHAR (100)  NULL,
    [SMALL_BUSINESS_FLAG]            VARCHAR (100)  NULL,
    [STANDARD_INDUSTRY_CLASS]        VARCHAR (100)  NULL,
    [HOLD_FLAG]                      VARCHAR (100)  NULL,
    [PURCHASING_HOLD_REASON]         VARCHAR (1000) NULL,
    [HOLD_BY]                        FLOAT (53)     NULL,
    [HOLD_DATE]                      DATETIME2 (7)  NULL,
    [TERMS_DATE_BASIS]               VARCHAR (100)  NULL,
    [PRICE_TOLERANCE]                FLOAT (53)     NULL,
    [INSPECTION_REQUIRED_FLAG]       VARCHAR (100)  NULL,
    [RECEIPT_REQUIRED_FLAG]          VARCHAR (100)  NULL,
    [QTY_RCV_TOLERANCE]              FLOAT (53)     NULL,
    [QTY_RCV_EXCEPTION_CODE]         VARCHAR (100)  NULL,
    [ENFORCE_SHIP_TO_LOCATION_CODE]  VARCHAR (100)  NULL,
    [DAYS_EARLY_RECEIPT_ALLOWED]     FLOAT (53)     NULL,
    [DAYS_LATE_RECEIPT_ALLOWED]      FLOAT (53)     NULL,
    [RECEIPT_DAYS_EXCEPTION_CODE]    VARCHAR (100)  NULL,
    [RECEIVING_ROUTING_ID]           FLOAT (53)     NULL,
    [ALLOW_SUBSTITUTE_RECEIPTS_FLAG] VARCHAR (100)  NULL,
    [ALLOW_UNORDERED_RECEIPTS_FLAG]  VARCHAR (100)  NULL,
    [HOLD_UNMATCHED_INVOICES_FLAG]   VARCHAR (100)  NULL,
    [EXCLUSIVE_PAYMENT_FLAG]         VARCHAR (100)  NULL,
    [AP_TAX_ROUNDING_RULE]           VARCHAR (100)  NULL,
    [AUTO_TAX_CALC_FLAG]             VARCHAR (100)  NULL,
    [AUTO_TAX_CALC_OVERRIDE]         VARCHAR (100)  NULL,
    [AMOUNT_INCLUDES_TAX_FLAG]       VARCHAR (100)  NULL,
    [TAX_VERIFICATION_DATE]          DATETIME2 (7)  NULL,
    [NAME_CONTROL]                   VARCHAR (100)  NULL,
    [STATE_REPORTABLE_FLAG]          VARCHAR (100)  NULL,
    [FEDERAL_REPORTABLE_FLAG]        VARCHAR (100)  NULL,
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
    [ATTRIBUTE11]                    VARCHAR (1000) NULL,
    [ATTRIBUTE12]                    VARCHAR (1000) NULL,
    [ATTRIBUTE13]                    VARCHAR (1000) NULL,
    [ATTRIBUTE14]                    VARCHAR (1000) NULL,
    [ATTRIBUTE15]                    VARCHAR (1000) NULL,
    [REQUEST_ID]                     FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]         FLOAT (53)     NULL,
    [PROGRAM_ID]                     FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]            DATETIME2 (7)  NULL,
    [OFFSET_VAT_CODE]                VARCHAR (100)  NULL,
    [VAT_REGISTRATION_NUM]           VARCHAR (100)  NULL,
    [AUTO_CALCULATE_INTEREST_FLAG]   VARCHAR (100)  NULL,
    [VALIDATION_NUMBER]              FLOAT (53)     NULL,
    [EXCLUDE_FREIGHT_FROM_DISCOUNT]  VARCHAR (100)  NULL,
    [TAX_REPORTING_NAME]             VARCHAR (1000) NULL,
    [CHECK_DIGITS]                   VARCHAR (100)  NULL,
    [BANK_NUMBER]                    VARCHAR (100)  NULL,
    [ALLOW_AWT_FLAG]                 VARCHAR (100)  NULL,
    [AWT_GROUP_ID]                   FLOAT (53)     NULL,
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
    [EDI_TRANSACTION_HANDLING]       VARCHAR (100)  NULL,
    [EDI_PAYMENT_METHOD]             VARCHAR (100)  NULL,
    [EDI_PAYMENT_FORMAT]             VARCHAR (100)  NULL,
    [EDI_REMITTANCE_METHOD]          VARCHAR (100)  NULL,
    [EDI_REMITTANCE_INSTRUCTION]     VARCHAR (1000) NULL,
    [BANK_CHARGE_BEARER]             VARCHAR (100)  NULL,
    [BANK_BRANCH_TYPE]               VARCHAR (100)  NULL,
    [MATCH_OPTION]                   VARCHAR (100)  NULL,
    [FUTURE_DATED_PAYMENT_CCID]      FLOAT (53)     NULL,
    [CREATE_DEBIT_MEMO_FLAG]         VARCHAR (100)  NULL,
    [OFFSET_TAX_FLAG]                VARCHAR (100)  NULL,
    [PARTY_ID]                       FLOAT (53)     NULL,
    [PARENT_PARTY_ID]                FLOAT (53)     NULL,
    [NI_NUMBER]                      VARCHAR (100)  NULL,
    [TCA_SYNC_NUM_1099]              VARCHAR (100)  NULL,
    [TCA_SYNC_VENDOR_NAME]           VARCHAR (1000) NULL,
    [TCA_SYNC_VAT_REG_NUM]           VARCHAR (1000) NULL,
    [INDIVIDUAL_1099]                VARCHAR (100)  NULL,
    [UNIQUE_TAX_REFERENCE_NUM]       FLOAT (53)     NULL,
    [PARTNERSHIP_UTR]                FLOAT (53)     NULL,
    [PARTNERSHIP_NAME]               VARCHAR (1000) NULL,
    [CIS_ENABLED_FLAG]               VARCHAR (100)  NULL,
    [FIRST_NAME]                     VARCHAR (1000) NULL,
    [SECOND_NAME]                    VARCHAR (1000) NULL,
    [LAST_NAME]                      VARCHAR (1000) NULL,
    [SALUTATION]                     VARCHAR (100)  NULL,
    [TRADING_NAME]                   VARCHAR (1000) NULL,
    [WORK_REFERENCE]                 VARCHAR (100)  NULL,
    [COMPANY_REGISTRATION_NUMBER]    VARCHAR (100)  NULL,
    [NATIONAL_INSURANCE_NUMBER]      VARCHAR (100)  NULL,
    [VERIFICATION_NUMBER]            VARCHAR (100)  NULL,
    [VERIFICATION_REQUEST_ID]        FLOAT (53)     NULL,
    [MATCH_STATUS_FLAG]              VARCHAR (100)  NULL,
    [CIS_VERIFICATION_DATE]          DATETIME2 (7)  NULL,
    [PAY_AWT_GROUP_ID]               FLOAT (53)     NULL,
    [CIS_PARENT_VENDOR_ID]           FLOAT (53)     NULL,
    [BUS_CLASS_LAST_CERTIFIED_DATE]  DATETIME2 (7)  NULL,
    [BUS_CLASS_LAST_CERTIFIED_BY]    FLOAT (53)     NULL,
    [META_EFFECTIVE_DATETIME]        DATETIME2 (7)  NULL,
    [META_FILE_NAME]                 VARCHAR (8000) NULL,
    [META_RECORD_KEY]                VARCHAR (1000) NULL,
    [META_RECORD_CHECKSUM]           VARCHAR (1000) NULL,
    [META_RECORD_SOURCE]             VARCHAR (8000) NULL,
    [META_ROW_ID]                    BIGINT         IDENTITY (1, 1) NOT NULL
);

