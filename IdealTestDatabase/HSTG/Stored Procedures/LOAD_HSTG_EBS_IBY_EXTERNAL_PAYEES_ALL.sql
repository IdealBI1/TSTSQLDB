

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:59:01 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL";
    
    Source                                     Destination                               
    ---------------------------------------    ---------------------------------------- 
    STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL"    "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL"
                (
                    "EXT_PAYEE_ID"
                    ,"PAYEE_PARTY_ID"
                    ,"PAYMENT_FUNCTION"
                    ,"EXCLUSIVE_PAYMENT_FLAG"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_SITE_ID"
                    ,"SUPPLIER_SITE_ID"
                    ,"ORG_ID"
                    ,"ORG_TYPE"
                    ,"DEFAULT_PAYMENT_METHOD_CODE"
                    ,"ECE_TP_LOCATION_CODE"
                    ,"BANK_CHARGE_BEARER"
                    ,"BANK_INSTRUCTION1_CODE"
                    ,"BANK_INSTRUCTION2_CODE"
                    ,"BANK_INSTRUCTION_DETAILS"
                    ,"PAYMENT_REASON_CODE"
                    ,"PAYMENT_REASON_COMMENTS"
                    ,"INACTIVE_DATE"
                    ,"PAYMENT_TEXT_MESSAGE1"
                    ,"PAYMENT_TEXT_MESSAGE2"
                    ,"PAYMENT_TEXT_MESSAGE3"
                    ,"DELIVERY_CHANNEL_CODE"
                    ,"PAYMENT_FORMAT_CODE"
                    ,"SETTLEMENT_PRIORITY"
                    ,"REMIT_ADVICE_DELIVERY_METHOD"
                    ,"REMIT_ADVICE_EMAIL"
                    ,"REMIT_ADVICE_FAX"
                    ,"SERVICE_LEVEL_CODE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "EXT_PAYEE_ID"
                    ,"PAYEE_PARTY_ID"
                    ,"PAYMENT_FUNCTION"
                    ,"EXCLUSIVE_PAYMENT_FLAG"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_SITE_ID"
                    ,"SUPPLIER_SITE_ID"
                    ,"ORG_ID"
                    ,"ORG_TYPE"
                    ,"DEFAULT_PAYMENT_METHOD_CODE"
                    ,"ECE_TP_LOCATION_CODE"
                    ,"BANK_CHARGE_BEARER"
                    ,"BANK_INSTRUCTION1_CODE"
                    ,"BANK_INSTRUCTION2_CODE"
                    ,"BANK_INSTRUCTION_DETAILS"
                    ,"PAYMENT_REASON_CODE"
                    ,"PAYMENT_REASON_COMMENTS"
                    ,"INACTIVE_DATE"
                    ,"PAYMENT_TEXT_MESSAGE1"
                    ,"PAYMENT_TEXT_MESSAGE2"
                    ,"PAYMENT_TEXT_MESSAGE3"
                    ,"DELIVERY_CHANNEL_CODE"
                    ,"PAYMENT_FORMAT_CODE"
                    ,"SETTLEMENT_PRIORITY"
                    ,"REMIT_ADVICE_DELIVERY_METHOD"
                    ,"REMIT_ADVICE_EMAIL"
                    ,"REMIT_ADVICE_FAX"
                    ,"SERVICE_LEVEL_CODE"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYEES_ALL" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
            
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
