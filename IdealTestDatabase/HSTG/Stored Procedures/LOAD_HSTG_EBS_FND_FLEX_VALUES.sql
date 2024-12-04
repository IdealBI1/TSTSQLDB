

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_FND_FLEX_VALUES]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 6:47:02 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_FND_FLEX_VALUES";
    
    Source                             Destination                       
    -------------------------------    -------------------------------- 
    STG"."STG_EBS_FND_FLEX_VALUES"    "HSTG"."HSTG_EBS_FND_FLEX_VALUES" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_FND_FLEX_VALUES"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_FND_FLEX_VALUES"
                (
                    "FLEX_VALUE_SET_ID"
                    ,"FLEX_VALUE_ID"
                    ,"FLEX_VALUE"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"ENABLED_FLAG"
                    ,"SUMMARY_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"PARENT_FLEX_VALUE_LOW"
                    ,"PARENT_FLEX_VALUE_HIGH"
                    ,"STRUCTURED_HIERARCHY_LEVEL"
                    ,"HIERARCHY_LEVEL"
                    ,"COMPILED_VALUE_ATTRIBUTES"
                    ,"VALUE_CATEGORY"
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
                    ,"ATTRIBUTE31"
                    ,"ATTRIBUTE32"
                    ,"ATTRIBUTE33"
                    ,"ATTRIBUTE34"
                    ,"ATTRIBUTE35"
                    ,"ATTRIBUTE36"
                    ,"ATTRIBUTE37"
                    ,"ATTRIBUTE38"
                    ,"ATTRIBUTE39"
                    ,"ATTRIBUTE40"
                    ,"ATTRIBUTE41"
                    ,"ATTRIBUTE42"
                    ,"ATTRIBUTE43"
                    ,"ATTRIBUTE44"
                    ,"ATTRIBUTE45"
                    ,"ATTRIBUTE46"
                    ,"ATTRIBUTE47"
                    ,"ATTRIBUTE48"
                    ,"ATTRIBUTE49"
                    ,"ATTRIBUTE50"
                    ,"ATTRIBUTE_SORT_ORDER"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "FLEX_VALUE_SET_ID"
                    ,"FLEX_VALUE_ID"
                    ,"FLEX_VALUE"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"ENABLED_FLAG"
                    ,"SUMMARY_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"PARENT_FLEX_VALUE_LOW"
                    ,"PARENT_FLEX_VALUE_HIGH"
                    ,"STRUCTURED_HIERARCHY_LEVEL"
                    ,"HIERARCHY_LEVEL"
                    ,"COMPILED_VALUE_ATTRIBUTES"
                    ,"VALUE_CATEGORY"
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
                    ,"ATTRIBUTE31"
                    ,"ATTRIBUTE32"
                    ,"ATTRIBUTE33"
                    ,"ATTRIBUTE34"
                    ,"ATTRIBUTE35"
                    ,"ATTRIBUTE36"
                    ,"ATTRIBUTE37"
                    ,"ATTRIBUTE38"
                    ,"ATTRIBUTE39"
                    ,"ATTRIBUTE40"
                    ,"ATTRIBUTE41"
                    ,"ATTRIBUTE42"
                    ,"ATTRIBUTE43"
                    ,"ATTRIBUTE44"
                    ,"ATTRIBUTE45"
                    ,"ATTRIBUTE46"
                    ,"ATTRIBUTE47"
                    ,"ATTRIBUTE48"
                    ,"ATTRIBUTE49"
                    ,"ATTRIBUTE50"
                    ,"ATTRIBUTE_SORT_ORDER"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_FND_FLEX_VALUES" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_FND_FLEX_VALUES" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_FND_FLEX_VALUES" H					Join "STG"."STG_EBS_FND_FLEX_VALUES" S						On H.FLEX_VALUE_SET_ID= S.FLEX_VALUE_SET_ID						And H.FLEX_VALUE_ID= S.FLEX_VALUE_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
