﻿

CREATE PROCEDURE [STG].[LOAD_STG_EBS_WSH_DELIVERY_DETAILS]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:54 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_WSH_DELIVERY_DETAILS";
    
    
    Source                                  Destination                          
    ------------------------------------    ------------------------------------ 
    LND"."LND_EBS_WSH_DELIVERY_DETAILS"    "STG"."STG_EBS_WSH_DELIVERY_DETAILS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_WSH_DELIVERY_DETAILS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_WSH_DELIVERY_DETAILS"
                (
                    "DELIVERY_DETAIL_ID"
                    ,"SOURCE_CODE"
                    ,"SOURCE_HEADER_ID"
                    ,"SOURCE_LINE_ID"
                    ,"SOURCE_HEADER_TYPE_ID"
                    ,"SOURCE_HEADER_TYPE_NAME"
                    ,"CUST_PO_NUMBER"
                    ,"CUSTOMER_ID"
                    ,"SOLD_TO_CONTACT_ID"
                    ,"INVENTORY_ITEM_ID"
                    ,"ITEM_DESCRIPTION"
                    ,"SHIP_SET_ID"
                    ,"ARRIVAL_SET_ID"
                    ,"TOP_MODEL_LINE_ID"
                    ,"ATO_LINE_ID"
                    ,"HOLD_CODE"
                    ,"SHIP_MODEL_COMPLETE_FLAG"
                    ,"HAZARD_CLASS_ID"
                    ,"COUNTRY_OF_ORIGIN"
                    ,"CLASSIFICATION"
                    ,"SHIP_FROM_LOCATION_ID"
                    ,"ORGANIZATION_ID"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"SHIP_TO_CONTACT_ID"
                    ,"DELIVER_TO_LOCATION_ID"
                    ,"DELIVER_TO_CONTACT_ID"
                    ,"INTMED_SHIP_TO_LOCATION_ID"
                    ,"INTMED_SHIP_TO_CONTACT_ID"
                    ,"SHIP_TOLERANCE_ABOVE"
                    ,"SHIP_TOLERANCE_BELOW"
                    ,"SRC_REQUESTED_QUANTITY"
                    ,"SRC_REQUESTED_QUANTITY_UOM"
                    ,"CANCELLED_QUANTITY"
                    ,"REQUESTED_QUANTITY"
                    ,"REQUESTED_QUANTITY_UOM"
                    ,"SHIPPED_QUANTITY"
                    ,"DELIVERED_QUANTITY"
                    ,"QUALITY_CONTROL_QUANTITY"
                    ,"CYCLE_COUNT_QUANTITY"
                    ,"MOVE_ORDER_LINE_ID"
                    ,"SUBINVENTORY"
                    ,"REVISION"
                    ,"LOT_NUMBER"
                    ,"RELEASED_STATUS"
                    ,"CUSTOMER_REQUESTED_LOT_FLAG"
                    ,"SERIAL_NUMBER"
                    ,"LOCATOR_ID"
                    ,"DATE_REQUESTED"
                    ,"DATE_SCHEDULED"
                    ,"MASTER_CONTAINER_ITEM_ID"
                    ,"DETAIL_CONTAINER_ITEM_ID"
                    ,"LOAD_SEQ_NUMBER"
                    ,"SHIP_METHOD_CODE"
                    ,"CARRIER_ID"
                    ,"FREIGHT_TERMS_CODE"
                    ,"SHIPMENT_PRIORITY_CODE"
                    ,"FOB_CODE"
                    ,"CUSTOMER_ITEM_ID"
                    ,"DEP_PLAN_REQUIRED_FLAG"
                    ,"CUSTOMER_PROD_SEQ"
                    ,"CUSTOMER_DOCK_CODE"
                    ,"NET_WEIGHT"
                    ,"WEIGHT_UOM_CODE"
                    ,"VOLUME"
                    ,"VOLUME_UOM_CODE"
                    ,"SHIPPING_INSTRUCTIONS"
                    ,"PACKING_INSTRUCTIONS"
                    ,"PROJECT_ID"
                    ,"TASK_ID"
                    ,"ORG_ID"
                    ,"OE_INTERFACED_FLAG"
                    ,"MVT_STAT_STATUS"
                    ,"TRACKING_NUMBER"
                    ,"TRANSACTION_TEMP_ID"
                    ,"TP_ATTRIBUTE_CATEGORY"
                    ,"TP_ATTRIBUTE1"
                    ,"TP_ATTRIBUTE2"
                    ,"TP_ATTRIBUTE3"
                    ,"TP_ATTRIBUTE4"
                    ,"TP_ATTRIBUTE5"
                    ,"TP_ATTRIBUTE6"
                    ,"TP_ATTRIBUTE7"
                    ,"TP_ATTRIBUTE8"
                    ,"TP_ATTRIBUTE9"
                    ,"TP_ATTRIBUTE10"
                    ,"TP_ATTRIBUTE11"
                    ,"TP_ATTRIBUTE12"
                    ,"TP_ATTRIBUTE13"
                    ,"TP_ATTRIBUTE14"
                    ,"TP_ATTRIBUTE15"
                    ,"ATTRIBUTE_CATEGORY"
                    ,"ATTRIBUTE1"
                    ,"ATTRIBUTE2"
                    ,"ATTRIBUTE3"
                    ,"ATTRIBUTE4"
                    ,"ATTRIBUTE5"
                    ,"ATTRIBUTE6"
                    ,"ATTRIBUTE7"
                    ,"ATTRIBUTE8"
                    ,"ATTRIBUTE9"
                    ,"ATTRIBUTE10"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"MOVEMENT_ID"
                    ,"SPLIT_FROM_DELIVERY_DETAIL_ID"
                    ,"INV_INTERFACED_FLAG"
                    ,"SEAL_CODE"
                    ,"MINIMUM_FILL_PERCENT"
                    ,"MAXIMUM_VOLUME"
                    ,"MAXIMUM_LOAD_WEIGHT"
                    ,"MASTER_SERIAL_NUMBER"
                    ,"GROSS_WEIGHT"
                    ,"FILL_PERCENT"
                    ,"CONTAINER_NAME"
                    ,"CONTAINER_TYPE_CODE"
                    ,"CONTAINER_FLAG"
                    ,"PREFERRED_GRADE"
                    ,"SRC_REQUESTED_QUANTITY2"
                    ,"SRC_REQUESTED_QUANTITY_UOM2"
                    ,"REQUESTED_QUANTITY2"
                    ,"SHIPPED_QUANTITY2"
                    ,"DELIVERED_QUANTITY2"
                    ,"CANCELLED_QUANTITY2"
                    ,"QUALITY_CONTROL_QUANTITY2"
                    ,"CYCLE_COUNT_QUANTITY2"
                    ,"REQUESTED_QUANTITY_UOM2"
                    ,"SUBLOT_NUMBER"
                    ,"UNIT_PRICE"
                    ,"CURRENCY_CODE"
                    ,"UNIT_NUMBER"
                    ,"FREIGHT_CLASS_CAT_ID"
                    ,"COMMODITY_CODE_CAT_ID"
                    ,"LPN_CONTENT_ID"
                    ,"SHIP_TO_SITE_USE_ID"
                    ,"DELIVER_TO_SITE_USE_ID"
                    ,"LPN_ID"
                    ,"INSPECTION_FLAG"
                    ,"ORIGINAL_SUBINVENTORY"
                    ,"SOURCE_HEADER_NUMBER"
                    ,"SOURCE_LINE_NUMBER"
                    ,"PICKABLE_FLAG"
                    ,"CUSTOMER_PRODUCTION_LINE"
                    ,"CUSTOMER_JOB"
                    ,"CUST_MODEL_SERIAL_NUMBER"
                    ,"TO_SERIAL_NUMBER"
                    ,"PICKED_QUANTITY"
                    ,"PICKED_QUANTITY2"
                    ,"RECEIVED_QUANTITY"
                    ,"RECEIVED_QUANTITY2"
                    ,"SOURCE_LINE_SET_ID"
                    ,"BATCH_ID"
                    ,"TRANSACTION_ID"
                    ,"SERVICE_LEVEL"
                    ,"MODE_OF_TRANSPORT"
                    ,"EARLIEST_PICKUP_DATE"
                    ,"LATEST_PICKUP_DATE"
                    ,"EARLIEST_DROPOFF_DATE"
                    ,"LATEST_DROPOFF_DATE"
                    ,"REQUEST_DATE_TYPE_CODE"
                    ,"TP_DELIVERY_DETAIL_ID"
                    ,"SOURCE_DOCUMENT_TYPE_ID"
                    ,"VENDOR_ID"
                    ,"SHIP_FROM_SITE_ID"
                    ,"IGNORE_FOR_PLANNING"
                    ,"LINE_DIRECTION"
                    ,"PARTY_ID"
                    ,"ROUTING_REQ_ID"
                    ,"SHIPPING_CONTROL"
                    ,"SOURCE_BLANKET_REFERENCE_ID"
                    ,"SOURCE_BLANKET_REFERENCE_NUM"
                    ,"PO_SHIPMENT_LINE_ID"
                    ,"PO_SHIPMENT_LINE_NUMBER"
                    ,"SCHEDULED_QUANTITY"
                    ,"RETURNED_QUANTITY"
                    ,"SCHEDULED_QUANTITY2"
                    ,"RETURNED_QUANTITY2"
                    ,"SOURCE_LINE_TYPE_CODE"
                    ,"RCV_SHIPMENT_LINE_ID"
                    ,"SUPPLIER_ITEM_NUMBER"
                    ,"FILLED_VOLUME"
                    ,"UNIT_WEIGHT"
                    ,"UNIT_VOLUME"
                    ,"WV_FROZEN_FLAG"
                    ,"PO_REVISION_NUMBER"
                    ,"RELEASE_REVISION_NUMBER"
                    ,"REPLENISHMENT_STATUS"
                    ,"ORIGINAL_LOT_NUMBER"
                    ,"ORIGINAL_REVISION"
                    ,"ORIGINAL_LOCATOR_ID"
                    ,"REFERENCE_NUMBER"
                    ,"REFERENCE_LINE_NUMBER"
                    ,"REFERENCE_LINE_QUANTITY"
                    ,"REFERENCE_LINE_QUANTITY_UOM"
                    ,"CLIENT_ID"
                    ,"SHIPMENT_BATCH_ID"
                    ,"SHIPMENT_LINE_NUMBER"
                    ,"REFERENCE_LINE_ID"
                    ,"CONSIGNEE_FLAG"
                    ,"EQUIPMENT_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("DELIVERY_DETAIL_ID" AS float) AS "DELIVERY_DETAIL_ID"
                        ,CAST("SOURCE_CODE" AS varchar(100) ) AS "SOURCE_CODE"
                        ,CAST("SOURCE_HEADER_ID" AS float) AS "SOURCE_HEADER_ID"
                        ,CAST("SOURCE_LINE_ID" AS float) AS "SOURCE_LINE_ID"
                        ,CAST("SOURCE_HEADER_TYPE_ID" AS float) AS "SOURCE_HEADER_TYPE_ID"
                        ,CAST("SOURCE_HEADER_TYPE_NAME" AS varchar(1000) ) AS "SOURCE_HEADER_TYPE_NAME"
                        ,CAST("CUST_PO_NUMBER" AS varchar(1000) ) AS "CUST_PO_NUMBER"
                        ,CAST("CUSTOMER_ID" AS float) AS "CUSTOMER_ID"
                        ,CAST("SOLD_TO_CONTACT_ID" AS float) AS "SOLD_TO_CONTACT_ID"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("ITEM_DESCRIPTION" AS varchar(1000) ) AS "ITEM_DESCRIPTION"
                        ,CAST("SHIP_SET_ID" AS float) AS "SHIP_SET_ID"
                        ,CAST("ARRIVAL_SET_ID" AS float) AS "ARRIVAL_SET_ID"
                        ,CAST("TOP_MODEL_LINE_ID" AS float) AS "TOP_MODEL_LINE_ID"
                        ,CAST("ATO_LINE_ID" AS float) AS "ATO_LINE_ID"
                        ,CAST("HOLD_CODE" AS varchar(100) ) AS "HOLD_CODE"
                        ,CAST("SHIP_MODEL_COMPLETE_FLAG" AS varchar(100) ) AS "SHIP_MODEL_COMPLETE_FLAG"
                        ,CAST("HAZARD_CLASS_ID" AS float) AS "HAZARD_CLASS_ID"
                        ,CAST("COUNTRY_OF_ORIGIN" AS varchar(1000) ) AS "COUNTRY_OF_ORIGIN"
                        ,CAST("CLASSIFICATION" AS varchar(100) ) AS "CLASSIFICATION"
                        ,CAST("SHIP_FROM_LOCATION_ID" AS float) AS "SHIP_FROM_LOCATION_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("SHIP_TO_CONTACT_ID" AS float) AS "SHIP_TO_CONTACT_ID"
                        ,CAST("DELIVER_TO_LOCATION_ID" AS float) AS "DELIVER_TO_LOCATION_ID"
                        ,CAST("DELIVER_TO_CONTACT_ID" AS float) AS "DELIVER_TO_CONTACT_ID"
                        ,CAST("INTMED_SHIP_TO_LOCATION_ID" AS float) AS "INTMED_SHIP_TO_LOCATION_ID"
                        ,CAST("INTMED_SHIP_TO_CONTACT_ID" AS float) AS "INTMED_SHIP_TO_CONTACT_ID"
                        ,CAST("SHIP_TOLERANCE_ABOVE" AS float) AS "SHIP_TOLERANCE_ABOVE"
                        ,CAST("SHIP_TOLERANCE_BELOW" AS float) AS "SHIP_TOLERANCE_BELOW"
                        ,CAST("SRC_REQUESTED_QUANTITY" AS float) AS "SRC_REQUESTED_QUANTITY"
                        ,CAST("SRC_REQUESTED_QUANTITY_UOM" AS varchar(100) ) AS "SRC_REQUESTED_QUANTITY_UOM"
                        ,CAST("CANCELLED_QUANTITY" AS float) AS "CANCELLED_QUANTITY"
                        ,CAST("REQUESTED_QUANTITY" AS float) AS "REQUESTED_QUANTITY"
                        ,CAST("REQUESTED_QUANTITY_UOM" AS varchar(100) ) AS "REQUESTED_QUANTITY_UOM"
                        ,CAST("SHIPPED_QUANTITY" AS float) AS "SHIPPED_QUANTITY"
                        ,CAST("DELIVERED_QUANTITY" AS float) AS "DELIVERED_QUANTITY"
                        ,CAST("QUALITY_CONTROL_QUANTITY" AS float) AS "QUALITY_CONTROL_QUANTITY"
                        ,CAST("CYCLE_COUNT_QUANTITY" AS float) AS "CYCLE_COUNT_QUANTITY"
                        ,CAST("MOVE_ORDER_LINE_ID" AS float) AS "MOVE_ORDER_LINE_ID"
                        ,CAST("SUBINVENTORY" AS varchar(100) ) AS "SUBINVENTORY"
                        ,CAST("REVISION" AS varchar(100) ) AS "REVISION"
                        ,CAST("LOT_NUMBER" AS varchar(1000) ) AS "LOT_NUMBER"
                        ,CAST("RELEASED_STATUS" AS varchar(100) ) AS "RELEASED_STATUS"
                        ,CAST("CUSTOMER_REQUESTED_LOT_FLAG" AS varchar(100) ) AS "CUSTOMER_REQUESTED_LOT_FLAG"
                        ,CAST("SERIAL_NUMBER" AS varchar(100) ) AS "SERIAL_NUMBER"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,TRY_CONVERT(datetime2,"DATE_REQUESTED",121) AS "DATE_REQUESTED"
                        ,TRY_CONVERT(datetime2,"DATE_SCHEDULED",121) AS "DATE_SCHEDULED"
                        ,CAST("MASTER_CONTAINER_ITEM_ID" AS float) AS "MASTER_CONTAINER_ITEM_ID"
                        ,CAST("DETAIL_CONTAINER_ITEM_ID" AS float) AS "DETAIL_CONTAINER_ITEM_ID"
                        ,CAST("LOAD_SEQ_NUMBER" AS float) AS "LOAD_SEQ_NUMBER"
                        ,CAST("SHIP_METHOD_CODE" AS varchar(100) ) AS "SHIP_METHOD_CODE"
                        ,CAST("CARRIER_ID" AS float) AS "CARRIER_ID"
                        ,CAST("FREIGHT_TERMS_CODE" AS varchar(100) ) AS "FREIGHT_TERMS_CODE"
                        ,CAST("SHIPMENT_PRIORITY_CODE" AS varchar(100) ) AS "SHIPMENT_PRIORITY_CODE"
                        ,CAST("FOB_CODE" AS varchar(100) ) AS "FOB_CODE"
                        ,CAST("CUSTOMER_ITEM_ID" AS float) AS "CUSTOMER_ITEM_ID"
                        ,CAST("DEP_PLAN_REQUIRED_FLAG" AS varchar(100) ) AS "DEP_PLAN_REQUIRED_FLAG"
                        ,CAST("CUSTOMER_PROD_SEQ" AS varchar(1000) ) AS "CUSTOMER_PROD_SEQ"
                        ,CAST("CUSTOMER_DOCK_CODE" AS varchar(1000) ) AS "CUSTOMER_DOCK_CODE"
                        ,CAST("NET_WEIGHT" AS float) AS "NET_WEIGHT"
                        ,CAST("WEIGHT_UOM_CODE" AS varchar(100) ) AS "WEIGHT_UOM_CODE"
                        ,CAST("VOLUME" AS float) AS "VOLUME"
                        ,CAST("VOLUME_UOM_CODE" AS varchar(100) ) AS "VOLUME_UOM_CODE"
                        ,CAST("SHIPPING_INSTRUCTIONS" AS varchar(8000) ) AS "SHIPPING_INSTRUCTIONS"
                        ,CAST("PACKING_INSTRUCTIONS" AS varchar(8000) ) AS "PACKING_INSTRUCTIONS"
                        ,CAST("PROJECT_ID" AS float) AS "PROJECT_ID"
                        ,CAST("TASK_ID" AS float) AS "TASK_ID"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("OE_INTERFACED_FLAG" AS varchar(100) ) AS "OE_INTERFACED_FLAG"
                        ,CAST("MVT_STAT_STATUS" AS varchar(100) ) AS "MVT_STAT_STATUS"
                        ,CAST("TRACKING_NUMBER" AS varchar(100) ) AS "TRACKING_NUMBER"
                        ,CAST("TRANSACTION_TEMP_ID" AS float) AS "TRANSACTION_TEMP_ID"
                        ,CAST("TP_ATTRIBUTE_CATEGORY" AS varchar(1000) ) AS "TP_ATTRIBUTE_CATEGORY"
                        ,CAST("TP_ATTRIBUTE1" AS varchar(1000) ) AS "TP_ATTRIBUTE1"
                        ,CAST("TP_ATTRIBUTE2" AS varchar(1000) ) AS "TP_ATTRIBUTE2"
                        ,CAST("TP_ATTRIBUTE3" AS varchar(1000) ) AS "TP_ATTRIBUTE3"
                        ,CAST("TP_ATTRIBUTE4" AS varchar(1000) ) AS "TP_ATTRIBUTE4"
                        ,CAST("TP_ATTRIBUTE5" AS varchar(1000) ) AS "TP_ATTRIBUTE5"
                        ,CAST("TP_ATTRIBUTE6" AS varchar(1000) ) AS "TP_ATTRIBUTE6"
                        ,CAST("TP_ATTRIBUTE7" AS varchar(1000) ) AS "TP_ATTRIBUTE7"
                        ,CAST("TP_ATTRIBUTE8" AS varchar(1000) ) AS "TP_ATTRIBUTE8"
                        ,CAST("TP_ATTRIBUTE9" AS varchar(1000) ) AS "TP_ATTRIBUTE9"
                        ,CAST("TP_ATTRIBUTE10" AS varchar(1000) ) AS "TP_ATTRIBUTE10"
                        ,CAST("TP_ATTRIBUTE11" AS varchar(1000) ) AS "TP_ATTRIBUTE11"
                        ,CAST("TP_ATTRIBUTE12" AS varchar(1000) ) AS "TP_ATTRIBUTE12"
                        ,CAST("TP_ATTRIBUTE13" AS varchar(1000) ) AS "TP_ATTRIBUTE13"
                        ,CAST("TP_ATTRIBUTE14" AS varchar(1000) ) AS "TP_ATTRIBUTE14"
                        ,CAST("TP_ATTRIBUTE15" AS varchar(1000) ) AS "TP_ATTRIBUTE15"
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(1000) ) AS "ATTRIBUTE_CATEGORY"
                        ,CAST("ATTRIBUTE1" AS varchar(1000) ) AS "ATTRIBUTE1"
                        ,CAST("ATTRIBUTE2" AS varchar(1000) ) AS "ATTRIBUTE2"
                        ,CAST("ATTRIBUTE3" AS varchar(1000) ) AS "ATTRIBUTE3"
                        ,CAST("ATTRIBUTE4" AS varchar(1000) ) AS "ATTRIBUTE4"
                        ,CAST("ATTRIBUTE5" AS varchar(1000) ) AS "ATTRIBUTE5"
                        ,CAST("ATTRIBUTE6" AS varchar(1000) ) AS "ATTRIBUTE6"
                        ,CAST("ATTRIBUTE7" AS varchar(1000) ) AS "ATTRIBUTE7"
                        ,CAST("ATTRIBUTE8" AS varchar(1000) ) AS "ATTRIBUTE8"
                        ,CAST("ATTRIBUTE9" AS varchar(1000) ) AS "ATTRIBUTE9"
                        ,CAST("ATTRIBUTE10" AS varchar(1000) ) AS "ATTRIBUTE10"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("MOVEMENT_ID" AS float) AS "MOVEMENT_ID"
                        ,CAST("SPLIT_FROM_DELIVERY_DETAIL_ID" AS float) AS "SPLIT_FROM_DELIVERY_DETAIL_ID"
                        ,CAST("INV_INTERFACED_FLAG" AS varchar(100) ) AS "INV_INTERFACED_FLAG"
                        ,CAST("SEAL_CODE" AS varchar(100) ) AS "SEAL_CODE"
                        ,CAST("MINIMUM_FILL_PERCENT" AS float) AS "MINIMUM_FILL_PERCENT"
                        ,CAST("MAXIMUM_VOLUME" AS float) AS "MAXIMUM_VOLUME"
                        ,CAST("MAXIMUM_LOAD_WEIGHT" AS float) AS "MAXIMUM_LOAD_WEIGHT"
                        ,CAST("MASTER_SERIAL_NUMBER" AS varchar(100) ) AS "MASTER_SERIAL_NUMBER"
                        ,CAST("GROSS_WEIGHT" AS float) AS "GROSS_WEIGHT"
                        ,CAST("FILL_PERCENT" AS float) AS "FILL_PERCENT"
                        ,CAST("CONTAINER_NAME" AS varchar(100) ) AS "CONTAINER_NAME"
                        ,CAST("CONTAINER_TYPE_CODE" AS varchar(100) ) AS "CONTAINER_TYPE_CODE"
                        ,CAST("CONTAINER_FLAG" AS varchar(100) ) AS "CONTAINER_FLAG"
                        ,CAST("PREFERRED_GRADE" AS varchar(1000) ) AS "PREFERRED_GRADE"
                        ,CAST("SRC_REQUESTED_QUANTITY2" AS float) AS "SRC_REQUESTED_QUANTITY2"
                        ,CAST("SRC_REQUESTED_QUANTITY_UOM2" AS varchar(100) ) AS "SRC_REQUESTED_QUANTITY_UOM2"
                        ,CAST("REQUESTED_QUANTITY2" AS float) AS "REQUESTED_QUANTITY2"
                        ,CAST("SHIPPED_QUANTITY2" AS float) AS "SHIPPED_QUANTITY2"
                        ,CAST("DELIVERED_QUANTITY2" AS float) AS "DELIVERED_QUANTITY2"
                        ,CAST("CANCELLED_QUANTITY2" AS float) AS "CANCELLED_QUANTITY2"
                        ,CAST("QUALITY_CONTROL_QUANTITY2" AS float) AS "QUALITY_CONTROL_QUANTITY2"
                        ,CAST("CYCLE_COUNT_QUANTITY2" AS float) AS "CYCLE_COUNT_QUANTITY2"
                        ,CAST("REQUESTED_QUANTITY_UOM2" AS varchar(100) ) AS "REQUESTED_QUANTITY_UOM2"
                        ,CAST("SUBLOT_NUMBER" AS varchar(100) ) AS "SUBLOT_NUMBER"
                        ,CAST("UNIT_PRICE" AS float) AS "UNIT_PRICE"
                        ,CAST("CURRENCY_CODE" AS varchar(100) ) AS "CURRENCY_CODE"
                        ,CAST("UNIT_NUMBER" AS varchar(100) ) AS "UNIT_NUMBER"
                        ,CAST("FREIGHT_CLASS_CAT_ID" AS float) AS "FREIGHT_CLASS_CAT_ID"
                        ,CAST("COMMODITY_CODE_CAT_ID" AS float) AS "COMMODITY_CODE_CAT_ID"
                        ,CAST("LPN_CONTENT_ID" AS float) AS "LPN_CONTENT_ID"
                        ,CAST("SHIP_TO_SITE_USE_ID" AS float) AS "SHIP_TO_SITE_USE_ID"
                        ,CAST("DELIVER_TO_SITE_USE_ID" AS float) AS "DELIVER_TO_SITE_USE_ID"
                        ,CAST("LPN_ID" AS float) AS "LPN_ID"
                        ,CAST("INSPECTION_FLAG" AS varchar(100) ) AS "INSPECTION_FLAG"
                        ,CAST("ORIGINAL_SUBINVENTORY" AS varchar(100) ) AS "ORIGINAL_SUBINVENTORY"
                        ,CAST("SOURCE_HEADER_NUMBER" AS varchar(1000) ) AS "SOURCE_HEADER_NUMBER"
                        ,CAST("SOURCE_LINE_NUMBER" AS varchar(1000) ) AS "SOURCE_LINE_NUMBER"
                        ,CAST("PICKABLE_FLAG" AS varchar(100) ) AS "PICKABLE_FLAG"
                        ,CAST("CUSTOMER_PRODUCTION_LINE" AS varchar(1000) ) AS "CUSTOMER_PRODUCTION_LINE"
                        ,CAST("CUSTOMER_JOB" AS varchar(1000) ) AS "CUSTOMER_JOB"
                        ,CAST("CUST_MODEL_SERIAL_NUMBER" AS varchar(1000) ) AS "CUST_MODEL_SERIAL_NUMBER"
                        ,CAST("TO_SERIAL_NUMBER" AS varchar(100) ) AS "TO_SERIAL_NUMBER"
                        ,CAST("PICKED_QUANTITY" AS float) AS "PICKED_QUANTITY"
                        ,CAST("PICKED_QUANTITY2" AS float) AS "PICKED_QUANTITY2"
                        ,CAST("RECEIVED_QUANTITY" AS float) AS "RECEIVED_QUANTITY"
                        ,CAST("RECEIVED_QUANTITY2" AS float) AS "RECEIVED_QUANTITY2"
                        ,CAST("SOURCE_LINE_SET_ID" AS float) AS "SOURCE_LINE_SET_ID"
                        ,CAST("BATCH_ID" AS float) AS "BATCH_ID"
                        ,CAST("TRANSACTION_ID" AS float) AS "TRANSACTION_ID"
                        ,CAST("SERVICE_LEVEL" AS varchar(100) ) AS "SERVICE_LEVEL"
                        ,CAST("MODE_OF_TRANSPORT" AS varchar(100) ) AS "MODE_OF_TRANSPORT"
                        ,TRY_CONVERT(datetime2,"EARLIEST_PICKUP_DATE",121) AS "EARLIEST_PICKUP_DATE"
                        ,TRY_CONVERT(datetime2,"LATEST_PICKUP_DATE",121) AS "LATEST_PICKUP_DATE"
                        ,TRY_CONVERT(datetime2,"EARLIEST_DROPOFF_DATE",121) AS "EARLIEST_DROPOFF_DATE"
                        ,TRY_CONVERT(datetime2,"LATEST_DROPOFF_DATE",121) AS "LATEST_DROPOFF_DATE"
                        ,CAST("REQUEST_DATE_TYPE_CODE" AS varchar(100) ) AS "REQUEST_DATE_TYPE_CODE"
                        ,CAST("TP_DELIVERY_DETAIL_ID" AS float) AS "TP_DELIVERY_DETAIL_ID"
                        ,CAST("SOURCE_DOCUMENT_TYPE_ID" AS float) AS "SOURCE_DOCUMENT_TYPE_ID"
                        ,CAST("VENDOR_ID" AS float) AS "VENDOR_ID"
                        ,CAST("SHIP_FROM_SITE_ID" AS float) AS "SHIP_FROM_SITE_ID"
                        ,CAST("IGNORE_FOR_PLANNING" AS varchar(100) ) AS "IGNORE_FOR_PLANNING"
                        ,CAST("LINE_DIRECTION" AS varchar(100) ) AS "LINE_DIRECTION"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("ROUTING_REQ_ID" AS float) AS "ROUTING_REQ_ID"
                        ,CAST("SHIPPING_CONTROL" AS varchar(100) ) AS "SHIPPING_CONTROL"
                        ,CAST("SOURCE_BLANKET_REFERENCE_ID" AS float) AS "SOURCE_BLANKET_REFERENCE_ID"
                        ,CAST("SOURCE_BLANKET_REFERENCE_NUM" AS float) AS "SOURCE_BLANKET_REFERENCE_NUM"
                        ,CAST("PO_SHIPMENT_LINE_ID" AS float) AS "PO_SHIPMENT_LINE_ID"
                        ,CAST("PO_SHIPMENT_LINE_NUMBER" AS float) AS "PO_SHIPMENT_LINE_NUMBER"
                        ,CAST("SCHEDULED_QUANTITY" AS float) AS "SCHEDULED_QUANTITY"
                        ,CAST("RETURNED_QUANTITY" AS float) AS "RETURNED_QUANTITY"
                        ,CAST("SCHEDULED_QUANTITY2" AS float) AS "SCHEDULED_QUANTITY2"
                        ,CAST("RETURNED_QUANTITY2" AS float) AS "RETURNED_QUANTITY2"
                        ,CAST("SOURCE_LINE_TYPE_CODE" AS varchar(100) ) AS "SOURCE_LINE_TYPE_CODE"
                        ,CAST("RCV_SHIPMENT_LINE_ID" AS float) AS "RCV_SHIPMENT_LINE_ID"
                        ,CAST("SUPPLIER_ITEM_NUMBER" AS varchar(1000) ) AS "SUPPLIER_ITEM_NUMBER"
                        ,CAST("FILLED_VOLUME" AS float) AS "FILLED_VOLUME"
                        ,CAST("UNIT_WEIGHT" AS float) AS "UNIT_WEIGHT"
                        ,CAST("UNIT_VOLUME" AS float) AS "UNIT_VOLUME"
                        ,CAST("WV_FROZEN_FLAG" AS varchar(100) ) AS "WV_FROZEN_FLAG"
                        ,CAST("PO_REVISION_NUMBER" AS float) AS "PO_REVISION_NUMBER"
                        ,CAST("RELEASE_REVISION_NUMBER" AS float) AS "RELEASE_REVISION_NUMBER"
                        ,CAST("REPLENISHMENT_STATUS" AS varchar(100) ) AS "REPLENISHMENT_STATUS"
                        ,CAST("ORIGINAL_LOT_NUMBER" AS varchar(100) ) AS "ORIGINAL_LOT_NUMBER"
                        ,CAST("ORIGINAL_REVISION" AS varchar(100) ) AS "ORIGINAL_REVISION"
                        ,CAST("ORIGINAL_LOCATOR_ID" AS float) AS "ORIGINAL_LOCATOR_ID"
                        ,CAST("REFERENCE_NUMBER" AS varchar(100) ) AS "REFERENCE_NUMBER"
                        ,CAST("REFERENCE_LINE_NUMBER" AS varchar(100) ) AS "REFERENCE_LINE_NUMBER"
                        ,CAST("REFERENCE_LINE_QUANTITY" AS float) AS "REFERENCE_LINE_QUANTITY"
                        ,CAST("REFERENCE_LINE_QUANTITY_UOM" AS varchar(100) ) AS "REFERENCE_LINE_QUANTITY_UOM"
                        ,CAST("CLIENT_ID" AS float) AS "CLIENT_ID"
                        ,CAST("SHIPMENT_BATCH_ID" AS float) AS "SHIPMENT_BATCH_ID"
                        ,CAST("SHIPMENT_LINE_NUMBER" AS float) AS "SHIPMENT_LINE_NUMBER"
                        ,CAST("REFERENCE_LINE_ID" AS float) AS "REFERENCE_LINE_ID"
                        ,CAST("CONSIGNEE_FLAG" AS varchar(100) ) AS "CONSIGNEE_FLAG"
                        ,CAST("EQUIPMENT_ID" AS float) AS "EQUIPMENT_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "DELIVERY_DETAIL_ID"
                            , "SOURCE_CODE"
                            , "SOURCE_HEADER_ID"
                            , "SOURCE_LINE_ID"
                            , "SOURCE_HEADER_TYPE_ID"
                            , "SOURCE_HEADER_TYPE_NAME"
                            , "CUST_PO_NUMBER"
                            , "CUSTOMER_ID"
                            , "SOLD_TO_CONTACT_ID"
                            , "INVENTORY_ITEM_ID"
                            , "ITEM_DESCRIPTION"
                            , "SHIP_SET_ID"
                            , "ARRIVAL_SET_ID"
                            , "TOP_MODEL_LINE_ID"
                            , "ATO_LINE_ID"
                            , "HOLD_CODE"
                            , "SHIP_MODEL_COMPLETE_FLAG"
                            , "HAZARD_CLASS_ID"
                            , "COUNTRY_OF_ORIGIN"
                            , "CLASSIFICATION"
                            , "SHIP_FROM_LOCATION_ID"
                            , "ORGANIZATION_ID"
                            , "SHIP_TO_LOCATION_ID"
                            , "SHIP_TO_CONTACT_ID"
                            , "DELIVER_TO_LOCATION_ID"
                            , "DELIVER_TO_CONTACT_ID"
                            , "INTMED_SHIP_TO_LOCATION_ID"
                            , "INTMED_SHIP_TO_CONTACT_ID"
                            , "SHIP_TOLERANCE_ABOVE"
                            , "SHIP_TOLERANCE_BELOW"
                            , "SRC_REQUESTED_QUANTITY"
                            , "SRC_REQUESTED_QUANTITY_UOM"
                            , "CANCELLED_QUANTITY"
                            , "REQUESTED_QUANTITY"
                            , "REQUESTED_QUANTITY_UOM"
                            , "SHIPPED_QUANTITY"
                            , "DELIVERED_QUANTITY"
                            , "QUALITY_CONTROL_QUANTITY"
                            , "CYCLE_COUNT_QUANTITY"
                            , "MOVE_ORDER_LINE_ID"
                            , "SUBINVENTORY"
                            , "REVISION"
                            , "LOT_NUMBER"
                            , "RELEASED_STATUS"
                            , "CUSTOMER_REQUESTED_LOT_FLAG"
                            , "SERIAL_NUMBER"
                            , "LOCATOR_ID"
                            , "DATE_REQUESTED"
                            , "DATE_SCHEDULED"
                            , "MASTER_CONTAINER_ITEM_ID"
                            , "DETAIL_CONTAINER_ITEM_ID"
                            , "LOAD_SEQ_NUMBER"
                            , "SHIP_METHOD_CODE"
                            , "CARRIER_ID"
                            , "FREIGHT_TERMS_CODE"
                            , "SHIPMENT_PRIORITY_CODE"
                            , "FOB_CODE"
                            , "CUSTOMER_ITEM_ID"
                            , "DEP_PLAN_REQUIRED_FLAG"
                            , "CUSTOMER_PROD_SEQ"
                            , "CUSTOMER_DOCK_CODE"
                            , "NET_WEIGHT"
                            , "WEIGHT_UOM_CODE"
                            , "VOLUME"
                            , "VOLUME_UOM_CODE"
                            , "SHIPPING_INSTRUCTIONS"
                            , "PACKING_INSTRUCTIONS"
                            , "PROJECT_ID"
                            , "TASK_ID"
                            , "ORG_ID"
                            , "OE_INTERFACED_FLAG"
                            , "MVT_STAT_STATUS"
                            , "TRACKING_NUMBER"
                            , "TRANSACTION_TEMP_ID"
                            , "TP_ATTRIBUTE_CATEGORY"
                            , "TP_ATTRIBUTE1"
                            , "TP_ATTRIBUTE2"
                            , "TP_ATTRIBUTE3"
                            , "TP_ATTRIBUTE4"
                            , "TP_ATTRIBUTE5"
                            , "TP_ATTRIBUTE6"
                            , "TP_ATTRIBUTE7"
                            , "TP_ATTRIBUTE8"
                            , "TP_ATTRIBUTE9"
                            , "TP_ATTRIBUTE10"
                            , "TP_ATTRIBUTE11"
                            , "TP_ATTRIBUTE12"
                            , "TP_ATTRIBUTE13"
                            , "TP_ATTRIBUTE14"
                            , "TP_ATTRIBUTE15"
                            , "ATTRIBUTE_CATEGORY"
                            , "ATTRIBUTE1"
                            , "ATTRIBUTE2"
                            , "ATTRIBUTE3"
                            , "ATTRIBUTE4"
                            , "ATTRIBUTE5"
                            , "ATTRIBUTE6"
                            , "ATTRIBUTE7"
                            , "ATTRIBUTE8"
                            , "ATTRIBUTE9"
                            , "ATTRIBUTE10"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "REQUEST_ID"
                            , "MOVEMENT_ID"
                            , "SPLIT_FROM_DELIVERY_DETAIL_ID"
                            , "INV_INTERFACED_FLAG"
                            , "SEAL_CODE"
                            , "MINIMUM_FILL_PERCENT"
                            , "MAXIMUM_VOLUME"
                            , "MAXIMUM_LOAD_WEIGHT"
                            , "MASTER_SERIAL_NUMBER"
                            , "GROSS_WEIGHT"
                            , "FILL_PERCENT"
                            , "CONTAINER_NAME"
                            , "CONTAINER_TYPE_CODE"
                            , "CONTAINER_FLAG"
                            , "PREFERRED_GRADE"
                            , "SRC_REQUESTED_QUANTITY2"
                            , "SRC_REQUESTED_QUANTITY_UOM2"
                            , "REQUESTED_QUANTITY2"
                            , "SHIPPED_QUANTITY2"
                            , "DELIVERED_QUANTITY2"
                            , "CANCELLED_QUANTITY2"
                            , "QUALITY_CONTROL_QUANTITY2"
                            , "CYCLE_COUNT_QUANTITY2"
                            , "REQUESTED_QUANTITY_UOM2"
                            , "SUBLOT_NUMBER"
                            , "UNIT_PRICE"
                            , "CURRENCY_CODE"
                            , "UNIT_NUMBER"
                            , "FREIGHT_CLASS_CAT_ID"
                            , "COMMODITY_CODE_CAT_ID"
                            , "LPN_CONTENT_ID"
                            , "SHIP_TO_SITE_USE_ID"
                            , "DELIVER_TO_SITE_USE_ID"
                            , "LPN_ID"
                            , "INSPECTION_FLAG"
                            , "ORIGINAL_SUBINVENTORY"
                            , "SOURCE_HEADER_NUMBER"
                            , "SOURCE_LINE_NUMBER"
                            , "PICKABLE_FLAG"
                            , "CUSTOMER_PRODUCTION_LINE"
                            , "CUSTOMER_JOB"
                            , "CUST_MODEL_SERIAL_NUMBER"
                            , "TO_SERIAL_NUMBER"
                            , "PICKED_QUANTITY"
                            , "PICKED_QUANTITY2"
                            , "RECEIVED_QUANTITY"
                            , "RECEIVED_QUANTITY2"
                            , "SOURCE_LINE_SET_ID"
                            , "BATCH_ID"
                            , "TRANSACTION_ID"
                            , "SERVICE_LEVEL"
                            , "MODE_OF_TRANSPORT"
                            , "EARLIEST_PICKUP_DATE"
                            , "LATEST_PICKUP_DATE"
                            , "EARLIEST_DROPOFF_DATE"
                            , "LATEST_DROPOFF_DATE"
                            , "REQUEST_DATE_TYPE_CODE"
                            , "TP_DELIVERY_DETAIL_ID"
                            , "SOURCE_DOCUMENT_TYPE_ID"
                            , "VENDOR_ID"
                            , "SHIP_FROM_SITE_ID"
                            , "IGNORE_FOR_PLANNING"
                            , "LINE_DIRECTION"
                            , "PARTY_ID"
                            , "ROUTING_REQ_ID"
                            , "SHIPPING_CONTROL"
                            , "SOURCE_BLANKET_REFERENCE_ID"
                            , "SOURCE_BLANKET_REFERENCE_NUM"
                            , "PO_SHIPMENT_LINE_ID"
                            , "PO_SHIPMENT_LINE_NUMBER"
                            , "SCHEDULED_QUANTITY"
                            , "RETURNED_QUANTITY"
                            , "SCHEDULED_QUANTITY2"
                            , "RETURNED_QUANTITY2"
                            , "SOURCE_LINE_TYPE_CODE"
                            , "RCV_SHIPMENT_LINE_ID"
                            , "SUPPLIER_ITEM_NUMBER"
                            , "FILLED_VOLUME"
                            , "UNIT_WEIGHT"
                            , "UNIT_VOLUME"
                            , "WV_FROZEN_FLAG"
                            , "PO_REVISION_NUMBER"
                            , "RELEASE_REVISION_NUMBER"
                            , "REPLENISHMENT_STATUS"
                            , "ORIGINAL_LOT_NUMBER"
                            , "ORIGINAL_REVISION"
                            , "ORIGINAL_LOCATOR_ID"
                            , "REFERENCE_NUMBER"
                            , "REFERENCE_LINE_NUMBER"
                            , "REFERENCE_LINE_QUANTITY"
                            , "REFERENCE_LINE_QUANTITY_UOM"
                            , "CLIENT_ID"
                            , "SHIPMENT_BATCH_ID"
                            , "SHIPMENT_LINE_NUMBER"
                            , "REFERENCE_LINE_ID"
                            , "CONSIGNEE_FLAG"
                            , "EQUIPMENT_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_WSH_DELIVERY_DETAILS"
                    ) T 

        END TRY
        BEGIN CATCH
            /*SELECT   
            ERROR_NUMBER() AS ErrorNumber
            ,ERROR_SEVERITY() AS ErrorSeverity
            ,ERROR_SEVERITY() AS ErrorSeverity
            ,ERROR_PROCEDURE() AS ErrorProcedure
            ,ERROR_LINE() AS ErrorLine
            ,ERROR_MESSAGE() AS ErrorMessage;*/
            THROW;
    END CATCH 
END
