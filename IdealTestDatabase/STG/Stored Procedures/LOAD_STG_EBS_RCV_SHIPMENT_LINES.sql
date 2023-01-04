

CREATE PROCEDURE "STG"."LOAD_STG_EBS_RCV_SHIPMENT_LINES"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:53 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RCV_SHIPMENT_LINES";
    
    
    Source                                Destination                        
    ----------------------------------    ---------------------------------- 
    LND"."LND_EBS_RCV_SHIPMENT_LINES"    "STG"."STG_EBS_RCV_SHIPMENT_LINES" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_RCV_SHIPMENT_LINES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RCV_SHIPMENT_LINES"
                (
                    "SHIPMENT_LINE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"SHIPMENT_HEADER_ID"
                    ,"LINE_NUM"
                    ,"CATEGORY_ID"
                    ,"QUANTITY_SHIPPED"
                    ,"QUANTITY_RECEIVED"
                    ,"UNIT_OF_MEASURE"
                    ,"ITEM_DESCRIPTION"
                    ,"ITEM_ID"
                    ,"ITEM_REVISION"
                    ,"VENDOR_ITEM_NUM"
                    ,"VENDOR_LOT_NUM"
                    ,"UOM_CONVERSION_RATE"
                    ,"SHIPMENT_LINE_STATUS_CODE"
                    ,"SOURCE_DOCUMENT_CODE"
                    ,"PO_HEADER_ID"
                    ,"PO_RELEASE_ID"
                    ,"PO_LINE_ID"
                    ,"PO_LINE_LOCATION_ID"
                    ,"PO_DISTRIBUTION_ID"
                    ,"REQUISITION_LINE_ID"
                    ,"REQ_DISTRIBUTION_ID"
                    ,"ROUTING_HEADER_ID"
                    ,"PACKING_SLIP"
                    ,"FROM_ORGANIZATION_ID"
                    ,"DELIVER_TO_PERSON_ID"
                    ,"EMPLOYEE_ID"
                    ,"DESTINATION_TYPE_CODE"
                    ,"TO_ORGANIZATION_ID"
                    ,"TO_SUBINVENTORY"
                    ,"LOCATOR_ID"
                    ,"DELIVER_TO_LOCATION_ID"
                    ,"CHARGE_ACCOUNT_ID"
                    ,"TRANSPORTATION_ACCOUNT_ID"
                    ,"SHIPMENT_UNIT_PRICE"
                    ,"TRANSFER_COST"
                    ,"TRANSPORTATION_COST"
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
                    ,"REASON_ID"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"GOVERNMENT_CONTEXT"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"DESTINATION_CONTEXT"
                    ,"PRIMARY_UNIT_OF_MEASURE"
                    ,"EXCESS_TRANSPORT_REASON"
                    ,"EXCESS_TRANSPORT_RESPONSIBLE"
                    ,"EXCESS_TRANSPORT_AUTH_NUM"
                    ,"ASN_LINE_FLAG"
                    ,"ORIGINAL_ASN_PARENT_LINE_ID"
                    ,"ORIGINAL_ASN_LINE_FLAG"
                    ,"VENDOR_CUM_SHIPPED_QUANTITY"
                    ,"NOTICE_UNIT_PRICE"
                    ,"TAX_NAME"
                    ,"TAX_AMOUNT"
                    ,"INVOICE_STATUS_CODE"
                    ,"CUM_COMPARISON_FLAG"
                    ,"CONTAINER_NUM"
                    ,"TRUCK_NUM"
                    ,"BAR_CODE_LABEL"
                    ,"TRANSFER_PERCENTAGE"
                    ,"MRC_SHIPMENT_UNIT_PRICE"
                    ,"MRC_TRANSFER_COST"
                    ,"MRC_TRANSPORTATION_COST"
                    ,"MRC_NOTICE_UNIT_PRICE"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"COUNTRY_OF_ORIGIN_CODE"
                    ,"OE_ORDER_HEADER_ID"
                    ,"OE_ORDER_LINE_ID"
                    ,"CUSTOMER_ITEM_NUM"
                    ,"COST_GROUP_ID"
                    ,"SECONDARY_QUANTITY_SHIPPED"
                    ,"SECONDARY_QUANTITY_RECEIVED"
                    ,"SECONDARY_UNIT_OF_MEASURE"
                    ,"QC_GRADE"
                    ,"MMT_TRANSACTION_ID"
                    ,"ASN_LPN_ID"
                    ,"AMOUNT"
                    ,"AMOUNT_RECEIVED"
                    ,"JOB_ID"
                    ,"TIMECARD_ID"
                    ,"TIMECARD_OVN"
                    ,"OSA_FLAG"
                    ,"REQUESTED_AMOUNT"
                    ,"MATERIAL_STORED_AMOUNT"
                    ,"APPROVAL_STATUS"
                    ,"AMOUNT_SHIPPED"
                    ,"LCM_SHIPMENT_LINE_ID"
                    ,"UNIT_LANDED_COST"
                    ,"EQUIPMENT_ID"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("SHIPMENT_LINE_ID" AS float) AS "SHIPMENT_LINE_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("SHIPMENT_HEADER_ID" AS float) AS "SHIPMENT_HEADER_ID"
                        ,CAST("LINE_NUM" AS float) AS "LINE_NUM"
                        ,CAST("CATEGORY_ID" AS float) AS "CATEGORY_ID"
                        ,CAST("QUANTITY_SHIPPED" AS float) AS "QUANTITY_SHIPPED"
                        ,CAST("QUANTITY_RECEIVED" AS float) AS "QUANTITY_RECEIVED"
                        ,CAST("UNIT_OF_MEASURE" AS varchar(100) ) AS "UNIT_OF_MEASURE"
                        ,CAST("ITEM_DESCRIPTION" AS varchar(1000) ) AS "ITEM_DESCRIPTION"
                        ,CAST("ITEM_ID" AS float) AS "ITEM_ID"
                        ,CAST("ITEM_REVISION" AS varchar(100) ) AS "ITEM_REVISION"
                        ,CAST("VENDOR_ITEM_NUM" AS varchar(100) ) AS "VENDOR_ITEM_NUM"
                        ,CAST("VENDOR_LOT_NUM" AS varchar(100) ) AS "VENDOR_LOT_NUM"
                        ,CAST("UOM_CONVERSION_RATE" AS float) AS "UOM_CONVERSION_RATE"
                        ,CAST("SHIPMENT_LINE_STATUS_CODE" AS varchar(100) ) AS "SHIPMENT_LINE_STATUS_CODE"
                        ,CAST("SOURCE_DOCUMENT_CODE" AS varchar(100) ) AS "SOURCE_DOCUMENT_CODE"
                        ,CAST("PO_HEADER_ID" AS float) AS "PO_HEADER_ID"
                        ,CAST("PO_RELEASE_ID" AS float) AS "PO_RELEASE_ID"
                        ,CAST("PO_LINE_ID" AS float) AS "PO_LINE_ID"
                        ,CAST("PO_LINE_LOCATION_ID" AS float) AS "PO_LINE_LOCATION_ID"
                        ,CAST("PO_DISTRIBUTION_ID" AS float) AS "PO_DISTRIBUTION_ID"
                        ,CAST("REQUISITION_LINE_ID" AS float) AS "REQUISITION_LINE_ID"
                        ,CAST("REQ_DISTRIBUTION_ID" AS float) AS "REQ_DISTRIBUTION_ID"
                        ,CAST("ROUTING_HEADER_ID" AS float) AS "ROUTING_HEADER_ID"
                        ,CAST("PACKING_SLIP" AS varchar(100) ) AS "PACKING_SLIP"
                        ,CAST("FROM_ORGANIZATION_ID" AS float) AS "FROM_ORGANIZATION_ID"
                        ,CAST("DELIVER_TO_PERSON_ID" AS float) AS "DELIVER_TO_PERSON_ID"
                        ,CAST("EMPLOYEE_ID" AS float) AS "EMPLOYEE_ID"
                        ,CAST("DESTINATION_TYPE_CODE" AS varchar(100) ) AS "DESTINATION_TYPE_CODE"
                        ,CAST("TO_ORGANIZATION_ID" AS float) AS "TO_ORGANIZATION_ID"
                        ,CAST("TO_SUBINVENTORY" AS varchar(100) ) AS "TO_SUBINVENTORY"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,CAST("DELIVER_TO_LOCATION_ID" AS float) AS "DELIVER_TO_LOCATION_ID"
                        ,CAST("CHARGE_ACCOUNT_ID" AS float) AS "CHARGE_ACCOUNT_ID"
                        ,CAST("TRANSPORTATION_ACCOUNT_ID" AS float) AS "TRANSPORTATION_ACCOUNT_ID"
                        ,CAST("SHIPMENT_UNIT_PRICE" AS float) AS "SHIPMENT_UNIT_PRICE"
                        ,CAST("TRANSFER_COST" AS float) AS "TRANSFER_COST"
                        ,CAST("TRANSPORTATION_COST" AS float) AS "TRANSPORTATION_COST"
                        ,CAST("COMMENTS" AS varchar(8000) ) AS "COMMENTS"
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
                        ,CAST("REASON_ID" AS float) AS "REASON_ID"
                        ,CAST("USSGL_TRANSACTION_CODE" AS varchar(100) ) AS "USSGL_TRANSACTION_CODE"
                        ,CAST("GOVERNMENT_CONTEXT" AS varchar(100) ) AS "GOVERNMENT_CONTEXT"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("DESTINATION_CONTEXT" AS varchar(100) ) AS "DESTINATION_CONTEXT"
                        ,CAST("PRIMARY_UNIT_OF_MEASURE" AS varchar(100) ) AS "PRIMARY_UNIT_OF_MEASURE"
                        ,CAST("EXCESS_TRANSPORT_REASON" AS varchar(100) ) AS "EXCESS_TRANSPORT_REASON"
                        ,CAST("EXCESS_TRANSPORT_RESPONSIBLE" AS varchar(100) ) AS "EXCESS_TRANSPORT_RESPONSIBLE"
                        ,CAST("EXCESS_TRANSPORT_AUTH_NUM" AS varchar(100) ) AS "EXCESS_TRANSPORT_AUTH_NUM"
                        ,CAST("ASN_LINE_FLAG" AS varchar(100) ) AS "ASN_LINE_FLAG"
                        ,CAST("ORIGINAL_ASN_PARENT_LINE_ID" AS varchar(100) ) AS "ORIGINAL_ASN_PARENT_LINE_ID"
                        ,CAST("ORIGINAL_ASN_LINE_FLAG" AS varchar(100) ) AS "ORIGINAL_ASN_LINE_FLAG"
                        ,CAST("VENDOR_CUM_SHIPPED_QUANTITY" AS float) AS "VENDOR_CUM_SHIPPED_QUANTITY"
                        ,CAST("NOTICE_UNIT_PRICE" AS float) AS "NOTICE_UNIT_PRICE"
                        ,CAST("TAX_NAME" AS varchar(1000) ) AS "TAX_NAME"
                        ,CAST("TAX_AMOUNT" AS float) AS "TAX_AMOUNT"
                        ,CAST("INVOICE_STATUS_CODE" AS varchar(100) ) AS "INVOICE_STATUS_CODE"
                        ,CAST("CUM_COMPARISON_FLAG" AS varchar(100) ) AS "CUM_COMPARISON_FLAG"
                        ,CAST("CONTAINER_NUM" AS varchar(100) ) AS "CONTAINER_NUM"
                        ,CAST("TRUCK_NUM" AS varchar(100) ) AS "TRUCK_NUM"
                        ,CAST("BAR_CODE_LABEL" AS varchar(100) ) AS "BAR_CODE_LABEL"
                        ,CAST("TRANSFER_PERCENTAGE" AS float) AS "TRANSFER_PERCENTAGE"
                        ,CAST("MRC_SHIPMENT_UNIT_PRICE" AS varchar(8000) ) AS "MRC_SHIPMENT_UNIT_PRICE"
                        ,CAST("MRC_TRANSFER_COST" AS varchar(8000) ) AS "MRC_TRANSFER_COST"
                        ,CAST("MRC_TRANSPORTATION_COST" AS varchar(8000) ) AS "MRC_TRANSPORTATION_COST"
                        ,CAST("MRC_NOTICE_UNIT_PRICE" AS varchar(8000) ) AS "MRC_NOTICE_UNIT_PRICE"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("COUNTRY_OF_ORIGIN_CODE" AS varchar(100) ) AS "COUNTRY_OF_ORIGIN_CODE"
                        ,CAST("OE_ORDER_HEADER_ID" AS float) AS "OE_ORDER_HEADER_ID"
                        ,CAST("OE_ORDER_LINE_ID" AS float) AS "OE_ORDER_LINE_ID"
                        ,CAST("CUSTOMER_ITEM_NUM" AS varchar(1000) ) AS "CUSTOMER_ITEM_NUM"
                        ,CAST("COST_GROUP_ID" AS float) AS "COST_GROUP_ID"
                        ,CAST("SECONDARY_QUANTITY_SHIPPED" AS float) AS "SECONDARY_QUANTITY_SHIPPED"
                        ,CAST("SECONDARY_QUANTITY_RECEIVED" AS float) AS "SECONDARY_QUANTITY_RECEIVED"
                        ,CAST("SECONDARY_UNIT_OF_MEASURE" AS varchar(100) ) AS "SECONDARY_UNIT_OF_MEASURE"
                        ,CAST("QC_GRADE" AS varchar(1000) ) AS "QC_GRADE"
                        ,CAST("MMT_TRANSACTION_ID" AS float) AS "MMT_TRANSACTION_ID"
                        ,CAST("ASN_LPN_ID" AS float) AS "ASN_LPN_ID"
                        ,CAST("AMOUNT" AS float) AS "AMOUNT"
                        ,CAST("AMOUNT_RECEIVED" AS float) AS "AMOUNT_RECEIVED"
                        ,CAST("JOB_ID" AS float) AS "JOB_ID"
                        ,CAST("TIMECARD_ID" AS float) AS "TIMECARD_ID"
                        ,CAST("TIMECARD_OVN" AS float) AS "TIMECARD_OVN"
                        ,CAST("OSA_FLAG" AS varchar(100) ) AS "OSA_FLAG"
                        ,CAST("REQUESTED_AMOUNT" AS float) AS "REQUESTED_AMOUNT"
                        ,CAST("MATERIAL_STORED_AMOUNT" AS float) AS "MATERIAL_STORED_AMOUNT"
                        ,CAST("APPROVAL_STATUS" AS varchar(100) ) AS "APPROVAL_STATUS"
                        ,CAST("AMOUNT_SHIPPED" AS float) AS "AMOUNT_SHIPPED"
                        ,CAST("LCM_SHIPMENT_LINE_ID" AS float) AS "LCM_SHIPMENT_LINE_ID"
                        ,CAST("UNIT_LANDED_COST" AS float) AS "UNIT_LANDED_COST"
                        ,CAST("EQUIPMENT_ID" AS float) AS "EQUIPMENT_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("SHIPMENT_LINE_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("SHIPMENT_LINE_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPMENT_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LINE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CATEGORY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_SHIPPED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_RECEIVED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_REVISION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_ITEM_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_LOT_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UOM_CONVERSION_RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPMENT_LINE_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_DOCUMENT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_RELEASE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_LINE_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PO_DISTRIBUTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUISITION_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQ_DISTRIBUTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ROUTING_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PACKING_SLIP"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROM_ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DELIVER_TO_PERSON_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EMPLOYEE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TO_ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TO_SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DELIVER_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHARGE_ACCOUNT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSPORTATION_ACCOUNT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPMENT_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSFER_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSPORTATION_COST"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("REASON_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("USSGL_TRANSACTION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GOVERNMENT_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRIMARY_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCESS_TRANSPORT_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCESS_TRANSPORT_RESPONSIBLE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCESS_TRANSPORT_AUTH_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ASN_LINE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORIGINAL_ASN_PARENT_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORIGINAL_ASN_LINE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_CUM_SHIPPED_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTICE_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVOICE_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CUM_COMPARISON_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTAINER_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRUCK_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BAR_CODE_LABEL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSFER_PERCENTAGE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_SHIPMENT_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_TRANSFER_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_TRANSPORTATION_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_NOTICE_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COUNTRY_OF_ORIGIN_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OE_ORDER_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OE_ORDER_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CUSTOMER_ITEM_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY_SHIPPED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY_RECEIVED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QC_GRADE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MMT_TRANSACTION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ASN_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT_RECEIVED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("JOB_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TIMECARD_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TIMECARD_OVN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OSA_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUESTED_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATERIAL_STORED_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT_SHIPPED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LCM_SHIPMENT_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_LANDED_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EQUIPMENT_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_RCV_SHIPMENT_LINES"
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
