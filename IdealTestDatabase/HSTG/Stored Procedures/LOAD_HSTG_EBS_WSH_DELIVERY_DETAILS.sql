﻿

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_WSH_DELIVERY_DETAILS]
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
    
    EXEC "HSTG"."LOAD_HSTG_EBS_WSH_DELIVERY_DETAILS";
    
    Source                                  Destination                            
    ------------------------------------    ------------------------------------- 
    STG"."STG_EBS_WSH_DELIVERY_DETAILS"    "HSTG"."HSTG_EBS_WSH_DELIVERY_DETAILS" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_WSH_DELIVERY_DETAILS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_WSH_DELIVERY_DETAILS"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_WSH_DELIVERY_DETAILS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_WSH_DELIVERY_DETAILS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_WSH_DELIVERY_DETAILS" H					Join "STG"."STG_EBS_WSH_DELIVERY_DETAILS" S						On H.DELIVERY_DETAIL_ID= S.DELIVERY_DETAIL_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
            END
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
