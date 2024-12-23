﻿

CREATE PROCEDURE "HSTG"."LOAD_HSTG_EBS_PO_REQUISITION_LINES_ALL"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        21/12/2022 8:37:39 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_PO_REQUISITION_LINES_ALL";
    
    Source                                      Destination                                
    ----------------------------------------    ----------------------------------------- 
    STG"."STG_EBS_PO_REQUISITION_LINES_ALL"    "HSTG"."HSTG_EBS_PO_REQUISITION_LINES_ALL" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_PO_REQUISITION_LINES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_PO_REQUISITION_LINES_ALL"
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
                    ,"META_RECORD_KEY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                    ,'99991231 23:59:59' AS "META_EXPIRY_DATETIME"
                    ,'UPSERT' AS "META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,'Y' AS "META_CURRENT_RECORD_INDICATOR"
                    ,'N' AS "META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                FROM "STG"."STG_EBS_PO_REQUISITION_LINES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_PO_REQUISITION_LINES_ALL" H WHERE H.META_CURRENT_RECORD_INDICATOR = 'Y' AND META_DELETE_INDICATOR = 'N' AND H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)



            /* Step 3:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE H  SET META_CURRENT_RECORD_INDICATOR='N'  , META_EXPIRY_DATETIME=CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) 
                FROM "HSTG"."HSTG_EBS_PO_REQUISITION_LINES_ALL" H
                WHERE "META_DELETE_INDICATOR" = 'N' AND EXISTS (SELECT 1 FROM "STG"."STG_EBS_PO_REQUISITION_LINES_ALL" S WHERE H.META_RECORD_CHECKSUM != S.META_RECORD_CHECKSUM 
                    AND H.META_RECORD_KEY = S.META_RECORD_KEY
                )


            TRUNCATE TABLE "LND"."LND_EBS_PO_REQUISITION_LINES_ALL"
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
