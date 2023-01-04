
CREATE PROCEDURE "STG"."LOAD_STG_EBS_HZ_PARTY_SITES"
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
    
    EXEC "STG"."LOAD_STG_EBS_HZ_PARTY_SITES";
    
    
    Source                            Destination                    
    ------------------------------    ------------------------------ 
    LND"."LND_EBS_HZ_PARTY_SITES"    "STG"."STG_EBS_HZ_PARTY_SITES" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_HZ_PARTY_SITES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HZ_PARTY_SITES"
                (
                    "PARTY_SITE_ID"
                    ,"PARTY_ID"
                    ,"LOCATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"PARTY_SITE_NUMBER"
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
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"REGION"
                    ,"MAILSTOP"
                    ,"CUSTOMER_KEY_OSM"
                    ,"PHONE_KEY_OSM"
                    ,"CONTACT_KEY_OSM"
                    ,"IDENTIFYING_ADDRESS_FLAG"
                    ,"LANGUAGE"
                    ,"STATUS"
                    ,"PARTY_SITE_NAME"
                    ,"ADDRESSEE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"ACTUAL_CONTENT_SOURCE"
                    ,"GLOBAL_LOCATION_NUMBER"
                    ,"DUNS_NUMBER_C"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("PARTY_SITE_ID" AS float) AS "PARTY_SITE_ID"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("LOCATION_ID" AS float) AS "LOCATION_ID"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("PARTY_SITE_NUMBER" AS varchar(100) ) AS "PARTY_SITE_NUMBER"
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
                        ,CAST("START_DATE_ACTIVE"  AS datetime2) AS "START_DATE_ACTIVE"
                        ,CAST("END_DATE_ACTIVE"  AS datetime2) AS "END_DATE_ACTIVE"
                        ,CAST("REGION" AS varchar(100) ) AS "REGION"
                        ,CAST("MAILSTOP" AS varchar(1000) ) AS "MAILSTOP"
                        ,CAST("CUSTOMER_KEY_OSM" AS varchar(1000) ) AS "CUSTOMER_KEY_OSM"
                        ,CAST("PHONE_KEY_OSM" AS varchar(1000) ) AS "PHONE_KEY_OSM"
                        ,CAST("CONTACT_KEY_OSM" AS varchar(1000) ) AS "CONTACT_KEY_OSM"
                        ,CAST("IDENTIFYING_ADDRESS_FLAG" AS varchar(100) ) AS "IDENTIFYING_ADDRESS_FLAG"
                        ,CAST("LANGUAGE" AS varchar(100) ) AS "LANGUAGE"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("PARTY_SITE_NAME" AS varchar(1000) ) AS "PARTY_SITE_NAME"
                        ,CAST("ADDRESSEE" AS varchar(1000) ) AS "ADDRESSEE"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("CREATED_BY_MODULE" AS varchar(1000) ) AS "CREATED_BY_MODULE"
                        ,CAST("APPLICATION_ID" AS float) AS "APPLICATION_ID"
                        ,CAST("ACTUAL_CONTENT_SOURCE" AS varchar(100) ) AS "ACTUAL_CONTENT_SOURCE"
                        ,CAST("GLOBAL_LOCATION_NUMBER" AS varchar(100) ) AS "GLOBAL_LOCATION_NUMBER"
                        ,CAST("DUNS_NUMBER_C" AS varchar(100) ) AS "DUNS_NUMBER_C"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "PARTY_SITE_ID"
                            , "PARTY_ID"
                            , "LOCATION_ID"
                            , "LAST_UPDATE_DATE"
                            , "PARTY_SITE_NUMBER"
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
                            , "START_DATE_ACTIVE"
                            , "END_DATE_ACTIVE"
                            , "REGION"
                            , "MAILSTOP"
                            , "CUSTOMER_KEY_OSM"
                            , "PHONE_KEY_OSM"
                            , "CONTACT_KEY_OSM"
                            , "IDENTIFYING_ADDRESS_FLAG"
                            , "LANGUAGE"
                            , "STATUS"
                            , "PARTY_SITE_NAME"
                            , "ADDRESSEE"
                            , "OBJECT_VERSION_NUMBER"
                            , "CREATED_BY_MODULE"
                            , "APPLICATION_ID"
                            , "ACTUAL_CONTENT_SOURCE"
                            , "GLOBAL_LOCATION_NUMBER"
                            , "DUNS_NUMBER_C"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HZ_PARTY_SITES"
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