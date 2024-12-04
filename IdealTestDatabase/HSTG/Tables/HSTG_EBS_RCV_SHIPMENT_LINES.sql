﻿CREATE TABLE [HSTG].[HSTG_EBS_RCV_SHIPMENT_LINES] (
    [SHIPMENT_LINE_ID]              FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]              DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]               FLOAT (53)     NULL,
    [CREATION_DATE]                 DATETIME2 (7)  NULL,
    [CREATED_BY]                    FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]             FLOAT (53)     NULL,
    [SHIPMENT_HEADER_ID]            FLOAT (53)     NULL,
    [LINE_NUM]                      FLOAT (53)     NULL,
    [CATEGORY_ID]                   FLOAT (53)     NULL,
    [QUANTITY_SHIPPED]              FLOAT (53)     NULL,
    [QUANTITY_RECEIVED]             FLOAT (53)     NULL,
    [UNIT_OF_MEASURE]               VARCHAR (100)  NULL,
    [ITEM_DESCRIPTION]              VARCHAR (1000) NULL,
    [ITEM_ID]                       FLOAT (53)     NULL,
    [ITEM_REVISION]                 VARCHAR (100)  NULL,
    [VENDOR_ITEM_NUM]               VARCHAR (100)  NULL,
    [VENDOR_LOT_NUM]                VARCHAR (100)  NULL,
    [UOM_CONVERSION_RATE]           FLOAT (53)     NULL,
    [SHIPMENT_LINE_STATUS_CODE]     VARCHAR (100)  NULL,
    [SOURCE_DOCUMENT_CODE]          VARCHAR (100)  NULL,
    [PO_HEADER_ID]                  FLOAT (53)     NULL,
    [PO_RELEASE_ID]                 FLOAT (53)     NULL,
    [PO_LINE_ID]                    FLOAT (53)     NULL,
    [PO_LINE_LOCATION_ID]           FLOAT (53)     NULL,
    [PO_DISTRIBUTION_ID]            FLOAT (53)     NULL,
    [REQUISITION_LINE_ID]           FLOAT (53)     NULL,
    [REQ_DISTRIBUTION_ID]           FLOAT (53)     NULL,
    [ROUTING_HEADER_ID]             FLOAT (53)     NULL,
    [PACKING_SLIP]                  VARCHAR (100)  NULL,
    [FROM_ORGANIZATION_ID]          FLOAT (53)     NULL,
    [DELIVER_TO_PERSON_ID]          FLOAT (53)     NULL,
    [EMPLOYEE_ID]                   FLOAT (53)     NULL,
    [DESTINATION_TYPE_CODE]         VARCHAR (100)  NULL,
    [TO_ORGANIZATION_ID]            FLOAT (53)     NULL,
    [TO_SUBINVENTORY]               VARCHAR (100)  NULL,
    [LOCATOR_ID]                    FLOAT (53)     NULL,
    [DELIVER_TO_LOCATION_ID]        FLOAT (53)     NULL,
    [CHARGE_ACCOUNT_ID]             FLOAT (53)     NULL,
    [TRANSPORTATION_ACCOUNT_ID]     FLOAT (53)     NULL,
    [SHIPMENT_UNIT_PRICE]           FLOAT (53)     NULL,
    [TRANSFER_COST]                 FLOAT (53)     NULL,
    [TRANSPORTATION_COST]           FLOAT (53)     NULL,
    [COMMENTS]                      VARCHAR (8000) NULL,
    [ATTRIBUTE_CATEGORY]            VARCHAR (100)  NULL,
    [ATTRIBUTE1]                    VARCHAR (1000) NULL,
    [ATTRIBUTE2]                    VARCHAR (1000) NULL,
    [ATTRIBUTE3]                    VARCHAR (1000) NULL,
    [ATTRIBUTE4]                    VARCHAR (1000) NULL,
    [ATTRIBUTE5]                    VARCHAR (1000) NULL,
    [ATTRIBUTE6]                    VARCHAR (1000) NULL,
    [ATTRIBUTE7]                    VARCHAR (1000) NULL,
    [ATTRIBUTE8]                    VARCHAR (1000) NULL,
    [ATTRIBUTE9]                    VARCHAR (1000) NULL,
    [ATTRIBUTE10]                   VARCHAR (1000) NULL,
    [ATTRIBUTE11]                   VARCHAR (1000) NULL,
    [ATTRIBUTE12]                   VARCHAR (1000) NULL,
    [ATTRIBUTE13]                   VARCHAR (1000) NULL,
    [ATTRIBUTE14]                   VARCHAR (1000) NULL,
    [ATTRIBUTE15]                   VARCHAR (1000) NULL,
    [REASON_ID]                     FLOAT (53)     NULL,
    [USSGL_TRANSACTION_CODE]        VARCHAR (100)  NULL,
    [GOVERNMENT_CONTEXT]            VARCHAR (100)  NULL,
    [REQUEST_ID]                    FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]        FLOAT (53)     NULL,
    [PROGRAM_ID]                    FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]           DATETIME2 (7)  NULL,
    [DESTINATION_CONTEXT]           VARCHAR (100)  NULL,
    [PRIMARY_UNIT_OF_MEASURE]       VARCHAR (100)  NULL,
    [EXCESS_TRANSPORT_REASON]       VARCHAR (100)  NULL,
    [EXCESS_TRANSPORT_RESPONSIBLE]  VARCHAR (100)  NULL,
    [EXCESS_TRANSPORT_AUTH_NUM]     VARCHAR (100)  NULL,
    [ASN_LINE_FLAG]                 VARCHAR (100)  NULL,
    [ORIGINAL_ASN_PARENT_LINE_ID]   VARCHAR (100)  NULL,
    [ORIGINAL_ASN_LINE_FLAG]        VARCHAR (100)  NULL,
    [VENDOR_CUM_SHIPPED_QUANTITY]   FLOAT (53)     NULL,
    [NOTICE_UNIT_PRICE]             FLOAT (53)     NULL,
    [TAX_NAME]                      VARCHAR (1000) NULL,
    [TAX_AMOUNT]                    FLOAT (53)     NULL,
    [INVOICE_STATUS_CODE]           VARCHAR (100)  NULL,
    [CUM_COMPARISON_FLAG]           VARCHAR (100)  NULL,
    [CONTAINER_NUM]                 VARCHAR (100)  NULL,
    [TRUCK_NUM]                     VARCHAR (100)  NULL,
    [BAR_CODE_LABEL]                VARCHAR (100)  NULL,
    [TRANSFER_PERCENTAGE]           FLOAT (53)     NULL,
    [MRC_SHIPMENT_UNIT_PRICE]       VARCHAR (8000) NULL,
    [MRC_TRANSFER_COST]             VARCHAR (8000) NULL,
    [MRC_TRANSPORTATION_COST]       VARCHAR (8000) NULL,
    [MRC_NOTICE_UNIT_PRICE]         VARCHAR (8000) NULL,
    [SHIP_TO_LOCATION_ID]           FLOAT (53)     NULL,
    [COUNTRY_OF_ORIGIN_CODE]        VARCHAR (100)  NULL,
    [OE_ORDER_HEADER_ID]            FLOAT (53)     NULL,
    [OE_ORDER_LINE_ID]              FLOAT (53)     NULL,
    [CUSTOMER_ITEM_NUM]             VARCHAR (1000) NULL,
    [COST_GROUP_ID]                 FLOAT (53)     NULL,
    [SECONDARY_QUANTITY_SHIPPED]    FLOAT (53)     NULL,
    [SECONDARY_QUANTITY_RECEIVED]   FLOAT (53)     NULL,
    [SECONDARY_UNIT_OF_MEASURE]     VARCHAR (100)  NULL,
    [QC_GRADE]                      VARCHAR (1000) NULL,
    [MMT_TRANSACTION_ID]            FLOAT (53)     NULL,
    [ASN_LPN_ID]                    FLOAT (53)     NULL,
    [AMOUNT]                        FLOAT (53)     NULL,
    [AMOUNT_RECEIVED]               FLOAT (53)     NULL,
    [JOB_ID]                        FLOAT (53)     NULL,
    [TIMECARD_ID]                   FLOAT (53)     NULL,
    [TIMECARD_OVN]                  FLOAT (53)     NULL,
    [OSA_FLAG]                      VARCHAR (100)  NULL,
    [REQUESTED_AMOUNT]              FLOAT (53)     NULL,
    [MATERIAL_STORED_AMOUNT]        FLOAT (53)     NULL,
    [APPROVAL_STATUS]               VARCHAR (100)  NULL,
    [AMOUNT_SHIPPED]                FLOAT (53)     NULL,
    [LCM_SHIPMENT_LINE_ID]          FLOAT (53)     NULL,
    [UNIT_LANDED_COST]              FLOAT (53)     NULL,
    [EQUIPMENT_ID]                  FLOAT (53)     NULL,
    [META_RECORD_KEY]               VARCHAR (1000) NULL,
    [META_EFFECTIVE_DATETIME]       DATETIME2 (7)  NULL,
    [META_EXPIRY_DATETIME]          DATETIME2 (7)  NULL,
    [META_CDC_OPERATION]            VARCHAR (1000) NULL,
    [META_FILE_NAME]                VARCHAR (8000) NULL,
    [META_CURRENT_RECORD_INDICATOR] VARCHAR (1)    NULL,
    [META_DELETE_INDICATOR]         VARCHAR (1)    NULL,
    [META_RECORD_CHECKSUM]          VARCHAR (1000) NULL,
    [META_RECORD_SOURCE]            VARCHAR (8000) NULL,
    [META_ROW_ID]                   BIGINT         IDENTITY (1, 1) NOT NULL
);

