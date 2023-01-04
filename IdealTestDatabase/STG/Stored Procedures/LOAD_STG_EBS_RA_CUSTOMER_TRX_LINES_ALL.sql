﻿

CREATE PROCEDURE [STG].[LOAD_STG_EBS_RA_CUSTOMER_TRX_LINES_ALL]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:41 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RA_CUSTOMER_TRX_LINES_ALL";
    
    
    Source                                       Destination                               
    -----------------------------------------    ----------------------------------------- 
    LND"."LND_EBS_RA_CUSTOMER_TRX_LINES_ALL"    "STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL"
                (
                    "CUSTOMER_TRX_LINE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CUSTOMER_TRX_ID"
                    ,"LINE_NUMBER"
                    ,"SET_OF_BOOKS_ID"
                    ,"REASON_CODE"
                    ,"INVENTORY_ITEM_ID"
                    ,"DESCRIPTION"
                    ,"PREVIOUS_CUSTOMER_TRX_ID"
                    ,"PREVIOUS_CUSTOMER_TRX_LINE_ID"
                    ,"QUANTITY_ORDERED"
                    ,"QUANTITY_CREDITED"
                    ,"QUANTITY_INVOICED"
                    ,"UNIT_STANDARD_PRICE"
                    ,"UNIT_SELLING_PRICE"
                    ,"SALES_ORDER"
                    ,"SALES_ORDER_REVISION"
                    ,"SALES_ORDER_LINE"
                    ,"SALES_ORDER_DATE"
                    ,"ACCOUNTING_RULE_ID"
                    ,"ACCOUNTING_RULE_DURATION"
                    ,"LINE_TYPE"
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
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"RULE_START_DATE"
                    ,"INITIAL_CUSTOMER_TRX_LINE_ID"
                    ,"INTERFACE_LINE_CONTEXT"
                    ,"INTERFACE_LINE_ATTRIBUTE1"
                    ,"INTERFACE_LINE_ATTRIBUTE2"
                    ,"INTERFACE_LINE_ATTRIBUTE3"
                    ,"INTERFACE_LINE_ATTRIBUTE4"
                    ,"INTERFACE_LINE_ATTRIBUTE5"
                    ,"INTERFACE_LINE_ATTRIBUTE6"
                    ,"INTERFACE_LINE_ATTRIBUTE7"
                    ,"INTERFACE_LINE_ATTRIBUTE8"
                    ,"SALES_ORDER_SOURCE"
                    ,"TAXABLE_FLAG"
                    ,"EXTENDED_AMOUNT"
                    ,"REVENUE_AMOUNT"
                    ,"AUTORULE_COMPLETE_FLAG"
                    ,"LINK_TO_CUST_TRX_LINE_ID"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"TAX_PRECEDENCE"
                    ,"TAX_RATE"
                    ,"ITEM_EXCEPTION_RATE_ID"
                    ,"TAX_EXEMPTION_ID"
                    ,"MEMO_LINE_ID"
                    ,"AUTORULE_DURATION_PROCESSED"
                    ,"UOM_CODE"
                    ,"DEFAULT_USSGL_TRANSACTION_CODE"
                    ,"DEFAULT_USSGL_TRX_CODE_CONTEXT"
                    ,"INTERFACE_LINE_ATTRIBUTE10"
                    ,"INTERFACE_LINE_ATTRIBUTE11"
                    ,"INTERFACE_LINE_ATTRIBUTE12"
                    ,"INTERFACE_LINE_ATTRIBUTE13"
                    ,"INTERFACE_LINE_ATTRIBUTE14"
                    ,"INTERFACE_LINE_ATTRIBUTE15"
                    ,"INTERFACE_LINE_ATTRIBUTE9"
                    ,"VAT_TAX_ID"
                    ,"AUTOTAX"
                    ,"LAST_PERIOD_TO_CREDIT"
                    ,"ITEM_CONTEXT"
                    ,"TAX_EXEMPT_FLAG"
                    ,"TAX_EXEMPT_NUMBER"
                    ,"TAX_EXEMPT_REASON_CODE"
                    ,"TAX_VENDOR_RETURN_CODE"
                    ,"SALES_TAX_ID"
                    ,"LOCATION_SEGMENT_ID"
                    ,"MOVEMENT_ID"
                    ,"ORG_ID"
                    ,"WH_UPDATE_DATE"
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
                    ,"GROSS_UNIT_SELLING_PRICE"
                    ,"GROSS_EXTENDED_AMOUNT"
                    ,"AMOUNT_INCLUDES_TAX_FLAG"
                    ,"TAXABLE_AMOUNT"
                    ,"WAREHOUSE_ID"
                    ,"TRANSLATED_DESCRIPTION"
                    ,"EXTENDED_ACCTD_AMOUNT"
                    ,"BR_REF_CUSTOMER_TRX_ID"
                    ,"BR_REF_PAYMENT_SCHEDULE_ID"
                    ,"BR_ADJUSTMENT_ID"
                    ,"MRC_EXTENDED_ACCTD_AMOUNT"
                    ,"PAYMENT_SET_ID"
                    ,"CONTRACT_LINE_ID"
                    ,"SOURCE_DATA_KEY1"
                    ,"SOURCE_DATA_KEY2"
                    ,"SOURCE_DATA_KEY3"
                    ,"SOURCE_DATA_KEY4"
                    ,"SOURCE_DATA_KEY5"
                    ,"INVOICED_LINE_ACCTG_LEVEL"
                    ,"OVERRIDE_AUTO_ACCOUNTING_FLAG"
                    ,"SHIP_TO_CUSTOMER_ID"
                    ,"SHIP_TO_ADDRESS_ID"
                    ,"SHIP_TO_SITE_USE_ID"
                    ,"SHIP_TO_CONTACT_ID"
                    ,"HISTORICAL_FLAG"
                    ,"TAX_LINE_ID"
                    ,"LINE_RECOVERABLE"
                    ,"TAX_RECOVERABLE"
                    ,"TAX_CLASSIFICATION_CODE"
                    ,"AMOUNT_DUE_REMAINING"
                    ,"ACCTD_AMOUNT_DUE_REMAINING"
                    ,"AMOUNT_DUE_ORIGINAL"
                    ,"ACCTD_AMOUNT_DUE_ORIGINAL"
                    ,"CHRG_AMOUNT_REMAINING"
                    ,"CHRG_ACCTD_AMOUNT_REMAINING"
                    ,"FRT_ADJ_REMAINING"
                    ,"FRT_ADJ_ACCTD_REMAINING"
                    ,"FRT_ED_AMOUNT"
                    ,"FRT_ED_ACCTD_AMOUNT"
                    ,"FRT_UNED_AMOUNT"
                    ,"FRT_UNED_ACCTD_AMOUNT"
                    ,"DEFERRAL_EXCLUSION_FLAG"
                    ,"RULE_END_DATE"
                    ,"PAYMENT_TRXN_EXTENSION_ID"
                    ,"INTEREST_LINE_ID"
                    ,"DOC_LINE_ID_INT_1"
                    ,"DOC_LINE_ID_INT_2"
                    ,"DOC_LINE_ID_INT_3"
                    ,"DOC_LINE_ID_INT_4"
                    ,"DOC_LINE_ID_INT_5"
                    ,"DOC_LINE_ID_CHAR_1"
                    ,"DOC_LINE_ID_CHAR_2"
                    ,"DOC_LINE_ID_CHAR_3"
                    ,"DOC_LINE_ID_CHAR_4"
                    ,"DOC_LINE_ID_CHAR_5"
                    ,"TAX_CALC_ACCTD_AMT"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUSTOMER_TRX_LINE_ID" AS float) AS "CUSTOMER_TRX_LINE_ID"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CUSTOMER_TRX_ID" AS float) AS "CUSTOMER_TRX_ID"
                        ,CAST("LINE_NUMBER" AS float) AS "LINE_NUMBER"
                        ,CAST("SET_OF_BOOKS_ID" AS float) AS "SET_OF_BOOKS_ID"
                        ,CAST("REASON_CODE" AS varchar(100) ) AS "REASON_CODE"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("PREVIOUS_CUSTOMER_TRX_ID" AS float) AS "PREVIOUS_CUSTOMER_TRX_ID"
                        ,CAST("PREVIOUS_CUSTOMER_TRX_LINE_ID" AS float) AS "PREVIOUS_CUSTOMER_TRX_LINE_ID"
                        ,CAST("QUANTITY_ORDERED" AS float) AS "QUANTITY_ORDERED"
                        ,CAST("QUANTITY_CREDITED" AS float) AS "QUANTITY_CREDITED"
                        ,CAST("QUANTITY_INVOICED" AS float) AS "QUANTITY_INVOICED"
                        ,CAST("UNIT_STANDARD_PRICE" AS float) AS "UNIT_STANDARD_PRICE"
                        ,CAST("UNIT_SELLING_PRICE" AS float) AS "UNIT_SELLING_PRICE"
                        ,CAST("SALES_ORDER" AS varchar(1000) ) AS "SALES_ORDER"
                        ,CAST("SALES_ORDER_REVISION" AS float) AS "SALES_ORDER_REVISION"
                        ,CAST("SALES_ORDER_LINE" AS varchar(100) ) AS "SALES_ORDER_LINE"
                        ,TRY_CONVERT(datetime2,"SALES_ORDER_DATE",121) AS "SALES_ORDER_DATE"
                        ,CAST("ACCOUNTING_RULE_ID" AS float) AS "ACCOUNTING_RULE_ID"
                        ,CAST("ACCOUNTING_RULE_DURATION" AS float) AS "ACCOUNTING_RULE_DURATION"
                        ,CAST("LINE_TYPE" AS varchar(100) ) AS "LINE_TYPE"
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
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,TRY_CONVERT(datetime2,"RULE_START_DATE",121) AS "RULE_START_DATE"
                        ,CAST("INITIAL_CUSTOMER_TRX_LINE_ID" AS float) AS "INITIAL_CUSTOMER_TRX_LINE_ID"
                        ,CAST("INTERFACE_LINE_CONTEXT" AS varchar(100) ) AS "INTERFACE_LINE_CONTEXT"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE1" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE1"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE2" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE2"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE3" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE3"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE4" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE4"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE5" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE5"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE6" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE6"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE7" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE7"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE8" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE8"
                        ,CAST("SALES_ORDER_SOURCE" AS varchar(1000) ) AS "SALES_ORDER_SOURCE"
                        ,CAST("TAXABLE_FLAG" AS varchar(100) ) AS "TAXABLE_FLAG"
                        ,CAST("EXTENDED_AMOUNT" AS float) AS "EXTENDED_AMOUNT"
                        ,CAST("REVENUE_AMOUNT" AS float) AS "REVENUE_AMOUNT"
                        ,CAST("AUTORULE_COMPLETE_FLAG" AS varchar(100) ) AS "AUTORULE_COMPLETE_FLAG"
                        ,CAST("LINK_TO_CUST_TRX_LINE_ID" AS float) AS "LINK_TO_CUST_TRX_LINE_ID"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,CAST("TAX_PRECEDENCE" AS float) AS "TAX_PRECEDENCE"
                        ,CAST("TAX_RATE" AS float) AS "TAX_RATE"
                        ,CAST("ITEM_EXCEPTION_RATE_ID" AS float) AS "ITEM_EXCEPTION_RATE_ID"
                        ,CAST("TAX_EXEMPTION_ID" AS float) AS "TAX_EXEMPTION_ID"
                        ,CAST("MEMO_LINE_ID" AS float) AS "MEMO_LINE_ID"
                        ,CAST("AUTORULE_DURATION_PROCESSED" AS float) AS "AUTORULE_DURATION_PROCESSED"
                        ,CAST("UOM_CODE" AS varchar(100) ) AS "UOM_CODE"
                        ,CAST("DEFAULT_USSGL_TRANSACTION_CODE" AS varchar(100) ) AS "DEFAULT_USSGL_TRANSACTION_CODE"
                        ,CAST("DEFAULT_USSGL_TRX_CODE_CONTEXT" AS varchar(100) ) AS "DEFAULT_USSGL_TRX_CODE_CONTEXT"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE10" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE10"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE11" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE11"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE12" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE12"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE13" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE13"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE14" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE14"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE15" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE15"
                        ,CAST("INTERFACE_LINE_ATTRIBUTE9" AS varchar(1000) ) AS "INTERFACE_LINE_ATTRIBUTE9"
                        ,CAST("VAT_TAX_ID" AS float) AS "VAT_TAX_ID"
                        ,CAST("AUTOTAX" AS varchar(100) ) AS "AUTOTAX"
                        ,CAST("LAST_PERIOD_TO_CREDIT" AS float) AS "LAST_PERIOD_TO_CREDIT"
                        ,CAST("ITEM_CONTEXT" AS varchar(100) ) AS "ITEM_CONTEXT"
                        ,CAST("TAX_EXEMPT_FLAG" AS varchar(100) ) AS "TAX_EXEMPT_FLAG"
                        ,CAST("TAX_EXEMPT_NUMBER" AS varchar(1000) ) AS "TAX_EXEMPT_NUMBER"
                        ,CAST("TAX_EXEMPT_REASON_CODE" AS varchar(100) ) AS "TAX_EXEMPT_REASON_CODE"
                        ,CAST("TAX_VENDOR_RETURN_CODE" AS varchar(100) ) AS "TAX_VENDOR_RETURN_CODE"
                        ,CAST("SALES_TAX_ID" AS float) AS "SALES_TAX_ID"
                        ,CAST("LOCATION_SEGMENT_ID" AS float) AS "LOCATION_SEGMENT_ID"
                        ,CAST("MOVEMENT_ID" AS float) AS "MOVEMENT_ID"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,TRY_CONVERT(datetime2,"WH_UPDATE_DATE",121) AS "WH_UPDATE_DATE"
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
                        ,CAST("GROSS_UNIT_SELLING_PRICE" AS float) AS "GROSS_UNIT_SELLING_PRICE"
                        ,CAST("GROSS_EXTENDED_AMOUNT" AS float) AS "GROSS_EXTENDED_AMOUNT"
                        ,CAST("AMOUNT_INCLUDES_TAX_FLAG" AS varchar(100) ) AS "AMOUNT_INCLUDES_TAX_FLAG"
                        ,CAST("TAXABLE_AMOUNT" AS float) AS "TAXABLE_AMOUNT"
                        ,CAST("WAREHOUSE_ID" AS float) AS "WAREHOUSE_ID"
                        ,CAST("TRANSLATED_DESCRIPTION" AS varchar(8000) ) AS "TRANSLATED_DESCRIPTION"
                        ,CAST("EXTENDED_ACCTD_AMOUNT" AS float) AS "EXTENDED_ACCTD_AMOUNT"
                        ,CAST("BR_REF_CUSTOMER_TRX_ID" AS float) AS "BR_REF_CUSTOMER_TRX_ID"
                        ,CAST("BR_REF_PAYMENT_SCHEDULE_ID" AS float) AS "BR_REF_PAYMENT_SCHEDULE_ID"
                        ,CAST("BR_ADJUSTMENT_ID" AS float) AS "BR_ADJUSTMENT_ID"
                        ,CAST("MRC_EXTENDED_ACCTD_AMOUNT" AS varchar(8000) ) AS "MRC_EXTENDED_ACCTD_AMOUNT"
                        ,CAST("PAYMENT_SET_ID" AS float) AS "PAYMENT_SET_ID"
                        ,CAST("CONTRACT_LINE_ID" AS float) AS "CONTRACT_LINE_ID"
                        ,CAST("SOURCE_DATA_KEY1" AS varchar(1000) ) AS "SOURCE_DATA_KEY1"
                        ,CAST("SOURCE_DATA_KEY2" AS varchar(1000) ) AS "SOURCE_DATA_KEY2"
                        ,CAST("SOURCE_DATA_KEY3" AS varchar(1000) ) AS "SOURCE_DATA_KEY3"
                        ,CAST("SOURCE_DATA_KEY4" AS varchar(1000) ) AS "SOURCE_DATA_KEY4"
                        ,CAST("SOURCE_DATA_KEY5" AS varchar(1000) ) AS "SOURCE_DATA_KEY5"
                        ,CAST("INVOICED_LINE_ACCTG_LEVEL" AS varchar(100) ) AS "INVOICED_LINE_ACCTG_LEVEL"
                        ,CAST("OVERRIDE_AUTO_ACCOUNTING_FLAG" AS varchar(100) ) AS "OVERRIDE_AUTO_ACCOUNTING_FLAG"
                        ,CAST("SHIP_TO_CUSTOMER_ID" AS float) AS "SHIP_TO_CUSTOMER_ID"
                        ,CAST("SHIP_TO_ADDRESS_ID" AS float) AS "SHIP_TO_ADDRESS_ID"
                        ,CAST("SHIP_TO_SITE_USE_ID" AS float) AS "SHIP_TO_SITE_USE_ID"
                        ,CAST("SHIP_TO_CONTACT_ID" AS float) AS "SHIP_TO_CONTACT_ID"
                        ,CAST("HISTORICAL_FLAG" AS varchar(100) ) AS "HISTORICAL_FLAG"
                        ,CAST("TAX_LINE_ID" AS float) AS "TAX_LINE_ID"
                        ,CAST("LINE_RECOVERABLE" AS float) AS "LINE_RECOVERABLE"
                        ,CAST("TAX_RECOVERABLE" AS float) AS "TAX_RECOVERABLE"
                        ,CAST("TAX_CLASSIFICATION_CODE" AS varchar(1000) ) AS "TAX_CLASSIFICATION_CODE"
                        ,CAST("AMOUNT_DUE_REMAINING" AS float) AS "AMOUNT_DUE_REMAINING"
                        ,CAST("ACCTD_AMOUNT_DUE_REMAINING" AS float) AS "ACCTD_AMOUNT_DUE_REMAINING"
                        ,CAST("AMOUNT_DUE_ORIGINAL" AS float) AS "AMOUNT_DUE_ORIGINAL"
                        ,CAST("ACCTD_AMOUNT_DUE_ORIGINAL" AS float) AS "ACCTD_AMOUNT_DUE_ORIGINAL"
                        ,CAST("CHRG_AMOUNT_REMAINING" AS float) AS "CHRG_AMOUNT_REMAINING"
                        ,CAST("CHRG_ACCTD_AMOUNT_REMAINING" AS float) AS "CHRG_ACCTD_AMOUNT_REMAINING"
                        ,CAST("FRT_ADJ_REMAINING" AS float) AS "FRT_ADJ_REMAINING"
                        ,CAST("FRT_ADJ_ACCTD_REMAINING" AS float) AS "FRT_ADJ_ACCTD_REMAINING"
                        ,CAST("FRT_ED_AMOUNT" AS float) AS "FRT_ED_AMOUNT"
                        ,CAST("FRT_ED_ACCTD_AMOUNT" AS float) AS "FRT_ED_ACCTD_AMOUNT"
                        ,CAST("FRT_UNED_AMOUNT" AS float) AS "FRT_UNED_AMOUNT"
                        ,CAST("FRT_UNED_ACCTD_AMOUNT" AS float) AS "FRT_UNED_ACCTD_AMOUNT"
                        ,CAST("DEFERRAL_EXCLUSION_FLAG" AS varchar(100) ) AS "DEFERRAL_EXCLUSION_FLAG"
                        ,TRY_CONVERT(datetime2,"RULE_END_DATE",121) AS "RULE_END_DATE"
                        ,CAST("PAYMENT_TRXN_EXTENSION_ID" AS float) AS "PAYMENT_TRXN_EXTENSION_ID"
                        ,CAST("INTEREST_LINE_ID" AS float) AS "INTEREST_LINE_ID"
                        ,CAST("DOC_LINE_ID_INT_1" AS float) AS "DOC_LINE_ID_INT_1"
                        ,CAST("DOC_LINE_ID_INT_2" AS float) AS "DOC_LINE_ID_INT_2"
                        ,CAST("DOC_LINE_ID_INT_3" AS float) AS "DOC_LINE_ID_INT_3"
                        ,CAST("DOC_LINE_ID_INT_4" AS float) AS "DOC_LINE_ID_INT_4"
                        ,CAST("DOC_LINE_ID_INT_5" AS float) AS "DOC_LINE_ID_INT_5"
                        ,CAST("DOC_LINE_ID_CHAR_1" AS varchar(100) ) AS "DOC_LINE_ID_CHAR_1"
                        ,CAST("DOC_LINE_ID_CHAR_2" AS varchar(100) ) AS "DOC_LINE_ID_CHAR_2"
                        ,CAST("DOC_LINE_ID_CHAR_3" AS varchar(100) ) AS "DOC_LINE_ID_CHAR_3"
                        ,CAST("DOC_LINE_ID_CHAR_4" AS varchar(100) ) AS "DOC_LINE_ID_CHAR_4"
                        ,CAST("DOC_LINE_ID_CHAR_5" AS varchar(100) ) AS "DOC_LINE_ID_CHAR_5"
                        ,CAST("TAX_CALC_ACCTD_AMT" AS float) AS "TAX_CALC_ACCTD_AMT"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CUSTOMER_TRX_LINE_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "CUSTOMER_TRX_ID"
                            , "LINE_NUMBER"
                            , "SET_OF_BOOKS_ID"
                            , "REASON_CODE"
                            , "INVENTORY_ITEM_ID"
                            , "DESCRIPTION"
                            , "PREVIOUS_CUSTOMER_TRX_ID"
                            , "PREVIOUS_CUSTOMER_TRX_LINE_ID"
                            , "QUANTITY_ORDERED"
                            , "QUANTITY_CREDITED"
                            , "QUANTITY_INVOICED"
                            , "UNIT_STANDARD_PRICE"
                            , "UNIT_SELLING_PRICE"
                            , "SALES_ORDER"
                            , "SALES_ORDER_REVISION"
                            , "SALES_ORDER_LINE"
                            , "SALES_ORDER_DATE"
                            , "ACCOUNTING_RULE_ID"
                            , "ACCOUNTING_RULE_DURATION"
                            , "LINE_TYPE"
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
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "RULE_START_DATE"
                            , "INITIAL_CUSTOMER_TRX_LINE_ID"
                            , "INTERFACE_LINE_CONTEXT"
                            , "INTERFACE_LINE_ATTRIBUTE1"
                            , "INTERFACE_LINE_ATTRIBUTE2"
                            , "INTERFACE_LINE_ATTRIBUTE3"
                            , "INTERFACE_LINE_ATTRIBUTE4"
                            , "INTERFACE_LINE_ATTRIBUTE5"
                            , "INTERFACE_LINE_ATTRIBUTE6"
                            , "INTERFACE_LINE_ATTRIBUTE7"
                            , "INTERFACE_LINE_ATTRIBUTE8"
                            , "SALES_ORDER_SOURCE"
                            , "TAXABLE_FLAG"
                            , "EXTENDED_AMOUNT"
                            , "REVENUE_AMOUNT"
                            , "AUTORULE_COMPLETE_FLAG"
                            , "LINK_TO_CUST_TRX_LINE_ID"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "TAX_PRECEDENCE"
                            , "TAX_RATE"
                            , "ITEM_EXCEPTION_RATE_ID"
                            , "TAX_EXEMPTION_ID"
                            , "MEMO_LINE_ID"
                            , "AUTORULE_DURATION_PROCESSED"
                            , "UOM_CODE"
                            , "DEFAULT_USSGL_TRANSACTION_CODE"
                            , "DEFAULT_USSGL_TRX_CODE_CONTEXT"
                            , "INTERFACE_LINE_ATTRIBUTE10"
                            , "INTERFACE_LINE_ATTRIBUTE11"
                            , "INTERFACE_LINE_ATTRIBUTE12"
                            , "INTERFACE_LINE_ATTRIBUTE13"
                            , "INTERFACE_LINE_ATTRIBUTE14"
                            , "INTERFACE_LINE_ATTRIBUTE15"
                            , "INTERFACE_LINE_ATTRIBUTE9"
                            , "VAT_TAX_ID"
                            , "AUTOTAX"
                            , "LAST_PERIOD_TO_CREDIT"
                            , "ITEM_CONTEXT"
                            , "TAX_EXEMPT_FLAG"
                            , "TAX_EXEMPT_NUMBER"
                            , "TAX_EXEMPT_REASON_CODE"
                            , "TAX_VENDOR_RETURN_CODE"
                            , "SALES_TAX_ID"
                            , "LOCATION_SEGMENT_ID"
                            , "MOVEMENT_ID"
                            , "ORG_ID"
                            , "WH_UPDATE_DATE"
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
                            , "GLOBAL_ATTRIBUTE_CATEGORY"
                            , "GROSS_UNIT_SELLING_PRICE"
                            , "GROSS_EXTENDED_AMOUNT"
                            , "AMOUNT_INCLUDES_TAX_FLAG"
                            , "TAXABLE_AMOUNT"
                            , "WAREHOUSE_ID"
                            , "TRANSLATED_DESCRIPTION"
                            , "EXTENDED_ACCTD_AMOUNT"
                            , "BR_REF_CUSTOMER_TRX_ID"
                            , "BR_REF_PAYMENT_SCHEDULE_ID"
                            , "BR_ADJUSTMENT_ID"
                            , "MRC_EXTENDED_ACCTD_AMOUNT"
                            , "PAYMENT_SET_ID"
                            , "CONTRACT_LINE_ID"
                            , "SOURCE_DATA_KEY1"
                            , "SOURCE_DATA_KEY2"
                            , "SOURCE_DATA_KEY3"
                            , "SOURCE_DATA_KEY4"
                            , "SOURCE_DATA_KEY5"
                            , "INVOICED_LINE_ACCTG_LEVEL"
                            , "OVERRIDE_AUTO_ACCOUNTING_FLAG"
                            , "SHIP_TO_CUSTOMER_ID"
                            , "SHIP_TO_ADDRESS_ID"
                            , "SHIP_TO_SITE_USE_ID"
                            , "SHIP_TO_CONTACT_ID"
                            , "HISTORICAL_FLAG"
                            , "TAX_LINE_ID"
                            , "LINE_RECOVERABLE"
                            , "TAX_RECOVERABLE"
                            , "TAX_CLASSIFICATION_CODE"
                            , "AMOUNT_DUE_REMAINING"
                            , "ACCTD_AMOUNT_DUE_REMAINING"
                            , "AMOUNT_DUE_ORIGINAL"
                            , "ACCTD_AMOUNT_DUE_ORIGINAL"
                            , "CHRG_AMOUNT_REMAINING"
                            , "CHRG_ACCTD_AMOUNT_REMAINING"
                            , "FRT_ADJ_REMAINING"
                            , "FRT_ADJ_ACCTD_REMAINING"
                            , "FRT_ED_AMOUNT"
                            , "FRT_ED_ACCTD_AMOUNT"
                            , "FRT_UNED_AMOUNT"
                            , "FRT_UNED_ACCTD_AMOUNT"
                            , "DEFERRAL_EXCLUSION_FLAG"
                            , "RULE_END_DATE"
                            , "PAYMENT_TRXN_EXTENSION_ID"
                            , "INTEREST_LINE_ID"
                            , "DOC_LINE_ID_INT_1"
                            , "DOC_LINE_ID_INT_2"
                            , "DOC_LINE_ID_INT_3"
                            , "DOC_LINE_ID_INT_4"
                            , "DOC_LINE_ID_INT_5"
                            , "DOC_LINE_ID_CHAR_1"
                            , "DOC_LINE_ID_CHAR_2"
                            , "DOC_LINE_ID_CHAR_3"
                            , "DOC_LINE_ID_CHAR_4"
                            , "DOC_LINE_ID_CHAR_5"
                            , "TAX_CALC_ACCTD_AMT"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_RA_CUSTOMER_TRX_LINES_ALL"
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