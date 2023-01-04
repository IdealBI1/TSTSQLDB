

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HZ_RELATIONSHIPS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 12:06:27 am
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HZ_RELATIONSHIPS";
    
    Source                              Destination                        
    --------------------------------    --------------------------------- 
    STG"."STG_EBS_HZ_RELATIONSHIPS"    "HSTG"."HSTG_EBS_HZ_RELATIONSHIPS" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HZ_RELATIONSHIPS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HZ_RELATIONSHIPS"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HZ_RELATIONSHIPS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HZ_RELATIONSHIPS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HZ_RELATIONSHIPS" H					Join "STG"."STG_EBS_HZ_RELATIONSHIPS" S						On H.RELATIONSHIP_ID= S.RELATIONSHIP_ID						And H.SUBJECT_ID= S.SUBJECT_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
