

CREATE PROCEDURE [STG].[LOAD_STG_EBS_MTL_ITEM_CATEGORIES_V]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        11/03/2022 4:26:18 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_ITEM_CATEGORIES_V";
    
    
    Source                                   Destination                           
    -------------------------------------    ------------------------------------- 
    LND"."LND_EBS_MTL_ITEM_CATEGORIES_V"    "STG"."STG_EBS_MTL_ITEM_CATEGORIES_V" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-11    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_MTL_ITEM_CATEGORIES_V";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_ITEM_CATEGORIES_V"
                (
                    "ROW_ID"
                    ,"INVENTORY_ITEM_ID"
                    ,"ORGANIZATION_ID"
                    ,"CATEGORY_SET_ID"
                    ,"CATEGORY_ID"
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
                    ,"STRUCTURE_ID"
                    ,"VALIDATE_FLAG"
                    ,"CONTROL_LEVEL"
                    ,"CONTROL_LEVEL_DISP"
                    ,"CATEGORY_CONCAT_SEGS"
                    ,"MULT_ITEM_CAT_ASSIGN_FLAG"
                    ,"CATEGORY_STRUCTURE_ID"
                    ,"CATEGORY_DISABLE_DATE"
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
                    ,"HIERARCHY_ENABLED"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ROW_ID" AS varchar(100) ) AS "ROW_ID"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("CATEGORY_SET_ID" AS float) AS "CATEGORY_SET_ID"
                        ,CAST("CATEGORY_ID" AS float) AS "CATEGORY_ID"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("CATEGORY_SET_NAME" AS varchar(100) ) AS "CATEGORY_SET_NAME"
                        ,CAST("STRUCTURE_ID" AS float) AS "STRUCTURE_ID"
                        ,CAST("VALIDATE_FLAG" AS varchar(100) ) AS "VALIDATE_FLAG"
                        ,CAST("CONTROL_LEVEL" AS float) AS "CONTROL_LEVEL"
                        ,CAST("CONTROL_LEVEL_DISP" AS varchar(1000) ) AS "CONTROL_LEVEL_DISP"
                        ,CAST("CATEGORY_CONCAT_SEGS" AS varchar(1000) ) AS "CATEGORY_CONCAT_SEGS"
                        ,CAST("MULT_ITEM_CAT_ASSIGN_FLAG" AS varchar(100) ) AS "MULT_ITEM_CAT_ASSIGN_FLAG"
                        ,CAST("CATEGORY_STRUCTURE_ID" AS float) AS "CATEGORY_STRUCTURE_ID"
                        ,TRY_CONVERT(datetime2,"CATEGORY_DISABLE_DATE",121) AS "CATEGORY_DISABLE_DATE"
                        ,CAST("SEGMENT1" AS varchar(100) ) AS "SEGMENT1"
                        ,CAST("SEGMENT2" AS varchar(100) ) AS "SEGMENT2"
                        ,CAST("SEGMENT3" AS varchar(100) ) AS "SEGMENT3"
                        ,CAST("SEGMENT4" AS varchar(100) ) AS "SEGMENT4"
                        ,CAST("SEGMENT5" AS varchar(100) ) AS "SEGMENT5"
                        ,CAST("SEGMENT6" AS varchar(100) ) AS "SEGMENT6"
                        ,CAST("SEGMENT7" AS varchar(100) ) AS "SEGMENT7"
                        ,CAST("SEGMENT8" AS varchar(100) ) AS "SEGMENT8"
                        ,CAST("SEGMENT9" AS varchar(100) ) AS "SEGMENT9"
                        ,CAST("SEGMENT10" AS varchar(100) ) AS "SEGMENT10"
                        ,CAST("SEGMENT11" AS varchar(100) ) AS "SEGMENT11"
                        ,CAST("SEGMENT12" AS varchar(100) ) AS "SEGMENT12"
                        ,CAST("SEGMENT13" AS varchar(100) ) AS "SEGMENT13"
                        ,CAST("SEGMENT14" AS varchar(100) ) AS "SEGMENT14"
                        ,CAST("SEGMENT15" AS varchar(100) ) AS "SEGMENT15"
                        ,CAST("SEGMENT16" AS varchar(100) ) AS "SEGMENT16"
                        ,CAST("SEGMENT17" AS varchar(100) ) AS "SEGMENT17"
                        ,CAST("SEGMENT18" AS varchar(100) ) AS "SEGMENT18"
                        ,CAST("SEGMENT19" AS varchar(100) ) AS "SEGMENT19"
                        ,CAST("SEGMENT20" AS varchar(100) ) AS "SEGMENT20"
                        ,CAST("SUMMARY_FLAG" AS varchar(100) ) AS "SUMMARY_FLAG"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("HIERARCHY_ENABLED" AS varchar(100) ) AS "HIERARCHY_ENABLED"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "ROW_ID"
                            , "INVENTORY_ITEM_ID"
                            , "ORGANIZATION_ID"
                            , "CATEGORY_SET_ID"
                            , "CATEGORY_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "CATEGORY_SET_NAME"
                            , "STRUCTURE_ID"
                            , "VALIDATE_FLAG"
                            , "CONTROL_LEVEL"
                            , "CONTROL_LEVEL_DISP"
                            , "CATEGORY_CONCAT_SEGS"
                            , "MULT_ITEM_CAT_ASSIGN_FLAG"
                            , "CATEGORY_STRUCTURE_ID"
                            , "CATEGORY_DISABLE_DATE"
                            , "SEGMENT1"
                            , "SEGMENT2"
                            , "SEGMENT3"
                            , "SEGMENT4"
                            , "SEGMENT5"
                            , "SEGMENT6"
                            , "SEGMENT7"
                            , "SEGMENT8"
                            , "SEGMENT9"
                            , "SEGMENT10"
                            , "SEGMENT11"
                            , "SEGMENT12"
                            , "SEGMENT13"
                            , "SEGMENT14"
                            , "SEGMENT15"
                            , "SEGMENT16"
                            , "SEGMENT17"
                            , "SEGMENT18"
                            , "SEGMENT19"
                            , "SEGMENT20"
                            , "SUMMARY_FLAG"
                            , "ENABLED_FLAG"
                            , "HIERARCHY_ENABLED"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_MTL_ITEM_CATEGORIES_V"
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
