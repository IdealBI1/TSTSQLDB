CREATE VIEW "HSTG"."VW_HSTG_EBS_AR_PAYMENT_SCHEDULES_ALL" 

AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        2/05/2022 11:27:52 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_AR_PAYMENT_SCHEDULES_ALL"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-02    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "PAYMENT_SCHEDULE_ID"
        ,"STAGED_DUNNING_LEVEL"
        ,"DUNNING_LEVEL_OVERRIDE_DATE"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"DUE_DATE"
        ,"AMOUNT_DUE_ORIGINAL"
        ,"AMOUNT_DUE_REMAINING"
        ,"NUMBER_OF_DUE_DATES"
        ,"STATUS"
        ,"INVOICE_CURRENCY_CODE"
        ,"CLASS"
        ,"CUST_TRX_TYPE_ID"
        ,"CUSTOMER_ID"
        ,"CUSTOMER_SITE_USE_ID"
        ,"CUSTOMER_TRX_ID"
        ,"CASH_RECEIPT_ID"
        ,"ASSOCIATED_CASH_RECEIPT_ID"
        ,"TERM_ID"
        ,"TERMS_SEQUENCE_NUMBER"
        ,"GL_DATE_CLOSED"
        ,"ACTUAL_DATE_CLOSED"
        ,"DISCOUNT_DATE"
        ,"AMOUNT_LINE_ITEMS_ORIGINAL"
        ,"AMOUNT_LINE_ITEMS_REMAINING"
        ,"AMOUNT_APPLIED"
        ,"AMOUNT_ADJUSTED"
        ,"AMOUNT_IN_DISPUTE"
        ,"AMOUNT_CREDITED"
        ,"RECEIVABLES_CHARGES_CHARGED"
        ,"RECEIVABLES_CHARGES_REMAINING"
        ,"FREIGHT_ORIGINAL"
        ,"FREIGHT_REMAINING"
        ,"TAX_ORIGINAL"
        ,"TAX_REMAINING"
        ,"DISCOUNT_ORIGINAL"
        ,"DISCOUNT_REMAINING"
        ,"DISCOUNT_TAKEN_EARNED"
        ,"DISCOUNT_TAKEN_UNEARNED"
        ,"IN_COLLECTION"
        ,"CASH_APPLIED_ID_LAST"
        ,"CASH_APPLIED_DATE_LAST"
        ,"CASH_APPLIED_AMOUNT_LAST"
        ,"CASH_APPLIED_STATUS_LAST"
        ,"CASH_GL_DATE_LAST"
        ,"CASH_RECEIPT_ID_LAST"
        ,"CASH_RECEIPT_DATE_LAST"
        ,"CASH_RECEIPT_AMOUNT_LAST"
        ,"CASH_RECEIPT_STATUS_LAST"
        ,"EXCHANGE_RATE_TYPE"
        ,"EXCHANGE_DATE"
        ,"EXCHANGE_RATE"
        ,"ADJUSTMENT_ID_LAST"
        ,"ADJUSTMENT_DATE_LAST"
        ,"ADJUSTMENT_GL_DATE_LAST"
        ,"ADJUSTMENT_AMOUNT_LAST"
        ,"FOLLOW_UP_DATE_LAST"
        ,"FOLLOW_UP_CODE_LAST"
        ,"PROMISE_DATE_LAST"
        ,"PROMISE_AMOUNT_LAST"
        ,"COLLECTOR_LAST"
        ,"CALL_DATE_LAST"
        ,"TRX_NUMBER"
        ,"TRX_DATE"
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
        ,"REVERSED_CASH_RECEIPT_ID"
        ,"AMOUNT_ADJUSTED_PENDING"
        ,"ATTRIBUTE11"
        ,"ATTRIBUTE12"
        ,"ATTRIBUTE13"
        ,"ATTRIBUTE14"
        ,"ATTRIBUTE15"
        ,"GL_DATE"
        ,"ACCTD_AMOUNT_DUE_REMAINING"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
        ,"RECEIPT_CONFIRMED_FLAG"
        ,"REQUEST_ID"
        ,"SELECTED_FOR_RECEIPT_BATCH_ID"
        ,"LAST_CHARGE_DATE"
        ,"SECOND_LAST_CHARGE_DATE"
        ,"DISPUTE_DATE"
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
        ,"CONS_INV_ID"
        ,"CONS_INV_ID_REV"
        ,"EXCLUDE_FROM_DUNNING_FLAG"
        ,"MRC_CUSTOMER_TRX_ID"
        ,"MRC_EXCHANGE_RATE_TYPE"
        ,"MRC_EXCHANGE_DATE"
        ,"MRC_EXCHANGE_RATE"
        ,"MRC_ACCTD_AMOUNT_DUE_REMAINING"
        ,"BR_AMOUNT_ASSIGNED"
        ,"RESERVED_TYPE"
        ,"RESERVED_VALUE"
        ,"ACTIVE_CLAIM_FLAG"
        ,"EXCLUDE_FROM_CONS_BILL_FLAG"
        ,"PAYMENT_APPROVAL"
        ,"OMD_INSERT_DATETIME"
        ,"OMD_FILE_NAME"
        ,"OMD_HASH_FULL_RECORD"
        ,"OMD_IS_RECORD_DELETED"
        ,"OMD_CURRENT_RECORD_INDICATOR"
        ,'EBS'  "OMD_RECORD_SOURCE"
    FROM "HSTG"."HSTG_EBS_AR_PAYMENT_SCHEDULES_ALL" H
    WHERE OMD_CURRENT_RECORD_INDICATOR= 'Y'
/**********************************************************************************************************************************************************************************************************/
