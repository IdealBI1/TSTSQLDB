﻿

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:42 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL";
    
    Source                                       Destination                                 
    -----------------------------------------    ------------------------------------------ 
    STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL"    "HSTG"."HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_RA_CUSTOMER_TRX_LINES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 
            
            
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