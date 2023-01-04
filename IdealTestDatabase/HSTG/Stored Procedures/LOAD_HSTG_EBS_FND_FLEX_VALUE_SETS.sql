

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_FND_FLEX_VALUE_SETS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:59:04 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_FND_FLEX_VALUE_SETS";
    
    Source                                 Destination                           
    -----------------------------------    ------------------------------------ 
    STG"."STG_EBS_FND_FLEX_VALUE_SETS"    "HSTG"."HSTG_EBS_FND_FLEX_VALUE_SETS" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_FND_FLEX_VALUE_SETS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_FND_FLEX_VALUE_SETS"
                (
                    "FLEX_VALUE_SET_ID"
                    ,"FLEX_VALUE_SET_NAME"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"VALIDATION_TYPE"
                    ,"PROTECTED_FLAG"
                    ,"SECURITY_ENABLED_FLAG"
                    ,"LONGLIST_FLAG"
                    ,"FORMAT_TYPE"
                    ,"MAXIMUM_SIZE"
                    ,"ALPHANUMERIC_ALLOWED_FLAG"
                    ,"UPPERCASE_ONLY_FLAG"
                    ,"NUMERIC_MODE_ENABLED_FLAG"
                    ,"DESCRIPTION"
                    ,"DEPENDANT_DEFAULT_VALUE"
                    ,"DEPENDANT_DEFAULT_MEANING"
                    ,"PARENT_FLEX_VALUE_SET_ID"
                    ,"MINIMUM_VALUE"
                    ,"MAXIMUM_VALUE"
                    ,"NUMBER_PRECISION"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "FLEX_VALUE_SET_ID"
                    ,"FLEX_VALUE_SET_NAME"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"VALIDATION_TYPE"
                    ,"PROTECTED_FLAG"
                    ,"SECURITY_ENABLED_FLAG"
                    ,"LONGLIST_FLAG"
                    ,"FORMAT_TYPE"
                    ,"MAXIMUM_SIZE"
                    ,"ALPHANUMERIC_ALLOWED_FLAG"
                    ,"UPPERCASE_ONLY_FLAG"
                    ,"NUMERIC_MODE_ENABLED_FLAG"
                    ,"DESCRIPTION"
                    ,"DEPENDANT_DEFAULT_VALUE"
                    ,"DEPENDANT_DEFAULT_MEANING"
                    ,"PARENT_FLEX_VALUE_SET_ID"
                    ,"MINIMUM_VALUE"
                    ,"MAXIMUM_VALUE"
                    ,"NUMBER_PRECISION"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_FND_FLEX_VALUE_SETS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_FND_FLEX_VALUE_SETS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_FND_FLEX_VALUE_SETS" H					Join "STG"."STG_EBS_FND_FLEX_VALUE_SETS" S						On H.FLEX_VALUE_SET_ID= S.FLEX_VALUE_SET_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
