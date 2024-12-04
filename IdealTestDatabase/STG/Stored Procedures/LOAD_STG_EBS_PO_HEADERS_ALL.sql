

CREATE PROCEDURE "STG"."LOAD_STG_EBS_PO_HEADERS_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_PO_HEADERS_ALL";
    
    
    Source                            Destination                    
    ------------------------------    ------------------------------ 
    LND"."LND_EBS_PO_HEADERS_ALL"    "STG"."STG_EBS_PO_HEADERS_ALL" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_PO_HEADERS_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_PO_HEADERS_ALL"
                (
                    "PO_HEADER_ID"
                    ,"AGENT_ID"
                    ,"TYPE_LOOKUP_CODE"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"SEGMENT1"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"VENDOR_ID"
                    ,"VENDOR_SITE_ID"
                    ,"VENDOR_CONTACT_ID"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"BILL_TO_LOCATION_ID"
                    ,"TERMS_ID"
                    ,"SHIP_VIA_LOOKUP_CODE"
                    ,"FOB_LOOKUP_CODE"
                    ,"FREIGHT_TERMS_LOOKUP_CODE"
                    ,"STATUS_LOOKUP_CODE"
                    ,"CURRENCY_CODE"
                    ,"RATE_TYPE"
                    ,"RATE_DATE"
                    ,"RATE"
                    ,"FROM_HEADER_ID"
                    ,"FROM_TYPE_LOOKUP_CODE"
                    ,"START_DATE"
                    ,"END_DATE"
                    ,"BLANKET_TOTAL_AMOUNT"
                    ,"AUTHORIZATION_STATUS"
                    ,"REVISION_NUM"
                    ,"REVISED_DATE"
                    ,"APPROVED_FLAG"
                    ,"APPROVED_DATE"
                    ,"AMOUNT_LIMIT"
                    ,"MIN_RELEASE_AMOUNT"
                    ,"NOTE_TO_AUTHORIZER"
                    ,"NOTE_TO_VENDOR"
                    ,"NOTE_TO_RECEIVER"
                    ,"PRINT_COUNT"
                    ,"PRINTED_DATE"
                    ,"VENDOR_ORDER_NUM"
                    ,"CONFIRMING_ORDER_FLAG"
                    ,"COMMENTS"
                    ,"REPLY_DATE"
                    ,"REPLY_METHOD_LOOKUP_CODE"
                    ,"RFQ_CLOSE_DATE"
                    ,"QUOTE_TYPE_LOOKUP_CODE"
                    ,"QUOTATION_CLASS_CODE"
                    ,"QUOTE_WARNING_DELAY_UNIT"
                    ,"QUOTE_WARNING_DELAY"
                    ,"QUOTE_VENDOR_QUOTE_NUMBER"
                    ,"ACCEPTANCE_REQUIRED_FLAG"
                    ,"ACCEPTANCE_DUE_DATE"
                    ,"CLOSED_DATE"
                    ,"USER_HOLD_FLAG"
                    ,"APPROVAL_REQUIRED_FLAG"
                    ,"CANCEL_FLAG"
                    ,"FIRM_STATUS_LOOKUP_CODE"
                    ,"FIRM_DATE"
                    ,"FROZEN_FLAG"
                    ,"SUPPLY_AGREEMENT_FLAG"
                    ,"EDI_PROCESSED_FLAG"
                    ,"EDI_PROCESSED_STATUS"
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
                    ,"CLOSED_CODE"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"GOVERNMENT_CONTEXT"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"ORG_ID"
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
                    ,"INTERFACE_SOURCE_CODE"
                    ,"REFERENCE_NUM"
                    ,"WF_ITEM_TYPE"
                    ,"WF_ITEM_KEY"
                    ,"MRC_RATE_TYPE"
                    ,"MRC_RATE_DATE"
                    ,"MRC_RATE"
                    ,"PCARD_ID"
                    ,"PRICE_UPDATE_TOLERANCE"
                    ,"PAY_ON_CODE"
                    ,"XML_FLAG"
                    ,"XML_SEND_DATE"
                    ,"XML_CHANGE_SEND_DATE"
                    ,"GLOBAL_AGREEMENT_FLAG"
                    ,"CONSIGNED_CONSUMPTION_FLAG"
                    ,"CBC_ACCOUNTING_DATE"
                    ,"CONSUME_REQ_DEMAND_FLAG"
                    ,"CHANGE_REQUESTED_BY"
                    ,"SHIPPING_CONTROL"
                    ,"CONTERMS_EXIST_FLAG"
                    ,"CONTERMS_ARTICLES_UPD_DATE"
                    ,"CONTERMS_DELIV_UPD_DATE"
                    ,"ENCUMBRANCE_REQUIRED_FLAG"
                    ,"PENDING_SIGNATURE_FLAG"
                    ,"CHANGE_SUMMARY"
                    ,"DOCUMENT_CREATION_METHOD"
                    ,"SUBMIT_DATE"
                    ,"SUPPLIER_NOTIF_METHOD"
                    ,"FAX"
                    ,"EMAIL_ADDRESS"
                    ,"RETRO_PRICE_COMM_UPDATES_FLAG"
                    ,"RETRO_PRICE_APPLY_UPDATES_FLAG"
                    ,"UPDATE_SOURCING_RULES_FLAG"
                    ,"AUTO_SOURCING_FLAG"
                    ,"CREATED_LANGUAGE"
                    ,"CPA_REFERENCE"
                    ,"LOCK_OWNER_ROLE"
                    ,"LOCK_OWNER_USER_ID"
                    ,"SUPPLIER_AUTH_ENABLED_FLAG"
                    ,"CAT_ADMIN_AUTH_ENABLED_FLAG"
                    ,"STYLE_ID"
                    ,"TAX_ATTRIBUTE_UPDATE_CODE"
                    ,"LAST_UPDATED_PROGRAM"
                    ,"ENABLE_ALL_SITES"
                    ,"PAY_WHEN_PAID"
                    ,"COMM_REV_NUM"
                    ,"CLM_DOCUMENT_NUMBER"
                    ,"OTM_STATUS_CODE"
                    ,"OTM_RECOVERY_FLAG"
                    ,"AME_APPROVAL_ID"
                    ,"AME_TRANSACTION_TYPE"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("PO_HEADER_ID" AS float) AS "PO_HEADER_ID"
                        ,CAST("AGENT_ID" AS float) AS "AGENT_ID"
                        ,CAST("TYPE_LOOKUP_CODE" AS varchar(100) ) AS "TYPE_LOOKUP_CODE"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("SEGMENT1" AS varchar(100) ) AS "SEGMENT1"
                        ,CAST("SUMMARY_FLAG" AS varchar(100) ) AS "SUMMARY_FLAG"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("SEGMENT2" AS varchar(100) ) AS "SEGMENT2"
                        ,CAST("SEGMENT3" AS varchar(100) ) AS "SEGMENT3"
                        ,CAST("SEGMENT4" AS varchar(100) ) AS "SEGMENT4"
                        ,CAST("SEGMENT5" AS varchar(100) ) AS "SEGMENT5"
                        ,CAST("START_DATE_ACTIVE" AS datetime2) AS "START_DATE_ACTIVE"
                        ,CAST("END_DATE_ACTIVE" AS datetime2) AS "END_DATE_ACTIVE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("VENDOR_ID" AS float) AS "VENDOR_ID"
                        ,CAST("VENDOR_SITE_ID" AS float) AS "VENDOR_SITE_ID"
                        ,CAST("VENDOR_CONTACT_ID" AS float) AS "VENDOR_CONTACT_ID"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("BILL_TO_LOCATION_ID" AS float) AS "BILL_TO_LOCATION_ID"
                        ,CAST("TERMS_ID" AS float) AS "TERMS_ID"
                        ,CAST("SHIP_VIA_LOOKUP_CODE" AS varchar(100) ) AS "SHIP_VIA_LOOKUP_CODE"
                        ,CAST("FOB_LOOKUP_CODE" AS varchar(100) ) AS "FOB_LOOKUP_CODE"
                        ,CAST("FREIGHT_TERMS_LOOKUP_CODE" AS varchar(100) ) AS "FREIGHT_TERMS_LOOKUP_CODE"
                        ,CAST("STATUS_LOOKUP_CODE" AS varchar(100) ) AS "STATUS_LOOKUP_CODE"
                        ,CAST("CURRENCY_CODE" AS varchar(100) ) AS "CURRENCY_CODE"
                        ,CAST("RATE_TYPE" AS varchar(100) ) AS "RATE_TYPE"
                        ,CAST("RATE_DATE" AS datetime2) AS "RATE_DATE"
                        ,CAST("RATE" AS float) AS "RATE"
                        ,CAST("FROM_HEADER_ID" AS float) AS "FROM_HEADER_ID"
                        ,CAST("FROM_TYPE_LOOKUP_CODE" AS varchar(100) ) AS "FROM_TYPE_LOOKUP_CODE"
                        ,CAST("START_DATE" AS datetime2) AS "START_DATE"
                        ,CAST("END_DATE" AS datetime2) AS "END_DATE"
                        ,CAST("BLANKET_TOTAL_AMOUNT" AS float) AS "BLANKET_TOTAL_AMOUNT"
                        ,CAST("AUTHORIZATION_STATUS" AS varchar(100) ) AS "AUTHORIZATION_STATUS"
                        ,CAST("REVISION_NUM" AS float) AS "REVISION_NUM"
                        ,CAST("REVISED_DATE" AS datetime2) AS "REVISED_DATE"
                        ,CAST("APPROVED_FLAG" AS varchar(100) ) AS "APPROVED_FLAG"
                        ,CAST("APPROVED_DATE" AS datetime2) AS "APPROVED_DATE"
                        ,CAST("AMOUNT_LIMIT" AS float) AS "AMOUNT_LIMIT"
                        ,CAST("MIN_RELEASE_AMOUNT" AS float) AS "MIN_RELEASE_AMOUNT"
                        ,CAST("NOTE_TO_AUTHORIZER" AS varchar(1000) ) AS "NOTE_TO_AUTHORIZER"
                        ,CAST("NOTE_TO_VENDOR" AS varchar(1000) ) AS "NOTE_TO_VENDOR"
                        ,CAST("NOTE_TO_RECEIVER" AS varchar(1000) ) AS "NOTE_TO_RECEIVER"
                        ,CAST("PRINT_COUNT" AS float) AS "PRINT_COUNT"
                        ,CAST("PRINTED_DATE" AS datetime2) AS "PRINTED_DATE"
                        ,CAST("VENDOR_ORDER_NUM" AS varchar(100) ) AS "VENDOR_ORDER_NUM"
                        ,CAST("CONFIRMING_ORDER_FLAG" AS varchar(100) ) AS "CONFIRMING_ORDER_FLAG"
                        ,CAST("COMMENTS" AS varchar(1000) ) AS "COMMENTS"
                        ,CAST("REPLY_DATE" AS datetime2) AS "REPLY_DATE"
                        ,CAST("REPLY_METHOD_LOOKUP_CODE" AS varchar(100) ) AS "REPLY_METHOD_LOOKUP_CODE"
                        ,CAST("RFQ_CLOSE_DATE" AS datetime2) AS "RFQ_CLOSE_DATE"
                        ,CAST("QUOTE_TYPE_LOOKUP_CODE" AS varchar(100) ) AS "QUOTE_TYPE_LOOKUP_CODE"
                        ,CAST("QUOTATION_CLASS_CODE" AS varchar(100) ) AS "QUOTATION_CLASS_CODE"
                        ,CAST("QUOTE_WARNING_DELAY_UNIT" AS varchar(100) ) AS "QUOTE_WARNING_DELAY_UNIT"
                        ,CAST("QUOTE_WARNING_DELAY" AS float) AS "QUOTE_WARNING_DELAY"
                        ,CAST("QUOTE_VENDOR_QUOTE_NUMBER" AS varchar(100) ) AS "QUOTE_VENDOR_QUOTE_NUMBER"
                        ,CAST("ACCEPTANCE_REQUIRED_FLAG" AS varchar(100) ) AS "ACCEPTANCE_REQUIRED_FLAG"
                        ,CAST("ACCEPTANCE_DUE_DATE" AS datetime2) AS "ACCEPTANCE_DUE_DATE"
                        ,CAST("CLOSED_DATE" AS datetime2) AS "CLOSED_DATE"
                        ,CAST("USER_HOLD_FLAG" AS varchar(100) ) AS "USER_HOLD_FLAG"
                        ,CAST("APPROVAL_REQUIRED_FLAG" AS varchar(100) ) AS "APPROVAL_REQUIRED_FLAG"
                        ,CAST("CANCEL_FLAG" AS varchar(100) ) AS "CANCEL_FLAG"
                        ,CAST("FIRM_STATUS_LOOKUP_CODE" AS varchar(100) ) AS "FIRM_STATUS_LOOKUP_CODE"
                        ,CAST("FIRM_DATE" AS datetime2) AS "FIRM_DATE"
                        ,CAST("FROZEN_FLAG" AS varchar(100) ) AS "FROZEN_FLAG"
                        ,CAST("SUPPLY_AGREEMENT_FLAG" AS varchar(100) ) AS "SUPPLY_AGREEMENT_FLAG"
                        ,CAST("EDI_PROCESSED_FLAG" AS varchar(100) ) AS "EDI_PROCESSED_FLAG"
                        ,CAST("EDI_PROCESSED_STATUS" AS varchar(100) ) AS "EDI_PROCESSED_STATUS"
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
                        ,CAST("CLOSED_CODE" AS varchar(100) ) AS "CLOSED_CODE"
                        ,CAST("USSGL_TRANSACTION_CODE" AS varchar(100) ) AS "USSGL_TRANSACTION_CODE"
                        ,CAST("GOVERNMENT_CONTEXT" AS varchar(100) ) AS "GOVERNMENT_CONTEXT"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("GLOBAL_ATTRIBUTE_CATEGORY" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE_CATEGORY"
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
                        ,CAST("INTERFACE_SOURCE_CODE" AS varchar(100) ) AS "INTERFACE_SOURCE_CODE"
                        ,CAST("REFERENCE_NUM" AS varchar(100) ) AS "REFERENCE_NUM"
                        ,CAST("WF_ITEM_TYPE" AS varchar(100) ) AS "WF_ITEM_TYPE"
                        ,CAST("WF_ITEM_KEY" AS varchar(1000) ) AS "WF_ITEM_KEY"
                        ,CAST("MRC_RATE_TYPE" AS varchar(8000) ) AS "MRC_RATE_TYPE"
                        ,CAST("MRC_RATE_DATE" AS varchar(8000) ) AS "MRC_RATE_DATE"
                        ,CAST("MRC_RATE" AS varchar(8000) ) AS "MRC_RATE"
                        ,CAST("PCARD_ID" AS float) AS "PCARD_ID"
                        ,CAST("PRICE_UPDATE_TOLERANCE" AS float) AS "PRICE_UPDATE_TOLERANCE"
                        ,CAST("PAY_ON_CODE" AS varchar(100) ) AS "PAY_ON_CODE"
                        ,CAST("XML_FLAG" AS varchar(100) ) AS "XML_FLAG"
                        ,CAST("XML_SEND_DATE" AS datetime2) AS "XML_SEND_DATE"
                        ,CAST("XML_CHANGE_SEND_DATE" AS datetime2) AS "XML_CHANGE_SEND_DATE"
                        ,CAST("GLOBAL_AGREEMENT_FLAG" AS varchar(100) ) AS "GLOBAL_AGREEMENT_FLAG"
                        ,CAST("CONSIGNED_CONSUMPTION_FLAG" AS varchar(100) ) AS "CONSIGNED_CONSUMPTION_FLAG"
                        ,CAST("CBC_ACCOUNTING_DATE" AS datetime2) AS "CBC_ACCOUNTING_DATE"
                        ,CAST("CONSUME_REQ_DEMAND_FLAG" AS varchar(100) ) AS "CONSUME_REQ_DEMAND_FLAG"
                        ,CAST("CHANGE_REQUESTED_BY" AS varchar(100) ) AS "CHANGE_REQUESTED_BY"
                        ,CAST("SHIPPING_CONTROL" AS varchar(100) ) AS "SHIPPING_CONTROL"
                        ,CAST("CONTERMS_EXIST_FLAG" AS varchar(100) ) AS "CONTERMS_EXIST_FLAG"
                        ,CAST("CONTERMS_ARTICLES_UPD_DATE" AS datetime2) AS "CONTERMS_ARTICLES_UPD_DATE"
                        ,CAST("CONTERMS_DELIV_UPD_DATE" AS datetime2) AS "CONTERMS_DELIV_UPD_DATE"
                        ,CAST("ENCUMBRANCE_REQUIRED_FLAG" AS varchar(100) ) AS "ENCUMBRANCE_REQUIRED_FLAG"
                        ,CAST("PENDING_SIGNATURE_FLAG" AS varchar(100) ) AS "PENDING_SIGNATURE_FLAG"
                        ,CAST("CHANGE_SUMMARY" AS varchar(8000) ) AS "CHANGE_SUMMARY"
                        ,CAST("DOCUMENT_CREATION_METHOD" AS varchar(100) ) AS "DOCUMENT_CREATION_METHOD"
                        ,CAST("SUBMIT_DATE" AS datetime2) AS "SUBMIT_DATE"
                        ,CAST("SUPPLIER_NOTIF_METHOD" AS varchar(100) ) AS "SUPPLIER_NOTIF_METHOD"
                        ,CAST("FAX" AS varchar(100) ) AS "FAX"
                        ,CAST("EMAIL_ADDRESS" AS varchar(8000) ) AS "EMAIL_ADDRESS"
                        ,CAST("RETRO_PRICE_COMM_UPDATES_FLAG" AS varchar(100) ) AS "RETRO_PRICE_COMM_UPDATES_FLAG"
                        ,CAST("RETRO_PRICE_APPLY_UPDATES_FLAG" AS varchar(100) ) AS "RETRO_PRICE_APPLY_UPDATES_FLAG"
                        ,CAST("UPDATE_SOURCING_RULES_FLAG" AS varchar(100) ) AS "UPDATE_SOURCING_RULES_FLAG"
                        ,CAST("AUTO_SOURCING_FLAG" AS varchar(100) ) AS "AUTO_SOURCING_FLAG"
                        ,CAST("CREATED_LANGUAGE" AS varchar(100) ) AS "CREATED_LANGUAGE"
                        ,CAST("CPA_REFERENCE" AS float) AS "CPA_REFERENCE"
                        ,CAST("LOCK_OWNER_ROLE" AS varchar(100) ) AS "LOCK_OWNER_ROLE"
                        ,CAST("LOCK_OWNER_USER_ID" AS float) AS "LOCK_OWNER_USER_ID"
                        ,CAST("SUPPLIER_AUTH_ENABLED_FLAG" AS varchar(100) ) AS "SUPPLIER_AUTH_ENABLED_FLAG"
                        ,CAST("CAT_ADMIN_AUTH_ENABLED_FLAG" AS varchar(100) ) AS "CAT_ADMIN_AUTH_ENABLED_FLAG"
                        ,CAST("STYLE_ID" AS float) AS "STYLE_ID"
                        ,CAST("TAX_ATTRIBUTE_UPDATE_CODE" AS varchar(100) ) AS "TAX_ATTRIBUTE_UPDATE_CODE"
                        ,CAST("LAST_UPDATED_PROGRAM" AS varchar(1000) ) AS "LAST_UPDATED_PROGRAM"
                        ,CAST("ENABLE_ALL_SITES" AS varchar(100) ) AS "ENABLE_ALL_SITES"
                        ,CAST("PAY_WHEN_PAID" AS varchar(100) ) AS "PAY_WHEN_PAID"
                        ,CAST("COMM_REV_NUM" AS float) AS "COMM_REV_NUM"
                        ,CAST("CLM_DOCUMENT_NUMBER" AS varchar(1000) ) AS "CLM_DOCUMENT_NUMBER"
                        ,CAST("OTM_STATUS_CODE" AS varchar(1000) ) AS "OTM_STATUS_CODE"
                        ,CAST("OTM_RECOVERY_FLAG" AS varchar(100) ) AS "OTM_RECOVERY_FLAG"
                        ,CAST("AME_APPROVAL_ID" AS float) AS "AME_APPROVAL_ID"
                        ,CAST("AME_TRANSACTION_TYPE" AS varchar(1000) ) AS "AME_TRANSACTION_TYPE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("PO_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("PO_HEADER_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AGENT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUMMARY_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("START_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("END_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_SITE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_CONTACT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BILL_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TERMS_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_VIA_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FOB_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FREIGHT_TERMS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STATUS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENCY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROM_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROM_TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("START_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("END_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BLANKET_TOTAL_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTHORIZATION_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REVISION_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REVISED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT_LIMIT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MIN_RELEASE_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_AUTHORIZER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_VENDOR"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NOTE_TO_RECEIVER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRINT_COUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRINTED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_ORDER_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONFIRMING_ORDER_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COMMENTS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REPLY_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REPLY_METHOD_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RFQ_CLOSE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUOTE_TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUOTATION_CLASS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUOTE_WARNING_DELAY_UNIT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUOTE_WARNING_DELAY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QUOTE_VENDOR_QUOTE_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ACCEPTANCE_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ACCEPTANCE_DUE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLOSED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("USER_HOLD_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CANCEL_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FIRM_STATUS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FIRM_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FROZEN_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLY_AGREEMENT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_PROCESSED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_PROCESSED_STATUS"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("CLOSED_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("USSGL_TRANSACTION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GOVERNMENT_CONTEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORG_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("INTERFACE_SOURCE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REFERENCE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WF_ITEM_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WF_ITEM_KEY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_RATE_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_RATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MRC_RATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PCARD_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRICE_UPDATE_TOLERANCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAY_ON_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("XML_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("XML_SEND_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("XML_CHANGE_SEND_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_AGREEMENT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONSIGNED_CONSUMPTION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CBC_ACCOUNTING_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONSUME_REQ_DEMAND_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHANGE_REQUESTED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIPPING_CONTROL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTERMS_EXIST_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTERMS_ARTICLES_UPD_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CONTERMS_DELIV_UPD_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENCUMBRANCE_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PENDING_SIGNATURE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHANGE_SUMMARY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DOCUMENT_CREATION_METHOD"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBMIT_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLIER_NOTIF_METHOD"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FAX"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EMAIL_ADDRESS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RETRO_PRICE_COMM_UPDATES_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RETRO_PRICE_APPLY_UPDATES_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UPDATE_SOURCING_RULES_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTO_SOURCING_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_LANGUAGE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CPA_REFERENCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCK_OWNER_ROLE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCK_OWNER_USER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUPPLIER_AUTH_ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CAT_ADMIN_AUTH_ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STYLE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_ATTRIBUTE_UPDATE_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_PROGRAM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENABLE_ALL_SITES"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAY_WHEN_PAID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COMM_REV_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CLM_DOCUMENT_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OTM_STATUS_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OTM_RECOVERY_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AME_APPROVAL_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AME_TRANSACTION_TYPE"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_PO_HEADERS_ALL"
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
