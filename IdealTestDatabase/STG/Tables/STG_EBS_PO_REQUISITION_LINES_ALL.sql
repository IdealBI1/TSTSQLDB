﻿CREATE TABLE [STG].[STG_EBS_PO_REQUISITION_LINES_ALL] (
    [REQUISITION_LINE_ID]            FLOAT (53)     NULL,
    [REQUISITION_HEADER_ID]          FLOAT (53)     NULL,
    [LINE_NUM]                       FLOAT (53)     NULL,
    [LINE_TYPE_ID]                   FLOAT (53)     NULL,
    [CATEGORY_ID]                    FLOAT (53)     NULL,
    [ITEM_DESCRIPTION]               VARCHAR (1000) NULL,
    [UNIT_MEAS_LOOKUP_CODE]          VARCHAR (100)  NULL,
    [UNIT_PRICE]                     FLOAT (53)     NULL,
    [QUANTITY]                       FLOAT (53)     NULL,
    [DELIVER_TO_LOCATION_ID]         FLOAT (53)     NULL,
    [TO_PERSON_ID]                   FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]               DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]                FLOAT (53)     NULL,
    [SOURCE_TYPE_CODE]               VARCHAR (100)  NULL,
    [LAST_UPDATE_LOGIN]              FLOAT (53)     NULL,
    [CREATION_DATE]                  DATETIME2 (7)  NULL,
    [CREATED_BY]                     FLOAT (53)     NULL,
    [ITEM_ID]                        FLOAT (53)     NULL,
    [ITEM_REVISION]                  VARCHAR (100)  NULL,
    [QUANTITY_DELIVERED]             FLOAT (53)     NULL,
    [SUGGESTED_BUYER_ID]             FLOAT (53)     NULL,
    [ENCUMBERED_FLAG]                VARCHAR (100)  NULL,
    [RFQ_REQUIRED_FLAG]              VARCHAR (100)  NULL,
    [NEED_BY_DATE]                   DATETIME2 (7)  NULL,
    [LINE_LOCATION_ID]               FLOAT (53)     NULL,
    [MODIFIED_BY_AGENT_FLAG]         VARCHAR (100)  NULL,
    [PARENT_REQ_LINE_ID]             FLOAT (53)     NULL,
    [JUSTIFICATION]                  VARCHAR (1000) NULL,
    [NOTE_TO_AGENT]                  VARCHAR (1000) NULL,
    [NOTE_TO_RECEIVER]               VARCHAR (1000) NULL,
    [PURCHASING_AGENT_ID]            FLOAT (53)     NULL,
    [DOCUMENT_TYPE_CODE]             VARCHAR (100)  NULL,
    [BLANKET_PO_HEADER_ID]           FLOAT (53)     NULL,
    [BLANKET_PO_LINE_NUM]            FLOAT (53)     NULL,
    [CURRENCY_CODE]                  VARCHAR (100)  NULL,
    [RATE_TYPE]                      VARCHAR (100)  NULL,
    [RATE_DATE]                      DATETIME2 (7)  NULL,
    [RATE]                           FLOAT (53)     NULL,
    [CURRENCY_UNIT_PRICE]            FLOAT (53)     NULL,
    [SUGGESTED_VENDOR_NAME]          VARCHAR (1000) NULL,
    [SUGGESTED_VENDOR_LOCATION]      VARCHAR (1000) NULL,
    [SUGGESTED_VENDOR_CONTACT]       VARCHAR (1000) NULL,
    [SUGGESTED_VENDOR_PHONE]         VARCHAR (100)  NULL,
    [SUGGESTED_VENDOR_PRODUCT_CODE]  VARCHAR (100)  NULL,
    [UN_NUMBER_ID]                   FLOAT (53)     NULL,
    [HAZARD_CLASS_ID]                FLOAT (53)     NULL,
    [MUST_USE_SUGG_VENDOR_FLAG]      VARCHAR (100)  NULL,
    [REFERENCE_NUM]                  VARCHAR (100)  NULL,
    [ON_RFQ_FLAG]                    VARCHAR (100)  NULL,
    [URGENT_FLAG]                    VARCHAR (100)  NULL,
    [CANCEL_FLAG]                    VARCHAR (100)  NULL,
    [SOURCE_ORGANIZATION_ID]         FLOAT (53)     NULL,
    [SOURCE_SUBINVENTORY]            VARCHAR (100)  NULL,
    [DESTINATION_TYPE_CODE]          VARCHAR (100)  NULL,
    [DESTINATION_ORGANIZATION_ID]    FLOAT (53)     NULL,
    [DESTINATION_SUBINVENTORY]       VARCHAR (100)  NULL,
    [QUANTITY_CANCELLED]             FLOAT (53)     NULL,
    [CANCEL_DATE]                    DATETIME2 (7)  NULL,
    [CANCEL_REASON]                  VARCHAR (1000) NULL,
    [CLOSED_CODE]                    VARCHAR (100)  NULL,
    [AGENT_RETURN_NOTE]              VARCHAR (1000) NULL,
    [CHANGED_AFTER_RESEARCH_FLAG]    VARCHAR (100)  NULL,
    [VENDOR_ID]                      FLOAT (53)     NULL,
    [VENDOR_SITE_ID]                 FLOAT (53)     NULL,
    [VENDOR_CONTACT_ID]              FLOAT (53)     NULL,
    [RESEARCH_AGENT_ID]              FLOAT (53)     NULL,
    [ON_LINE_FLAG]                   VARCHAR (100)  NULL,
    [WIP_ENTITY_ID]                  FLOAT (53)     NULL,
    [WIP_LINE_ID]                    FLOAT (53)     NULL,
    [WIP_REPETITIVE_SCHEDULE_ID]     FLOAT (53)     NULL,
    [WIP_OPERATION_SEQ_NUM]          FLOAT (53)     NULL,
    [WIP_RESOURCE_SEQ_NUM]           FLOAT (53)     NULL,
    [ATTRIBUTE_CATEGORY]             VARCHAR (100)  NULL,
    [DESTINATION_CONTEXT]            VARCHAR (100)  NULL,
    [INVENTORY_SOURCE_CONTEXT]       VARCHAR (100)  NULL,
    [VENDOR_SOURCE_CONTEXT]          VARCHAR (100)  NULL,
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
    [BOM_RESOURCE_ID]                FLOAT (53)     NULL,
    [REQUEST_ID]                     FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]         FLOAT (53)     NULL,
    [PROGRAM_ID]                     FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]            DATETIME2 (7)  NULL,
    [USSGL_TRANSACTION_CODE]         VARCHAR (100)  NULL,
    [GOVERNMENT_CONTEXT]             VARCHAR (100)  NULL,
    [CLOSED_REASON]                  VARCHAR (1000) NULL,
    [CLOSED_DATE]                    DATETIME2 (7)  NULL,
    [TRANSACTION_REASON_CODE]        VARCHAR (100)  NULL,
    [QUANTITY_RECEIVED]              FLOAT (53)     NULL,
    [SOURCE_REQ_LINE_ID]             FLOAT (53)     NULL,
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
    [KANBAN_CARD_ID]                 FLOAT (53)     NULL,
    [CATALOG_TYPE]                   VARCHAR (100)  NULL,
    [CATALOG_SOURCE]                 VARCHAR (100)  NULL,
    [MANUFACTURER_ID]                FLOAT (53)     NULL,
    [MANUFACTURER_NAME]              VARCHAR (1000) NULL,
    [MANUFACTURER_PART_NUMBER]       VARCHAR (1000) NULL,
    [REQUESTER_EMAIL]                VARCHAR (1000) NULL,
    [REQUESTER_FAX]                  VARCHAR (1000) NULL,
    [REQUESTER_PHONE]                VARCHAR (1000) NULL,
    [UNSPSC_CODE]                    VARCHAR (100)  NULL,
    [OTHER_CATEGORY_CODE]            VARCHAR (100)  NULL,
    [SUPPLIER_DUNS]                  VARCHAR (1000) NULL,
    [TAX_STATUS_INDICATOR]           VARCHAR (100)  NULL,
    [PCARD_FLAG]                     VARCHAR (100)  NULL,
    [NEW_SUPPLIER_FLAG]              VARCHAR (100)  NULL,
    [AUTO_RECEIVE_FLAG]              VARCHAR (100)  NULL,
    [TAX_USER_OVERRIDE_FLAG]         VARCHAR (100)  NULL,
    [TAX_CODE_ID]                    FLOAT (53)     NULL,
    [NOTE_TO_VENDOR]                 VARCHAR (1000) NULL,
    [OKE_CONTRACT_VERSION_ID]        FLOAT (53)     NULL,
    [OKE_CONTRACT_HEADER_ID]         FLOAT (53)     NULL,
    [ITEM_SOURCE_ID]                 FLOAT (53)     NULL,
    [SUPPLIER_REF_NUMBER]            VARCHAR (1000) NULL,
    [SECONDARY_UNIT_OF_MEASURE]      VARCHAR (100)  NULL,
    [SECONDARY_QUANTITY]             FLOAT (53)     NULL,
    [PREFERRED_GRADE]                VARCHAR (1000) NULL,
    [SECONDARY_QUANTITY_RECEIVED]    FLOAT (53)     NULL,
    [SECONDARY_QUANTITY_CANCELLED]   FLOAT (53)     NULL,
    [VMI_FLAG]                       VARCHAR (100)  NULL,
    [AUCTION_HEADER_ID]              FLOAT (53)     NULL,
    [AUCTION_DISPLAY_NUMBER]         VARCHAR (100)  NULL,
    [AUCTION_LINE_NUMBER]            FLOAT (53)     NULL,
    [REQS_IN_POOL_FLAG]              VARCHAR (100)  NULL,
    [BID_NUMBER]                     FLOAT (53)     NULL,
    [BID_LINE_NUMBER]                FLOAT (53)     NULL,
    [NONCAT_TEMPLATE_ID]             FLOAT (53)     NULL,
    [SUGGESTED_VENDOR_CONTACT_FAX]   VARCHAR (100)  NULL,
    [SUGGESTED_VENDOR_CONTACT_EMAIL] VARCHAR (8000) NULL,
    [AMOUNT]                         FLOAT (53)     NULL,
    [CURRENCY_AMOUNT]                FLOAT (53)     NULL,
    [LABOR_REQ_LINE_ID]              FLOAT (53)     NULL,
    [JOB_ID]                         FLOAT (53)     NULL,
    [JOB_LONG_DESCRIPTION]           VARCHAR (8000) NULL,
    [CONTRACTOR_STATUS]              VARCHAR (100)  NULL,
    [CONTACT_INFORMATION]            VARCHAR (1000) NULL,
    [SUGGESTED_SUPPLIER_FLAG]        VARCHAR (100)  NULL,
    [CANDIDATE_SCREENING_REQD_FLAG]  VARCHAR (100)  NULL,
    [CANDIDATE_FIRST_NAME]           VARCHAR (1000) NULL,
    [CANDIDATE_LAST_NAME]            VARCHAR (1000) NULL,
    [ASSIGNMENT_END_DATE]            DATETIME2 (7)  NULL,
    [OVERTIME_ALLOWED_FLAG]          VARCHAR (100)  NULL,
    [CONTRACTOR_REQUISITION_FLAG]    VARCHAR (100)  NULL,
    [DROP_SHIP_FLAG]                 VARCHAR (100)  NULL,
    [ASSIGNMENT_START_DATE]          DATETIME2 (7)  NULL,
    [ORDER_TYPE_LOOKUP_CODE]         VARCHAR (100)  NULL,
    [PURCHASE_BASIS]                 VARCHAR (100)  NULL,
    [MATCHING_BASIS]                 VARCHAR (100)  NULL,
    [NEGOTIATED_BY_PREPARER_FLAG]    VARCHAR (100)  NULL,
    [SHIP_METHOD]                    VARCHAR (100)  NULL,
    [ESTIMATED_PICKUP_DATE]          DATETIME2 (7)  NULL,
    [SUPPLIER_NOTIFIED_FOR_CANCEL]   VARCHAR (100)  NULL,
    [BASE_UNIT_PRICE]                FLOAT (53)     NULL,
    [AT_SOURCING_FLAG]               VARCHAR (100)  NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]      VARCHAR (100)  NULL,
    [TAX_NAME]                       VARCHAR (100)  NULL,
    [TRANSFERRED_TO_OE_FLAG]         VARCHAR (100)  NULL,
    [CONFORMED_LINE_ID]              FLOAT (53)     NULL,
    [AMENDMENT_TYPE]                 VARCHAR (100)  NULL,
    [AMENDMENT_STATUS]               VARCHAR (100)  NULL,
    [LINE_NUM_DISPLAY]               VARCHAR (1000) NULL,
    [GROUP_LINE_ID]                  FLOAT (53)     NULL,
    [CLM_INFO_FLAG]                  VARCHAR (100)  NULL,
    [CLM_OPTION_INDICATOR]           VARCHAR (100)  NULL,
    [CLM_BASE_LINE_NUM]              FLOAT (53)     NULL,
    [CLM_OPTION_NUM]                 FLOAT (53)     NULL,
    [CLM_OPTION_FROM_DATE]           DATETIME2 (7)  NULL,
    [CLM_OPTION_TO_DATE]             DATETIME2 (7)  NULL,
    [CLM_FUNDED_FLAG]                VARCHAR (100)  NULL,
    [UDA_TEMPLATE_ID]                FLOAT (53)     NULL,
    [CONTRACT_TYPE]                  VARCHAR (1000) NULL,
    [COST_CONSTRAINT]                VARCHAR (1000) NULL,
    [AMENDMENT_RESPONSE_REASON]      VARCHAR (8000) NULL,
    [CLM_PERIOD_PERF_START_DATE]     DATETIME2 (7)  NULL,
    [CLM_PERIOD_PERF_END_DATE]       DATETIME2 (7)  NULL,
    [CLM_EXTENDED_ITEM_DESCRIPTION]  VARCHAR (8000) NULL,
    [CLM_OPTION_EXERCISED]           VARCHAR (100)  NULL,
    [META_EFFECTIVE_DATETIME]        DATETIME2 (7)  NULL,
    [META_FILE_NAME]                 VARCHAR (8000) NULL,
    [META_RECORD_KEY]                VARCHAR (1000) NULL,
    [META_RECORD_CHECKSUM]           VARCHAR (1000) NULL,
    [META_RECORD_SOURCE]             VARCHAR (8000) NULL,
    [META_ROW_ID]                    BIGINT         IDENTITY (1, 1) NOT NULL
);
