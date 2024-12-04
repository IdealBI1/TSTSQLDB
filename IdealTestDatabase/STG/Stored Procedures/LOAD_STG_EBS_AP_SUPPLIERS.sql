

CREATE PROCEDURE "STG"."LOAD_STG_EBS_AP_SUPPLIERS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:39 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_AP_SUPPLIERS";
    
    
    Source                          Destination                  
    ----------------------------    ---------------------------- 
    LND"."LND_EBS_AP_SUPPLIERS"    "STG"."STG_EBS_AP_SUPPLIERS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_AP_SUPPLIERS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_AP_SUPPLIERS"
                (
                    "VENDOR_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"VENDOR_NAME"
                    ,"VENDOR_NAME_ALT"
                    ,"SEGMENT1"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"EMPLOYEE_ID"
                    ,"VENDOR_TYPE_LOOKUP_CODE"
                    ,"CUSTOMER_NUM"
                    ,"ONE_TIME_FLAG"
                    ,"PARENT_VENDOR_ID"
                    ,"MIN_ORDER_AMOUNT"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"BILL_TO_LOCATION_ID"
                    ,"SHIP_VIA_LOOKUP_CODE"
                    ,"FREIGHT_TERMS_LOOKUP_CODE"
                    ,"FOB_LOOKUP_CODE"
                    ,"TERMS_ID"
                    ,"SET_OF_BOOKS_ID"
                    ,"CREDIT_STATUS_LOOKUP_CODE"
                    ,"CREDIT_LIMIT"
                    ,"ALWAYS_TAKE_DISC_FLAG"
                    ,"PAY_DATE_BASIS_LOOKUP_CODE"
                    ,"PAY_GROUP_LOOKUP_CODE"
                    ,"PAYMENT_PRIORITY"
                    ,"INVOICE_CURRENCY_CODE"
                    ,"PAYMENT_CURRENCY_CODE"
                    ,"INVOICE_AMOUNT_LIMIT"
                    ,"EXCHANGE_DATE_LOOKUP_CODE"
                    ,"HOLD_ALL_PAYMENTS_FLAG"
                    ,"HOLD_FUTURE_PAYMENTS_FLAG"
                    ,"HOLD_REASON"
                    ,"DISTRIBUTION_SET_ID"
                    ,"ACCTS_PAY_CODE_COMBINATION_ID"
                    ,"DISC_LOST_CODE_COMBINATION_ID"
                    ,"DISC_TAKEN_CODE_COMBINATION_ID"
                    ,"EXPENSE_CODE_COMBINATION_ID"
                    ,"PREPAY_CODE_COMBINATION_ID"
                    ,"NUM_1099"
                    ,"TYPE_1099"
                    ,"WITHHOLDING_STATUS_LOOKUP_CODE"
                    ,"WITHHOLDING_START_DATE"
                    ,"ORGANIZATION_TYPE_LOOKUP_CODE"
                    ,"VAT_CODE"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"MINORITY_GROUP_LOOKUP_CODE"
                    ,"PAYMENT_METHOD_LOOKUP_CODE"
                    ,"BANK_ACCOUNT_NAME"
                    ,"BANK_ACCOUNT_NUM"
                    ,"BANK_NUM"
                    ,"BANK_ACCOUNT_TYPE"
                    ,"WOMEN_OWNED_FLAG"
                    ,"SMALL_BUSINESS_FLAG"
                    ,"STANDARD_INDUSTRY_CLASS"
                    ,"HOLD_FLAG"
                    ,"PURCHASING_HOLD_REASON"
                    ,"HOLD_BY"
                    ,"HOLD_DATE"
                    ,"TERMS_DATE_BASIS"
                    ,"PRICE_TOLERANCE"
                    ,"INSPECTION_REQUIRED_FLAG"
                    ,"RECEIPT_REQUIRED_FLAG"
                    ,"QTY_RCV_TOLERANCE"
                    ,"QTY_RCV_EXCEPTION_CODE"
                    ,"ENFORCE_SHIP_TO_LOCATION_CODE"
                    ,"DAYS_EARLY_RECEIPT_ALLOWED"
                    ,"DAYS_LATE_RECEIPT_ALLOWED"
                    ,"RECEIPT_DAYS_EXCEPTION_CODE"
                    ,"RECEIVING_ROUTING_ID"
                    ,"ALLOW_SUBSTITUTE_RECEIPTS_FLAG"
                    ,"ALLOW_UNORDERED_RECEIPTS_FLAG"
                    ,"HOLD_UNMATCHED_INVOICES_FLAG"
                    ,"EXCLUSIVE_PAYMENT_FLAG"
                    ,"AP_TAX_ROUNDING_RULE"
                    ,"AUTO_TAX_CALC_FLAG"
                    ,"AUTO_TAX_CALC_OVERRIDE"
                    ,"AMOUNT_INCLUDES_TAX_FLAG"
                    ,"TAX_VERIFICATION_DATE"
                    ,"NAME_CONTROL"
                    ,"STATE_REPORTABLE_FLAG"
                    ,"FEDERAL_REPORTABLE_FLAG"
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
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"OFFSET_VAT_CODE"
                    ,"VAT_REGISTRATION_NUM"
                    ,"AUTO_CALCULATE_INTEREST_FLAG"
                    ,"VALIDATION_NUMBER"
                    ,"EXCLUDE_FREIGHT_FROM_DISCOUNT"
                    ,"TAX_REPORTING_NAME"
                    ,"CHECK_DIGITS"
                    ,"BANK_NUMBER"
                    ,"ALLOW_AWT_FLAG"
                    ,"AWT_GROUP_ID"
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
                    ,"EDI_TRANSACTION_HANDLING"
                    ,"EDI_PAYMENT_METHOD"
                    ,"EDI_PAYMENT_FORMAT"
                    ,"EDI_REMITTANCE_METHOD"
                    ,"EDI_REMITTANCE_INSTRUCTION"
                    ,"BANK_CHARGE_BEARER"
                    ,"BANK_BRANCH_TYPE"
                    ,"MATCH_OPTION"
                    ,"FUTURE_DATED_PAYMENT_CCID"
                    ,"CREATE_DEBIT_MEMO_FLAG"
                    ,"OFFSET_TAX_FLAG"
                    ,"PARTY_ID"
                    ,"PARENT_PARTY_ID"
                    ,"NI_NUMBER"
                    ,"TCA_SYNC_NUM_1099"
                    ,"TCA_SYNC_VENDOR_NAME"
                    ,"TCA_SYNC_VAT_REG_NUM"
                    ,"INDIVIDUAL_1099"
                    ,"UNIQUE_TAX_REFERENCE_NUM"
                    ,"PARTNERSHIP_UTR"
                    ,"PARTNERSHIP_NAME"
                    ,"CIS_ENABLED_FLAG"
                    ,"FIRST_NAME"
                    ,"SECOND_NAME"
                    ,"LAST_NAME"
                    ,"SALUTATION"
                    ,"TRADING_NAME"
                    ,"WORK_REFERENCE"
                    ,"COMPANY_REGISTRATION_NUMBER"
                    ,"NATIONAL_INSURANCE_NUMBER"
                    ,"VERIFICATION_NUMBER"
                    ,"VERIFICATION_REQUEST_ID"
                    ,"MATCH_STATUS_FLAG"
                    ,"CIS_VERIFICATION_DATE"
                    ,"PAY_AWT_GROUP_ID"
                    ,"CIS_PARENT_VENDOR_ID"
                    ,"BUS_CLASS_LAST_CERTIFIED_DATE"
                    ,"BUS_CLASS_LAST_CERTIFIED_BY"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("VENDOR_ID" AS float) AS "VENDOR_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("VENDOR_NAME" AS varchar(1000) ) AS "VENDOR_NAME"
                        ,CAST("VENDOR_NAME_ALT" AS varchar(1000) ) AS "VENDOR_NAME_ALT"
                        ,CAST("SEGMENT1" AS varchar(100) ) AS "SEGMENT1"
                        ,CAST("SUMMARY_FLAG" AS varchar(100) ) AS "SUMMARY_FLAG"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("SEGMENT2" AS varchar(100) ) AS "SEGMENT2"
                        ,CAST("SEGMENT3" AS varchar(100) ) AS "SEGMENT3"
                        ,CAST("SEGMENT4" AS varchar(100) ) AS "SEGMENT4"
                        ,CAST("SEGMENT5" AS varchar(100) ) AS "SEGMENT5"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("EMPLOYEE_ID" AS float) AS "EMPLOYEE_ID"
                        ,CAST("VENDOR_TYPE_LOOKUP_CODE" AS varchar(100) ) AS "VENDOR_TYPE_LOOKUP_CODE"
                        ,CAST("CUSTOMER_NUM" AS varchar(100) ) AS "CUSTOMER_NUM"
                        ,CAST("ONE_TIME_FLAG" AS varchar(100) ) AS "ONE_TIME_FLAG"
                        ,CAST("PARENT_VENDOR_ID" AS float) AS "PARENT_VENDOR_ID"
                        ,CAST("MIN_ORDER_AMOUNT" AS float) AS "MIN_ORDER_AMOUNT"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("BILL_TO_LOCATION_ID" AS float) AS "BILL_TO_LOCATION_ID"
                        ,CAST("SHIP_VIA_LOOKUP_CODE" AS varchar(100) ) AS "SHIP_VIA_LOOKUP_CODE"
                        ,CAST("FREIGHT_TERMS_LOOKUP_CODE" AS varchar(100) ) AS "FREIGHT_TERMS_LOOKUP_CODE"
                        ,CAST("FOB_LOOKUP_CODE" AS varchar(100) ) AS "FOB_LOOKUP_CODE"
                        ,CAST("TERMS_ID" AS float) AS "TERMS_ID"
                        ,CAST("SET_OF_BOOKS_ID" AS float) AS "SET_OF_BOOKS_ID"
                        ,CAST("CREDIT_STATUS_LOOKUP_CODE" AS varchar(100) ) AS "CREDIT_STATUS_LOOKUP_CODE"
                        ,CAST("CREDIT_LIMIT" AS float) AS "CREDIT_LIMIT"
                        ,CAST("ALWAYS_TAKE_DISC_FLAG" AS varchar(100) ) AS "ALWAYS_TAKE_DISC_FLAG"
                        ,CAST("PAY_DATE_BASIS_LOOKUP_CODE" AS varchar(100) ) AS "PAY_DATE_BASIS_LOOKUP_CODE"
                        ,CAST("PAY_GROUP_LOOKUP_CODE" AS varchar(100) ) AS "PAY_GROUP_LOOKUP_CODE"
                        ,CAST("PAYMENT_PRIORITY" AS float) AS "PAYMENT_PRIORITY"
                        ,CAST("INVOICE_CURRENCY_CODE" AS varchar(100) ) AS "INVOICE_CURRENCY_CODE"
                        ,CAST("PAYMENT_CURRENCY_CODE" AS varchar(100) ) AS "PAYMENT_CURRENCY_CODE"
                        ,CAST("INVOICE_AMOUNT_LIMIT" AS float) AS "INVOICE_AMOUNT_LIMIT"
                        ,CAST("EXCHANGE_DATE_LOOKUP_CODE" AS varchar(100) ) AS "EXCHANGE_DATE_LOOKUP_CODE"
                        ,CAST("HOLD_ALL_PAYMENTS_FLAG" AS varchar(100) ) AS "HOLD_ALL_PAYMENTS_FLAG"
                        ,CAST("HOLD_FUTURE_PAYMENTS_FLAG" AS varchar(100) ) AS "HOLD_FUTURE_PAYMENTS_FLAG"
                        ,CAST("HOLD_REASON" AS varchar(1000) ) AS "HOLD_REASON"
                        ,CAST("DISTRIBUTION_SET_ID" AS float) AS "DISTRIBUTION_SET_ID"
                        ,CAST("ACCTS_PAY_CODE_COMBINATION_ID" AS float) AS "ACCTS_PAY_CODE_COMBINATION_ID"
                        ,CAST("DISC_LOST_CODE_COMBINATION_ID" AS float) AS "DISC_LOST_CODE_COMBINATION_ID"
                        ,CAST("DISC_TAKEN_CODE_COMBINATION_ID" AS float) AS "DISC_TAKEN_CODE_COMBINATION_ID"
                        ,CAST("EXPENSE_CODE_COMBINATION_ID" AS float) AS "EXPENSE_CODE_COMBINATION_ID"
                        ,CAST("PREPAY_CODE_COMBINATION_ID" AS float) AS "PREPAY_CODE_COMBINATION_ID"
                        ,CAST("NUM_1099" AS varchar(100) ) AS "NUM_1099"
                        ,CAST("TYPE_1099" AS varchar(100) ) AS "TYPE_1099"
                        ,CAST("WITHHOLDING_STATUS_LOOKUP_CODE" AS varchar(100) ) AS "WITHHOLDING_STATUS_LOOKUP_CODE"
                        ,CAST("WITHHOLDING_START_DATE" AS datetime2) AS "WITHHOLDING_START_DATE"
                        ,CAST("ORGANIZATION_TYPE_LOOKUP_CODE" AS varchar(100) ) AS "ORGANIZATION_TYPE_LOOKUP_CODE"
                        ,CAST("VAT_CODE" AS varchar(100) ) AS "VAT_CODE"
                        ,CAST("START_DATE_ACTIVE" AS datetime2) AS "START_DATE_ACTIVE"
                        ,CAST("END_DATE_ACTIVE" AS datetime2) AS "END_DATE_ACTIVE"
                        ,CAST("MINORITY_GROUP_LOOKUP_CODE" AS varchar(100) ) AS "MINORITY_GROUP_LOOKUP_CODE"
                        ,CAST("PAYMENT_METHOD_LOOKUP_CODE" AS varchar(100) ) AS "PAYMENT_METHOD_LOOKUP_CODE"
                        ,CAST("BANK_ACCOUNT_NAME" AS varchar(1000) ) AS "BANK_ACCOUNT_NAME"
                        ,CAST("BANK_ACCOUNT_NUM" AS varchar(100) ) AS "BANK_ACCOUNT_NUM"
                        ,CAST("BANK_NUM" AS varchar(100) ) AS "BANK_NUM"
                        ,CAST("BANK_ACCOUNT_TYPE" AS varchar(100) ) AS "BANK_ACCOUNT_TYPE"
                        ,CAST("WOMEN_OWNED_FLAG" AS varchar(100) ) AS "WOMEN_OWNED_FLAG"
                        ,CAST("SMALL_BUSINESS_FLAG" AS varchar(100) ) AS "SMALL_BUSINESS_FLAG"
                        ,CAST("STANDARD_INDUSTRY_CLASS" AS varchar(100) ) AS "STANDARD_INDUSTRY_CLASS"
                        ,CAST("HOLD_FLAG" AS varchar(100) ) AS "HOLD_FLAG"
                        ,CAST("PURCHASING_HOLD_REASON" AS varchar(1000) ) AS "PURCHASING_HOLD_REASON"
                        ,CAST("HOLD_BY" AS float) AS "HOLD_BY"
                        ,CAST("HOLD_DATE" AS datetime2) AS "HOLD_DATE"
                        ,CAST("TERMS_DATE_BASIS" AS varchar(100) ) AS "TERMS_DATE_BASIS"
                        ,CAST("PRICE_TOLERANCE" AS float) AS "PRICE_TOLERANCE"
                        ,CAST("INSPECTION_REQUIRED_FLAG" AS varchar(100) ) AS "INSPECTION_REQUIRED_FLAG"
                        ,CAST("RECEIPT_REQUIRED_FLAG" AS varchar(100) ) AS "RECEIPT_REQUIRED_FLAG"
                        ,CAST("QTY_RCV_TOLERANCE" AS float) AS "QTY_RCV_TOLERANCE"
                        ,CAST("QTY_RCV_EXCEPTION_CODE" AS varchar(100) ) AS "QTY_RCV_EXCEPTION_CODE"
                        ,CAST("ENFORCE_SHIP_TO_LOCATION_CODE" AS varchar(100) ) AS "ENFORCE_SHIP_TO_LOCATION_CODE"
                        ,CAST("DAYS_EARLY_RECEIPT_ALLOWED" AS float) AS "DAYS_EARLY_RECEIPT_ALLOWED"
                        ,CAST("DAYS_LATE_RECEIPT_ALLOWED" AS float) AS "DAYS_LATE_RECEIPT_ALLOWED"
                        ,CAST("RECEIPT_DAYS_EXCEPTION_CODE" AS varchar(100) ) AS "RECEIPT_DAYS_EXCEPTION_CODE"
                        ,CAST("RECEIVING_ROUTING_ID" AS float) AS "RECEIVING_ROUTING_ID"
                        ,CAST("ALLOW_SUBSTITUTE_RECEIPTS_FLAG" AS varchar(100) ) AS "ALLOW_SUBSTITUTE_RECEIPTS_FLAG"
                        ,CAST("ALLOW_UNORDERED_RECEIPTS_FLAG" AS varchar(100) ) AS "ALLOW_UNORDERED_RECEIPTS_FLAG"
                        ,CAST("HOLD_UNMATCHED_INVOICES_FLAG" AS varchar(100) ) AS "HOLD_UNMATCHED_INVOICES_FLAG"
                        ,CAST("EXCLUSIVE_PAYMENT_FLAG" AS varchar(100) ) AS "EXCLUSIVE_PAYMENT_FLAG"
                        ,CAST("AP_TAX_ROUNDING_RULE" AS varchar(100) ) AS "AP_TAX_ROUNDING_RULE"
                        ,CAST("AUTO_TAX_CALC_FLAG" AS varchar(100) ) AS "AUTO_TAX_CALC_FLAG"
                        ,CAST("AUTO_TAX_CALC_OVERRIDE" AS varchar(100) ) AS "AUTO_TAX_CALC_OVERRIDE"
                        ,CAST("AMOUNT_INCLUDES_TAX_FLAG" AS varchar(100) ) AS "AMOUNT_INCLUDES_TAX_FLAG"
                        ,CAST("TAX_VERIFICATION_DATE" AS datetime2) AS "TAX_VERIFICATION_DATE"
                        ,CAST("NAME_CONTROL" AS varchar(100) ) AS "NAME_CONTROL"
                        ,CAST("STATE_REPORTABLE_FLAG" AS varchar(100) ) AS "STATE_REPORTABLE_FLAG"
                        ,CAST("FEDERAL_REPORTABLE_FLAG" AS varchar(100) ) AS "FEDERAL_REPORTABLE_FLAG"
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
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("OFFSET_VAT_CODE" AS varchar(100) ) AS "OFFSET_VAT_CODE"
                        ,CAST("VAT_REGISTRATION_NUM" AS varchar(100) ) AS "VAT_REGISTRATION_NUM"
                        ,CAST("AUTO_CALCULATE_INTEREST_FLAG" AS varchar(100) ) AS "AUTO_CALCULATE_INTEREST_FLAG"
                        ,CAST("VALIDATION_NUMBER" AS float) AS "VALIDATION_NUMBER"
                        ,CAST("EXCLUDE_FREIGHT_FROM_DISCOUNT" AS varchar(100) ) AS "EXCLUDE_FREIGHT_FROM_DISCOUNT"
                        ,CAST("TAX_REPORTING_NAME" AS varchar(1000) ) AS "TAX_REPORTING_NAME"
                        ,CAST("CHECK_DIGITS" AS varchar(100) ) AS "CHECK_DIGITS"
                        ,CAST("BANK_NUMBER" AS varchar(100) ) AS "BANK_NUMBER"
                        ,CAST("ALLOW_AWT_FLAG" AS varchar(100) ) AS "ALLOW_AWT_FLAG"
                        ,CAST("AWT_GROUP_ID" AS float) AS "AWT_GROUP_ID"
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
                        ,CAST("EDI_TRANSACTION_HANDLING" AS varchar(100) ) AS "EDI_TRANSACTION_HANDLING"
                        ,CAST("EDI_PAYMENT_METHOD" AS varchar(100) ) AS "EDI_PAYMENT_METHOD"
                        ,CAST("EDI_PAYMENT_FORMAT" AS varchar(100) ) AS "EDI_PAYMENT_FORMAT"
                        ,CAST("EDI_REMITTANCE_METHOD" AS varchar(100) ) AS "EDI_REMITTANCE_METHOD"
                        ,CAST("EDI_REMITTANCE_INSTRUCTION" AS varchar(1000) ) AS "EDI_REMITTANCE_INSTRUCTION"
                        ,CAST("BANK_CHARGE_BEARER" AS varchar(100) ) AS "BANK_CHARGE_BEARER"
                        ,CAST("BANK_BRANCH_TYPE" AS varchar(100) ) AS "BANK_BRANCH_TYPE"
                        ,CAST("MATCH_OPTION" AS varchar(100) ) AS "MATCH_OPTION"
                        ,CAST("FUTURE_DATED_PAYMENT_CCID" AS float) AS "FUTURE_DATED_PAYMENT_CCID"
                        ,CAST("CREATE_DEBIT_MEMO_FLAG" AS varchar(100) ) AS "CREATE_DEBIT_MEMO_FLAG"
                        ,CAST("OFFSET_TAX_FLAG" AS varchar(100) ) AS "OFFSET_TAX_FLAG"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("PARENT_PARTY_ID" AS float) AS "PARENT_PARTY_ID"
                        ,CAST("NI_NUMBER" AS varchar(100) ) AS "NI_NUMBER"
                        ,CAST("TCA_SYNC_NUM_1099" AS varchar(100) ) AS "TCA_SYNC_NUM_1099"
                        ,CAST("TCA_SYNC_VENDOR_NAME" AS varchar(1000) ) AS "TCA_SYNC_VENDOR_NAME"
                        ,CAST("TCA_SYNC_VAT_REG_NUM" AS varchar(1000) ) AS "TCA_SYNC_VAT_REG_NUM"
                        ,CAST("INDIVIDUAL_1099" AS varchar(100) ) AS "INDIVIDUAL_1099"
                        ,CAST("UNIQUE_TAX_REFERENCE_NUM" AS float) AS "UNIQUE_TAX_REFERENCE_NUM"
                        ,CAST("PARTNERSHIP_UTR" AS float) AS "PARTNERSHIP_UTR"
                        ,CAST("PARTNERSHIP_NAME" AS varchar(1000) ) AS "PARTNERSHIP_NAME"
                        ,CAST("CIS_ENABLED_FLAG" AS varchar(100) ) AS "CIS_ENABLED_FLAG"
                        ,CAST("FIRST_NAME" AS varchar(1000) ) AS "FIRST_NAME"
                        ,CAST("SECOND_NAME" AS varchar(1000) ) AS "SECOND_NAME"
                        ,CAST("LAST_NAME" AS varchar(1000) ) AS "LAST_NAME"
                        ,CAST("SALUTATION" AS varchar(100) ) AS "SALUTATION"
                        ,CAST("TRADING_NAME" AS varchar(1000) ) AS "TRADING_NAME"
                        ,CAST("WORK_REFERENCE" AS varchar(100) ) AS "WORK_REFERENCE"
                        ,CAST("COMPANY_REGISTRATION_NUMBER" AS varchar(100) ) AS "COMPANY_REGISTRATION_NUMBER"
                        ,CAST("NATIONAL_INSURANCE_NUMBER" AS varchar(100) ) AS "NATIONAL_INSURANCE_NUMBER"
                        ,CAST("VERIFICATION_NUMBER" AS varchar(100) ) AS "VERIFICATION_NUMBER"
                        ,CAST("VERIFICATION_REQUEST_ID" AS float) AS "VERIFICATION_REQUEST_ID"
                        ,CAST("MATCH_STATUS_FLAG" AS varchar(100) ) AS "MATCH_STATUS_FLAG"
                        ,CAST("CIS_VERIFICATION_DATE" AS datetime2) AS "CIS_VERIFICATION_DATE"
                        ,CAST("PAY_AWT_GROUP_ID" AS float) AS "PAY_AWT_GROUP_ID"
                        ,CAST("CIS_PARENT_VENDOR_ID" AS float) AS "CIS_PARENT_VENDOR_ID"
                        ,CAST("BUS_CLASS_LAST_CERTIFIED_DATE" AS datetime2) AS "BUS_CLASS_LAST_CERTIFIED_DATE"
                        ,CAST("BUS_CLASS_LAST_CERTIFIED_BY" AS float) AS "BUS_CLASS_LAST_CERTIFIED_BY"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("VENDOR_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_NAME_ALT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUMMARY_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EMPLOYEE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CUSTOMER_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ONE_TIME_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARENT_VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MIN_ORDER_AMOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BILL_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_VIA_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FREIGHT_TERMS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FOB_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TERMS_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SET_OF_BOOKS_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREDIT_STATUS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREDIT_LIMIT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALWAYS_TAKE_DISC_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAY_DATE_BASIS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAY_GROUP_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAYMENT_PRIORITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVOICE_CURRENCY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAYMENT_CURRENCY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVOICE_AMOUNT_LIMIT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCHANGE_DATE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_ALL_PAYMENTS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_FUTURE_PAYMENTS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DISTRIBUTION_SET_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ACCTS_PAY_CODE_COMBINATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DISC_LOST_CODE_COMBINATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DISC_TAKEN_CODE_COMBINATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXPENSE_CODE_COMBINATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PREPAY_CODE_COMBINATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NUM_1099"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TYPE_1099"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WITHHOLDING_STATUS_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WITHHOLDING_START_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_TYPE_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VAT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("START_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("END_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MINORITY_GROUP_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAYMENT_METHOD_LOOKUP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_ACCOUNT_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_ACCOUNT_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_ACCOUNT_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WOMEN_OWNED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SMALL_BUSINESS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STANDARD_INDUSTRY_CLASS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PURCHASING_HOLD_REASON"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TERMS_DATE_BASIS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PRICE_TOLERANCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INSPECTION_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIPT_REQUIRED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QTY_RCV_TOLERANCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("QTY_RCV_EXCEPTION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENFORCE_SHIP_TO_LOCATION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DAYS_EARLY_RECEIPT_ALLOWED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DAYS_LATE_RECEIPT_ALLOWED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIPT_DAYS_EXCEPTION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIVING_ROUTING_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALLOW_SUBSTITUTE_RECEIPTS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALLOW_UNORDERED_RECEIPTS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HOLD_UNMATCHED_INVOICES_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCLUSIVE_PAYMENT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AP_TAX_ROUNDING_RULE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTO_TAX_CALC_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTO_TAX_CALC_OVERRIDE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AMOUNT_INCLUDES_TAX_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_VERIFICATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NAME_CONTROL"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STATE_REPORTABLE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FEDERAL_REPORTABLE_FLAG"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OFFSET_VAT_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VAT_REGISTRATION_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTO_CALCULATE_INTEREST_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VALIDATION_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCLUDE_FREIGHT_FROM_DISCOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_REPORTING_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CHECK_DIGITS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALLOW_AWT_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AWT_GROUP_ID"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("EDI_TRANSACTION_HANDLING"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_PAYMENT_METHOD"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_PAYMENT_FORMAT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_REMITTANCE_METHOD"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EDI_REMITTANCE_INSTRUCTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_CHARGE_BEARER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BANK_BRANCH_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATCH_OPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FUTURE_DATED_PAYMENT_CCID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATE_DEBIT_MEMO_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OFFSET_TAX_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARTY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARENT_PARTY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NI_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TCA_SYNC_NUM_1099"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TCA_SYNC_VENDOR_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TCA_SYNC_VAT_REG_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INDIVIDUAL_1099"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNIQUE_TAX_REFERENCE_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARTNERSHIP_UTR"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARTNERSHIP_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CIS_ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FIRST_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECOND_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SALUTATION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TRADING_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WORK_REFERENCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COMPANY_REGISTRATION_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NATIONAL_INSURANCE_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VERIFICATION_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VERIFICATION_REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MATCH_STATUS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CIS_VERIFICATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PAY_AWT_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CIS_PARENT_VENDOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BUS_CLASS_LAST_CERTIFIED_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BUS_CLASS_LAST_CERTIFIED_BY"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_AP_SUPPLIERS"
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
