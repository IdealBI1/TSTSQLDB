﻿

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_AR_ADJUSTMENTS_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:59:03 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_AR_ADJUSTMENTS_ALL";
    
    Source                                Destination                          
    ----------------------------------    ----------------------------------- 
    STG"."STG_EBS_AR_ADJUSTMENTS_ALL"    "HSTG"."HSTG_EBS_AR_ADJUSTMENTS_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_AR_ADJUSTMENTS_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_AR_ADJUSTMENTS_ALL"
                (
                    "ADJUSTMENT_ID"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"AMOUNT"
                    ,"APPLY_DATE"
                    ,"GL_DATE"
                    ,"SET_OF_BOOKS_ID"
                    ,"CODE_COMBINATION_ID"
                    ,"TYPE"
                    ,"ADJUSTMENT_TYPE"
                    ,"STATUS"
                    ,"LINE_ADJUSTED"
                    ,"FREIGHT_ADJUSTED"
                    ,"TAX_ADJUSTED"
                    ,"RECEIVABLES_CHARGES_ADJUSTED"
                    ,"ASSOCIATED_CASH_RECEIPT_ID"
                    ,"CHARGEBACK_CUSTOMER_TRX_ID"
                    ,"BATCH_ID"
                    ,"CUSTOMER_TRX_ID"
                    ,"CUSTOMER_TRX_LINE_ID"
                    ,"SUBSEQUENT_TRX_ID"
                    ,"PAYMENT_SCHEDULE_ID"
                    ,"RECEIVABLES_TRX_ID"
                    ,"DISTRIBUTION_SET_ID"
                    ,"GL_POSTED_DATE"
                    ,"COMMENTS"
                    ,"AUTOMATICALLY_GENERATED"
                    ,"CREATED_FROM"
                    ,"REASON_CODE"
                    ,"POSTABLE"
                    ,"APPROVED_BY"
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
                    ,"POSTING_CONTROL_ID"
                    ,"ACCTD_AMOUNT"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"ADJUSTMENT_NUMBER"
                    ,"ORG_ID"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"USSGL_TRANSACTION_CODE_CONTEXT"
                    ,"DOC_SEQUENCE_VALUE"
                    ,"DOC_SEQUENCE_ID"
                    ,"ASSOCIATED_APPLICATION_ID"
                    ,"CONS_INV_ID"
                    ,"MRC_GL_POSTED_DATE"
                    ,"MRC_POSTING_CONTROL_ID"
                    ,"MRC_ACCTD_AMOUNT"
                    ,"ADJ_TAX_ACCT_RULE"
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
                    ,"LINK_TO_TRX_HIST_ID"
                    ,"EVENT_ID"
                    ,"UPGRADE_METHOD"
                    ,"AX_ACCOUNTED_FLAG"
                    ,"INTEREST_HEADER_ID"
                    ,"INTEREST_LINE_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ADJUSTMENT_ID"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"AMOUNT"
                    ,"APPLY_DATE"
                    ,"GL_DATE"
                    ,"SET_OF_BOOKS_ID"
                    ,"CODE_COMBINATION_ID"
                    ,"TYPE"
                    ,"ADJUSTMENT_TYPE"
                    ,"STATUS"
                    ,"LINE_ADJUSTED"
                    ,"FREIGHT_ADJUSTED"
                    ,"TAX_ADJUSTED"
                    ,"RECEIVABLES_CHARGES_ADJUSTED"
                    ,"ASSOCIATED_CASH_RECEIPT_ID"
                    ,"CHARGEBACK_CUSTOMER_TRX_ID"
                    ,"BATCH_ID"
                    ,"CUSTOMER_TRX_ID"
                    ,"CUSTOMER_TRX_LINE_ID"
                    ,"SUBSEQUENT_TRX_ID"
                    ,"PAYMENT_SCHEDULE_ID"
                    ,"RECEIVABLES_TRX_ID"
                    ,"DISTRIBUTION_SET_ID"
                    ,"GL_POSTED_DATE"
                    ,"COMMENTS"
                    ,"AUTOMATICALLY_GENERATED"
                    ,"CREATED_FROM"
                    ,"REASON_CODE"
                    ,"POSTABLE"
                    ,"APPROVED_BY"
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
                    ,"POSTING_CONTROL_ID"
                    ,"ACCTD_AMOUNT"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"ADJUSTMENT_NUMBER"
                    ,"ORG_ID"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"USSGL_TRANSACTION_CODE_CONTEXT"
                    ,"DOC_SEQUENCE_VALUE"
                    ,"DOC_SEQUENCE_ID"
                    ,"ASSOCIATED_APPLICATION_ID"
                    ,"CONS_INV_ID"
                    ,"MRC_GL_POSTED_DATE"
                    ,"MRC_POSTING_CONTROL_ID"
                    ,"MRC_ACCTD_AMOUNT"
                    ,"ADJ_TAX_ACCT_RULE"
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
                    ,"LINK_TO_TRX_HIST_ID"
                    ,"EVENT_ID"
                    ,"UPGRADE_METHOD"
                    ,"AX_ACCOUNTED_FLAG"
                    ,"INTEREST_HEADER_ID"
                    ,"INTEREST_LINE_ID"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_AR_ADJUSTMENTS_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_AR_ADJUSTMENTS_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_EBS_AR_ADJUSTMENTS_ALL" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_EBS_AR_ADJUSTMENTS_ALL" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
            
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
