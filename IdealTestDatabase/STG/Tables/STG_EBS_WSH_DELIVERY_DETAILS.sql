﻿CREATE TABLE [STG].[STG_EBS_WSH_DELIVERY_DETAILS] (
    [DELIVERY_DETAIL_ID]            FLOAT (53)     NULL,
    [SOURCE_CODE]                   VARCHAR (100)  NULL,
    [SOURCE_HEADER_ID]              FLOAT (53)     NULL,
    [SOURCE_LINE_ID]                FLOAT (53)     NULL,
    [SOURCE_HEADER_TYPE_ID]         FLOAT (53)     NULL,
    [SOURCE_HEADER_TYPE_NAME]       VARCHAR (1000) NULL,
    [CUST_PO_NUMBER]                VARCHAR (1000) NULL,
    [CUSTOMER_ID]                   FLOAT (53)     NULL,
    [SOLD_TO_CONTACT_ID]            FLOAT (53)     NULL,
    [INVENTORY_ITEM_ID]             FLOAT (53)     NULL,
    [ITEM_DESCRIPTION]              VARCHAR (1000) NULL,
    [SHIP_SET_ID]                   FLOAT (53)     NULL,
    [ARRIVAL_SET_ID]                FLOAT (53)     NULL,
    [TOP_MODEL_LINE_ID]             FLOAT (53)     NULL,
    [ATO_LINE_ID]                   FLOAT (53)     NULL,
    [HOLD_CODE]                     VARCHAR (100)  NULL,
    [SHIP_MODEL_COMPLETE_FLAG]      VARCHAR (100)  NULL,
    [HAZARD_CLASS_ID]               FLOAT (53)     NULL,
    [COUNTRY_OF_ORIGIN]             VARCHAR (1000) NULL,
    [CLASSIFICATION]                VARCHAR (100)  NULL,
    [SHIP_FROM_LOCATION_ID]         FLOAT (53)     NULL,
    [ORGANIZATION_ID]               FLOAT (53)     NULL,
    [SHIP_TO_LOCATION_ID]           FLOAT (53)     NULL,
    [SHIP_TO_CONTACT_ID]            FLOAT (53)     NULL,
    [DELIVER_TO_LOCATION_ID]        FLOAT (53)     NULL,
    [DELIVER_TO_CONTACT_ID]         FLOAT (53)     NULL,
    [INTMED_SHIP_TO_LOCATION_ID]    FLOAT (53)     NULL,
    [INTMED_SHIP_TO_CONTACT_ID]     FLOAT (53)     NULL,
    [SHIP_TOLERANCE_ABOVE]          FLOAT (53)     NULL,
    [SHIP_TOLERANCE_BELOW]          FLOAT (53)     NULL,
    [SRC_REQUESTED_QUANTITY]        FLOAT (53)     NULL,
    [SRC_REQUESTED_QUANTITY_UOM]    VARCHAR (100)  NULL,
    [CANCELLED_QUANTITY]            FLOAT (53)     NULL,
    [REQUESTED_QUANTITY]            FLOAT (53)     NULL,
    [REQUESTED_QUANTITY_UOM]        VARCHAR (100)  NULL,
    [SHIPPED_QUANTITY]              FLOAT (53)     NULL,
    [DELIVERED_QUANTITY]            FLOAT (53)     NULL,
    [QUALITY_CONTROL_QUANTITY]      FLOAT (53)     NULL,
    [CYCLE_COUNT_QUANTITY]          FLOAT (53)     NULL,
    [MOVE_ORDER_LINE_ID]            FLOAT (53)     NULL,
    [SUBINVENTORY]                  VARCHAR (100)  NULL,
    [REVISION]                      VARCHAR (100)  NULL,
    [LOT_NUMBER]                    VARCHAR (1000) NULL,
    [RELEASED_STATUS]               VARCHAR (100)  NULL,
    [CUSTOMER_REQUESTED_LOT_FLAG]   VARCHAR (100)  NULL,
    [SERIAL_NUMBER]                 VARCHAR (100)  NULL,
    [LOCATOR_ID]                    FLOAT (53)     NULL,
    [DATE_REQUESTED]                DATETIME2 (7)  NULL,
    [DATE_SCHEDULED]                DATETIME2 (7)  NULL,
    [MASTER_CONTAINER_ITEM_ID]      FLOAT (53)     NULL,
    [DETAIL_CONTAINER_ITEM_ID]      FLOAT (53)     NULL,
    [LOAD_SEQ_NUMBER]               FLOAT (53)     NULL,
    [SHIP_METHOD_CODE]              VARCHAR (100)  NULL,
    [CARRIER_ID]                    FLOAT (53)     NULL,
    [FREIGHT_TERMS_CODE]            VARCHAR (100)  NULL,
    [SHIPMENT_PRIORITY_CODE]        VARCHAR (100)  NULL,
    [FOB_CODE]                      VARCHAR (100)  NULL,
    [CUSTOMER_ITEM_ID]              FLOAT (53)     NULL,
    [DEP_PLAN_REQUIRED_FLAG]        VARCHAR (100)  NULL,
    [CUSTOMER_PROD_SEQ]             VARCHAR (1000) NULL,
    [CUSTOMER_DOCK_CODE]            VARCHAR (1000) NULL,
    [NET_WEIGHT]                    FLOAT (53)     NULL,
    [WEIGHT_UOM_CODE]               VARCHAR (100)  NULL,
    [VOLUME]                        FLOAT (53)     NULL,
    [VOLUME_UOM_CODE]               VARCHAR (100)  NULL,
    [SHIPPING_INSTRUCTIONS]         VARCHAR (8000) NULL,
    [PACKING_INSTRUCTIONS]          VARCHAR (8000) NULL,
    [PROJECT_ID]                    FLOAT (53)     NULL,
    [TASK_ID]                       FLOAT (53)     NULL,
    [ORG_ID]                        FLOAT (53)     NULL,
    [OE_INTERFACED_FLAG]            VARCHAR (100)  NULL,
    [MVT_STAT_STATUS]               VARCHAR (100)  NULL,
    [TRACKING_NUMBER]               VARCHAR (100)  NULL,
    [TRANSACTION_TEMP_ID]           FLOAT (53)     NULL,
    [TP_ATTRIBUTE_CATEGORY]         VARCHAR (1000) NULL,
    [TP_ATTRIBUTE1]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE2]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE3]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE4]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE5]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE6]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE7]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE8]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE9]                 VARCHAR (1000) NULL,
    [TP_ATTRIBUTE10]                VARCHAR (1000) NULL,
    [TP_ATTRIBUTE11]                VARCHAR (1000) NULL,
    [TP_ATTRIBUTE12]                VARCHAR (1000) NULL,
    [TP_ATTRIBUTE13]                VARCHAR (1000) NULL,
    [TP_ATTRIBUTE14]                VARCHAR (1000) NULL,
    [TP_ATTRIBUTE15]                VARCHAR (1000) NULL,
    [ATTRIBUTE_CATEGORY]            VARCHAR (1000) NULL,
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
    [CREATION_DATE]                 DATETIME2 (7)  NULL,
    [CREATED_BY]                    FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]              DATETIME2 (7)  NULL,
    [LAST_UPDATED_BY]               FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]             FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]        FLOAT (53)     NULL,
    [PROGRAM_ID]                    FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]           DATETIME2 (7)  NULL,
    [REQUEST_ID]                    FLOAT (53)     NULL,
    [MOVEMENT_ID]                   FLOAT (53)     NULL,
    [SPLIT_FROM_DELIVERY_DETAIL_ID] FLOAT (53)     NULL,
    [INV_INTERFACED_FLAG]           VARCHAR (100)  NULL,
    [SEAL_CODE]                     VARCHAR (100)  NULL,
    [MINIMUM_FILL_PERCENT]          FLOAT (53)     NULL,
    [MAXIMUM_VOLUME]                FLOAT (53)     NULL,
    [MAXIMUM_LOAD_WEIGHT]           FLOAT (53)     NULL,
    [MASTER_SERIAL_NUMBER]          VARCHAR (100)  NULL,
    [GROSS_WEIGHT]                  FLOAT (53)     NULL,
    [FILL_PERCENT]                  FLOAT (53)     NULL,
    [CONTAINER_NAME]                VARCHAR (100)  NULL,
    [CONTAINER_TYPE_CODE]           VARCHAR (100)  NULL,
    [CONTAINER_FLAG]                VARCHAR (100)  NULL,
    [PREFERRED_GRADE]               VARCHAR (1000) NULL,
    [SRC_REQUESTED_QUANTITY2]       FLOAT (53)     NULL,
    [SRC_REQUESTED_QUANTITY_UOM2]   VARCHAR (100)  NULL,
    [REQUESTED_QUANTITY2]           FLOAT (53)     NULL,
    [SHIPPED_QUANTITY2]             FLOAT (53)     NULL,
    [DELIVERED_QUANTITY2]           FLOAT (53)     NULL,
    [CANCELLED_QUANTITY2]           FLOAT (53)     NULL,
    [QUALITY_CONTROL_QUANTITY2]     FLOAT (53)     NULL,
    [CYCLE_COUNT_QUANTITY2]         FLOAT (53)     NULL,
    [REQUESTED_QUANTITY_UOM2]       VARCHAR (100)  NULL,
    [SUBLOT_NUMBER]                 VARCHAR (100)  NULL,
    [UNIT_PRICE]                    FLOAT (53)     NULL,
    [CURRENCY_CODE]                 VARCHAR (100)  NULL,
    [UNIT_NUMBER]                   VARCHAR (100)  NULL,
    [FREIGHT_CLASS_CAT_ID]          FLOAT (53)     NULL,
    [COMMODITY_CODE_CAT_ID]         FLOAT (53)     NULL,
    [LPN_CONTENT_ID]                FLOAT (53)     NULL,
    [SHIP_TO_SITE_USE_ID]           FLOAT (53)     NULL,
    [DELIVER_TO_SITE_USE_ID]        FLOAT (53)     NULL,
    [LPN_ID]                        FLOAT (53)     NULL,
    [INSPECTION_FLAG]               VARCHAR (100)  NULL,
    [ORIGINAL_SUBINVENTORY]         VARCHAR (100)  NULL,
    [SOURCE_HEADER_NUMBER]          VARCHAR (1000) NULL,
    [SOURCE_LINE_NUMBER]            VARCHAR (1000) NULL,
    [PICKABLE_FLAG]                 VARCHAR (100)  NULL,
    [CUSTOMER_PRODUCTION_LINE]      VARCHAR (1000) NULL,
    [CUSTOMER_JOB]                  VARCHAR (1000) NULL,
    [CUST_MODEL_SERIAL_NUMBER]      VARCHAR (1000) NULL,
    [TO_SERIAL_NUMBER]              VARCHAR (100)  NULL,
    [PICKED_QUANTITY]               FLOAT (53)     NULL,
    [PICKED_QUANTITY2]              FLOAT (53)     NULL,
    [RECEIVED_QUANTITY]             FLOAT (53)     NULL,
    [RECEIVED_QUANTITY2]            FLOAT (53)     NULL,
    [SOURCE_LINE_SET_ID]            FLOAT (53)     NULL,
    [BATCH_ID]                      FLOAT (53)     NULL,
    [TRANSACTION_ID]                FLOAT (53)     NULL,
    [SERVICE_LEVEL]                 VARCHAR (100)  NULL,
    [MODE_OF_TRANSPORT]             VARCHAR (100)  NULL,
    [EARLIEST_PICKUP_DATE]          DATETIME2 (7)  NULL,
    [LATEST_PICKUP_DATE]            DATETIME2 (7)  NULL,
    [EARLIEST_DROPOFF_DATE]         DATETIME2 (7)  NULL,
    [LATEST_DROPOFF_DATE]           DATETIME2 (7)  NULL,
    [REQUEST_DATE_TYPE_CODE]        VARCHAR (100)  NULL,
    [TP_DELIVERY_DETAIL_ID]         FLOAT (53)     NULL,
    [SOURCE_DOCUMENT_TYPE_ID]       FLOAT (53)     NULL,
    [VENDOR_ID]                     FLOAT (53)     NULL,
    [SHIP_FROM_SITE_ID]             FLOAT (53)     NULL,
    [IGNORE_FOR_PLANNING]           VARCHAR (100)  NULL,
    [LINE_DIRECTION]                VARCHAR (100)  NULL,
    [PARTY_ID]                      FLOAT (53)     NULL,
    [ROUTING_REQ_ID]                FLOAT (53)     NULL,
    [SHIPPING_CONTROL]              VARCHAR (100)  NULL,
    [SOURCE_BLANKET_REFERENCE_ID]   FLOAT (53)     NULL,
    [SOURCE_BLANKET_REFERENCE_NUM]  FLOAT (53)     NULL,
    [PO_SHIPMENT_LINE_ID]           FLOAT (53)     NULL,
    [PO_SHIPMENT_LINE_NUMBER]       FLOAT (53)     NULL,
    [SCHEDULED_QUANTITY]            FLOAT (53)     NULL,
    [RETURNED_QUANTITY]             FLOAT (53)     NULL,
    [SCHEDULED_QUANTITY2]           FLOAT (53)     NULL,
    [RETURNED_QUANTITY2]            FLOAT (53)     NULL,
    [SOURCE_LINE_TYPE_CODE]         VARCHAR (100)  NULL,
    [RCV_SHIPMENT_LINE_ID]          FLOAT (53)     NULL,
    [SUPPLIER_ITEM_NUMBER]          VARCHAR (1000) NULL,
    [FILLED_VOLUME]                 FLOAT (53)     NULL,
    [UNIT_WEIGHT]                   FLOAT (53)     NULL,
    [UNIT_VOLUME]                   FLOAT (53)     NULL,
    [WV_FROZEN_FLAG]                VARCHAR (100)  NULL,
    [PO_REVISION_NUMBER]            FLOAT (53)     NULL,
    [RELEASE_REVISION_NUMBER]       FLOAT (53)     NULL,
    [REPLENISHMENT_STATUS]          VARCHAR (100)  NULL,
    [ORIGINAL_LOT_NUMBER]           VARCHAR (100)  NULL,
    [ORIGINAL_REVISION]             VARCHAR (100)  NULL,
    [ORIGINAL_LOCATOR_ID]           FLOAT (53)     NULL,
    [REFERENCE_NUMBER]              VARCHAR (100)  NULL,
    [REFERENCE_LINE_NUMBER]         VARCHAR (100)  NULL,
    [REFERENCE_LINE_QUANTITY]       FLOAT (53)     NULL,
    [REFERENCE_LINE_QUANTITY_UOM]   VARCHAR (100)  NULL,
    [CLIENT_ID]                     FLOAT (53)     NULL,
    [SHIPMENT_BATCH_ID]             FLOAT (53)     NULL,
    [SHIPMENT_LINE_NUMBER]          FLOAT (53)     NULL,
    [REFERENCE_LINE_ID]             FLOAT (53)     NULL,
    [CONSIGNEE_FLAG]                VARCHAR (100)  NULL,
    [EQUIPMENT_ID]                  FLOAT (53)     NULL,
    [OMD_INSERT_DATETIME]           DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]                 VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD]          VARCHAR (1000) NULL
);

