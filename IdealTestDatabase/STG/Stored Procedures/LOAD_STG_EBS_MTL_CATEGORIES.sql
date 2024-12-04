

CREATE PROCEDURE [STG].[LOAD_STG_EBS_MTL_CATEGORIES]
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
    
    EXEC "STG"."LOAD_STG_EBS_MTL_CATEGORIES";
    
    
    Source                            Destination                    
    ------------------------------    ------------------------------ 
    LND"."LND_EBS_MTL_CATEGORIES"    "STG"."STG_EBS_MTL_CATEGORIES" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_MTL_CATEGORIES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_CATEGORIES"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ROW_ID" AS varchar(100) ) AS "ROW_ID"
                        ,CAST("CATEGORY_ID" AS float) AS "CATEGORY_ID"
                        ,CAST("STRUCTURE_ID" AS float) AS "STRUCTURE_ID"
                        ,TRY_CONVERT(datetime2,"DISABLE_DATE",121) AS "DISABLE_DATE"
                        ,CAST("WEB_STATUS" AS varchar(100) ) AS "WEB_STATUS"
                        ,CAST("SUPPLIER_ENABLED_FLAG" AS varchar(100) ) AS "SUPPLIER_ENABLED_FLAG"
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
                        ,TRY_CONVERT(datetime2,"START_DATE_ACTIVE",121) AS "START_DATE_ACTIVE"
                        ,TRY_CONVERT(datetime2,"END_DATE_ACTIVE",121) AS "END_DATE_ACTIVE"
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
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "ROW_ID"
                            , "CATEGORY_ID"
                            , "STRUCTURE_ID"
                            , "DISABLE_DATE"
                            , "WEB_STATUS"
                            , "SUPPLIER_ENABLED_FLAG"
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
                            , "START_DATE_ACTIVE"
                            , "END_DATE_ACTIVE"
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
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "DESCRIPTION"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_MTL_CATEGORIES"
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
