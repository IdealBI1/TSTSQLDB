

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_MTL_CATEGORY_SETS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        10/03/2022 5:31:06 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_CATEGORY_SETS";
    
    Source                               Destination                         
    ---------------------------------    ---------------------------------- 
    STG"."STG_EBS_MTL_CATEGORY_SETS"    "HSTG"."HSTG_EBS_MTL_CATEGORY_SETS" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_CATEGORY_SETS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_CATEGORY_SETS"
                (
                    "ROW_ID"
                    ,"CATEGORY_SET_ID"
                    ,"STRUCTURE_ID"
                    ,"VALIDATE_FLAG"
                    ,"CONTROL_LEVEL"
                    ,"DEFAULT_CATEGORY_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"CATEGORY_SET_NAME"
                    ,"DESCRIPTION"
                    ,"MULT_ITEM_CAT_ASSIGN_FLAG"
                    ,"CONTROL_LEVEL_UPDATEABLE_FLAG"
                    ,"MULT_ITEM_CAT_UPDATEABLE_FLAG"
                    ,"VALIDATE_FLAG_UPDATEABLE_FLAG"
                    ,"HIERARCHY_ENABLED"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ROW_ID"
                    ,"CATEGORY_SET_ID"
                    ,"STRUCTURE_ID"
                    ,"VALIDATE_FLAG"
                    ,"CONTROL_LEVEL"
                    ,"DEFAULT_CATEGORY_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"CATEGORY_SET_NAME"
                    ,"DESCRIPTION"
                    ,"MULT_ITEM_CAT_ASSIGN_FLAG"
                    ,"CONTROL_LEVEL_UPDATEABLE_FLAG"
                    ,"MULT_ITEM_CAT_UPDATEABLE_FLAG"
                    ,"VALIDATE_FLAG_UPDATEABLE_FLAG"
                    ,"HIERARCHY_ENABLED"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_MTL_CATEGORY_SETS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_CATEGORY_SETS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_MTL_CATEGORY_SETS" H					Join "STG"."STG_EBS_MTL_CATEGORY_SETS" S						On H.ROW_ID= S.ROW_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
