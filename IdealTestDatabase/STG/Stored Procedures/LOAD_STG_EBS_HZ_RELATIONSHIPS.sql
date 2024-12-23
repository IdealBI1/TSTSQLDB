﻿
CREATE PROCEDURE "STG"."LOAD_STG_EBS_HZ_RELATIONSHIPS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:46 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_HZ_RELATIONSHIPS";
    
    
    Source                              Destination                      
    --------------------------------    -------------------------------- 
    LND"."LND_EBS_HZ_RELATIONSHIPS"    "STG"."STG_EBS_HZ_RELATIONSHIPS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_HZ_RELATIONSHIPS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HZ_RELATIONSHIPS"
                (
                    "RELATIONSHIP_ID"
                    ,"SUBJECT_ID"
                    ,"SUBJECT_TYPE"
                    ,"SUBJECT_TABLE_NAME"
                    ,"OBJECT_ID"
                    ,"OBJECT_TYPE"
                    ,"OBJECT_TABLE_NAME"
                    ,"PARTY_ID"
                    ,"RELATIONSHIP_CODE"
                    ,"DIRECTIONAL_FLAG"
                    ,"COMMENTS"
                    ,"START_DATE"
                    ,"END_DATE"
                    ,"STATUS"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
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
                    ,"CONTENT_SOURCE_TYPE"
                    ,"RELATIONSHIP_TYPE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"ADDITIONAL_INFORMATION1"
                    ,"ADDITIONAL_INFORMATION2"
                    ,"ADDITIONAL_INFORMATION3"
                    ,"ADDITIONAL_INFORMATION4"
                    ,"ADDITIONAL_INFORMATION5"
                    ,"ADDITIONAL_INFORMATION6"
                    ,"ADDITIONAL_INFORMATION7"
                    ,"ADDITIONAL_INFORMATION8"
                    ,"ADDITIONAL_INFORMATION9"
                    ,"ADDITIONAL_INFORMATION10"
                    ,"ADDITIONAL_INFORMATION11"
                    ,"ADDITIONAL_INFORMATION12"
                    ,"ADDITIONAL_INFORMATION13"
                    ,"ADDITIONAL_INFORMATION14"
                    ,"ADDITIONAL_INFORMATION15"
                    ,"ADDITIONAL_INFORMATION16"
                    ,"ADDITIONAL_INFORMATION17"
                    ,"ADDITIONAL_INFORMATION18"
                    ,"ADDITIONAL_INFORMATION19"
                    ,"ADDITIONAL_INFORMATION20"
                    ,"ADDITIONAL_INFORMATION21"
                    ,"ADDITIONAL_INFORMATION22"
                    ,"ADDITIONAL_INFORMATION23"
                    ,"ADDITIONAL_INFORMATION24"
                    ,"ADDITIONAL_INFORMATION25"
                    ,"ADDITIONAL_INFORMATION26"
                    ,"ADDITIONAL_INFORMATION27"
                    ,"ADDITIONAL_INFORMATION28"
                    ,"ADDITIONAL_INFORMATION29"
                    ,"ADDITIONAL_INFORMATION30"
                    ,"DIRECTION_CODE"
                    ,"PERCENTAGE_OWNERSHIP"
                    ,"ACTUAL_CONTENT_SOURCE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("RELATIONSHIP_ID" AS float) AS "RELATIONSHIP_ID"
                        ,CAST("SUBJECT_ID" AS float) AS "SUBJECT_ID"
                        ,CAST("SUBJECT_TYPE" AS varchar(100) ) AS "SUBJECT_TYPE"
                        ,CAST("SUBJECT_TABLE_NAME" AS varchar(100) ) AS "SUBJECT_TABLE_NAME"
                        ,CAST("OBJECT_ID" AS float) AS "OBJECT_ID"
                        ,CAST("OBJECT_TYPE" AS varchar(100) ) AS "OBJECT_TYPE"
                        ,CAST("OBJECT_TABLE_NAME" AS varchar(100) ) AS "OBJECT_TABLE_NAME"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("RELATIONSHIP_CODE" AS varchar(100) ) AS "RELATIONSHIP_CODE"
                        ,CAST("DIRECTIONAL_FLAG" AS varchar(100) ) AS "DIRECTIONAL_FLAG"
                        ,CAST("COMMENTS" AS varchar(1000) ) AS "COMMENTS"
                        ,CAST("START_DATE"  AS datetime2) AS "START_DATE"
                        ,CAST("END_DATE"  AS datetime2) AS "END_DATE"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
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
                        ,CAST("CONTENT_SOURCE_TYPE" AS varchar(100) ) AS "CONTENT_SOURCE_TYPE"
                        ,CAST("RELATIONSHIP_TYPE" AS varchar(100) ) AS "RELATIONSHIP_TYPE"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("CREATED_BY_MODULE" AS varchar(1000) ) AS "CREATED_BY_MODULE"
                        ,CAST("APPLICATION_ID" AS float) AS "APPLICATION_ID"
                        ,CAST("ADDITIONAL_INFORMATION1" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION1"
                        ,CAST("ADDITIONAL_INFORMATION2" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION2"
                        ,CAST("ADDITIONAL_INFORMATION3" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION3"
                        ,CAST("ADDITIONAL_INFORMATION4" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION4"
                        ,CAST("ADDITIONAL_INFORMATION5" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION5"
                        ,CAST("ADDITIONAL_INFORMATION6" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION6"
                        ,CAST("ADDITIONAL_INFORMATION7" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION7"
                        ,CAST("ADDITIONAL_INFORMATION8" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION8"
                        ,CAST("ADDITIONAL_INFORMATION9" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION9"
                        ,CAST("ADDITIONAL_INFORMATION10" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION10"
                        ,CAST("ADDITIONAL_INFORMATION11" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION11"
                        ,CAST("ADDITIONAL_INFORMATION12" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION12"
                        ,CAST("ADDITIONAL_INFORMATION13" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION13"
                        ,CAST("ADDITIONAL_INFORMATION14" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION14"
                        ,CAST("ADDITIONAL_INFORMATION15" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION15"
                        ,CAST("ADDITIONAL_INFORMATION16" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION16"
                        ,CAST("ADDITIONAL_INFORMATION17" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION17"
                        ,CAST("ADDITIONAL_INFORMATION18" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION18"
                        ,CAST("ADDITIONAL_INFORMATION19" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION19"
                        ,CAST("ADDITIONAL_INFORMATION20" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION20"
                        ,CAST("ADDITIONAL_INFORMATION21" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION21"
                        ,CAST("ADDITIONAL_INFORMATION22" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION22"
                        ,CAST("ADDITIONAL_INFORMATION23" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION23"
                        ,CAST("ADDITIONAL_INFORMATION24" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION24"
                        ,CAST("ADDITIONAL_INFORMATION25" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION25"
                        ,CAST("ADDITIONAL_INFORMATION26" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION26"
                        ,CAST("ADDITIONAL_INFORMATION27" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION27"
                        ,CAST("ADDITIONAL_INFORMATION28" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION28"
                        ,CAST("ADDITIONAL_INFORMATION29" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION29"
                        ,CAST("ADDITIONAL_INFORMATION30" AS varchar(1000) ) AS "ADDITIONAL_INFORMATION30"
                        ,CAST("DIRECTION_CODE" AS varchar(100) ) AS "DIRECTION_CODE"
                        ,CAST("PERCENTAGE_OWNERSHIP" AS float) AS "PERCENTAGE_OWNERSHIP"
                        ,CAST("ACTUAL_CONTENT_SOURCE" AS varchar(100) ) AS "ACTUAL_CONTENT_SOURCE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "RELATIONSHIP_ID"
                            , "SUBJECT_ID"
                            , "SUBJECT_TYPE"
                            , "SUBJECT_TABLE_NAME"
                            , "OBJECT_ID"
                            , "OBJECT_TYPE"
                            , "OBJECT_TABLE_NAME"
                            , "PARTY_ID"
                            , "RELATIONSHIP_CODE"
                            , "DIRECTIONAL_FLAG"
                            , "COMMENTS"
                            , "START_DATE"
                            , "END_DATE"
                            , "STATUS"
                            , "CREATED_BY"
                            , "CREATION_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_DATE"
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
                            , "CONTENT_SOURCE_TYPE"
                            , "RELATIONSHIP_TYPE"
                            , "OBJECT_VERSION_NUMBER"
                            , "CREATED_BY_MODULE"
                            , "APPLICATION_ID"
                            , "ADDITIONAL_INFORMATION1"
                            , "ADDITIONAL_INFORMATION2"
                            , "ADDITIONAL_INFORMATION3"
                            , "ADDITIONAL_INFORMATION4"
                            , "ADDITIONAL_INFORMATION5"
                            , "ADDITIONAL_INFORMATION6"
                            , "ADDITIONAL_INFORMATION7"
                            , "ADDITIONAL_INFORMATION8"
                            , "ADDITIONAL_INFORMATION9"
                            , "ADDITIONAL_INFORMATION10"
                            , "ADDITIONAL_INFORMATION11"
                            , "ADDITIONAL_INFORMATION12"
                            , "ADDITIONAL_INFORMATION13"
                            , "ADDITIONAL_INFORMATION14"
                            , "ADDITIONAL_INFORMATION15"
                            , "ADDITIONAL_INFORMATION16"
                            , "ADDITIONAL_INFORMATION17"
                            , "ADDITIONAL_INFORMATION18"
                            , "ADDITIONAL_INFORMATION19"
                            , "ADDITIONAL_INFORMATION20"
                            , "ADDITIONAL_INFORMATION21"
                            , "ADDITIONAL_INFORMATION22"
                            , "ADDITIONAL_INFORMATION23"
                            , "ADDITIONAL_INFORMATION24"
                            , "ADDITIONAL_INFORMATION25"
                            , "ADDITIONAL_INFORMATION26"
                            , "ADDITIONAL_INFORMATION27"
                            , "ADDITIONAL_INFORMATION28"
                            , "ADDITIONAL_INFORMATION29"
                            , "ADDITIONAL_INFORMATION30"
                            , "DIRECTION_CODE"
                            , "PERCENTAGE_OWNERSHIP"
                            , "ACTUAL_CONTENT_SOURCE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HZ_RELATIONSHIPS"
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