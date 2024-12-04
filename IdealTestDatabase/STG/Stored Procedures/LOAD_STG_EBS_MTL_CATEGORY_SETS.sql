

CREATE PROCEDURE [STG].[LOAD_STG_EBS_MTL_CATEGORY_SETS]
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
    
    EXEC "STG"."LOAD_STG_EBS_MTL_CATEGORY_SETS";
    
    
    Source                               Destination                       
    ---------------------------------    --------------------------------- 
    LND"."LND_EBS_MTL_CATEGORY_SETS"    "STG"."STG_EBS_MTL_CATEGORY_SETS" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_MTL_CATEGORY_SETS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_CATEGORY_SETS"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ROW_ID" AS varchar(100) ) AS "ROW_ID"
                        ,CAST("CATEGORY_SET_ID" AS float) AS "CATEGORY_SET_ID"
                        ,CAST("STRUCTURE_ID" AS float) AS "STRUCTURE_ID"
                        ,CAST("VALIDATE_FLAG" AS varchar(100) ) AS "VALIDATE_FLAG"
                        ,CAST("CONTROL_LEVEL" AS float) AS "CONTROL_LEVEL"
                        ,CAST("DEFAULT_CATEGORY_ID" AS float) AS "DEFAULT_CATEGORY_ID"
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
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("MULT_ITEM_CAT_ASSIGN_FLAG" AS varchar(100) ) AS "MULT_ITEM_CAT_ASSIGN_FLAG"
                        ,CAST("CONTROL_LEVEL_UPDATEABLE_FLAG" AS varchar(100) ) AS "CONTROL_LEVEL_UPDATEABLE_FLAG"
                        ,CAST("MULT_ITEM_CAT_UPDATEABLE_FLAG" AS varchar(100) ) AS "MULT_ITEM_CAT_UPDATEABLE_FLAG"
                        ,CAST("VALIDATE_FLAG_UPDATEABLE_FLAG" AS varchar(100) ) AS "VALIDATE_FLAG_UPDATEABLE_FLAG"
                        ,CAST("HIERARCHY_ENABLED" AS varchar(100) ) AS "HIERARCHY_ENABLED"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "ROW_ID"
                            , "CATEGORY_SET_ID"
                            , "STRUCTURE_ID"
                            , "VALIDATE_FLAG"
                            , "CONTROL_LEVEL"
                            , "DEFAULT_CATEGORY_ID"
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
                            , "DESCRIPTION"
                            , "MULT_ITEM_CAT_ASSIGN_FLAG"
                            , "CONTROL_LEVEL_UPDATEABLE_FLAG"
                            , "MULT_ITEM_CAT_UPDATEABLE_FLAG"
                            , "VALIDATE_FLAG_UPDATEABLE_FLAG"
                            , "HIERARCHY_ENABLED"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_MTL_CATEGORY_SETS"
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
