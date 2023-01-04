

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HR_ALL_ORGANIZATION_UNITS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 1:03:21 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HR_ALL_ORGANIZATION_UNITS";
    
    Source                                       Destination                                 
    -----------------------------------------    ------------------------------------------ 
    STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS"    "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS"
                (
                    "ORGANIZATION_ID"
                    ,"BUSINESS_GROUP_ID"
                    ,"COST_ALLOCATION_KEYFLEX_ID"
                    ,"LOCATION_ID"
                    ,"SOFT_CODING_KEYFLEX_ID"
                    ,"DATE_FROM"
                    ,"NAME"
                    ,"DATE_TO"
                    ,"INTERNAL_EXTERNAL_FLAG"
                    ,"INTERNAL_ADDRESS_LINE"
                    ,"TYPE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_ID"
                    ,"COMMENTS"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ORGANIZATION_ID"
                    ,"BUSINESS_GROUP_ID"
                    ,"COST_ALLOCATION_KEYFLEX_ID"
                    ,"LOCATION_ID"
                    ,"SOFT_CODING_KEYFLEX_ID"
                    ,"DATE_FROM"
                    ,"NAME"
                    ,"DATE_TO"
                    ,"INTERNAL_EXTERNAL_FLAG"
                    ,"INTERNAL_ADDRESS_LINE"
                    ,"TYPE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_ID"
                    ,"COMMENTS"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS"
                (
                    "ORGANIZATION_ID"
                    ,"BUSINESS_GROUP_ID"
                    ,"COST_ALLOCATION_KEYFLEX_ID"
                    ,"LOCATION_ID"
                    ,"SOFT_CODING_KEYFLEX_ID"
                    ,"DATE_FROM"
                    ,"NAME"
                    ,"DATE_TO"
                    ,"INTERNAL_EXTERNAL_FLAG"
                    ,"INTERNAL_ADDRESS_LINE"
                    ,"TYPE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_ID"
                    ,"COMMENTS"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ORGANIZATION_ID"
                    ,"BUSINESS_GROUP_ID"
                    ,"COST_ALLOCATION_KEYFLEX_ID"
                    ,"LOCATION_ID"
                    ,"SOFT_CODING_KEYFLEX_ID"
                    ,"DATE_FROM"
                    ,"NAME"
                    ,"DATE_TO"
                    ,"INTERNAL_EXTERNAL_FLAG"
                    ,"INTERNAL_ADDRESS_LINE"
                    ,"TYPE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_ID"
                    ,"COMMENTS"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS" H
                WHERE NOT EXISTS (SELECT 1 FROM "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS" S WHERE 
                    COALESCE(H."ORGANIZATION_ID",0) = COALESCE(S."ORGANIZATION_ID",0)
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS" H					Join "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS" S						On H.ORGANIZATION_ID= S.ORGANIZATION_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
						
            --    UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
            --    FROM "HSTG"."HSTG_EBS_HR_ALL_ORGANIZATION_UNITS" H
            --    WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS" S WHERE 
            --        COALESCE(H."ORGANIZATION_ID",0) = COALESCE(S."ORGANIZATION_ID",0)
            --)
            
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
