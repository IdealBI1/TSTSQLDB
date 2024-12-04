

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        6/05/2022 1:01:44 am
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL";
    
    Source                                     Destination                               
    ---------------------------------------    ---------------------------------------- 
    STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL"    "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-06    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL"
                (
                    "EXT_PAYER_ID"
                    ,"PAYMENT_FUNCTION"
                    ,"PARTY_ID"
                    ,"ORG_TYPE"
                    ,"ORG_ID"
                    ,"CUST_ACCOUNT_ID"
                    ,"ACCT_SITE_USE_ID"
                    ,"BANK_CHARGE_BEARER_CODE"
                    ,"DIRDEB_INSTRUCTION_CODE"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"DEBIT_ADVICE_DELIVERY_METHOD"
                    ,"DEBIT_ADVICE_EMAIL"
                    ,"DEBIT_ADVICE_FAX"
                    ,"LOCALINSTR"
                    ,"SERVICE_LEVEL"
                    ,"PURPOSE_CODE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "EXT_PAYER_ID"
                    ,"PAYMENT_FUNCTION"
                    ,"PARTY_ID"
                    ,"ORG_TYPE"
                    ,"ORG_ID"
                    ,"CUST_ACCOUNT_ID"
                    ,"ACCT_SITE_USE_ID"
                    ,"BANK_CHARGE_BEARER_CODE"
                    ,"DIRDEB_INSTRUCTION_CODE"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"DEBIT_ADVICE_DELIVERY_METHOD"
                    ,"DEBIT_ADVICE_EMAIL"
                    ,"DEBIT_ADVICE_FAX"
                    ,"LOCALINSTR"
                    ,"SERVICE_LEVEL"
                    ,"PURPOSE_CODE"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL" H					Join "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL" S						On H.EXT_PAYER_ID= S.EXT_PAYER_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
