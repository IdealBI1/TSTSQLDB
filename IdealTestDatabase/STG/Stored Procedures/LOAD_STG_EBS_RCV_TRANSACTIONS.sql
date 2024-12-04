

CREATE PROCEDURE "STG"."LOAD_STG_EBS_RCV_TRANSACTIONS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/11/2022 12:13:59 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RCV_TRANSACTIONS";
    
    
    Source                              Destination                      
    --------------------------------    -------------------------------- 
    LND"."LND_EBS_RCV_TRANSACTIONS"    "STG"."STG_EBS_RCV_TRANSACTIONS" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_RCV_TRANSACTIONS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RCV_TRANSACTIONS"
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
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("TRANSACTION_ID" AS float) AS "TRANSACTION_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("TRANSACTION_TYPE" AS varchar(100) ) AS "TRANSACTION_TYPE"
                        ,CAST("TRANSACTION_DATE" AS datetime2) AS "TRANSACTION_DATE"
                        ,CAST("QUANTITY" AS float) AS "QUANTITY"
                        ,CAST("UNIT_OF_MEASURE" AS varchar(100) ) AS "UNIT_OF_MEASURE"
                        ,CAST("SHIPMENT_HEADER_ID" AS float) AS "SHIPMENT_HEADER_ID"
                        ,CAST("SHIPMENT_LINE_ID" AS float) AS "SHIPMENT_LINE_ID"
                        ,CAST("USER_ENTERED_FLAG" AS varchar(100) ) AS "USER_ENTERED_FLAG"
                        ,CAST("INTERFACE_SOURCE_CODE" AS varchar(100) ) AS "INTERFACE_SOURCE_CODE"
                        ,CAST("INTERFACE_SOURCE_LINE_ID" AS float) AS "INTERFACE_SOURCE_LINE_ID"
                        ,CAST("INV_TRANSACTION_ID" AS float) AS "INV_TRANSACTION_ID"
                        ,CAST("SOURCE_DOCUMENT_CODE" AS varchar(100) ) AS "SOURCE_DOCUMENT_CODE"
                        ,CAST("DESTINATION_TYPE_CODE" AS varchar(100) ) AS "DESTINATION_TYPE_CODE"
                        ,CAST("PRIMARY_QUANTITY" AS float) AS "PRIMARY_QUANTITY"
                        ,CAST("PRIMARY_UNIT_OF_MEASURE" AS varchar(100) ) AS "PRIMARY_UNIT_OF_MEASURE"
                        ,CAST("UOM_CODE" AS varchar(100) ) AS "UOM_CODE"
                        ,CAST("EMPLOYEE_ID" AS float) AS "EMPLOYEE_ID"
                        ,CAST("PARENT_TRANSACTION_ID" AS float) AS "PARENT_TRANSACTION_ID"
                        ,CAST("PO_HEADER_ID" AS float) AS "PO_HEADER_ID"
                        ,CAST("PO_RELEASE_ID" AS float) AS "PO_RELEASE_ID"
                        ,CAST("PO_LINE_ID" AS float) AS "PO_LINE_ID"
                        ,CAST("PO_LINE_LOCATION_ID" AS float) AS "PO_LINE_LOCATION_ID"
                        ,CAST("PO_DISTRIBUTION_ID" AS float) AS "PO_DISTRIBUTION_ID"
                        ,CAST("PO_REVISION_NUM" AS float) AS "PO_REVISION_NUM"
                        ,CAST("REQUISITION_LINE_ID" AS float) AS "REQUISITION_LINE_ID"
                        ,CAST("PO_UNIT_PRICE" AS float) AS "PO_UNIT_PRICE"
                        ,CAST("CURRENCY_CODE" AS varchar(100) ) AS "CURRENCY_CODE"
                        ,CAST("CURRENCY_CONVERSION_TYPE" AS varchar(100) ) AS "CURRENCY_CONVERSION_TYPE"
                        ,CAST("CURRENCY_CONVERSION_RATE" AS float) AS "CURRENCY_CONVERSION_RATE"
                        ,CAST("CURRENCY_CONVERSION_DATE" AS datetime2) AS "CURRENCY_CONVERSION_DATE"
                        ,CAST("ROUTING_HEADER_ID" AS float) AS "ROUTING_HEADER_ID"
                        ,CAST("ROUTING_STEP_ID" AS float) AS "ROUTING_STEP_ID"
                        ,CAST("DELIVER_TO_PERSON_ID" AS float) AS "DELIVER_TO_PERSON_ID"
                        ,CAST("DELIVER_TO_LOCATION_ID" AS float) AS "DELIVER_TO_LOCATION_ID"
                        ,CAST("VENDOR_ID" AS float) AS "VENDOR_ID"
                        ,CAST("VENDOR_SITE_ID" AS float) AS "VENDOR_SITE_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("SUBINVENTORY" AS varchar(100) ) AS "SUBINVENTORY"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,CAST("WIP_ENTITY_ID" AS float) AS "WIP_ENTITY_ID"
                        ,CAST("WIP_LINE_ID" AS float) AS "WIP_LINE_ID"
                        ,CAST("WIP_REPETITIVE_SCHEDULE_ID" AS float) AS "WIP_REPETITIVE_SCHEDULE_ID"
                        ,CAST("WIP_OPERATION_SEQ_NUM" AS float) AS "WIP_OPERATION_SEQ_NUM"
                        ,CAST("WIP_RESOURCE_SEQ_NUM" AS float) AS "WIP_RESOURCE_SEQ_NUM"
                        ,CAST("BOM_RESOURCE_ID" AS float) AS "BOM_RESOURCE_ID"
                        ,CAST("LOCATION_ID" AS float) AS "LOCATION_ID"
                        ,CAST("SUBSTITUTE_UNORDERED_CODE" AS varchar(100) ) AS "SUBSTITUTE_UNORDERED_CODE"
                        ,CAST("RECEIPT_EXCEPTION_FLAG" AS varchar(100) ) AS "RECEIPT_EXCEPTION_FLAG"
                        ,CAST("INSPECTION_STATUS_CODE" AS varchar(100) ) AS "INSPECTION_STATUS_CODE"
                        ,CAST("ACCRUAL_STATUS_CODE" AS varchar(100) ) AS "ACCRUAL_STATUS_CODE"
                        ,CAST("INSPECTION_QUALITY_CODE" AS varchar(100) ) AS "INSPECTION_QUALITY_CODE"
                        ,CAST("VENDOR_LOT_NUM" AS varchar(100) ) AS "VENDOR_LOT_NUM"
                        ,CAST("RMA_REFERENCE" AS varchar(100) ) AS "RMA_REFERENCE"
                        ,CAST("COMMENTS" AS varchar(1000) ) AS "COMMENTS"
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "ATTRIBUTE_CATEGORY"
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
                        ,CAST("REQ_DISTRIBUTION_ID" AS float) AS "REQ_DISTRIBUTION_ID"
                        ,CAST("DEPARTMENT_CODE" AS varchar(100) ) AS "DEPARTMENT_CODE"
                        ,CAST("REASON_ID" AS float) AS "REASON_ID"
                        ,CAST("DESTINATION_CONTEXT" AS varchar(100) ) AS "DESTINATION_CONTEXT"
                        ,CAST("LOCATOR_ATTRIBUTE" AS varchar(1000) ) AS "LOCATOR_ATTRIBUTE"
                        ,CAST("CHILD_INSPECTION_FLAG" AS varchar(100) ) AS "CHILD_INSPECTION_FLAG"
                        ,CAST("SOURCE_DOC_UNIT_OF_MEASURE" AS varchar(100) ) AS "SOURCE_DOC_UNIT_OF_MEASURE"
                        ,CAST("SOURCE_DOC_QUANTITY" AS float) AS "SOURCE_DOC_QUANTITY"
                        ,CAST("INTERFACE_TRANSACTION_ID" AS float) AS "INTERFACE_TRANSACTION_ID"
                        ,CAST("GROUP_ID" AS float) AS "GROUP_ID"
                        ,CAST("MOVEMENT_ID" AS float) AS "MOVEMENT_ID"
                        ,CAST("INVOICE_ID" AS float) AS "INVOICE_ID"
                        ,CAST("INVOICE_STATUS_CODE" AS varchar(100) ) AS "INVOICE_STATUS_CODE"
                        ,CAST("QA_COLLECTION_ID" AS float) AS "QA_COLLECTION_ID"
                        ,CAST("MRC_CURRENCY_CONVERSION_TYPE" AS varchar(8000) ) AS "MRC_CURRENCY_CONVERSION_TYPE"
                        ,CAST("MRC_CURRENCY_CONVERSION_DATE" AS varchar(8000) ) AS "MRC_CURRENCY_CONVERSION_DATE"
                        ,CAST("MRC_CURRENCY_CONVERSION_RATE" AS varchar(8000) ) AS "MRC_CURRENCY_CONVERSION_RATE"
                        ,CAST("COUNTRY_OF_ORIGIN_CODE" AS varchar(100) ) AS "COUNTRY_OF_ORIGIN_CODE"
                        ,CAST("MVT_STAT_STATUS" AS varchar(100) ) AS "MVT_STAT_STATUS"
                        ,CAST("QUANTITY_BILLED" AS float) AS "QUANTITY_BILLED"
                        ,CAST("MATCH_FLAG" AS varchar(100) ) AS "MATCH_FLAG"
                        ,CAST("AMOUNT_BILLED" AS float) AS "AMOUNT_BILLED"
                        ,CAST("MATCH_OPTION" AS varchar(100) ) AS "MATCH_OPTION"
                        ,CAST("OE_ORDER_HEADER_ID" AS float) AS "OE_ORDER_HEADER_ID"
                        ,CAST("OE_ORDER_LINE_ID" AS float) AS "OE_ORDER_LINE_ID"
                        ,CAST("CUSTOMER_ID" AS float) AS "CUSTOMER_ID"
                        ,CAST("CUSTOMER_SITE_ID" AS float) AS "CUSTOMER_SITE_ID"
                        ,CAST("LPN_ID" AS float) AS "LPN_ID"
                        ,CAST("TRANSFER_LPN_ID" AS float) AS "TRANSFER_LPN_ID"
                        ,CAST("MOBILE_TXN" AS varchar(100) ) AS "MOBILE_TXN"
                        ,CAST("SECONDARY_QUANTITY" AS float) AS "SECONDARY_QUANTITY"
                        ,CAST("SECONDARY_UNIT_OF_MEASURE" AS varchar(100) ) AS "SECONDARY_UNIT_OF_MEASURE"
                        ,CAST("QC_GRADE" AS varchar(1000) ) AS "QC_GRADE"
                        ,CAST("SECONDARY_UOM_CODE" AS varchar(100) ) AS "SECONDARY_UOM_CODE"
                        ,CAST("PA_ADDITION_FLAG" AS varchar(100) ) AS "PA_ADDITION_FLAG"
                        ,CAST("CONSIGNED_FLAG" AS varchar(100) ) AS "CONSIGNED_FLAG"
                        ,CAST("SOURCE_TRANSACTION_NUM" AS varchar(100) ) AS "SOURCE_TRANSACTION_NUM"
                        ,CAST("FROM_SUBINVENTORY" AS varchar(1000) ) AS "FROM_SUBINVENTORY"
                        ,CAST("FROM_LOCATOR_ID" AS float) AS "FROM_LOCATOR_ID"
                        ,CAST("AMOUNT" AS float) AS "AMOUNT"
                        ,CAST("DROPSHIP_TYPE_CODE" AS float) AS "DROPSHIP_TYPE_CODE"
                        ,CAST("LPN_GROUP_ID" AS float) AS "LPN_GROUP_ID"
                        ,CAST("JOB_ID" AS float) AS "JOB_ID"
                        ,CAST("TIMECARD_ID" AS float) AS "TIMECARD_ID"
                        ,CAST("TIMECARD_OVN" AS float) AS "TIMECARD_OVN"
                        ,CAST("PROJECT_ID" AS float) AS "PROJECT_ID"
                        ,CAST("TASK_ID" AS float) AS "TASK_ID"
                        ,CAST("REQUESTED_AMOUNT" AS float) AS "REQUESTED_AMOUNT"
                        ,CAST("MATERIAL_STORED_AMOUNT" AS float) AS "MATERIAL_STORED_AMOUNT"
                        ,CAST("REPLENISH_ORDER_LINE_ID" AS float) AS "REPLENISH_ORDER_LINE_ID"
                        ,CAST("LCM_SHIPMENT_LINE_ID" AS float) AS "LCM_SHIPMENT_LINE_ID"
                        ,CAST("UNIT_LANDED_COST" AS float) AS "UNIT_LANDED_COST"
                        ,CAST("RECEIPT_CONFIRMATION_EXTRACTED" AS varchar(100) ) AS "RECEIPT_CONFIRMATION_EXTRACTED"
                        ,CAST("LCM_ADJUSTMENT_NUM" AS float) AS "LCM_ADJUSTMENT_NUM"
                        ,CAST("XML_DOCUMENT_ID" AS float) AS "XML_DOCUMENT_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("TRANSACTION_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("TRANSACTION_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSACTION_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSACTION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPMENT_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPMENT_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("USER_ENTERED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INTERFACE_SOURCE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INTERFACE_SOURCE_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INV_TRANSACTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_DOCUMENT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRIMARY_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRIMARY_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EMPLOYEE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARENT_TRANSACTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_RELEASE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_LINE_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_DISTRIBUTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_REVISION_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUISITION_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CONVERSION_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CONVERSION_RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CONVERSION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ROUTING_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ROUTING_STEP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DELIVER_TO_PERSON_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DELIVER_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_SITE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_ENTITY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_REPETITIVE_SCHEDULE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_OPERATION_SEQ_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_RESOURCE_SEQ_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BOM_RESOURCE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBSTITUTE_UNORDERED_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIPT_EXCEPTION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INSPECTION_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ACCRUAL_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INSPECTION_QUALITY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_LOT_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RMA_REFERENCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COMMENTS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQ_DISTRIBUTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DEPARTMENT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REASON_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_ATTRIBUTE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHILD_INSPECTION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_DOC_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_DOC_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INTERFACE_TRANSACTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MOVEMENT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVOICE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVOICE_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QA_COLLECTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_CURRENCY_CONVERSION_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_CURRENCY_CONVERSION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_CURRENCY_CONVERSION_RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COUNTRY_OF_ORIGIN_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MVT_STAT_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_BILLED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATCH_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT_BILLED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATCH_OPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OE_ORDER_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OE_ORDER_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CUSTOMER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CUSTOMER_SITE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSFER_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MOBILE_TXN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QC_GRADE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PA_ADDITION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONSIGNED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_TRANSACTION_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROM_SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROM_LOCATOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DROPSHIP_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LPN_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("JOB_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TIMECARD_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TIMECARD_OVN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROJECT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TASK_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUESTED_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATERIAL_STORED_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REPLENISH_ORDER_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LCM_SHIPMENT_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_LANDED_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIPT_CONFIRMATION_EXTRACTED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LCM_ADJUSTMENT_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("XML_DOCUMENT_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_RCV_TRANSACTIONS"
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
