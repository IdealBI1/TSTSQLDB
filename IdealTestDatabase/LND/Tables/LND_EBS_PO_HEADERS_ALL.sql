﻿CREATE TABLE [LND].[LND_EBS_PO_HEADERS_ALL] (
    [PO_HEADER_ID]                   NVARCHAR (4000) NULL,
    [AGENT_ID]                       NVARCHAR (4000) NULL,
    [TYPE_LOOKUP_CODE]               NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]               NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]                NVARCHAR (4000) NULL,
    [SEGMENT1]                       NVARCHAR (4000) NULL,
    [SUMMARY_FLAG]                   NVARCHAR (4000) NULL,
    [ENABLED_FLAG]                   NVARCHAR (4000) NULL,
    [SEGMENT2]                       NVARCHAR (4000) NULL,
    [SEGMENT3]                       NVARCHAR (4000) NULL,
    [SEGMENT4]                       NVARCHAR (4000) NULL,
    [SEGMENT5]                       NVARCHAR (4000) NULL,
    [START_DATE_ACTIVE]              NVARCHAR (4000) NULL,
    [END_DATE_ACTIVE]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]              NVARCHAR (4000) NULL,
    [CREATION_DATE]                  NVARCHAR (4000) NULL,
    [CREATED_BY]                     NVARCHAR (4000) NULL,
    [VENDOR_ID]                      NVARCHAR (4000) NULL,
    [VENDOR_SITE_ID]                 NVARCHAR (4000) NULL,
    [VENDOR_CONTACT_ID]              NVARCHAR (4000) NULL,
    [SHIP_TO_LOCATION_ID]            NVARCHAR (4000) NULL,
    [BILL_TO_LOCATION_ID]            NVARCHAR (4000) NULL,
    [TERMS_ID]                       NVARCHAR (4000) NULL,
    [SHIP_VIA_LOOKUP_CODE]           NVARCHAR (4000) NULL,
    [FOB_LOOKUP_CODE]                NVARCHAR (4000) NULL,
    [FREIGHT_TERMS_LOOKUP_CODE]      NVARCHAR (4000) NULL,
    [STATUS_LOOKUP_CODE]             NVARCHAR (4000) NULL,
    [CURRENCY_CODE]                  NVARCHAR (4000) NULL,
    [RATE_TYPE]                      NVARCHAR (4000) NULL,
    [RATE_DATE]                      NVARCHAR (4000) NULL,
    [RATE]                           NVARCHAR (4000) NULL,
    [FROM_HEADER_ID]                 NVARCHAR (4000) NULL,
    [FROM_TYPE_LOOKUP_CODE]          NVARCHAR (4000) NULL,
    [START_DATE]                     NVARCHAR (4000) NULL,
    [END_DATE]                       NVARCHAR (4000) NULL,
    [BLANKET_TOTAL_AMOUNT]           NVARCHAR (4000) NULL,
    [AUTHORIZATION_STATUS]           NVARCHAR (4000) NULL,
    [REVISION_NUM]                   NVARCHAR (4000) NULL,
    [REVISED_DATE]                   NVARCHAR (4000) NULL,
    [APPROVED_FLAG]                  NVARCHAR (4000) NULL,
    [APPROVED_DATE]                  NVARCHAR (4000) NULL,
    [AMOUNT_LIMIT]                   NVARCHAR (4000) NULL,
    [MIN_RELEASE_AMOUNT]             NVARCHAR (4000) NULL,
    [NOTE_TO_AUTHORIZER]             NVARCHAR (4000) NULL,
    [NOTE_TO_VENDOR]                 NVARCHAR (4000) NULL,
    [NOTE_TO_RECEIVER]               NVARCHAR (4000) NULL,
    [PRINT_COUNT]                    NVARCHAR (4000) NULL,
    [PRINTED_DATE]                   NVARCHAR (4000) NULL,
    [VENDOR_ORDER_NUM]               NVARCHAR (4000) NULL,
    [CONFIRMING_ORDER_FLAG]          NVARCHAR (4000) NULL,
    [COMMENTS]                       NVARCHAR (4000) NULL,
    [REPLY_DATE]                     NVARCHAR (4000) NULL,
    [REPLY_METHOD_LOOKUP_CODE]       NVARCHAR (4000) NULL,
    [RFQ_CLOSE_DATE]                 NVARCHAR (4000) NULL,
    [QUOTE_TYPE_LOOKUP_CODE]         NVARCHAR (4000) NULL,
    [QUOTATION_CLASS_CODE]           NVARCHAR (4000) NULL,
    [QUOTE_WARNING_DELAY_UNIT]       NVARCHAR (4000) NULL,
    [QUOTE_WARNING_DELAY]            NVARCHAR (4000) NULL,
    [QUOTE_VENDOR_QUOTE_NUMBER]      NVARCHAR (4000) NULL,
    [ACCEPTANCE_REQUIRED_FLAG]       NVARCHAR (4000) NULL,
    [ACCEPTANCE_DUE_DATE]            NVARCHAR (4000) NULL,
    [CLOSED_DATE]                    NVARCHAR (4000) NULL,
    [USER_HOLD_FLAG]                 NVARCHAR (4000) NULL,
    [APPROVAL_REQUIRED_FLAG]         NVARCHAR (4000) NULL,
    [CANCEL_FLAG]                    NVARCHAR (4000) NULL,
    [FIRM_STATUS_LOOKUP_CODE]        NVARCHAR (4000) NULL,
    [FIRM_DATE]                      NVARCHAR (4000) NULL,
    [FROZEN_FLAG]                    NVARCHAR (4000) NULL,
    [SUPPLY_AGREEMENT_FLAG]          NVARCHAR (4000) NULL,
    [EDI_PROCESSED_FLAG]             NVARCHAR (4000) NULL,
    [EDI_PROCESSED_STATUS]           NVARCHAR (4000) NULL,
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
    [ATTRIBUTE11]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                    NVARCHAR (4000) NULL,
    [CLOSED_CODE]                    NVARCHAR (4000) NULL,
    [USSGL_TRANSACTION_CODE]         NVARCHAR (4000) NULL,
    [GOVERNMENT_CONTEXT]             NVARCHAR (4000) NULL,
    [REQUEST_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]         NVARCHAR (4000) NULL,
    [PROGRAM_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [ORG_ID]                         NVARCHAR (4000) NULL,
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
    [INTERFACE_SOURCE_CODE]          NVARCHAR (4000) NULL,
    [REFERENCE_NUM]                  NVARCHAR (4000) NULL,
    [WF_ITEM_TYPE]                   NVARCHAR (4000) NULL,
    [WF_ITEM_KEY]                    NVARCHAR (4000) NULL,
    [MRC_RATE_TYPE]                  NVARCHAR (4000) NULL,
    [MRC_RATE_DATE]                  NVARCHAR (4000) NULL,
    [MRC_RATE]                       NVARCHAR (4000) NULL,
    [PCARD_ID]                       NVARCHAR (4000) NULL,
    [PRICE_UPDATE_TOLERANCE]         NVARCHAR (4000) NULL,
    [PAY_ON_CODE]                    NVARCHAR (4000) NULL,
    [XML_FLAG]                       NVARCHAR (4000) NULL,
    [XML_SEND_DATE]                  NVARCHAR (4000) NULL,
    [XML_CHANGE_SEND_DATE]           NVARCHAR (4000) NULL,
    [GLOBAL_AGREEMENT_FLAG]          NVARCHAR (4000) NULL,
    [CONSIGNED_CONSUMPTION_FLAG]     NVARCHAR (4000) NULL,
    [CBC_ACCOUNTING_DATE]            NVARCHAR (4000) NULL,
    [CONSUME_REQ_DEMAND_FLAG]        NVARCHAR (4000) NULL,
    [CHANGE_REQUESTED_BY]            NVARCHAR (4000) NULL,
    [SHIPPING_CONTROL]               NVARCHAR (4000) NULL,
    [CONTERMS_EXIST_FLAG]            NVARCHAR (4000) NULL,
    [CONTERMS_ARTICLES_UPD_DATE]     NVARCHAR (4000) NULL,
    [CONTERMS_DELIV_UPD_DATE]        NVARCHAR (4000) NULL,
    [ENCUMBRANCE_REQUIRED_FLAG]      NVARCHAR (4000) NULL,
    [PENDING_SIGNATURE_FLAG]         NVARCHAR (4000) NULL,
    [CHANGE_SUMMARY]                 NVARCHAR (4000) NULL,
    [DOCUMENT_CREATION_METHOD]       NVARCHAR (4000) NULL,
    [SUBMIT_DATE]                    NVARCHAR (4000) NULL,
    [SUPPLIER_NOTIF_METHOD]          NVARCHAR (4000) NULL,
    [FAX]                            NVARCHAR (4000) NULL,
    [EMAIL_ADDRESS]                  NVARCHAR (4000) NULL,
    [RETRO_PRICE_COMM_UPDATES_FLAG]  NVARCHAR (4000) NULL,
    [RETRO_PRICE_APPLY_UPDATES_FLAG] NVARCHAR (4000) NULL,
    [UPDATE_SOURCING_RULES_FLAG]     NVARCHAR (4000) NULL,
    [AUTO_SOURCING_FLAG]             NVARCHAR (4000) NULL,
    [CREATED_LANGUAGE]               NVARCHAR (4000) NULL,
    [CPA_REFERENCE]                  NVARCHAR (4000) NULL,
    [LOCK_OWNER_ROLE]                NVARCHAR (4000) NULL,
    [LOCK_OWNER_USER_ID]             NVARCHAR (4000) NULL,
    [SUPPLIER_AUTH_ENABLED_FLAG]     NVARCHAR (4000) NULL,
    [CAT_ADMIN_AUTH_ENABLED_FLAG]    NVARCHAR (4000) NULL,
    [STYLE_ID]                       NVARCHAR (4000) NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]      NVARCHAR (4000) NULL,
    [LAST_UPDATED_PROGRAM]           NVARCHAR (4000) NULL,
    [ENABLE_ALL_SITES]               NVARCHAR (4000) NULL,
    [PAY_WHEN_PAID]                  NVARCHAR (4000) NULL,
    [COMM_REV_NUM]                   NVARCHAR (4000) NULL,
    [CLM_DOCUMENT_NUMBER]            NVARCHAR (4000) NULL,
    [OTM_STATUS_CODE]                NVARCHAR (4000) NULL,
    [OTM_RECOVERY_FLAG]              NVARCHAR (4000) NULL,
    [AME_APPROVAL_ID]                NVARCHAR (4000) NULL,
    [AME_TRANSACTION_TYPE]           NVARCHAR (4000) NULL,
    [META_EFFECTIVE_DATETIME]        DATETIME2 (7)   NULL,
    [META_FILE_NAME]                 NVARCHAR (MAX)  NULL,
    [META_RECORD_SOURCE]             NVARCHAR (MAX)  NULL
);

