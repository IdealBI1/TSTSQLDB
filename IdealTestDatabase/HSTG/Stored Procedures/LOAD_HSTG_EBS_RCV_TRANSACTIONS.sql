

CREATE PROCEDURE "HSTG"."LOAD_HSTG_EBS_RCV_TRANSACTIONS"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/11/2022 12:14:00 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_RCV_TRANSACTIONS";
    
    Source                              Destination                        
    --------------------------------    --------------------------------- 
    STG"."STG_EBS_RCV_TRANSACTIONS"    "HSTG"."HSTG_EBS_RCV_TRANSACTIONS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-11-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_RCV_TRANSACTIONS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_RCV_TRANSACTIONS"
                (
                    "TRANSACTION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"TRANSACTION_TYPE"
                    ,"TRANSACTION_DATE"
                    ,"QUANTITY"
                    ,"UNIT_OF_MEASURE"
                    ,"SHIPMENT_HEADER_ID"
                    ,"SHIPMENT_LINE_ID"
                    ,"USER_ENTERED_FLAG"
                    ,"INTERFACE_SOURCE_CODE"
                    ,"INTERFACE_SOURCE_LINE_ID"
                    ,"INV_TRANSACTION_ID"
                    ,"SOURCE_DOCUMENT_CODE"
                    ,"DESTINATION_TYPE_CODE"
                    ,"PRIMARY_QUANTITY"
                    ,"PRIMARY_UNIT_OF_MEASURE"
                    ,"UOM_CODE"
                    ,"EMPLOYEE_ID"
                    ,"PARENT_TRANSACTION_ID"
                    ,"PO_HEADER_ID"
                    ,"PO_RELEASE_ID"
                    ,"PO_LINE_ID"
                    ,"PO_LINE_LOCATION_ID"
                    ,"PO_DISTRIBUTION_ID"
                    ,"PO_REVISION_NUM"
                    ,"REQUISITION_LINE_ID"
                    ,"PO_UNIT_PRICE"
                    ,"CURRENCY_CODE"
                    ,"CURRENCY_CONVERSION_TYPE"
                    ,"CURRENCY_CONVERSION_RATE"
                    ,"CURRENCY_CONVERSION_DATE"
                    ,"ROUTING_HEADER_ID"
                    ,"ROUTING_STEP_ID"
                    ,"DELIVER_TO_PERSON_ID"
                    ,"DELIVER_TO_LOCATION_ID"
                    ,"VENDOR_ID"
                    ,"VENDOR_SITE_ID"
                    ,"ORGANIZATION_ID"
                    ,"SUBINVENTORY"
                    ,"LOCATOR_ID"
                    ,"WIP_ENTITY_ID"
                    ,"WIP_LINE_ID"
                    ,"WIP_REPETITIVE_SCHEDULE_ID"
                    ,"WIP_OPERATION_SEQ_NUM"
                    ,"WIP_RESOURCE_SEQ_NUM"
                    ,"BOM_RESOURCE_ID"
                    ,"LOCATION_ID"
                    ,"SUBSTITUTE_UNORDERED_CODE"
                    ,"RECEIPT_EXCEPTION_FLAG"
                    ,"INSPECTION_STATUS_CODE"
                    ,"ACCRUAL_STATUS_CODE"
                    ,"INSPECTION_QUALITY_CODE"
                    ,"VENDOR_LOT_NUM"
                    ,"RMA_REFERENCE"
                    ,"COMMENTS"
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
                    ,"REQ_DISTRIBUTION_ID"
                    ,"DEPARTMENT_CODE"
                    ,"REASON_ID"
                    ,"DESTINATION_CONTEXT"
                    ,"LOCATOR_ATTRIBUTE"
                    ,"CHILD_INSPECTION_FLAG"
                    ,"SOURCE_DOC_UNIT_OF_MEASURE"
                    ,"SOURCE_DOC_QUANTITY"
                    ,"INTERFACE_TRANSACTION_ID"
                    ,"GROUP_ID"
                    ,"MOVEMENT_ID"
                    ,"INVOICE_ID"
                    ,"INVOICE_STATUS_CODE"
                    ,"QA_COLLECTION_ID"
                    ,"MRC_CURRENCY_CONVERSION_TYPE"
                    ,"MRC_CURRENCY_CONVERSION_DATE"
                    ,"MRC_CURRENCY_CONVERSION_RATE"
                    ,"COUNTRY_OF_ORIGIN_CODE"
                    ,"MVT_STAT_STATUS"
                    ,"QUANTITY_BILLED"
                    ,"MATCH_FLAG"
                    ,"AMOUNT_BILLED"
                    ,"MATCH_OPTION"
                    ,"OE_ORDER_HEADER_ID"
                    ,"OE_ORDER_LINE_ID"
                    ,"CUSTOMER_ID"
                    ,"CUSTOMER_SITE_ID"
                    ,"LPN_ID"
                    ,"TRANSFER_LPN_ID"
                    ,"MOBILE_TXN"
                    ,"SECONDARY_QUANTITY"
                    ,"SECONDARY_UNIT_OF_MEASURE"
                    ,"QC_GRADE"
                    ,"SECONDARY_UOM_CODE"
                    ,"PA_ADDITION_FLAG"
                    ,"CONSIGNED_FLAG"
                    ,"SOURCE_TRANSACTION_NUM"
                    ,"FROM_SUBINVENTORY"
                    ,"FROM_LOCATOR_ID"
                    ,"AMOUNT"
                    ,"DROPSHIP_TYPE_CODE"
                    ,"LPN_GROUP_ID"
                    ,"JOB_ID"
                    ,"TIMECARD_ID"
                    ,"TIMECARD_OVN"
                    ,"PROJECT_ID"
                    ,"TASK_ID"
                    ,"REQUESTED_AMOUNT"
                    ,"MATERIAL_STORED_AMOUNT"
                    ,"REPLENISH_ORDER_LINE_ID"
                    ,"LCM_SHIPMENT_LINE_ID"
                    ,"UNIT_LANDED_COST"
                    ,"RECEIPT_CONFIRMATION_EXTRACTED"
                    ,"LCM_ADJUSTMENT_NUM"
                    ,"XML_DOCUMENT_ID"
                    ,"META_RECORD_KEY"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_EXPIRY_DATETIME"
                    ,"META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,"META_CURRENT_RECORD_INDICATOR"
                    ,"META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                SELECT 
                    "TRANSACTION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"TRANSACTION_TYPE"
                    ,"TRANSACTION_DATE"
                    ,"QUANTITY"
                    ,"UNIT_OF_MEASURE"
                    ,"SHIPMENT_HEADER_ID"
                    ,"SHIPMENT_LINE_ID"
                    ,"USER_ENTERED_FLAG"
                    ,"INTERFACE_SOURCE_CODE"
                    ,"INTERFACE_SOURCE_LINE_ID"
                    ,"INV_TRANSACTION_ID"
                    ,"SOURCE_DOCUMENT_CODE"
                    ,"DESTINATION_TYPE_CODE"
                    ,"PRIMARY_QUANTITY"
                    ,"PRIMARY_UNIT_OF_MEASURE"
                    ,"UOM_CODE"
                    ,"EMPLOYEE_ID"
                    ,"PARENT_TRANSACTION_ID"
                    ,"PO_HEADER_ID"
                    ,"PO_RELEASE_ID"
                    ,"PO_LINE_ID"
                    ,"PO_LINE_LOCATION_ID"
                    ,"PO_DISTRIBUTION_ID"
                    ,"PO_REVISION_NUM"
                    ,"REQUISITION_LINE_ID"
                    ,"PO_UNIT_PRICE"
                    ,"CURRENCY_CODE"
                    ,"CURRENCY_CONVERSION_TYPE"
                    ,"CURRENCY_CONVERSION_RATE"
                    ,"CURRENCY_CONVERSION_DATE"
                    ,"ROUTING_HEADER_ID"
                    ,"ROUTING_STEP_ID"
                    ,"DELIVER_TO_PERSON_ID"
                    ,"DELIVER_TO_LOCATION_ID"
                    ,"VENDOR_ID"
                    ,"VENDOR_SITE_ID"
                    ,"ORGANIZATION_ID"
                    ,"SUBINVENTORY"
                    ,"LOCATOR_ID"
                    ,"WIP_ENTITY_ID"
                    ,"WIP_LINE_ID"
                    ,"WIP_REPETITIVE_SCHEDULE_ID"
                    ,"WIP_OPERATION_SEQ_NUM"
                    ,"WIP_RESOURCE_SEQ_NUM"
                    ,"BOM_RESOURCE_ID"
                    ,"LOCATION_ID"
                    ,"SUBSTITUTE_UNORDERED_CODE"
                    ,"RECEIPT_EXCEPTION_FLAG"
                    ,"INSPECTION_STATUS_CODE"
                    ,"ACCRUAL_STATUS_CODE"
                    ,"INSPECTION_QUALITY_CODE"
                    ,"VENDOR_LOT_NUM"
                    ,"RMA_REFERENCE"
                    ,"COMMENTS"
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
                    ,"REQ_DISTRIBUTION_ID"
                    ,"DEPARTMENT_CODE"
                    ,"REASON_ID"
                    ,"DESTINATION_CONTEXT"
                    ,"LOCATOR_ATTRIBUTE"
                    ,"CHILD_INSPECTION_FLAG"
                    ,"SOURCE_DOC_UNIT_OF_MEASURE"
                    ,"SOURCE_DOC_QUANTITY"
                    ,"INTERFACE_TRANSACTION_ID"
                    ,"GROUP_ID"
                    ,"MOVEMENT_ID"
                    ,"INVOICE_ID"
                    ,"INVOICE_STATUS_CODE"
                    ,"QA_COLLECTION_ID"
                    ,"MRC_CURRENCY_CONVERSION_TYPE"
                    ,"MRC_CURRENCY_CONVERSION_DATE"
                    ,"MRC_CURRENCY_CONVERSION_RATE"
                    ,"COUNTRY_OF_ORIGIN_CODE"
                    ,"MVT_STAT_STATUS"
                    ,"QUANTITY_BILLED"
                    ,"MATCH_FLAG"
                    ,"AMOUNT_BILLED"
                    ,"MATCH_OPTION"
                    ,"OE_ORDER_HEADER_ID"
                    ,"OE_ORDER_LINE_ID"
                    ,"CUSTOMER_ID"
                    ,"CUSTOMER_SITE_ID"
                    ,"LPN_ID"
                    ,"TRANSFER_LPN_ID"
                    ,"MOBILE_TXN"
                    ,"SECONDARY_QUANTITY"
                    ,"SECONDARY_UNIT_OF_MEASURE"
                    ,"QC_GRADE"
                    ,"SECONDARY_UOM_CODE"
                    ,"PA_ADDITION_FLAG"
                    ,"CONSIGNED_FLAG"
                    ,"SOURCE_TRANSACTION_NUM"
                    ,"FROM_SUBINVENTORY"
                    ,"FROM_LOCATOR_ID"
                    ,"AMOUNT"
                    ,"DROPSHIP_TYPE_CODE"
                    ,"LPN_GROUP_ID"
                    ,"JOB_ID"
                    ,"TIMECARD_ID"
                    ,"TIMECARD_OVN"
                    ,"PROJECT_ID"
                    ,"TASK_ID"
                    ,"REQUESTED_AMOUNT"
                    ,"MATERIAL_STORED_AMOUNT"
                    ,"REPLENISH_ORDER_LINE_ID"
                    ,"LCM_SHIPMENT_LINE_ID"
                    ,"UNIT_LANDED_COST"
                    ,"RECEIPT_CONFIRMATION_EXTRACTED"
                    ,"LCM_ADJUSTMENT_NUM"
                    ,"XML_DOCUMENT_ID"
                    ,"META_RECORD_KEY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                    ,'99991231 23:59:59' AS "META_EXPIRY_DATETIME"
                    ,'UPSERT' AS "META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,'Y' AS "META_CURRENT_RECORD_INDICATOR"
                    ,'N' AS "META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                FROM "STG"."STG_EBS_RCV_TRANSACTIONS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_RCV_TRANSACTIONS" H WHERE H.META_CURRENT_RECORD_INDICATOR = 'Y' AND META_DELETE_INDICATOR = 'N' AND H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)



            /* Step 3:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE H  SET META_CURRENT_RECORD_INDICATOR='N'  , META_EXPIRY_DATETIME=CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) 
                FROM "HSTG"."HSTG_EBS_RCV_TRANSACTIONS" H
                WHERE "META_DELETE_INDICATOR" = 'N' AND EXISTS (SELECT 1 FROM "STG"."STG_EBS_RCV_TRANSACTIONS" S WHERE H.META_RECORD_CHECKSUM != S.META_RECORD_CHECKSUM 
                    AND H.META_RECORD_KEY = S.META_RECORD_KEY
                )


            TRUNCATE TABLE "LND"."LND_EBS_RCV_TRANSACTIONS"
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
