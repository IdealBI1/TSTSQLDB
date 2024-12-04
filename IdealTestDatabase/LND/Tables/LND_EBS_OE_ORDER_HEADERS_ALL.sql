﻿CREATE TABLE [LND].[LND_EBS_OE_ORDER_HEADERS_ALL] (
    [HEADER_ID]                      NVARCHAR (4000) NULL,
    [ORG_ID]                         NVARCHAR (4000) NULL,
    [ORDER_TYPE_ID]                  NVARCHAR (4000) NULL,
    [ORDER_NUMBER]                   NVARCHAR (4000) NULL,
    [VERSION_NUMBER]                 NVARCHAR (4000) NULL,
    [EXPIRATION_DATE]                NVARCHAR (4000) NULL,
    [ORDER_SOURCE_ID]                NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_TYPE_ID]        NVARCHAR (4000) NULL,
    [ORIG_SYS_DOCUMENT_REF]          NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_ID]             NVARCHAR (4000) NULL,
    [ORDERED_DATE]                   NVARCHAR (4000) NULL,
    [REQUEST_DATE]                   NVARCHAR (4000) NULL,
    [PRICING_DATE]                   NVARCHAR (4000) NULL,
    [SHIPMENT_PRIORITY_CODE]         NVARCHAR (4000) NULL,
    [DEMAND_CLASS_CODE]              NVARCHAR (4000) NULL,
    [PRICE_LIST_ID]                  NVARCHAR (4000) NULL,
    [TAX_EXEMPT_FLAG]                NVARCHAR (4000) NULL,
    [TAX_EXEMPT_NUMBER]              NVARCHAR (4000) NULL,
    [TAX_EXEMPT_REASON_CODE]         NVARCHAR (4000) NULL,
    [CONVERSION_RATE]                NVARCHAR (4000) NULL,
    [CONVERSION_TYPE_CODE]           NVARCHAR (4000) NULL,
    [CONVERSION_RATE_DATE]           NVARCHAR (4000) NULL,
    [PARTIAL_SHIPMENTS_ALLOWED]      NVARCHAR (4000) NULL,
    [SHIP_TOLERANCE_ABOVE]           NVARCHAR (4000) NULL,
    [SHIP_TOLERANCE_BELOW]           NVARCHAR (4000) NULL,
    [TRANSACTIONAL_CURR_CODE]        NVARCHAR (4000) NULL,
    [AGREEMENT_ID]                   NVARCHAR (4000) NULL,
    [TAX_POINT_CODE]                 NVARCHAR (4000) NULL,
    [CUST_PO_NUMBER]                 NVARCHAR (4000) NULL,
    [INVOICING_RULE_ID]              NVARCHAR (4000) NULL,
    [ACCOUNTING_RULE_ID]             NVARCHAR (4000) NULL,
    [PAYMENT_TERM_ID]                NVARCHAR (4000) NULL,
    [SHIPPING_METHOD_CODE]           NVARCHAR (4000) NULL,
    [FREIGHT_CARRIER_CODE]           NVARCHAR (4000) NULL,
    [FOB_POINT_CODE]                 NVARCHAR (4000) NULL,
    [FREIGHT_TERMS_CODE]             NVARCHAR (4000) NULL,
    [SOLD_FROM_ORG_ID]               NVARCHAR (4000) NULL,
    [SOLD_TO_ORG_ID]                 NVARCHAR (4000) NULL,
    [SHIP_FROM_ORG_ID]               NVARCHAR (4000) NULL,
    [SHIP_TO_ORG_ID]                 NVARCHAR (4000) NULL,
    [INVOICE_TO_ORG_ID]              NVARCHAR (4000) NULL,
    [DELIVER_TO_ORG_ID]              NVARCHAR (4000) NULL,
    [SOLD_TO_CONTACT_ID]             NVARCHAR (4000) NULL,
    [SHIP_TO_CONTACT_ID]             NVARCHAR (4000) NULL,
    [INVOICE_TO_CONTACT_ID]          NVARCHAR (4000) NULL,
    [DELIVER_TO_CONTACT_ID]          NVARCHAR (4000) NULL,
    [CREATION_DATE]                  NVARCHAR (4000) NULL,
    [CREATED_BY]                     NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]               NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]              NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]         NVARCHAR (4000) NULL,
    [PROGRAM_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [REQUEST_ID]                     NVARCHAR (4000) NULL,
    [CONTEXT]                        NVARCHAR (4000) NULL,
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
    [ATTRIBUTE11]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                    NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      NVARCHAR (4000) NULL,
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
    [CANCELLED_FLAG]                 NVARCHAR (4000) NULL,
    [OPEN_FLAG]                      NVARCHAR (4000) NULL,
    [BOOKED_FLAG]                    NVARCHAR (4000) NULL,
    [SALESREP_ID]                    NVARCHAR (4000) NULL,
    [RETURN_REASON_CODE]             NVARCHAR (4000) NULL,
    [ORDER_DATE_TYPE_CODE]           NVARCHAR (4000) NULL,
    [EARLIEST_SCHEDULE_LIMIT]        NVARCHAR (4000) NULL,
    [LATEST_SCHEDULE_LIMIT]          NVARCHAR (4000) NULL,
    [PAYMENT_TYPE_CODE]              NVARCHAR (4000) NULL,
    [PAYMENT_AMOUNT]                 NVARCHAR (4000) NULL,
    [CHECK_NUMBER]                   NVARCHAR (4000) NULL,
    [CREDIT_CARD_CODE]               NVARCHAR (4000) NULL,
    [CREDIT_CARD_HOLDER_NAME]        NVARCHAR (4000) NULL,
    [CREDIT_CARD_NUMBER]             NVARCHAR (4000) NULL,
    [CREDIT_CARD_EXPIRATION_DATE]    NVARCHAR (4000) NULL,
    [CREDIT_CARD_APPROVAL_CODE]      NVARCHAR (4000) NULL,
    [SALES_CHANNEL_CODE]             NVARCHAR (4000) NULL,
    [FIRST_ACK_CODE]                 NVARCHAR (4000) NULL,
    [FIRST_ACK_DATE]                 NVARCHAR (4000) NULL,
    [LAST_ACK_CODE]                  NVARCHAR (4000) NULL,
    [LAST_ACK_DATE]                  NVARCHAR (4000) NULL,
    [ORDER_CATEGORY_CODE]            NVARCHAR (4000) NULL,
    [CHANGE_SEQUENCE]                NVARCHAR (4000) NULL,
    [DROP_SHIP_FLAG]                 NVARCHAR (4000) NULL,
    [CUSTOMER_PAYMENT_TERM_ID]       NVARCHAR (4000) NULL,
    [SHIPPING_INSTRUCTIONS]          NVARCHAR (4000) NULL,
    [PACKING_INSTRUCTIONS]           NVARCHAR (4000) NULL,
    [TP_CONTEXT]                     NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE1]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE2]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE3]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE4]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE5]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE6]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE7]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE8]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE9]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE10]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE11]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE12]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE13]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE14]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE15]                 NVARCHAR (4000) NULL,
    [FLOW_STATUS_CODE]               NVARCHAR (4000) NULL,
    [MARKETING_SOURCE_CODE_ID]       NVARCHAR (4000) NULL,
    [CREDIT_CARD_APPROVAL_DATE]      NVARCHAR (4000) NULL,
    [UPGRADED_FLAG]                  NVARCHAR (4000) NULL,
    [CUSTOMER_PREFERENCE_SET_CODE]   NVARCHAR (4000) NULL,
    [BOOKED_DATE]                    NVARCHAR (4000) NULL,
    [LOCK_CONTROL]                   NVARCHAR (4000) NULL,
    [PRICE_REQUEST_CODE]             NVARCHAR (4000) NULL,
    [BATCH_ID]                       NVARCHAR (4000) NULL,
    [XML_MESSAGE_ID]                 NVARCHAR (4000) NULL,
    [ACCOUNTING_RULE_DURATION]       NVARCHAR (4000) NULL,
    [ATTRIBUTE16]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE17]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE18]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE19]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE20]                    NVARCHAR (4000) NULL,
    [BLANKET_NUMBER]                 NVARCHAR (4000) NULL,
    [SALES_DOCUMENT_TYPE_CODE]       NVARCHAR (4000) NULL,
    [SOLD_TO_PHONE_ID]               NVARCHAR (4000) NULL,
    [FULFILLMENT_SET_NAME]           NVARCHAR (4000) NULL,
    [LINE_SET_NAME]                  NVARCHAR (4000) NULL,
    [DEFAULT_FULFILLMENT_SET]        NVARCHAR (4000) NULL,
    [TRANSACTION_PHASE_CODE]         NVARCHAR (4000) NULL,
    [SALES_DOCUMENT_NAME]            NVARCHAR (4000) NULL,
    [QUOTE_NUMBER]                   NVARCHAR (4000) NULL,
    [QUOTE_DATE]                     NVARCHAR (4000) NULL,
    [USER_STATUS_CODE]               NVARCHAR (4000) NULL,
    [DRAFT_SUBMITTED_FLAG]           NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_VERSION_NUMBER] NVARCHAR (4000) NULL,
    [SOLD_TO_SITE_USE_ID]            NVARCHAR (4000) NULL,
    [SUPPLIER_SIGNATURE]             NVARCHAR (4000) NULL,
    [SUPPLIER_SIGNATURE_DATE]        NVARCHAR (4000) NULL,
    [CUSTOMER_SIGNATURE]             NVARCHAR (4000) NULL,
    [CUSTOMER_SIGNATURE_DATE]        NVARCHAR (4000) NULL,
    [MINISITE_ID]                    NVARCHAR (4000) NULL,
    [END_CUSTOMER_ID]                NVARCHAR (4000) NULL,
    [END_CUSTOMER_CONTACT_ID]        NVARCHAR (4000) NULL,
    [END_CUSTOMER_SITE_USE_ID]       NVARCHAR (4000) NULL,
    [IB_OWNER]                       NVARCHAR (4000) NULL,
    [IB_CURRENT_LOCATION]            NVARCHAR (4000) NULL,
    [IB_INSTALLED_AT_LOCATION]       NVARCHAR (4000) NULL,
    [ORDER_FIRMED_DATE]              NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000)  NOT NULL
);

