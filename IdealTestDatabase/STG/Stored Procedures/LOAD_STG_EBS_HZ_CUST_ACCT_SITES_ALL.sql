CREATE PROCEDURE "STG"."LOAD_STG_EBS_HZ_CUST_ACCT_SITES_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:48 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_HZ_CUST_ACCT_SITES_ALL";
    
    
    Source                                    Destination                            
    --------------------------------------    -------------------------------------- 
    LND"."LND_EBS_HZ_CUST_ACCT_SITES_ALL"    "STG"."STG_EBS_HZ_CUST_ACCT_SITES_ALL" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_HZ_CUST_ACCT_SITES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HZ_CUST_ACCT_SITES_ALL"
                (
                    "CUST_ACCT_SITE_ID"
                    ,"CUST_ACCOUNT_ID"
                    ,"PARTY_SITE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"WH_UPDATE_DATE"
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
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
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
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"STATUS"
                    ,"ORG_ID"
                    ,"BILL_TO_FLAG"
                    ,"MARKET_FLAG"
                    ,"SHIP_TO_FLAG"
                    ,"CUSTOMER_CATEGORY_CODE"
                    ,"LANGUAGE"
                    ,"KEY_ACCOUNT_FLAG"
                    ,"TP_HEADER_ID"
                    ,"ECE_TP_LOCATION_CODE"
                    ,"SERVICE_TERRITORY_ID"
                    ,"PRIMARY_SPECIALIST_ID"
                    ,"SECONDARY_SPECIALIST_ID"
                    ,"TERRITORY_ID"
                    ,"ADDRESS_TEXT"
                    ,"TERRITORY"
                    ,"TRANSLATED_CUSTOMER_NAME"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUST_ACCT_SITE_ID" AS float) AS "CUST_ACCT_SITE_ID"
                        ,CAST("CUST_ACCOUNT_ID" AS float) AS "CUST_ACCOUNT_ID"
                        ,CAST("PARTY_SITE_ID" AS float) AS "PARTY_SITE_ID"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE"  AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("WH_UPDATE_DATE"  AS datetime2) AS "WH_UPDATE_DATE"
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
                        ,CAST("ATTRIBUTE16" AS varchar(1000) ) AS "ATTRIBUTE16"
                        ,CAST("ATTRIBUTE17" AS varchar(1000) ) AS "ATTRIBUTE17"
                        ,CAST("ATTRIBUTE18" AS varchar(1000) ) AS "ATTRIBUTE18"
                        ,CAST("ATTRIBUTE19" AS varchar(1000) ) AS "ATTRIBUTE19"
                        ,CAST("ATTRIBUTE20" AS varchar(1000) ) AS "ATTRIBUTE20"
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
                        ,CAST("ORIG_SYSTEM_REFERENCE" AS varchar(1000) ) AS "ORIG_SYSTEM_REFERENCE"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("BILL_TO_FLAG" AS varchar(100) ) AS "BILL_TO_FLAG"
                        ,CAST("MARKET_FLAG" AS varchar(100) ) AS "MARKET_FLAG"
                        ,CAST("SHIP_TO_FLAG" AS varchar(100) ) AS "SHIP_TO_FLAG"
                        ,CAST("CUSTOMER_CATEGORY_CODE" AS varchar(100) ) AS "CUSTOMER_CATEGORY_CODE"
                        ,CAST("LANGUAGE" AS varchar(100) ) AS "LANGUAGE"
                        ,CAST("KEY_ACCOUNT_FLAG" AS varchar(100) ) AS "KEY_ACCOUNT_FLAG"
                        ,CAST("TP_HEADER_ID" AS float) AS "TP_HEADER_ID"
                        ,CAST("ECE_TP_LOCATION_CODE" AS varchar(100) ) AS "ECE_TP_LOCATION_CODE"
                        ,CAST("SERVICE_TERRITORY_ID" AS float) AS "SERVICE_TERRITORY_ID"
                        ,CAST("PRIMARY_SPECIALIST_ID" AS float) AS "PRIMARY_SPECIALIST_ID"
                        ,CAST("SECONDARY_SPECIALIST_ID" AS float) AS "SECONDARY_SPECIALIST_ID"
                        ,CAST("TERRITORY_ID" AS float) AS "TERRITORY_ID"
                        ,CAST("ADDRESS_TEXT" AS varchar(4000) ) AS "ADDRESS_TEXT"
                        ,CAST("TERRITORY" AS varchar(100) ) AS "TERRITORY"
                        ,CAST("TRANSLATED_CUSTOMER_NAME" AS varchar(1000) ) AS "TRANSLATED_CUSTOMER_NAME"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("CREATED_BY_MODULE" AS varchar(1000) ) AS "CREATED_BY_MODULE"
                        ,CAST("APPLICATION_ID" AS float) AS "APPLICATION_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CUST_ACCT_SITE_ID"
                            , "CUST_ACCOUNT_ID"
                            , "PARTY_SITE_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "WH_UPDATE_DATE"
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
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "ATTRIBUTE16"
                            , "ATTRIBUTE17"
                            , "ATTRIBUTE18"
                            , "ATTRIBUTE19"
                            , "ATTRIBUTE20"
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
                            , "ORIG_SYSTEM_REFERENCE"
                            , "STATUS"
                            , "ORG_ID"
                            , "BILL_TO_FLAG"
                            , "MARKET_FLAG"
                            , "SHIP_TO_FLAG"
                            , "CUSTOMER_CATEGORY_CODE"
                            , "LANGUAGE"
                            , "KEY_ACCOUNT_FLAG"
                            , "TP_HEADER_ID"
                            , "ECE_TP_LOCATION_CODE"
                            , "SERVICE_TERRITORY_ID"
                            , "PRIMARY_SPECIALIST_ID"
                            , "SECONDARY_SPECIALIST_ID"
                            , "TERRITORY_ID"
                            , "ADDRESS_TEXT"
                            , "TERRITORY"
                            , "TRANSLATED_CUSTOMER_NAME"
                            , "OBJECT_VERSION_NUMBER"
                            , "CREATED_BY_MODULE"
                            , "APPLICATION_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HZ_CUST_ACCT_SITES_ALL"
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
