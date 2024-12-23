﻿CREATE TABLE [LND].[LND_EBS_HZ_CUST_SITE_USES_ALL] (
    [SITE_USE_ID]                    NVARCHAR (4000) NULL,
    [CUST_ACCT_SITE_ID]              NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]               NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]                NVARCHAR (4000) NULL,
    [CREATION_DATE]                  NVARCHAR (4000) NULL,
    [CREATED_BY]                     NVARCHAR (4000) NULL,
    [SITE_USE_CODE]                  NVARCHAR (4000) NULL,
    [PRIMARY_FLAG]                   NVARCHAR (4000) NULL,
    [STATUS]                         NVARCHAR (4000) NULL,
    [LOCATION]                       NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]              NVARCHAR (4000) NULL,
    [CONTACT_ID]                     NVARCHAR (4000) NULL,
    [BILL_TO_SITE_USE_ID]            NVARCHAR (4000) NULL,
    [ORIG_SYSTEM_REFERENCE]          NVARCHAR (4000) NULL,
    [SIC_CODE]                       NVARCHAR (4000) NULL,
    [PAYMENT_TERM_ID]                NVARCHAR (4000) NULL,
    [GSA_INDICATOR]                  NVARCHAR (4000) NULL,
    [SHIP_PARTIAL]                   NVARCHAR (4000) NULL,
    [SHIP_VIA]                       NVARCHAR (4000) NULL,
    [FOB_POINT]                      NVARCHAR (4000) NULL,
    [ORDER_TYPE_ID]                  NVARCHAR (4000) NULL,
    [PRICE_LIST_ID]                  NVARCHAR (4000) NULL,
    [FREIGHT_TERM]                   NVARCHAR (4000) NULL,
    [WAREHOUSE_ID]                   NVARCHAR (4000) NULL,
    [TERRITORY_ID]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE_CATEGORY]             NVARCHAR (4000) NULL,
    [ATTRIBUTE1]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE2]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE3]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE4]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE5]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE6]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE7]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE8]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE9]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE10]                    NVARCHAR (4000) NULL,
    [REQUEST_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]         NVARCHAR (4000) NULL,
    [PROGRAM_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [TAX_REFERENCE]                  NVARCHAR (4000) NULL,
    [SORT_PRIORITY]                  NVARCHAR (4000) NULL,
    [TAX_CODE]                       NVARCHAR (4000) NULL,
    [ATTRIBUTE11]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE16]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE17]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE18]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE19]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE20]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE21]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE22]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE23]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE24]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE25]                    NVARCHAR (4000) NULL,
    [LAST_ACCRUE_CHARGE_DATE]        NVARCHAR (4000) NULL,
    [SECOND_LAST_ACCRUE_CHARGE_DATE] NVARCHAR (4000) NULL,
    [LAST_UNACCRUE_CHARGE_DATE]      NVARCHAR (4000) NULL,
    [SECOND_LAST_UNACCRUE_CHRG_DATE] NVARCHAR (4000) NULL,
    [DEMAND_CLASS_CODE]              NVARCHAR (4000) NULL,
    [ORG_ID]                         NVARCHAR (4000) NULL,
    [TAX_HEADER_LEVEL_FLAG]          NVARCHAR (4000) NULL,
    [TAX_ROUNDING_RULE]              NVARCHAR (4000) NULL,
    [WH_UPDATE_DATE]                 NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE1]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE2]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE3]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE4]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE5]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE6]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE7]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE8]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE9]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE10]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE11]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE12]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE13]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE14]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE15]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE16]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE17]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE18]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE19]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE20]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      NVARCHAR (4000) NULL,
    [PRIMARY_SALESREP_ID]            NVARCHAR (4000) NULL,
    [FINCHRG_RECEIVABLES_TRX_ID]     NVARCHAR (4000) NULL,
    [DATES_NEGATIVE_TOLERANCE]       NVARCHAR (4000) NULL,
    [DATES_POSITIVE_TOLERANCE]       NVARCHAR (4000) NULL,
    [DATE_TYPE_PREFERENCE]           NVARCHAR (4000) NULL,
    [OVER_SHIPMENT_TOLERANCE]        NVARCHAR (4000) NULL,
    [UNDER_SHIPMENT_TOLERANCE]       NVARCHAR (4000) NULL,
    [ITEM_CROSS_REF_PREF]            NVARCHAR (4000) NULL,
    [OVER_RETURN_TOLERANCE]          NVARCHAR (4000) NULL,
    [UNDER_RETURN_TOLERANCE]         NVARCHAR (4000) NULL,
    [SHIP_SETS_INCLUDE_LINES_FLAG]   NVARCHAR (4000) NULL,
    [ARRIVALSETS_INCLUDE_LINES_FLAG] NVARCHAR (4000) NULL,
    [SCHED_DATE_PUSH_FLAG]           NVARCHAR (4000) NULL,
    [INVOICE_QUANTITY_RULE]          NVARCHAR (4000) NULL,
    [PRICING_EVENT]                  NVARCHAR (4000) NULL,
    [GL_ID_REC]                      NVARCHAR (4000) NULL,
    [GL_ID_REV]                      NVARCHAR (4000) NULL,
    [GL_ID_TAX]                      NVARCHAR (4000) NULL,
    [GL_ID_FREIGHT]                  NVARCHAR (4000) NULL,
    [GL_ID_CLEARING]                 NVARCHAR (4000) NULL,
    [GL_ID_UNBILLED]                 NVARCHAR (4000) NULL,
    [GL_ID_UNEARNED]                 NVARCHAR (4000) NULL,
    [GL_ID_UNPAID_REC]               NVARCHAR (4000) NULL,
    [GL_ID_REMITTANCE]               NVARCHAR (4000) NULL,
    [GL_ID_FACTOR]                   NVARCHAR (4000) NULL,
    [TAX_CLASSIFICATION]             NVARCHAR (4000) NULL,
    [OBJECT_VERSION_NUMBER]          NVARCHAR (4000) NULL,
    [CREATED_BY_MODULE]              NVARCHAR (4000) NULL,
    [APPLICATION_ID]                 NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000)  NOT NULL
);

