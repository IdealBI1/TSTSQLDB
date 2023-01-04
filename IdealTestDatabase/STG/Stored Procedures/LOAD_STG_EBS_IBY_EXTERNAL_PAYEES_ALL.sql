
CREATE PROCEDURE "STG"."LOAD_STG_EBS_IBY_EXTERNAL_PAYEES_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:50 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_IBY_EXTERNAL_PAYEES_ALL";
    
    
    Source                                     Destination                             
    ---------------------------------------    --------------------------------------- 
    LND"."LND_EBS_IBY_EXTERNAL_PAYEES_ALL"    "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-05    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_IBY_EXTERNAL_PAYEES_ALL"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("EXT_PAYEE_ID" AS float) AS "EXT_PAYEE_ID"
                        ,CAST("PAYEE_PARTY_ID" AS float) AS "PAYEE_PARTY_ID"
                        ,CAST("PAYMENT_FUNCTION" AS varchar(100) ) AS "PAYMENT_FUNCTION"
                        ,CAST("EXCLUSIVE_PAYMENT_FLAG" AS varchar(100) ) AS "EXCLUSIVE_PAYMENT_FLAG"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("PARTY_SITE_ID" AS float) AS "PARTY_SITE_ID"
                        ,CAST("SUPPLIER_SITE_ID" AS float) AS "SUPPLIER_SITE_ID"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("ORG_TYPE" AS varchar(100) ) AS "ORG_TYPE"
                        ,CAST("DEFAULT_PAYMENT_METHOD_CODE" AS varchar(100) ) AS "DEFAULT_PAYMENT_METHOD_CODE"
                        ,CAST("ECE_TP_LOCATION_CODE" AS varchar(1000) ) AS "ECE_TP_LOCATION_CODE"
                        ,CAST("BANK_CHARGE_BEARER" AS varchar(100) ) AS "BANK_CHARGE_BEARER"
                        ,CAST("BANK_INSTRUCTION1_CODE" AS varchar(100) ) AS "BANK_INSTRUCTION1_CODE"
                        ,CAST("BANK_INSTRUCTION2_CODE" AS varchar(100) ) AS "BANK_INSTRUCTION2_CODE"
                        ,CAST("BANK_INSTRUCTION_DETAILS" AS varchar(1000) ) AS "BANK_INSTRUCTION_DETAILS"
                        ,CAST("PAYMENT_REASON_CODE" AS varchar(100) ) AS "PAYMENT_REASON_CODE"
                        ,CAST("PAYMENT_REASON_COMMENTS" AS varchar(1000) ) AS "PAYMENT_REASON_COMMENTS"
                        ,CAST("INACTIVE_DATE"  AS datetime2) AS "INACTIVE_DATE"
                        ,CAST("PAYMENT_TEXT_MESSAGE1" AS varchar(1000) ) AS "PAYMENT_TEXT_MESSAGE1"
                        ,CAST("PAYMENT_TEXT_MESSAGE2" AS varchar(1000) ) AS "PAYMENT_TEXT_MESSAGE2"
                        ,CAST("PAYMENT_TEXT_MESSAGE3" AS varchar(1000) ) AS "PAYMENT_TEXT_MESSAGE3"
                        ,CAST("DELIVERY_CHANNEL_CODE" AS varchar(100) ) AS "DELIVERY_CHANNEL_CODE"
                        ,CAST("PAYMENT_FORMAT_CODE" AS varchar(100) ) AS "PAYMENT_FORMAT_CODE"
                        ,CAST("SETTLEMENT_PRIORITY" AS varchar(100) ) AS "SETTLEMENT_PRIORITY"
                        ,CAST("REMIT_ADVICE_DELIVERY_METHOD" AS varchar(100) ) AS "REMIT_ADVICE_DELIVERY_METHOD"
                        ,CAST("REMIT_ADVICE_EMAIL" AS varchar(1000) ) AS "REMIT_ADVICE_EMAIL"
                        ,CAST("REMIT_ADVICE_FAX" AS varchar(1000) ) AS "REMIT_ADVICE_FAX"
                        ,CAST("SERVICE_LEVEL_CODE" AS varchar(100) ) AS "SERVICE_LEVEL_CODE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "EXT_PAYEE_ID"
                            , "PAYEE_PARTY_ID"
                            , "PAYMENT_FUNCTION"
                            , "EXCLUSIVE_PAYMENT_FLAG"
                            , "CREATED_BY"
                            , "CREATION_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATE_LOGIN"
                            , "OBJECT_VERSION_NUMBER"
                            , "PARTY_SITE_ID"
                            , "SUPPLIER_SITE_ID"
                            , "ORG_ID"
                            , "ORG_TYPE"
                            , "DEFAULT_PAYMENT_METHOD_CODE"
                            , "ECE_TP_LOCATION_CODE"
                            , "BANK_CHARGE_BEARER"
                            , "BANK_INSTRUCTION1_CODE"
                            , "BANK_INSTRUCTION2_CODE"
                            , "BANK_INSTRUCTION_DETAILS"
                            , "PAYMENT_REASON_CODE"
                            , "PAYMENT_REASON_COMMENTS"
                            , "INACTIVE_DATE"
                            , "PAYMENT_TEXT_MESSAGE1"
                            , "PAYMENT_TEXT_MESSAGE2"
                            , "PAYMENT_TEXT_MESSAGE3"
                            , "DELIVERY_CHANNEL_CODE"
                            , "PAYMENT_FORMAT_CODE"
                            , "SETTLEMENT_PRIORITY"
                            , "REMIT_ADVICE_DELIVERY_METHOD"
                            , "REMIT_ADVICE_EMAIL"
                            , "REMIT_ADVICE_FAX"
                            , "SERVICE_LEVEL_CODE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_IBY_EXTERNAL_PAYEES_ALL"
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