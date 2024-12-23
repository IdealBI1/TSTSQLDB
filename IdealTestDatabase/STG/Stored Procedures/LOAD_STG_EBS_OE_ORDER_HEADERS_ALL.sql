﻿

CREATE PROCEDURE [STG].[LOAD_STG_EBS_OE_ORDER_HEADERS_ALL]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:48 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_OE_ORDER_HEADERS_ALL";
    
    
    Source                                  Destination                          
    ------------------------------------    ------------------------------------ 
    LND"."LND_EBS_OE_ORDER_HEADERS_ALL"    "STG"."STG_EBS_OE_ORDER_HEADERS_ALL" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_OE_ORDER_HEADERS_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_OE_ORDER_HEADERS_ALL"
                (
                    "HEADER_ID"
                    ,"ORG_ID"
                    ,"ORDER_TYPE_ID"
                    ,"ORDER_NUMBER"
                    ,"VERSION_NUMBER"
                    ,"EXPIRATION_DATE"
                    ,"ORDER_SOURCE_ID"
                    ,"SOURCE_DOCUMENT_TYPE_ID"
                    ,"ORIG_SYS_DOCUMENT_REF"
                    ,"SOURCE_DOCUMENT_ID"
                    ,"ORDERED_DATE"
                    ,"REQUEST_DATE"
                    ,"PRICING_DATE"
                    ,"SHIPMENT_PRIORITY_CODE"
                    ,"DEMAND_CLASS_CODE"
                    ,"PRICE_LIST_ID"
                    ,"TAX_EXEMPT_FLAG"
                    ,"TAX_EXEMPT_NUMBER"
                    ,"TAX_EXEMPT_REASON_CODE"
                    ,"CONVERSION_RATE"
                    ,"CONVERSION_TYPE_CODE"
                    ,"CONVERSION_RATE_DATE"
                    ,"PARTIAL_SHIPMENTS_ALLOWED"
                    ,"SHIP_TOLERANCE_ABOVE"
                    ,"SHIP_TOLERANCE_BELOW"
                    ,"TRANSACTIONAL_CURR_CODE"
                    ,"AGREEMENT_ID"
                    ,"TAX_POINT_CODE"
                    ,"CUST_PO_NUMBER"
                    ,"INVOICING_RULE_ID"
                    ,"ACCOUNTING_RULE_ID"
                    ,"PAYMENT_TERM_ID"
                    ,"SHIPPING_METHOD_CODE"
                    ,"FREIGHT_CARRIER_CODE"
                    ,"FOB_POINT_CODE"
                    ,"FREIGHT_TERMS_CODE"
                    ,"SOLD_FROM_ORG_ID"
                    ,"SOLD_TO_ORG_ID"
                    ,"SHIP_FROM_ORG_ID"
                    ,"SHIP_TO_ORG_ID"
                    ,"INVOICE_TO_ORG_ID"
                    ,"DELIVER_TO_ORG_ID"
                    ,"SOLD_TO_CONTACT_ID"
                    ,"SHIP_TO_CONTACT_ID"
                    ,"INVOICE_TO_CONTACT_ID"
                    ,"DELIVER_TO_CONTACT_ID"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"CONTEXT"
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
                    ,"CANCELLED_FLAG"
                    ,"OPEN_FLAG"
                    ,"BOOKED_FLAG"
                    ,"SALESREP_ID"
                    ,"RETURN_REASON_CODE"
                    ,"ORDER_DATE_TYPE_CODE"
                    ,"EARLIEST_SCHEDULE_LIMIT"
                    ,"LATEST_SCHEDULE_LIMIT"
                    ,"PAYMENT_TYPE_CODE"
                    ,"PAYMENT_AMOUNT"
                    ,"CHECK_NUMBER"
                    ,"CREDIT_CARD_CODE"
                    ,"CREDIT_CARD_HOLDER_NAME"
                    ,"CREDIT_CARD_NUMBER"
                    ,"CREDIT_CARD_EXPIRATION_DATE"
                    ,"CREDIT_CARD_APPROVAL_CODE"
                    ,"SALES_CHANNEL_CODE"
                    ,"FIRST_ACK_CODE"
                    ,"FIRST_ACK_DATE"
                    ,"LAST_ACK_CODE"
                    ,"LAST_ACK_DATE"
                    ,"ORDER_CATEGORY_CODE"
                    ,"CHANGE_SEQUENCE"
                    ,"DROP_SHIP_FLAG"
                    ,"CUSTOMER_PAYMENT_TERM_ID"
                    ,"SHIPPING_INSTRUCTIONS"
                    ,"PACKING_INSTRUCTIONS"
                    ,"TP_CONTEXT"
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
                    ,"FLOW_STATUS_CODE"
                    ,"MARKETING_SOURCE_CODE_ID"
                    ,"CREDIT_CARD_APPROVAL_DATE"
                    ,"UPGRADED_FLAG"
                    ,"CUSTOMER_PREFERENCE_SET_CODE"
                    ,"BOOKED_DATE"
                    ,"LOCK_CONTROL"
                    ,"PRICE_REQUEST_CODE"
                    ,"BATCH_ID"
                    ,"XML_MESSAGE_ID"
                    ,"ACCOUNTING_RULE_DURATION"
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"BLANKET_NUMBER"
                    ,"SALES_DOCUMENT_TYPE_CODE"
                    ,"SOLD_TO_PHONE_ID"
                    ,"FULFILLMENT_SET_NAME"
                    ,"LINE_SET_NAME"
                    ,"DEFAULT_FULFILLMENT_SET"
                    ,"TRANSACTION_PHASE_CODE"
                    ,"SALES_DOCUMENT_NAME"
                    ,"QUOTE_NUMBER"
                    ,"QUOTE_DATE"
                    ,"USER_STATUS_CODE"
                    ,"DRAFT_SUBMITTED_FLAG"
                    ,"SOURCE_DOCUMENT_VERSION_NUMBER"
                    ,"SOLD_TO_SITE_USE_ID"
                    ,"SUPPLIER_SIGNATURE"
                    ,"SUPPLIER_SIGNATURE_DATE"
                    ,"CUSTOMER_SIGNATURE"
                    ,"CUSTOMER_SIGNATURE_DATE"
                    ,"MINISITE_ID"
                    ,"END_CUSTOMER_ID"
                    ,"END_CUSTOMER_CONTACT_ID"
                    ,"END_CUSTOMER_SITE_USE_ID"
                    ,"IB_OWNER"
                    ,"IB_CURRENT_LOCATION"
                    ,"IB_INSTALLED_AT_LOCATION"
                    ,"ORDER_FIRMED_DATE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("HEADER_ID" AS float) AS "HEADER_ID"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("ORDER_TYPE_ID" AS float) AS "ORDER_TYPE_ID"
                        ,CAST("ORDER_NUMBER" AS float) AS "ORDER_NUMBER"
                        ,CAST("VERSION_NUMBER" AS float) AS "VERSION_NUMBER"
                        ,TRY_CONVERT(datetime2,"EXPIRATION_DATE",121) AS "EXPIRATION_DATE"
                        ,CAST("ORDER_SOURCE_ID" AS float) AS "ORDER_SOURCE_ID"
                        ,CAST("SOURCE_DOCUMENT_TYPE_ID" AS float) AS "SOURCE_DOCUMENT_TYPE_ID"
                        ,CAST("ORIG_SYS_DOCUMENT_REF" AS varchar(1000) ) AS "ORIG_SYS_DOCUMENT_REF"
                        ,CAST("SOURCE_DOCUMENT_ID" AS float) AS "SOURCE_DOCUMENT_ID"
                        ,TRY_CONVERT(datetime2,"ORDERED_DATE",121) AS "ORDERED_DATE"
                        ,TRY_CONVERT(datetime2,"REQUEST_DATE",121) AS "REQUEST_DATE"
                        ,TRY_CONVERT(datetime2,"PRICING_DATE",121) AS "PRICING_DATE"
                        ,CAST("SHIPMENT_PRIORITY_CODE" AS varchar(100) ) AS "SHIPMENT_PRIORITY_CODE"
                        ,CAST("DEMAND_CLASS_CODE" AS varchar(100) ) AS "DEMAND_CLASS_CODE"
                        ,CAST("PRICE_LIST_ID" AS float) AS "PRICE_LIST_ID"
                        ,CAST("TAX_EXEMPT_FLAG" AS varchar(100) ) AS "TAX_EXEMPT_FLAG"
                        ,CAST("TAX_EXEMPT_NUMBER" AS varchar(1000) ) AS "TAX_EXEMPT_NUMBER"
                        ,CAST("TAX_EXEMPT_REASON_CODE" AS varchar(100) ) AS "TAX_EXEMPT_REASON_CODE"
                        ,CAST("CONVERSION_RATE" AS float) AS "CONVERSION_RATE"
                        ,CAST("CONVERSION_TYPE_CODE" AS varchar(100) ) AS "CONVERSION_TYPE_CODE"
                        ,TRY_CONVERT(datetime2,"CONVERSION_RATE_DATE",121) AS "CONVERSION_RATE_DATE"
                        ,CAST("PARTIAL_SHIPMENTS_ALLOWED" AS varchar(100) ) AS "PARTIAL_SHIPMENTS_ALLOWED"
                        ,CAST("SHIP_TOLERANCE_ABOVE" AS float) AS "SHIP_TOLERANCE_ABOVE"
                        ,CAST("SHIP_TOLERANCE_BELOW" AS float) AS "SHIP_TOLERANCE_BELOW"
                        ,CAST("TRANSACTIONAL_CURR_CODE" AS varchar(100) ) AS "TRANSACTIONAL_CURR_CODE"
                        ,CAST("AGREEMENT_ID" AS float) AS "AGREEMENT_ID"
                        ,CAST("TAX_POINT_CODE" AS varchar(100) ) AS "TAX_POINT_CODE"
                        ,CAST("CUST_PO_NUMBER" AS varchar(1000) ) AS "CUST_PO_NUMBER"
                        ,CAST("INVOICING_RULE_ID" AS float) AS "INVOICING_RULE_ID"
                        ,CAST("ACCOUNTING_RULE_ID" AS float) AS "ACCOUNTING_RULE_ID"
                        ,CAST("PAYMENT_TERM_ID" AS float) AS "PAYMENT_TERM_ID"
                        ,CAST("SHIPPING_METHOD_CODE" AS varchar(100) ) AS "SHIPPING_METHOD_CODE"
                        ,CAST("FREIGHT_CARRIER_CODE" AS varchar(100) ) AS "FREIGHT_CARRIER_CODE"
                        ,CAST("FOB_POINT_CODE" AS varchar(100) ) AS "FOB_POINT_CODE"
                        ,CAST("FREIGHT_TERMS_CODE" AS varchar(100) ) AS "FREIGHT_TERMS_CODE"
                        ,CAST("SOLD_FROM_ORG_ID" AS float) AS "SOLD_FROM_ORG_ID"
                        ,CAST("SOLD_TO_ORG_ID" AS float) AS "SOLD_TO_ORG_ID"
                        ,CAST("SHIP_FROM_ORG_ID" AS float) AS "SHIP_FROM_ORG_ID"
                        ,CAST("SHIP_TO_ORG_ID" AS float) AS "SHIP_TO_ORG_ID"
                        ,CAST("INVOICE_TO_ORG_ID" AS float) AS "INVOICE_TO_ORG_ID"
                        ,CAST("DELIVER_TO_ORG_ID" AS float) AS "DELIVER_TO_ORG_ID"
                        ,CAST("SOLD_TO_CONTACT_ID" AS float) AS "SOLD_TO_CONTACT_ID"
                        ,CAST("SHIP_TO_CONTACT_ID" AS float) AS "SHIP_TO_CONTACT_ID"
                        ,CAST("INVOICE_TO_CONTACT_ID" AS float) AS "INVOICE_TO_CONTACT_ID"
                        ,CAST("DELIVER_TO_CONTACT_ID" AS float) AS "DELIVER_TO_CONTACT_ID"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("CONTEXT" AS varchar(100) ) AS "CONTEXT"
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
                        ,CAST("GLOBAL_ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "GLOBAL_ATTRIBUTE_CATEGORY"
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
                        ,CAST("CANCELLED_FLAG" AS varchar(100) ) AS "CANCELLED_FLAG"
                        ,CAST("OPEN_FLAG" AS varchar(100) ) AS "OPEN_FLAG"
                        ,CAST("BOOKED_FLAG" AS varchar(100) ) AS "BOOKED_FLAG"
                        ,CAST("SALESREP_ID" AS float) AS "SALESREP_ID"
                        ,CAST("RETURN_REASON_CODE" AS varchar(100) ) AS "RETURN_REASON_CODE"
                        ,CAST("ORDER_DATE_TYPE_CODE" AS varchar(100) ) AS "ORDER_DATE_TYPE_CODE"
                        ,CAST("EARLIEST_SCHEDULE_LIMIT" AS float) AS "EARLIEST_SCHEDULE_LIMIT"
                        ,CAST("LATEST_SCHEDULE_LIMIT" AS float) AS "LATEST_SCHEDULE_LIMIT"
                        ,CAST("PAYMENT_TYPE_CODE" AS varchar(100) ) AS "PAYMENT_TYPE_CODE"
                        ,CAST("PAYMENT_AMOUNT" AS float) AS "PAYMENT_AMOUNT"
                        ,CAST("CHECK_NUMBER" AS varchar(1000) ) AS "CHECK_NUMBER"
                        ,CAST("CREDIT_CARD_CODE" AS varchar(1000) ) AS "CREDIT_CARD_CODE"
                        ,CAST("CREDIT_CARD_HOLDER_NAME" AS varchar(1000) ) AS "CREDIT_CARD_HOLDER_NAME"
                        ,CAST("CREDIT_CARD_NUMBER" AS varchar(1000) ) AS "CREDIT_CARD_NUMBER"
                        ,TRY_CONVERT(datetime2,"CREDIT_CARD_EXPIRATION_DATE",121) AS "CREDIT_CARD_EXPIRATION_DATE"
                        ,CAST("CREDIT_CARD_APPROVAL_CODE" AS varchar(1000) ) AS "CREDIT_CARD_APPROVAL_CODE"
                        ,CAST("SALES_CHANNEL_CODE" AS varchar(100) ) AS "SALES_CHANNEL_CODE"
                        ,CAST("FIRST_ACK_CODE" AS varchar(100) ) AS "FIRST_ACK_CODE"
                        ,TRY_CONVERT(datetime2,"FIRST_ACK_DATE",121) AS "FIRST_ACK_DATE"
                        ,CAST("LAST_ACK_CODE" AS varchar(100) ) AS "LAST_ACK_CODE"
                        ,TRY_CONVERT(datetime2,"LAST_ACK_DATE",121) AS "LAST_ACK_DATE"
                        ,CAST("ORDER_CATEGORY_CODE" AS varchar(100) ) AS "ORDER_CATEGORY_CODE"
                        ,CAST("CHANGE_SEQUENCE" AS varchar(1000) ) AS "CHANGE_SEQUENCE"
                        ,CAST("DROP_SHIP_FLAG" AS varchar(100) ) AS "DROP_SHIP_FLAG"
                        ,CAST("CUSTOMER_PAYMENT_TERM_ID" AS float) AS "CUSTOMER_PAYMENT_TERM_ID"
                        ,CAST("SHIPPING_INSTRUCTIONS" AS varchar(8000) ) AS "SHIPPING_INSTRUCTIONS"
                        ,CAST("PACKING_INSTRUCTIONS" AS varchar(8000) ) AS "PACKING_INSTRUCTIONS"
                        ,CAST("TP_CONTEXT" AS varchar(100) ) AS "TP_CONTEXT"
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
                        ,CAST("FLOW_STATUS_CODE" AS varchar(100) ) AS "FLOW_STATUS_CODE"
                        ,CAST("MARKETING_SOURCE_CODE_ID" AS float) AS "MARKETING_SOURCE_CODE_ID"
                        ,TRY_CONVERT(datetime2,"CREDIT_CARD_APPROVAL_DATE",121) AS "CREDIT_CARD_APPROVAL_DATE"
                        ,CAST("UPGRADED_FLAG" AS varchar(100) ) AS "UPGRADED_FLAG"
                        ,CAST("CUSTOMER_PREFERENCE_SET_CODE" AS varchar(100) ) AS "CUSTOMER_PREFERENCE_SET_CODE"
                        ,TRY_CONVERT(datetime2,"BOOKED_DATE",121) AS "BOOKED_DATE"
                        ,CAST("LOCK_CONTROL" AS float) AS "LOCK_CONTROL"
                        ,CAST("PRICE_REQUEST_CODE" AS varchar(1000) ) AS "PRICE_REQUEST_CODE"
                        ,CAST("BATCH_ID" AS float) AS "BATCH_ID"
                        ,CAST("XML_MESSAGE_ID" AS float) AS "XML_MESSAGE_ID"
                        ,CAST("ACCOUNTING_RULE_DURATION" AS float) AS "ACCOUNTING_RULE_DURATION"
                        ,CAST("ATTRIBUTE16" AS varchar(1000) ) AS "ATTRIBUTE16"
                        ,CAST("ATTRIBUTE17" AS varchar(1000) ) AS "ATTRIBUTE17"
                        ,CAST("ATTRIBUTE18" AS varchar(1000) ) AS "ATTRIBUTE18"
                        ,CAST("ATTRIBUTE19" AS varchar(1000) ) AS "ATTRIBUTE19"
                        ,CAST("ATTRIBUTE20" AS varchar(1000) ) AS "ATTRIBUTE20"
                        ,CAST("BLANKET_NUMBER" AS float) AS "BLANKET_NUMBER"
                        ,CAST("SALES_DOCUMENT_TYPE_CODE" AS varchar(100) ) AS "SALES_DOCUMENT_TYPE_CODE"
                        ,CAST("SOLD_TO_PHONE_ID" AS float) AS "SOLD_TO_PHONE_ID"
                        ,CAST("FULFILLMENT_SET_NAME" AS varchar(100) ) AS "FULFILLMENT_SET_NAME"
                        ,CAST("LINE_SET_NAME" AS varchar(100) ) AS "LINE_SET_NAME"
                        ,CAST("DEFAULT_FULFILLMENT_SET" AS varchar(100) ) AS "DEFAULT_FULFILLMENT_SET"
                        ,CAST("TRANSACTION_PHASE_CODE" AS varchar(100) ) AS "TRANSACTION_PHASE_CODE"
                        ,CAST("SALES_DOCUMENT_NAME" AS varchar(1000) ) AS "SALES_DOCUMENT_NAME"
                        ,CAST("QUOTE_NUMBER" AS float) AS "QUOTE_NUMBER"
                        ,TRY_CONVERT(datetime2,"QUOTE_DATE",121) AS "QUOTE_DATE"
                        ,CAST("USER_STATUS_CODE" AS varchar(100) ) AS "USER_STATUS_CODE"
                        ,CAST("DRAFT_SUBMITTED_FLAG" AS varchar(100) ) AS "DRAFT_SUBMITTED_FLAG"
                        ,CAST("SOURCE_DOCUMENT_VERSION_NUMBER" AS float) AS "SOURCE_DOCUMENT_VERSION_NUMBER"
                        ,CAST("SOLD_TO_SITE_USE_ID" AS float) AS "SOLD_TO_SITE_USE_ID"
                        ,CAST("SUPPLIER_SIGNATURE" AS varchar(1000) ) AS "SUPPLIER_SIGNATURE"
                        ,TRY_CONVERT(datetime2,"SUPPLIER_SIGNATURE_DATE",121) AS "SUPPLIER_SIGNATURE_DATE"
                        ,CAST("CUSTOMER_SIGNATURE" AS varchar(1000) ) AS "CUSTOMER_SIGNATURE"
                        ,TRY_CONVERT(datetime2,"CUSTOMER_SIGNATURE_DATE",121) AS "CUSTOMER_SIGNATURE_DATE"
                        ,CAST("MINISITE_ID" AS float) AS "MINISITE_ID"
                        ,CAST("END_CUSTOMER_ID" AS float) AS "END_CUSTOMER_ID"
                        ,CAST("END_CUSTOMER_CONTACT_ID" AS float) AS "END_CUSTOMER_CONTACT_ID"
                        ,CAST("END_CUSTOMER_SITE_USE_ID" AS float) AS "END_CUSTOMER_SITE_USE_ID"
                        ,CAST("IB_OWNER" AS varchar(1000) ) AS "IB_OWNER"
                        ,CAST("IB_CURRENT_LOCATION" AS varchar(1000) ) AS "IB_CURRENT_LOCATION"
                        ,CAST("IB_INSTALLED_AT_LOCATION" AS varchar(1000) ) AS "IB_INSTALLED_AT_LOCATION"
                        ,TRY_CONVERT(datetime2,"ORDER_FIRMED_DATE",121) AS "ORDER_FIRMED_DATE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "HEADER_ID"
                            , "ORG_ID"
                            , "ORDER_TYPE_ID"
                            , "ORDER_NUMBER"
                            , "VERSION_NUMBER"
                            , "EXPIRATION_DATE"
                            , "ORDER_SOURCE_ID"
                            , "SOURCE_DOCUMENT_TYPE_ID"
                            , "ORIG_SYS_DOCUMENT_REF"
                            , "SOURCE_DOCUMENT_ID"
                            , "ORDERED_DATE"
                            , "REQUEST_DATE"
                            , "PRICING_DATE"
                            , "SHIPMENT_PRIORITY_CODE"
                            , "DEMAND_CLASS_CODE"
                            , "PRICE_LIST_ID"
                            , "TAX_EXEMPT_FLAG"
                            , "TAX_EXEMPT_NUMBER"
                            , "TAX_EXEMPT_REASON_CODE"
                            , "CONVERSION_RATE"
                            , "CONVERSION_TYPE_CODE"
                            , "CONVERSION_RATE_DATE"
                            , "PARTIAL_SHIPMENTS_ALLOWED"
                            , "SHIP_TOLERANCE_ABOVE"
                            , "SHIP_TOLERANCE_BELOW"
                            , "TRANSACTIONAL_CURR_CODE"
                            , "AGREEMENT_ID"
                            , "TAX_POINT_CODE"
                            , "CUST_PO_NUMBER"
                            , "INVOICING_RULE_ID"
                            , "ACCOUNTING_RULE_ID"
                            , "PAYMENT_TERM_ID"
                            , "SHIPPING_METHOD_CODE"
                            , "FREIGHT_CARRIER_CODE"
                            , "FOB_POINT_CODE"
                            , "FREIGHT_TERMS_CODE"
                            , "SOLD_FROM_ORG_ID"
                            , "SOLD_TO_ORG_ID"
                            , "SHIP_FROM_ORG_ID"
                            , "SHIP_TO_ORG_ID"
                            , "INVOICE_TO_ORG_ID"
                            , "DELIVER_TO_ORG_ID"
                            , "SOLD_TO_CONTACT_ID"
                            , "SHIP_TO_CONTACT_ID"
                            , "INVOICE_TO_CONTACT_ID"
                            , "DELIVER_TO_CONTACT_ID"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATE_LOGIN"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "REQUEST_ID"
                            , "CONTEXT"
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
                            , "GLOBAL_ATTRIBUTE_CATEGORY"
                            , "GLOBAL_ATTRIBUTE1"
                            , "GLOBAL_ATTRIBUTE2"
                            , "GLOBAL_ATTRIBUTE3"
                            , "GLOBAL_ATTRIBUTE4"
                            , "GLOBAL_ATTRIBUTE5"
                            , "GLOBAL_ATTRIBUTE6"
                            , "GLOBAL_ATTRIBUTE7"
                            , "GLOBAL_ATTRIBUTE8"
                            , "GLOBAL_ATTRIBUTE9"
                            , "GLOBAL_ATTRIBUTE10"
                            , "GLOBAL_ATTRIBUTE11"
                            , "GLOBAL_ATTRIBUTE12"
                            , "GLOBAL_ATTRIBUTE13"
                            , "GLOBAL_ATTRIBUTE14"
                            , "GLOBAL_ATTRIBUTE15"
                            , "GLOBAL_ATTRIBUTE16"
                            , "GLOBAL_ATTRIBUTE17"
                            , "GLOBAL_ATTRIBUTE18"
                            , "GLOBAL_ATTRIBUTE19"
                            , "GLOBAL_ATTRIBUTE20"
                            , "CANCELLED_FLAG"
                            , "OPEN_FLAG"
                            , "BOOKED_FLAG"
                            , "SALESREP_ID"
                            , "RETURN_REASON_CODE"
                            , "ORDER_DATE_TYPE_CODE"
                            , "EARLIEST_SCHEDULE_LIMIT"
                            , "LATEST_SCHEDULE_LIMIT"
                            , "PAYMENT_TYPE_CODE"
                            , "PAYMENT_AMOUNT"
                            , "CHECK_NUMBER"
                            , "CREDIT_CARD_CODE"
                            , "CREDIT_CARD_HOLDER_NAME"
                            , "CREDIT_CARD_NUMBER"
                            , "CREDIT_CARD_EXPIRATION_DATE"
                            , "CREDIT_CARD_APPROVAL_CODE"
                            , "SALES_CHANNEL_CODE"
                            , "FIRST_ACK_CODE"
                            , "FIRST_ACK_DATE"
                            , "LAST_ACK_CODE"
                            , "LAST_ACK_DATE"
                            , "ORDER_CATEGORY_CODE"
                            , "CHANGE_SEQUENCE"
                            , "DROP_SHIP_FLAG"
                            , "CUSTOMER_PAYMENT_TERM_ID"
                            , "SHIPPING_INSTRUCTIONS"
                            , "PACKING_INSTRUCTIONS"
                            , "TP_CONTEXT"
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
                            , "FLOW_STATUS_CODE"
                            , "MARKETING_SOURCE_CODE_ID"
                            , "CREDIT_CARD_APPROVAL_DATE"
                            , "UPGRADED_FLAG"
                            , "CUSTOMER_PREFERENCE_SET_CODE"
                            , "BOOKED_DATE"
                            , "LOCK_CONTROL"
                            , "PRICE_REQUEST_CODE"
                            , "BATCH_ID"
                            , "XML_MESSAGE_ID"
                            , "ACCOUNTING_RULE_DURATION"
                            , "ATTRIBUTE16"
                            , "ATTRIBUTE17"
                            , "ATTRIBUTE18"
                            , "ATTRIBUTE19"
                            , "ATTRIBUTE20"
                            , "BLANKET_NUMBER"
                            , "SALES_DOCUMENT_TYPE_CODE"
                            , "SOLD_TO_PHONE_ID"
                            , "FULFILLMENT_SET_NAME"
                            , "LINE_SET_NAME"
                            , "DEFAULT_FULFILLMENT_SET"
                            , "TRANSACTION_PHASE_CODE"
                            , "SALES_DOCUMENT_NAME"
                            , "QUOTE_NUMBER"
                            , "QUOTE_DATE"
                            , "USER_STATUS_CODE"
                            , "DRAFT_SUBMITTED_FLAG"
                            , "SOURCE_DOCUMENT_VERSION_NUMBER"
                            , "SOLD_TO_SITE_USE_ID"
                            , "SUPPLIER_SIGNATURE"
                            , "SUPPLIER_SIGNATURE_DATE"
                            , "CUSTOMER_SIGNATURE"
                            , "CUSTOMER_SIGNATURE_DATE"
                            , "MINISITE_ID"
                            , "END_CUSTOMER_ID"
                            , "END_CUSTOMER_CONTACT_ID"
                            , "END_CUSTOMER_SITE_USE_ID"
                            , "IB_OWNER"
                            , "IB_CURRENT_LOCATION"
                            , "IB_INSTALLED_AT_LOCATION"
                            , "ORDER_FIRMED_DATE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_OE_ORDER_HEADERS_ALL"
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
