

CREATE PROCEDURE "STG"."LOAD_STG_EBS_PO_REQUISITION_LINES_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        21/12/2022 8:37:38 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_PO_REQUISITION_LINES_ALL";
    
    
    Source                                      Destination                              
    ----------------------------------------    ---------------------------------------- 
    LND"."LND_EBS_PO_REQUISITION_LINES_ALL"    "STG"."STG_EBS_PO_REQUISITION_LINES_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-21    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_PO_REQUISITION_LINES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_PO_REQUISITION_LINES_ALL"
                (
                    "REQUISITION_LINE_ID"
                    ,"REQUISITION_HEADER_ID"
                    ,"LINE_NUM"
                    ,"LINE_TYPE_ID"
                    ,"CATEGORY_ID"
                    ,"ITEM_DESCRIPTION"
                    ,"UNIT_MEAS_LOOKUP_CODE"
                    ,"UNIT_PRICE"
                    ,"QUANTITY"
                    ,"DELIVER_TO_LOCATION_ID"
                    ,"TO_PERSON_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"SOURCE_TYPE_CODE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"ITEM_ID"
                    ,"ITEM_REVISION"
                    ,"QUANTITY_DELIVERED"
                    ,"SUGGESTED_BUYER_ID"
                    ,"ENCUMBERED_FLAG"
                    ,"RFQ_REQUIRED_FLAG"
                    ,"NEED_BY_DATE"
                    ,"LINE_LOCATION_ID"
                    ,"MODIFIED_BY_AGENT_FLAG"
                    ,"PARENT_REQ_LINE_ID"
                    ,"JUSTIFICATION"
                    ,"NOTE_TO_AGENT"
                    ,"NOTE_TO_RECEIVER"
                    ,"PURCHASING_AGENT_ID"
                    ,"DOCUMENT_TYPE_CODE"
                    ,"BLANKET_PO_HEADER_ID"
                    ,"BLANKET_PO_LINE_NUM"
                    ,"CURRENCY_CODE"
                    ,"RATE_TYPE"
                    ,"RATE_DATE"
                    ,"RATE"
                    ,"CURRENCY_UNIT_PRICE"
                    ,"SUGGESTED_VENDOR_NAME"
                    ,"SUGGESTED_VENDOR_LOCATION"
                    ,"SUGGESTED_VENDOR_CONTACT"
                    ,"SUGGESTED_VENDOR_PHONE"
                    ,"SUGGESTED_VENDOR_PRODUCT_CODE"
                    ,"UN_NUMBER_ID"
                    ,"HAZARD_CLASS_ID"
                    ,"MUST_USE_SUGG_VENDOR_FLAG"
                    ,"REFERENCE_NUM"
                    ,"ON_RFQ_FLAG"
                    ,"URGENT_FLAG"
                    ,"CANCEL_FLAG"
                    ,"SOURCE_ORGANIZATION_ID"
                    ,"SOURCE_SUBINVENTORY"
                    ,"DESTINATION_TYPE_CODE"
                    ,"DESTINATION_ORGANIZATION_ID"
                    ,"DESTINATION_SUBINVENTORY"
                    ,"QUANTITY_CANCELLED"
                    ,"CANCEL_DATE"
                    ,"CANCEL_REASON"
                    ,"CLOSED_CODE"
                    ,"AGENT_RETURN_NOTE"
                    ,"CHANGED_AFTER_RESEARCH_FLAG"
                    ,"VENDOR_ID"
                    ,"VENDOR_SITE_ID"
                    ,"VENDOR_CONTACT_ID"
                    ,"RESEARCH_AGENT_ID"
                    ,"ON_LINE_FLAG"
                    ,"WIP_ENTITY_ID"
                    ,"WIP_LINE_ID"
                    ,"WIP_REPETITIVE_SCHEDULE_ID"
                    ,"WIP_OPERATION_SEQ_NUM"
                    ,"WIP_RESOURCE_SEQ_NUM"
                    ,"ATTRIBUTE_CATEGORY"
                    ,"DESTINATION_CONTEXT"
                    ,"INVENTORY_SOURCE_CONTEXT"
                    ,"VENDOR_SOURCE_CONTEXT"
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
                    ,"BOM_RESOURCE_ID"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"GOVERNMENT_CONTEXT"
                    ,"CLOSED_REASON"
                    ,"CLOSED_DATE"
                    ,"TRANSACTION_REASON_CODE"
                    ,"QUANTITY_RECEIVED"
                    ,"SOURCE_REQ_LINE_ID"
                    ,"ORG_ID"
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
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"KANBAN_CARD_ID"
                    ,"CATALOG_TYPE"
                    ,"CATALOG_SOURCE"
                    ,"MANUFACTURER_ID"
                    ,"MANUFACTURER_NAME"
                    ,"MANUFACTURER_PART_NUMBER"
                    ,"REQUESTER_EMAIL"
                    ,"REQUESTER_FAX"
                    ,"REQUESTER_PHONE"
                    ,"UNSPSC_CODE"
                    ,"OTHER_CATEGORY_CODE"
                    ,"SUPPLIER_DUNS"
                    ,"TAX_STATUS_INDICATOR"
                    ,"PCARD_FLAG"
                    ,"NEW_SUPPLIER_FLAG"
                    ,"AUTO_RECEIVE_FLAG"
                    ,"TAX_USER_OVERRIDE_FLAG"
                    ,"TAX_CODE_ID"
                    ,"NOTE_TO_VENDOR"
                    ,"OKE_CONTRACT_VERSION_ID"
                    ,"OKE_CONTRACT_HEADER_ID"
                    ,"ITEM_SOURCE_ID"
                    ,"SUPPLIER_REF_NUMBER"
                    ,"SECONDARY_UNIT_OF_MEASURE"
                    ,"SECONDARY_QUANTITY"
                    ,"PREFERRED_GRADE"
                    ,"SECONDARY_QUANTITY_RECEIVED"
                    ,"SECONDARY_QUANTITY_CANCELLED"
                    ,"VMI_FLAG"
                    ,"AUCTION_HEADER_ID"
                    ,"AUCTION_DISPLAY_NUMBER"
                    ,"AUCTION_LINE_NUMBER"
                    ,"REQS_IN_POOL_FLAG"
                    ,"BID_NUMBER"
                    ,"BID_LINE_NUMBER"
                    ,"NONCAT_TEMPLATE_ID"
                    ,"SUGGESTED_VENDOR_CONTACT_FAX"
                    ,"SUGGESTED_VENDOR_CONTACT_EMAIL"
                    ,"AMOUNT"
                    ,"CURRENCY_AMOUNT"
                    ,"LABOR_REQ_LINE_ID"
                    ,"JOB_ID"
                    ,"JOB_LONG_DESCRIPTION"
                    ,"CONTRACTOR_STATUS"
                    ,"CONTACT_INFORMATION"
                    ,"SUGGESTED_SUPPLIER_FLAG"
                    ,"CANDIDATE_SCREENING_REQD_FLAG"
                    ,"CANDIDATE_FIRST_NAME"
                    ,"CANDIDATE_LAST_NAME"
                    ,"ASSIGNMENT_END_DATE"
                    ,"OVERTIME_ALLOWED_FLAG"
                    ,"CONTRACTOR_REQUISITION_FLAG"
                    ,"DROP_SHIP_FLAG"
                    ,"ASSIGNMENT_START_DATE"
                    ,"ORDER_TYPE_LOOKUP_CODE"
                    ,"PURCHASE_BASIS"
                    ,"MATCHING_BASIS"
                    ,"NEGOTIATED_BY_PREPARER_FLAG"
                    ,"SHIP_METHOD"
                    ,"ESTIMATED_PICKUP_DATE"
                    ,"SUPPLIER_NOTIFIED_FOR_CANCEL"
                    ,"BASE_UNIT_PRICE"
                    ,"AT_SOURCING_FLAG"
                    ,"TAX_ATTRIBUTE_UPDATE_CODE"
                    ,"TAX_NAME"
                    ,"TRANSFERRED_TO_OE_FLAG"
                    ,"CONFORMED_LINE_ID"
                    ,"AMENDMENT_TYPE"
                    ,"AMENDMENT_STATUS"
                    ,"LINE_NUM_DISPLAY"
                    ,"GROUP_LINE_ID"
                    ,"CLM_INFO_FLAG"
                    ,"CLM_OPTION_INDICATOR"
                    ,"CLM_BASE_LINE_NUM"
                    ,"CLM_OPTION_NUM"
                    ,"CLM_OPTION_FROM_DATE"
                    ,"CLM_OPTION_TO_DATE"
                    ,"CLM_FUNDED_FLAG"
                    ,"UDA_TEMPLATE_ID"
                    ,"CONTRACT_TYPE"
                    ,"COST_CONSTRAINT"
                    ,"AMENDMENT_RESPONSE_REASON"
                    ,"CLM_PERIOD_PERF_START_DATE"
                    ,"CLM_PERIOD_PERF_END_DATE"
                    ,"CLM_EXTENDED_ITEM_DESCRIPTION"
                    ,"CLM_OPTION_EXERCISED"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("REQUISITION_LINE_ID" AS float) AS "REQUISITION_LINE_ID"
                        ,CAST("REQUISITION_HEADER_ID" AS float) AS "REQUISITION_HEADER_ID"
                        ,CAST("LINE_NUM" AS float) AS "LINE_NUM"
                        ,CAST("LINE_TYPE_ID" AS float) AS "LINE_TYPE_ID"
                        ,CAST("CATEGORY_ID" AS float) AS "CATEGORY_ID"
                        ,CAST("ITEM_DESCRIPTION" AS varchar(1000) ) AS "ITEM_DESCRIPTION"
                        ,CAST("UNIT_MEAS_LOOKUP_CODE" AS varchar(100) ) AS "UNIT_MEAS_LOOKUP_CODE"
                        ,CAST("UNIT_PRICE" AS float) AS "UNIT_PRICE"
                        ,CAST("QUANTITY" AS float) AS "QUANTITY"
                        ,CAST("DELIVER_TO_LOCATION_ID" AS float) AS "DELIVER_TO_LOCATION_ID"
                        ,CAST("TO_PERSON_ID" AS float) AS "TO_PERSON_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("SOURCE_TYPE_CODE" AS varchar(100) ) AS "SOURCE_TYPE_CODE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("ITEM_ID" AS float) AS "ITEM_ID"
                        ,CAST("ITEM_REVISION" AS varchar(100) ) AS "ITEM_REVISION"
                        ,CAST("QUANTITY_DELIVERED" AS float) AS "QUANTITY_DELIVERED"
                        ,CAST("SUGGESTED_BUYER_ID" AS float) AS "SUGGESTED_BUYER_ID"
                        ,CAST("ENCUMBERED_FLAG" AS varchar(100) ) AS "ENCUMBERED_FLAG"
                        ,CAST("RFQ_REQUIRED_FLAG" AS varchar(100) ) AS "RFQ_REQUIRED_FLAG"
                        ,CAST("NEED_BY_DATE" AS datetime2) AS "NEED_BY_DATE"
                        ,CAST("LINE_LOCATION_ID" AS float) AS "LINE_LOCATION_ID"
                        ,CAST("MODIFIED_BY_AGENT_FLAG" AS varchar(100) ) AS "MODIFIED_BY_AGENT_FLAG"
                        ,CAST("PARENT_REQ_LINE_ID" AS float) AS "PARENT_REQ_LINE_ID"
                        ,CAST("JUSTIFICATION" AS varchar(1000) ) AS "JUSTIFICATION"
                        ,CAST("NOTE_TO_AGENT" AS varchar(1000) ) AS "NOTE_TO_AGENT"
                        ,CAST("NOTE_TO_RECEIVER" AS varchar(1000) ) AS "NOTE_TO_RECEIVER"
                        ,CAST("PURCHASING_AGENT_ID" AS float) AS "PURCHASING_AGENT_ID"
                        ,CAST("DOCUMENT_TYPE_CODE" AS varchar(100) ) AS "DOCUMENT_TYPE_CODE"
                        ,CAST("BLANKET_PO_HEADER_ID" AS float) AS "BLANKET_PO_HEADER_ID"
                        ,CAST("BLANKET_PO_LINE_NUM" AS float) AS "BLANKET_PO_LINE_NUM"
                        ,CAST("CURRENCY_CODE" AS varchar(100) ) AS "CURRENCY_CODE"
                        ,CAST("RATE_TYPE" AS varchar(100) ) AS "RATE_TYPE"
                        ,CAST("RATE_DATE" AS datetime2) AS "RATE_DATE"
                        ,CAST("RATE" AS float) AS "RATE"
                        ,CAST("CURRENCY_UNIT_PRICE" AS float) AS "CURRENCY_UNIT_PRICE"
                        ,CAST("SUGGESTED_VENDOR_NAME" AS varchar(1000) ) AS "SUGGESTED_VENDOR_NAME"
                        ,CAST("SUGGESTED_VENDOR_LOCATION" AS varchar(1000) ) AS "SUGGESTED_VENDOR_LOCATION"
                        ,CAST("SUGGESTED_VENDOR_CONTACT" AS varchar(1000) ) AS "SUGGESTED_VENDOR_CONTACT"
                        ,CAST("SUGGESTED_VENDOR_PHONE" AS varchar(100) ) AS "SUGGESTED_VENDOR_PHONE"
                        ,CAST("SUGGESTED_VENDOR_PRODUCT_CODE" AS varchar(100) ) AS "SUGGESTED_VENDOR_PRODUCT_CODE"
                        ,CAST("UN_NUMBER_ID" AS float) AS "UN_NUMBER_ID"
                        ,CAST("HAZARD_CLASS_ID" AS float) AS "HAZARD_CLASS_ID"
                        ,CAST("MUST_USE_SUGG_VENDOR_FLAG" AS varchar(100) ) AS "MUST_USE_SUGG_VENDOR_FLAG"
                        ,CAST("REFERENCE_NUM" AS varchar(100) ) AS "REFERENCE_NUM"
                        ,CAST("ON_RFQ_FLAG" AS varchar(100) ) AS "ON_RFQ_FLAG"
                        ,CAST("URGENT_FLAG" AS varchar(100) ) AS "URGENT_FLAG"
                        ,CAST("CANCEL_FLAG" AS varchar(100) ) AS "CANCEL_FLAG"
                        ,CAST("SOURCE_ORGANIZATION_ID" AS float) AS "SOURCE_ORGANIZATION_ID"
                        ,CAST("SOURCE_SUBINVENTORY" AS varchar(100) ) AS "SOURCE_SUBINVENTORY"
                        ,CAST("DESTINATION_TYPE_CODE" AS varchar(100) ) AS "DESTINATION_TYPE_CODE"
                        ,CAST("DESTINATION_ORGANIZATION_ID" AS float) AS "DESTINATION_ORGANIZATION_ID"
                        ,CAST("DESTINATION_SUBINVENTORY" AS varchar(100) ) AS "DESTINATION_SUBINVENTORY"
                        ,CAST("QUANTITY_CANCELLED" AS float) AS "QUANTITY_CANCELLED"
                        ,CAST("CANCEL_DATE" AS datetime2) AS "CANCEL_DATE"
                        ,CAST("CANCEL_REASON" AS varchar(1000) ) AS "CANCEL_REASON"
                        ,CAST("CLOSED_CODE" AS varchar(100) ) AS "CLOSED_CODE"
                        ,CAST("AGENT_RETURN_NOTE" AS varchar(1000) ) AS "AGENT_RETURN_NOTE"
                        ,CAST("CHANGED_AFTER_RESEARCH_FLAG" AS varchar(100) ) AS "CHANGED_AFTER_RESEARCH_FLAG"
                        ,CAST("VENDOR_ID" AS float) AS "VENDOR_ID"
                        ,CAST("VENDOR_SITE_ID" AS float) AS "VENDOR_SITE_ID"
                        ,CAST("VENDOR_CONTACT_ID" AS float) AS "VENDOR_CONTACT_ID"
                        ,CAST("RESEARCH_AGENT_ID" AS float) AS "RESEARCH_AGENT_ID"
                        ,CAST("ON_LINE_FLAG" AS varchar(100) ) AS "ON_LINE_FLAG"
                        ,CAST("WIP_ENTITY_ID" AS float) AS "WIP_ENTITY_ID"
                        ,CAST("WIP_LINE_ID" AS float) AS "WIP_LINE_ID"
                        ,CAST("WIP_REPETITIVE_SCHEDULE_ID" AS float) AS "WIP_REPETITIVE_SCHEDULE_ID"
                        ,CAST("WIP_OPERATION_SEQ_NUM" AS float) AS "WIP_OPERATION_SEQ_NUM"
                        ,CAST("WIP_RESOURCE_SEQ_NUM" AS float) AS "WIP_RESOURCE_SEQ_NUM"
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "ATTRIBUTE_CATEGORY"
                        ,CAST("DESTINATION_CONTEXT" AS varchar(100) ) AS "DESTINATION_CONTEXT"
                        ,CAST("INVENTORY_SOURCE_CONTEXT" AS varchar(100) ) AS "INVENTORY_SOURCE_CONTEXT"
                        ,CAST("VENDOR_SOURCE_CONTEXT" AS varchar(100) ) AS "VENDOR_SOURCE_CONTEXT"
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
                        ,CAST("BOM_RESOURCE_ID" AS float) AS "BOM_RESOURCE_ID"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("USSGL_TRANSACTION_CODE" AS varchar(100) ) AS "USSGL_TRANSACTION_CODE"
                        ,CAST("GOVERNMENT_CONTEXT" AS varchar(100) ) AS "GOVERNMENT_CONTEXT"
                        ,CAST("CLOSED_REASON" AS varchar(1000) ) AS "CLOSED_REASON"
                        ,CAST("CLOSED_DATE" AS datetime2) AS "CLOSED_DATE"
                        ,CAST("TRANSACTION_REASON_CODE" AS varchar(100) ) AS "TRANSACTION_REASON_CODE"
                        ,CAST("QUANTITY_RECEIVED" AS float) AS "QUANTITY_RECEIVED"
                        ,CAST("SOURCE_REQ_LINE_ID" AS float) AS "SOURCE_REQ_LINE_ID"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("GLOBAL_ATTRIBUTE1" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE1"
                        ,CAST("GLOBAL_ATTRIBUTE2" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE2"
                        ,CAST("GLOBAL_ATTRIBUTE3" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE3"
                        ,CAST("GLOBAL_ATTRIBUTE4" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE4"
                        ,CAST("GLOBAL_ATTRIBUTE5" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE5"
                        ,CAST("GLOBAL_ATTRIBUTE6" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE6"
                        ,CAST("GLOBAL_ATTRIBUTE7" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE7"
                        ,CAST("GLOBAL_ATTRIBUTE8" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE8"
                        ,CAST("GLOBAL_ATTRIBUTE9" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE9"
                        ,CAST("GLOBAL_ATTRIBUTE10" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE10"
                        ,CAST("GLOBAL_ATTRIBUTE11" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE11"
                        ,CAST("GLOBAL_ATTRIBUTE12" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE12"
                        ,CAST("GLOBAL_ATTRIBUTE13" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE13"
                        ,CAST("GLOBAL_ATTRIBUTE14" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE14"
                        ,CAST("GLOBAL_ATTRIBUTE15" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE15"
                        ,CAST("GLOBAL_ATTRIBUTE16" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE16"
                        ,CAST("GLOBAL_ATTRIBUTE17" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE17"
                        ,CAST("GLOBAL_ATTRIBUTE18" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE18"
                        ,CAST("GLOBAL_ATTRIBUTE19" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE19"
                        ,CAST("GLOBAL_ATTRIBUTE20" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE20"
                        ,CAST("GLOBAL_ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "GLOBAL_ATTRIBUTE_CATEGORY"
                        ,CAST("KANBAN_CARD_ID" AS float) AS "KANBAN_CARD_ID"
                        ,CAST("CATALOG_TYPE" AS varchar(100) ) AS "CATALOG_TYPE"
                        ,CAST("CATALOG_SOURCE" AS varchar(100) ) AS "CATALOG_SOURCE"
                        ,CAST("MANUFACTURER_ID" AS float) AS "MANUFACTURER_ID"
                        ,CAST("MANUFACTURER_NAME" AS varchar(1000) ) AS "MANUFACTURER_NAME"
                        ,CAST("MANUFACTURER_PART_NUMBER" AS varchar(1000) ) AS "MANUFACTURER_PART_NUMBER"
                        ,CAST("REQUESTER_EMAIL" AS varchar(1000) ) AS "REQUESTER_EMAIL"
                        ,CAST("REQUESTER_FAX" AS varchar(1000) ) AS "REQUESTER_FAX"
                        ,CAST("REQUESTER_PHONE" AS varchar(1000) ) AS "REQUESTER_PHONE"
                        ,CAST("UNSPSC_CODE" AS varchar(100) ) AS "UNSPSC_CODE"
                        ,CAST("OTHER_CATEGORY_CODE" AS varchar(100) ) AS "OTHER_CATEGORY_CODE"
                        ,CAST("SUPPLIER_DUNS" AS varchar(1000) ) AS "SUPPLIER_DUNS"
                        ,CAST("TAX_STATUS_INDICATOR" AS varchar(100) ) AS "TAX_STATUS_INDICATOR"
                        ,CAST("PCARD_FLAG" AS varchar(100) ) AS "PCARD_FLAG"
                        ,CAST("NEW_SUPPLIER_FLAG" AS varchar(100) ) AS "NEW_SUPPLIER_FLAG"
                        ,CAST("AUTO_RECEIVE_FLAG" AS varchar(100) ) AS "AUTO_RECEIVE_FLAG"
                        ,CAST("TAX_USER_OVERRIDE_FLAG" AS varchar(100) ) AS "TAX_USER_OVERRIDE_FLAG"
                        ,CAST("TAX_CODE_ID" AS float) AS "TAX_CODE_ID"
                        ,CAST("NOTE_TO_VENDOR" AS varchar(1000) ) AS "NOTE_TO_VENDOR"
                        ,CAST("OKE_CONTRACT_VERSION_ID" AS float) AS "OKE_CONTRACT_VERSION_ID"
                        ,CAST("OKE_CONTRACT_HEADER_ID" AS float) AS "OKE_CONTRACT_HEADER_ID"
                        ,CAST("ITEM_SOURCE_ID" AS float) AS "ITEM_SOURCE_ID"
                        ,CAST("SUPPLIER_REF_NUMBER" AS varchar(1000) ) AS "SUPPLIER_REF_NUMBER"
                        ,CAST("SECONDARY_UNIT_OF_MEASURE" AS varchar(100) ) AS "SECONDARY_UNIT_OF_MEASURE"
                        ,CAST("SECONDARY_QUANTITY" AS float) AS "SECONDARY_QUANTITY"
                        ,CAST("PREFERRED_GRADE" AS varchar(1000) ) AS "PREFERRED_GRADE"
                        ,CAST("SECONDARY_QUANTITY_RECEIVED" AS float) AS "SECONDARY_QUANTITY_RECEIVED"
                        ,CAST("SECONDARY_QUANTITY_CANCELLED" AS float) AS "SECONDARY_QUANTITY_CANCELLED"
                        ,CAST("VMI_FLAG" AS varchar(100) ) AS "VMI_FLAG"
                        ,CAST("AUCTION_HEADER_ID" AS float) AS "AUCTION_HEADER_ID"
                        ,CAST("AUCTION_DISPLAY_NUMBER" AS varchar(100) ) AS "AUCTION_DISPLAY_NUMBER"
                        ,CAST("AUCTION_LINE_NUMBER" AS float) AS "AUCTION_LINE_NUMBER"
                        ,CAST("REQS_IN_POOL_FLAG" AS varchar(100) ) AS "REQS_IN_POOL_FLAG"
                        ,CAST("BID_NUMBER" AS float) AS "BID_NUMBER"
                        ,CAST("BID_LINE_NUMBER" AS float) AS "BID_LINE_NUMBER"
                        ,CAST("NONCAT_TEMPLATE_ID" AS float) AS "NONCAT_TEMPLATE_ID"
                        ,CAST("SUGGESTED_VENDOR_CONTACT_FAX" AS varchar(100) ) AS "SUGGESTED_VENDOR_CONTACT_FAX"
                        ,CAST("SUGGESTED_VENDOR_CONTACT_EMAIL" AS varchar(8000) ) AS "SUGGESTED_VENDOR_CONTACT_EMAIL"
                        ,CAST("AMOUNT" AS float) AS "AMOUNT"
                        ,CAST("CURRENCY_AMOUNT" AS float) AS "CURRENCY_AMOUNT"
                        ,CAST("LABOR_REQ_LINE_ID" AS float) AS "LABOR_REQ_LINE_ID"
                        ,CAST("JOB_ID" AS float) AS "JOB_ID"
                        ,CAST("JOB_LONG_DESCRIPTION" AS varchar(8000) ) AS "JOB_LONG_DESCRIPTION"
                        ,CAST("CONTRACTOR_STATUS" AS varchar(100) ) AS "CONTRACTOR_STATUS"
                        ,CAST("CONTACT_INFORMATION" AS varchar(1000) ) AS "CONTACT_INFORMATION"
                        ,CAST("SUGGESTED_SUPPLIER_FLAG" AS varchar(100) ) AS "SUGGESTED_SUPPLIER_FLAG"
                        ,CAST("CANDIDATE_SCREENING_REQD_FLAG" AS varchar(100) ) AS "CANDIDATE_SCREENING_REQD_FLAG"
                        ,CAST("CANDIDATE_FIRST_NAME" AS varchar(1000) ) AS "CANDIDATE_FIRST_NAME"
                        ,CAST("CANDIDATE_LAST_NAME" AS varchar(1000) ) AS "CANDIDATE_LAST_NAME"
                        ,CAST("ASSIGNMENT_END_DATE" AS datetime2) AS "ASSIGNMENT_END_DATE"
                        ,CAST("OVERTIME_ALLOWED_FLAG" AS varchar(100) ) AS "OVERTIME_ALLOWED_FLAG"
                        ,CAST("CONTRACTOR_REQUISITION_FLAG" AS varchar(100) ) AS "CONTRACTOR_REQUISITION_FLAG"
                        ,CAST("DROP_SHIP_FLAG" AS varchar(100) ) AS "DROP_SHIP_FLAG"
                        ,CAST("ASSIGNMENT_START_DATE" AS datetime2) AS "ASSIGNMENT_START_DATE"
                        ,CAST("ORDER_TYPE_LOOKUP_CODE" AS varchar(100) ) AS "ORDER_TYPE_LOOKUP_CODE"
                        ,CAST("PURCHASE_BASIS" AS varchar(100) ) AS "PURCHASE_BASIS"
                        ,CAST("MATCHING_BASIS" AS varchar(100) ) AS "MATCHING_BASIS"
                        ,CAST("NEGOTIATED_BY_PREPARER_FLAG" AS varchar(100) ) AS "NEGOTIATED_BY_PREPARER_FLAG"
                        ,CAST("SHIP_METHOD" AS varchar(100) ) AS "SHIP_METHOD"
                        ,CAST("ESTIMATED_PICKUP_DATE" AS datetime2) AS "ESTIMATED_PICKUP_DATE"
                        ,CAST("SUPPLIER_NOTIFIED_FOR_CANCEL" AS varchar(100) ) AS "SUPPLIER_NOTIFIED_FOR_CANCEL"
                        ,CAST("BASE_UNIT_PRICE" AS float) AS "BASE_UNIT_PRICE"
                        ,CAST("AT_SOURCING_FLAG" AS varchar(100) ) AS "AT_SOURCING_FLAG"
                        ,CAST("TAX_ATTRIBUTE_UPDATE_CODE" AS varchar(100) ) AS "TAX_ATTRIBUTE_UPDATE_CODE"
                        ,CAST("TAX_NAME" AS varchar(100) ) AS "TAX_NAME"
                        ,CAST("TRANSFERRED_TO_OE_FLAG" AS varchar(100) ) AS "TRANSFERRED_TO_OE_FLAG"
                        ,CAST("CONFORMED_LINE_ID" AS float) AS "CONFORMED_LINE_ID"
                        ,CAST("AMENDMENT_TYPE" AS varchar(100) ) AS "AMENDMENT_TYPE"
                        ,CAST("AMENDMENT_STATUS" AS varchar(100) ) AS "AMENDMENT_STATUS"
                        ,CAST("LINE_NUM_DISPLAY" AS varchar(1000) ) AS "LINE_NUM_DISPLAY"
                        ,CAST("GROUP_LINE_ID" AS float) AS "GROUP_LINE_ID"
                        ,CAST("CLM_INFO_FLAG" AS varchar(100) ) AS "CLM_INFO_FLAG"
                        ,CAST("CLM_OPTION_INDICATOR" AS varchar(100) ) AS "CLM_OPTION_INDICATOR"
                        ,CAST("CLM_BASE_LINE_NUM" AS float) AS "CLM_BASE_LINE_NUM"
                        ,CAST("CLM_OPTION_NUM" AS float) AS "CLM_OPTION_NUM"
                        ,CAST("CLM_OPTION_FROM_DATE" AS datetime2) AS "CLM_OPTION_FROM_DATE"
                        ,CAST("CLM_OPTION_TO_DATE" AS datetime2) AS "CLM_OPTION_TO_DATE"
                        ,CAST("CLM_FUNDED_FLAG" AS varchar(100) ) AS "CLM_FUNDED_FLAG"
                        ,CAST("UDA_TEMPLATE_ID" AS float) AS "UDA_TEMPLATE_ID"
                        ,CAST("CONTRACT_TYPE" AS varchar(1000) ) AS "CONTRACT_TYPE"
                        ,CAST("COST_CONSTRAINT" AS varchar(1000) ) AS "COST_CONSTRAINT"
                        ,CAST("AMENDMENT_RESPONSE_REASON" AS varchar(8000) ) AS "AMENDMENT_RESPONSE_REASON"
                        ,CAST("CLM_PERIOD_PERF_START_DATE" AS datetime2) AS "CLM_PERIOD_PERF_START_DATE"
                        ,CAST("CLM_PERIOD_PERF_END_DATE" AS datetime2) AS "CLM_PERIOD_PERF_END_DATE"
                        ,CAST("CLM_EXTENDED_ITEM_DESCRIPTION" AS varchar(8000) ) AS "CLM_EXTENDED_ITEM_DESCRIPTION"
                        ,CAST("CLM_OPTION_EXERCISED" AS varchar(100) ) AS "CLM_OPTION_EXERCISED"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("REQUISITION_LINE_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("REQUISITION_LINE_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUISITION_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LINE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LINE_TYPE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CATEGORY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_MEAS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DELIVER_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TO_PERSON_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_REVISION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_DELIVERED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_BUYER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENCUMBERED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RFQ_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NEED_BY_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LINE_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MODIFIED_BY_AGENT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARENT_REQ_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("JUSTIFICATION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_AGENT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_RECEIVER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PURCHASING_AGENT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DOCUMENT_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BLANKET_PO_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BLANKET_PO_LINE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_LOCATION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_CONTACT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_PHONE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_PRODUCT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UN_NUMBER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HAZARD_CLASS_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MUST_USE_SUGG_VENDOR_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REFERENCE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ON_RFQ_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("URGENT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANCEL_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_TYPE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_CANCELLED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANCEL_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANCEL_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLOSED_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AGENT_RETURN_NOTE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHANGED_AFTER_RESEARCH_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_SITE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_CONTACT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RESEARCH_AGENT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ON_LINE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_ENTITY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_REPETITIVE_SCHEDULE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_OPERATION_SEQ_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIP_RESOURCE_SEQ_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESTINATION_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_SOURCE_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_SOURCE_CONTEXT"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("BOM_RESOURCE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("USSGL_TRANSACTION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GOVERNMENT_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLOSED_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLOSED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSACTION_REASON_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUANTITY_RECEIVED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SOURCE_REQ_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORG_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE16"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE17"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE18"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE19"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE20"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("KANBAN_CARD_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CATALOG_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CATALOG_SOURCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MANUFACTURER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MANUFACTURER_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MANUFACTURER_PART_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUESTER_EMAIL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUESTER_FAX"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUESTER_PHONE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNSPSC_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OTHER_CATEGORY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLIER_DUNS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_STATUS_INDICATOR"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PCARD_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NEW_SUPPLIER_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTO_RECEIVE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_USER_OVERRIDE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_CODE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_VENDOR"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OKE_CONTRACT_VERSION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OKE_CONTRACT_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_SOURCE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLIER_REF_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_UNIT_OF_MEASURE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PREFERRED_GRADE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY_RECEIVED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_QUANTITY_CANCELLED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VMI_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUCTION_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUCTION_DISPLAY_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUCTION_LINE_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQS_IN_POOL_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BID_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BID_LINE_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NONCAT_TEMPLATE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_CONTACT_FAX"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_VENDOR_CONTACT_EMAIL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LABOR_REQ_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("JOB_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("JOB_LONG_DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTRACTOR_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTACT_INFORMATION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_SUPPLIER_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANDIDATE_SCREENING_REQD_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANDIDATE_FIRST_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANDIDATE_LAST_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ASSIGNMENT_END_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OVERTIME_ALLOWED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTRACTOR_REQUISITION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DROP_SHIP_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ASSIGNMENT_START_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORDER_TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PURCHASE_BASIS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATCHING_BASIS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NEGOTIATED_BY_PREPARER_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_METHOD"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ESTIMATED_PICKUP_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLIER_NOTIFIED_FOR_CANCEL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BASE_UNIT_PRICE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AT_SOURCING_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_ATTRIBUTE_UPDATE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRANSFERRED_TO_OE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONFORMED_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMENDMENT_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMENDMENT_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LINE_NUM_DISPLAY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GROUP_LINE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_INFO_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_OPTION_INDICATOR"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_BASE_LINE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_OPTION_NUM"AS NVARCHAR(MAX)),'NA')
                        ,'||')+CONCAT_WS( '||','||'
                            ,COALESCE(CAST("CLM_OPTION_FROM_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_OPTION_TO_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_FUNDED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UDA_TEMPLATE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTRACT_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_CONSTRAINT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMENDMENT_RESPONSE_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_PERIOD_PERF_START_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_PERIOD_PERF_END_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_EXTENDED_ITEM_DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_OPTION_EXERCISED"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_PO_REQUISITION_LINES_ALL"
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
