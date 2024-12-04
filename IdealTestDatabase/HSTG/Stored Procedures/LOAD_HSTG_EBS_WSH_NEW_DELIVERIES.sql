

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_WSH_NEW_DELIVERIES]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:56 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_WSH_NEW_DELIVERIES";
    
    Source                                Destination                          
    ----------------------------------    ----------------------------------- 
    STG"."STG_EBS_WSH_NEW_DELIVERIES"    "HSTG"."HSTG_EBS_WSH_NEW_DELIVERIES" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_WSH_NEW_DELIVERIES"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_WSH_NEW_DELIVERIES"
                (
                    "DELIVERY_ID"
                    ,"NAME"
                    ,"PLANNED_FLAG"
                    ,"STATUS_CODE"
                    ,"INITIAL_PICKUP_DATE"
                    ,"INITIAL_PICKUP_LOCATION_ID"
                    ,"ULTIMATE_DROPOFF_LOCATION_ID"
                    ,"ULTIMATE_DROPOFF_DATE"
                    ,"CUSTOMER_ID"
                    ,"INTMED_SHIP_TO_LOCATION_ID"
                    ,"POOLED_SHIP_TO_LOCATION_ID"
                    ,"FREIGHT_TERMS_CODE"
                    ,"FOB_CODE"
                    ,"FOB_LOCATION_ID"
                    ,"WAYBILL"
                    ,"ACCEPTANCE_FLAG"
                    ,"ACCEPTED_BY"
                    ,"ACCEPTED_DATE"
                    ,"ACKNOWLEDGED_BY"
                    ,"CONFIRMED_BY"
                    ,"ASN_DATE_SENT"
                    ,"ASN_STATUS_CODE"
                    ,"ASN_SEQ_NUMBER"
                    ,"REASON_OF_TRANSPORT"
                    ,"DESCRIPTION"
                    ,"GROSS_WEIGHT"
                    ,"NET_WEIGHT"
                    ,"WEIGHT_UOM_CODE"
                    ,"VOLUME"
                    ,"VOLUME_UOM_CODE"
                    ,"ADDITIONAL_SHIPMENT_INFO"
                    ,"PORT_OF_DISCHARGE"
                    ,"BOOKING_NUMBER"
                    ,"COD_AMOUNT"
                    ,"COD_CURRENCY_CODE"
                    ,"SERVICE_CONTRACT"
                    ,"COD_REMIT_TO"
                    ,"COD_CHARGE_PAID_BY"
                    ,"PROBLEM_CONTACT_REFERENCE"
                    ,"BILL_FREIGHT_TO"
                    ,"CARRIED_BY"
                    ,"PORT_OF_LOADING"
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
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"CONFIRM_DATE"
                    ,"SHIP_METHOD_CODE"
                    ,"DOCK_CODE"
                    ,"DELIVERY_TYPE"
                    ,"CARRIER_ID"
                    ,"CURRENCY_CODE"
                    ,"ORGANIZATION_ID"
                    ,"LOADING_SEQUENCE"
                    ,"LOADING_ORDER_FLAG"
                    ,"NUMBER_OF_LPN"
                    ,"BATCH_ID"
                    ,"SOURCE_HEADER_ID"
                    ,"HASH_VALUE"
                    ,"FTZ_NUMBER"
                    ,"ROUTED_EXPORT_TXN"
                    ,"ENTRY_NUMBER"
                    ,"ROUTING_INSTRUCTIONS"
                    ,"IN_BOND_CODE"
                    ,"SHIPPING_MARKS"
                    ,"SERVICE_LEVEL"
                    ,"MODE_OF_TRANSPORT"
                    ,"ASSIGNED_TO_FTE_TRIPS"
                    ,"AUTO_SC_EXCLUDE_FLAG"
                    ,"AUTO_AP_EXCLUDE_FLAG"
                    ,"AP_BATCH_ID"
                    ,"TP_DELIVERY_NUMBER"
                    ,"TP_PLAN_NAME"
                    ,"VENDOR_ID"
                    ,"EARLIEST_PICKUP_DATE"
                    ,"LATEST_PICKUP_DATE"
                    ,"EARLIEST_DROPOFF_DATE"
                    ,"LATEST_DROPOFF_DATE"
                    ,"IGNORE_FOR_PLANNING"
                    ,"PARTY_ID"
                    ,"ROUTING_RESPONSE_ID"
                    ,"RCV_SHIPMENT_HEADER_ID"
                    ,"ASN_SHIPMENT_HEADER_ID"
                    ,"SHIPMENT_DIRECTION"
                    ,"SHIPPING_CONTROL"
                    ,"WV_FROZEN_FLAG"
                    ,"HASH_STRING"
                    ,"ITINERARY_COMPLETE"
                    ,"DELIVERED_DATE"
                    ,"DELIVERY_WF_PROCESS"
                    ,"DEL_WF_INTRANSIT_ATTR"
                    ,"DEL_WF_INTERFACE_ATTR"
                    ,"DEL_WF_CLOSE_ATTR"
                    ,"DELIVERY_SCPOD_WF_PROCESS"
                    ,"TMS_VERSION_NUMBER"
                    ,"TMS_INTERFACE_FLAG"
                    ,"PENDING_ADVICE_FLAG"
                    ,"CLIENT_ID"
                    ,"CONSIGNEE_FLAG"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "DELIVERY_ID"
                    ,"NAME"
                    ,"PLANNED_FLAG"
                    ,"STATUS_CODE"
                    ,"INITIAL_PICKUP_DATE"
                    ,"INITIAL_PICKUP_LOCATION_ID"
                    ,"ULTIMATE_DROPOFF_LOCATION_ID"
                    ,"ULTIMATE_DROPOFF_DATE"
                    ,"CUSTOMER_ID"
                    ,"INTMED_SHIP_TO_LOCATION_ID"
                    ,"POOLED_SHIP_TO_LOCATION_ID"
                    ,"FREIGHT_TERMS_CODE"
                    ,"FOB_CODE"
                    ,"FOB_LOCATION_ID"
                    ,"WAYBILL"
                    ,"ACCEPTANCE_FLAG"
                    ,"ACCEPTED_BY"
                    ,"ACCEPTED_DATE"
                    ,"ACKNOWLEDGED_BY"
                    ,"CONFIRMED_BY"
                    ,"ASN_DATE_SENT"
                    ,"ASN_STATUS_CODE"
                    ,"ASN_SEQ_NUMBER"
                    ,"REASON_OF_TRANSPORT"
                    ,"DESCRIPTION"
                    ,"GROSS_WEIGHT"
                    ,"NET_WEIGHT"
                    ,"WEIGHT_UOM_CODE"
                    ,"VOLUME"
                    ,"VOLUME_UOM_CODE"
                    ,"ADDITIONAL_SHIPMENT_INFO"
                    ,"PORT_OF_DISCHARGE"
                    ,"BOOKING_NUMBER"
                    ,"COD_AMOUNT"
                    ,"COD_CURRENCY_CODE"
                    ,"SERVICE_CONTRACT"
                    ,"COD_REMIT_TO"
                    ,"COD_CHARGE_PAID_BY"
                    ,"PROBLEM_CONTACT_REFERENCE"
                    ,"BILL_FREIGHT_TO"
                    ,"CARRIED_BY"
                    ,"PORT_OF_LOADING"
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
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"CONFIRM_DATE"
                    ,"SHIP_METHOD_CODE"
                    ,"DOCK_CODE"
                    ,"DELIVERY_TYPE"
                    ,"CARRIER_ID"
                    ,"CURRENCY_CODE"
                    ,"ORGANIZATION_ID"
                    ,"LOADING_SEQUENCE"
                    ,"LOADING_ORDER_FLAG"
                    ,"NUMBER_OF_LPN"
                    ,"BATCH_ID"
                    ,"SOURCE_HEADER_ID"
                    ,"HASH_VALUE"
                    ,"FTZ_NUMBER"
                    ,"ROUTED_EXPORT_TXN"
                    ,"ENTRY_NUMBER"
                    ,"ROUTING_INSTRUCTIONS"
                    ,"IN_BOND_CODE"
                    ,"SHIPPING_MARKS"
                    ,"SERVICE_LEVEL"
                    ,"MODE_OF_TRANSPORT"
                    ,"ASSIGNED_TO_FTE_TRIPS"
                    ,"AUTO_SC_EXCLUDE_FLAG"
                    ,"AUTO_AP_EXCLUDE_FLAG"
                    ,"AP_BATCH_ID"
                    ,"TP_DELIVERY_NUMBER"
                    ,"TP_PLAN_NAME"
                    ,"VENDOR_ID"
                    ,"EARLIEST_PICKUP_DATE"
                    ,"LATEST_PICKUP_DATE"
                    ,"EARLIEST_DROPOFF_DATE"
                    ,"LATEST_DROPOFF_DATE"
                    ,"IGNORE_FOR_PLANNING"
                    ,"PARTY_ID"
                    ,"ROUTING_RESPONSE_ID"
                    ,"RCV_SHIPMENT_HEADER_ID"
                    ,"ASN_SHIPMENT_HEADER_ID"
                    ,"SHIPMENT_DIRECTION"
                    ,"SHIPPING_CONTROL"
                    ,"WV_FROZEN_FLAG"
                    ,"HASH_STRING"
                    ,"ITINERARY_COMPLETE"
                    ,"DELIVERED_DATE"
                    ,"DELIVERY_WF_PROCESS"
                    ,"DEL_WF_INTRANSIT_ATTR"
                    ,"DEL_WF_INTERFACE_ATTR"
                    ,"DEL_WF_CLOSE_ATTR"
                    ,"DELIVERY_SCPOD_WF_PROCESS"
                    ,"TMS_VERSION_NUMBER"
                    ,"TMS_INTERFACE_FLAG"
                    ,"PENDING_ADVICE_FLAG"
                    ,"CLIENT_ID"
                    ,"CONSIGNEE_FLAG"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_WSH_NEW_DELIVERIES" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_WSH_NEW_DELIVERIES" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_WSH_NEW_DELIVERIES" H					Join "STG"."STG_EBS_WSH_NEW_DELIVERIES" S						On H.DELIVERY_ID= S.DELIVERY_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
