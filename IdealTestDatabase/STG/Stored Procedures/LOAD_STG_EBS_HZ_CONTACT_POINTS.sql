﻿
CREATE PROCEDURE "STG"."LOAD_STG_EBS_HZ_CONTACT_POINTS"
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
    
    EXEC "STG"."LOAD_STG_EBS_HZ_CONTACT_POINTS";
    
    
    Source                               Destination                       
    ---------------------------------    --------------------------------- 
    LND"."LND_EBS_HZ_CONTACT_POINTS"    "STG"."STG_EBS_HZ_CONTACT_POINTS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_HZ_CONTACT_POINTS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HZ_CONTACT_POINTS"
                (
                    "CONTACT_POINT_ID"
                    ,"CONTACT_POINT_TYPE"
                    ,"STATUS"
                    ,"OWNER_TABLE_NAME"
                    ,"OWNER_TABLE_ID"
                    ,"PRIMARY_FLAG"
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"WH_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
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
                    ,"EDI_TRANSACTION_HANDLING"
                    ,"EDI_ID_NUMBER"
                    ,"EDI_PAYMENT_METHOD"
                    ,"EDI_PAYMENT_FORMAT"
                    ,"EDI_REMITTANCE_METHOD"
                    ,"EDI_REMITTANCE_INSTRUCTION"
                    ,"EDI_TP_HEADER_ID"
                    ,"EDI_ECE_TP_LOCATION_CODE"
                    ,"EMAIL_FORMAT"
                    ,"EMAIL_ADDRESS"
                    ,"BEST_TIME_TO_CONTACT_START"
                    ,"BEST_TIME_TO_CONTACT_END"
                    ,"PHONE_CALLING_CALENDAR"
                    ,"CONTACT_ATTEMPTS"
                    ,"CONTACTS"
                    ,"DECLARED_BUSINESS_PHONE_FLAG"
                    ,"DO_NOT_USE_FLAG"
                    ,"DO_NOT_USE_REASON"
                    ,"LAST_CONTACT_DT_TIME"
                    ,"PHONE_PREFERRED_ORDER"
                    ,"PRIORITY_OF_USE_CODE"
                    ,"TELEPHONE_TYPE"
                    ,"TIME_ZONE"
                    ,"PHONE_TOUCH_TONE_TYPE_FLAG"
                    ,"PHONE_AREA_CODE"
                    ,"PHONE_COUNTRY_CODE"
                    ,"PHONE_NUMBER"
                    ,"PHONE_EXTENSION"
                    ,"PHONE_LINE_TYPE"
                    ,"TELEX_NUMBER"
                    ,"WEB_TYPE"
                    ,"URL"
                    ,"CONTENT_SOURCE_TYPE"
                    ,"RAW_PHONE_NUMBER"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"TIMEZONE_ID"
                    ,"CONTACT_POINT_PURPOSE"
                    ,"PRIMARY_BY_PURPOSE"
                    ,"TRANSPOSED_PHONE_NUMBER"
                    ,"EFT_TRANSMISSION_PROGRAM_ID"
                    ,"EFT_PRINTING_PROGRAM_ID"
                    ,"EFT_USER_NUMBER"
                    ,"EFT_SWIFT_CODE"
                    ,"ACTUAL_CONTENT_SOURCE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CONTACT_POINT_ID" AS float) AS "CONTACT_POINT_ID"
                        ,CAST("CONTACT_POINT_TYPE" AS varchar(100) ) AS "CONTACT_POINT_TYPE"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("OWNER_TABLE_NAME" AS varchar(100) ) AS "OWNER_TABLE_NAME"
                        ,CAST("OWNER_TABLE_ID" AS float) AS "OWNER_TABLE_ID"
                        ,CAST("PRIMARY_FLAG" AS varchar(100) ) AS "PRIMARY_FLAG"
                        ,CAST("ORIG_SYSTEM_REFERENCE" AS varchar(1000) ) AS "ORIG_SYSTEM_REFERENCE"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("WH_UPDATE_DATE"  AS datetime2) AS "WH_UPDATE_DATE"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE"  AS datetime2) AS "PROGRAM_UPDATE_DATE"
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
                        ,CAST("EDI_TRANSACTION_HANDLING" AS varchar(100) ) AS "EDI_TRANSACTION_HANDLING"
                        ,CAST("EDI_ID_NUMBER" AS varchar(100) ) AS "EDI_ID_NUMBER"
                        ,CAST("EDI_PAYMENT_METHOD" AS varchar(100) ) AS "EDI_PAYMENT_METHOD"
                        ,CAST("EDI_PAYMENT_FORMAT" AS varchar(100) ) AS "EDI_PAYMENT_FORMAT"
                        ,CAST("EDI_REMITTANCE_METHOD" AS varchar(100) ) AS "EDI_REMITTANCE_METHOD"
                        ,CAST("EDI_REMITTANCE_INSTRUCTION" AS varchar(100) ) AS "EDI_REMITTANCE_INSTRUCTION"
                        ,CAST("EDI_TP_HEADER_ID" AS float) AS "EDI_TP_HEADER_ID"
                        ,CAST("EDI_ECE_TP_LOCATION_CODE" AS varchar(100) ) AS "EDI_ECE_TP_LOCATION_CODE"
                        ,CAST("EMAIL_FORMAT" AS varchar(100) ) AS "EMAIL_FORMAT"
                        ,CAST("EMAIL_ADDRESS" AS varchar(8000) ) AS "EMAIL_ADDRESS"
                        ,CAST("BEST_TIME_TO_CONTACT_START"  AS datetime2) AS "BEST_TIME_TO_CONTACT_START"
                        ,CAST("BEST_TIME_TO_CONTACT_END"  AS datetime2) AS "BEST_TIME_TO_CONTACT_END"
                        ,CAST("PHONE_CALLING_CALENDAR" AS varchar(100) ) AS "PHONE_CALLING_CALENDAR"
                        ,CAST("CONTACT_ATTEMPTS" AS float) AS "CONTACT_ATTEMPTS"
                        ,CAST("CONTACTS" AS float) AS "CONTACTS"
                        ,CAST("DECLARED_BUSINESS_PHONE_FLAG" AS varchar(100) ) AS "DECLARED_BUSINESS_PHONE_FLAG"
                        ,CAST("DO_NOT_USE_FLAG" AS varchar(100) ) AS "DO_NOT_USE_FLAG"
                        ,CAST("DO_NOT_USE_REASON" AS varchar(1000) ) AS "DO_NOT_USE_REASON"
                        ,CAST("LAST_CONTACT_DT_TIME"  AS datetime2) AS "LAST_CONTACT_DT_TIME"
                        ,CAST("PHONE_PREFERRED_ORDER" AS float) AS "PHONE_PREFERRED_ORDER"
                        ,CAST("PRIORITY_OF_USE_CODE" AS varchar(100) ) AS "PRIORITY_OF_USE_CODE"
                        ,CAST("TELEPHONE_TYPE" AS varchar(100) ) AS "TELEPHONE_TYPE"
                        ,CAST("TIME_ZONE" AS float) AS "TIME_ZONE"
                        ,CAST("PHONE_TOUCH_TONE_TYPE_FLAG" AS varchar(100) ) AS "PHONE_TOUCH_TONE_TYPE_FLAG"
                        ,CAST("PHONE_AREA_CODE" AS varchar(100) ) AS "PHONE_AREA_CODE"
                        ,CAST("PHONE_COUNTRY_CODE" AS varchar(100) ) AS "PHONE_COUNTRY_CODE"
                        ,CAST("PHONE_NUMBER" AS varchar(100) ) AS "PHONE_NUMBER"
                        ,CAST("PHONE_EXTENSION" AS varchar(100) ) AS "PHONE_EXTENSION"
                        ,CAST("PHONE_LINE_TYPE" AS varchar(100) ) AS "PHONE_LINE_TYPE"
                        ,CAST("TELEX_NUMBER" AS varchar(1000) ) AS "TELEX_NUMBER"
                        ,CAST("WEB_TYPE" AS varchar(1000) ) AS "WEB_TYPE"
                        ,CAST("URL" AS varchar(8000) ) AS "URL"
                        ,CAST("CONTENT_SOURCE_TYPE" AS varchar(100) ) AS "CONTENT_SOURCE_TYPE"
                        ,CAST("RAW_PHONE_NUMBER" AS varchar(1000) ) AS "RAW_PHONE_NUMBER"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("CREATED_BY_MODULE" AS varchar(1000) ) AS "CREATED_BY_MODULE"
                        ,CAST("APPLICATION_ID" AS float) AS "APPLICATION_ID"
                        ,CAST("TIMEZONE_ID" AS float) AS "TIMEZONE_ID"
                        ,CAST("CONTACT_POINT_PURPOSE" AS varchar(100) ) AS "CONTACT_POINT_PURPOSE"
                        ,CAST("PRIMARY_BY_PURPOSE" AS varchar(100) ) AS "PRIMARY_BY_PURPOSE"
                        ,CAST("TRANSPOSED_PHONE_NUMBER" AS varchar(1000) ) AS "TRANSPOSED_PHONE_NUMBER"
                        ,CAST("EFT_TRANSMISSION_PROGRAM_ID" AS float) AS "EFT_TRANSMISSION_PROGRAM_ID"
                        ,CAST("EFT_PRINTING_PROGRAM_ID" AS float) AS "EFT_PRINTING_PROGRAM_ID"
                        ,CAST("EFT_USER_NUMBER" AS varchar(100) ) AS "EFT_USER_NUMBER"
                        ,CAST("EFT_SWIFT_CODE" AS varchar(100) ) AS "EFT_SWIFT_CODE"
                        ,CAST("ACTUAL_CONTENT_SOURCE" AS varchar(100) ) AS "ACTUAL_CONTENT_SOURCE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CONTACT_POINT_ID"
                            , "CONTACT_POINT_TYPE"
                            , "STATUS"
                            , "OWNER_TABLE_NAME"
                            , "OWNER_TABLE_ID"
                            , "PRIMARY_FLAG"
                            , "ORIG_SYSTEM_REFERENCE"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "WH_UPDATE_DATE"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
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
                            , "EDI_TRANSACTION_HANDLING"
                            , "EDI_ID_NUMBER"
                            , "EDI_PAYMENT_METHOD"
                            , "EDI_PAYMENT_FORMAT"
                            , "EDI_REMITTANCE_METHOD"
                            , "EDI_REMITTANCE_INSTRUCTION"
                            , "EDI_TP_HEADER_ID"
                            , "EDI_ECE_TP_LOCATION_CODE"
                            , "EMAIL_FORMAT"
                            , "EMAIL_ADDRESS"
                            , "BEST_TIME_TO_CONTACT_START"
                            , "BEST_TIME_TO_CONTACT_END"
                            , "PHONE_CALLING_CALENDAR"
                            , "CONTACT_ATTEMPTS"
                            , "CONTACTS"
                            , "DECLARED_BUSINESS_PHONE_FLAG"
                            , "DO_NOT_USE_FLAG"
                            , "DO_NOT_USE_REASON"
                            , "LAST_CONTACT_DT_TIME"
                            , "PHONE_PREFERRED_ORDER"
                            , "PRIORITY_OF_USE_CODE"
                            , "TELEPHONE_TYPE"
                            , "TIME_ZONE"
                            , "PHONE_TOUCH_TONE_TYPE_FLAG"
                            , "PHONE_AREA_CODE"
                            , "PHONE_COUNTRY_CODE"
                            , "PHONE_NUMBER"
                            , "PHONE_EXTENSION"
                            , "PHONE_LINE_TYPE"
                            , "TELEX_NUMBER"
                            , "WEB_TYPE"
                            , "URL"
                            , "CONTENT_SOURCE_TYPE"
                            , "RAW_PHONE_NUMBER"
                            , "OBJECT_VERSION_NUMBER"
                            , "CREATED_BY_MODULE"
                            , "APPLICATION_ID"
                            , "TIMEZONE_ID"
                            , "CONTACT_POINT_PURPOSE"
                            , "PRIMARY_BY_PURPOSE"
                            , "TRANSPOSED_PHONE_NUMBER"
                            , "EFT_TRANSMISSION_PROGRAM_ID"
                            , "EFT_PRINTING_PROGRAM_ID"
                            , "EFT_USER_NUMBER"
                            , "EFT_SWIFT_CODE"
                            , "ACTUAL_CONTENT_SOURCE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HZ_CONTACT_POINTS"
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
