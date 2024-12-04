

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_MTL_CATEGORIES]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        10/03/2022 5:31:05 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_CATEGORIES";
    
    Source                            Destination                      
    ------------------------------    ------------------------------- 
    STG"."STG_EBS_MTL_CATEGORIES"    "HSTG"."HSTG_EBS_MTL_CATEGORIES" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-10    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_CATEGORIES"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_CATEGORIES"
                (
                    "ROW_ID"
                    ,"CATEGORY_ID"
                    ,"STRUCTURE_ID"
                    ,"DISABLE_DATE"
                    ,"WEB_STATUS"
                    ,"SUPPLIER_ENABLED_FLAG"
                    ,"SEGMENT1"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"SEGMENT6"
                    ,"SEGMENT7"
                    ,"SEGMENT8"
                    ,"SEGMENT9"
                    ,"SEGMENT10"
                    ,"SEGMENT11"
                    ,"SEGMENT12"
                    ,"SEGMENT13"
                    ,"SEGMENT14"
                    ,"SEGMENT15"
                    ,"SEGMENT16"
                    ,"SEGMENT17"
                    ,"SEGMENT18"
                    ,"SEGMENT19"
                    ,"SEGMENT20"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"DESCRIPTION"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ROW_ID"
                    ,"CATEGORY_ID"
                    ,"STRUCTURE_ID"
                    ,"DISABLE_DATE"
                    ,"WEB_STATUS"
                    ,"SUPPLIER_ENABLED_FLAG"
                    ,"SEGMENT1"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"SEGMENT6"
                    ,"SEGMENT7"
                    ,"SEGMENT8"
                    ,"SEGMENT9"
                    ,"SEGMENT10"
                    ,"SEGMENT11"
                    ,"SEGMENT12"
                    ,"SEGMENT13"
                    ,"SEGMENT14"
                    ,"SEGMENT15"
                    ,"SEGMENT16"
                    ,"SEGMENT17"
                    ,"SEGMENT18"
                    ,"SEGMENT19"
                    ,"SEGMENT20"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"DESCRIPTION"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_MTL_CATEGORIES" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_CATEGORIES" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_MTL_CATEGORIES" H					Join "STG"."STG_EBS_MTL_CATEGORIES" S						On H.CATEGORY_ID= S.CATEGORY_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
