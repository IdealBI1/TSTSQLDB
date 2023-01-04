
CREATE PROCEDURE "STG"."LOAD_STG_EBS_IBY_EXTERNAL_PAYERS_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        6/05/2022 1:00:20 am
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_IBY_EXTERNAL_PAYERS_ALL";
    
    
    Source                                     Destination                             
    ---------------------------------------    --------------------------------------- 
    LND"."LND_EBS_IBY_EXTERNAL_PAYERS_ALL"    "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_IBY_EXTERNAL_PAYERS_ALL"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("EXT_PAYER_ID" AS float) AS "EXT_PAYER_ID"
                        ,CAST("PAYMENT_FUNCTION" AS varchar(100) ) AS "PAYMENT_FUNCTION"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("ORG_TYPE" AS varchar(100) ) AS "ORG_TYPE"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("CUST_ACCOUNT_ID" AS float) AS "CUST_ACCOUNT_ID"
                        ,CAST("ACCT_SITE_USE_ID" AS float) AS "ACCT_SITE_USE_ID"
                        ,CAST("BANK_CHARGE_BEARER_CODE" AS varchar(100) ) AS "BANK_CHARGE_BEARER_CODE"
                        ,CAST("DIRDEB_INSTRUCTION_CODE" AS varchar(100) ) AS "DIRDEB_INSTRUCTION_CODE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("DEBIT_ADVICE_DELIVERY_METHOD" AS varchar(100) ) AS "DEBIT_ADVICE_DELIVERY_METHOD"
                        ,CAST("DEBIT_ADVICE_EMAIL" AS varchar(1000) ) AS "DEBIT_ADVICE_EMAIL"
                        ,CAST("DEBIT_ADVICE_FAX" AS varchar(1000) ) AS "DEBIT_ADVICE_FAX"
                        ,CAST("LOCALINSTR" AS varchar(100) ) AS "LOCALINSTR"
                        ,CAST("SERVICE_LEVEL" AS varchar(100) ) AS "SERVICE_LEVEL"
                        ,CAST("PURPOSE_CODE" AS varchar(100) ) AS "PURPOSE_CODE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "EXT_PAYER_ID"
                            , "PAYMENT_FUNCTION"
                            , "PARTY_ID"
                            , "ORG_TYPE"
                            , "ORG_ID"
                            , "CUST_ACCOUNT_ID"
                            , "ACCT_SITE_USE_ID"
                            , "BANK_CHARGE_BEARER_CODE"
                            , "DIRDEB_INSTRUCTION_CODE"
                            , "CREATED_BY"
                            , "CREATION_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATE_LOGIN"
                            , "OBJECT_VERSION_NUMBER"
                            , "DEBIT_ADVICE_DELIVERY_METHOD"
                            , "DEBIT_ADVICE_EMAIL"
                            , "DEBIT_ADVICE_FAX"
                            , "LOCALINSTR"
                            , "SERVICE_LEVEL"
                            , "PURPOSE_CODE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_IBY_EXTERNAL_PAYERS_ALL"
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
/**********************************************************************************************************************************************************************************************************/
