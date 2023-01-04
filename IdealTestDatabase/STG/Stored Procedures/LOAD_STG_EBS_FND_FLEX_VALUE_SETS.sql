CREATE PROCEDURE "STG"."LOAD_STG_EBS_FND_FLEX_VALUE_SETS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_FND_FLEX_VALUE_SETS";
    
    
    Source                                 Destination                         
    -----------------------------------    ----------------------------------- 
    LND"."LND_EBS_FND_FLEX_VALUE_SETS"    "STG"."STG_EBS_FND_FLEX_VALUE_SETS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_FND_FLEX_VALUE_SETS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_FND_FLEX_VALUE_SETS"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("FLEX_VALUE_SET_ID" AS float) AS "FLEX_VALUE_SET_ID"
                        ,CAST("FLEX_VALUE_SET_NAME" AS varchar(1000) ) AS "FLEX_VALUE_SET_NAME"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("VALIDATION_TYPE" AS varchar(100) ) AS "VALIDATION_TYPE"
                        ,CAST("PROTECTED_FLAG" AS varchar(100) ) AS "PROTECTED_FLAG"
                        ,CAST("SECURITY_ENABLED_FLAG" AS varchar(100) ) AS "SECURITY_ENABLED_FLAG"
                        ,CAST("LONGLIST_FLAG" AS varchar(100) ) AS "LONGLIST_FLAG"
                        ,CAST("FORMAT_TYPE" AS varchar(100) ) AS "FORMAT_TYPE"
                        ,CAST("MAXIMUM_SIZE" AS float) AS "MAXIMUM_SIZE"
                        ,CAST("ALPHANUMERIC_ALLOWED_FLAG" AS varchar(100) ) AS "ALPHANUMERIC_ALLOWED_FLAG"
                        ,CAST("UPPERCASE_ONLY_FLAG" AS varchar(100) ) AS "UPPERCASE_ONLY_FLAG"
                        ,CAST("NUMERIC_MODE_ENABLED_FLAG" AS varchar(100) ) AS "NUMERIC_MODE_ENABLED_FLAG"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("DEPENDANT_DEFAULT_VALUE" AS varchar(1000) ) AS "DEPENDANT_DEFAULT_VALUE"
                        ,CAST("DEPENDANT_DEFAULT_MEANING" AS varchar(1000) ) AS "DEPENDANT_DEFAULT_MEANING"
                        ,CAST("PARENT_FLEX_VALUE_SET_ID" AS float) AS "PARENT_FLEX_VALUE_SET_ID"
                        ,CAST("MINIMUM_VALUE" AS varchar(1000) ) AS "MINIMUM_VALUE"
                        ,CAST("MAXIMUM_VALUE" AS varchar(1000) ) AS "MAXIMUM_VALUE"
                        ,CAST("NUMBER_PRECISION" AS float) AS "NUMBER_PRECISION"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "FLEX_VALUE_SET_ID"
                            , "FLEX_VALUE_SET_NAME"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "VALIDATION_TYPE"
                            , "PROTECTED_FLAG"
                            , "SECURITY_ENABLED_FLAG"
                            , "LONGLIST_FLAG"
                            , "FORMAT_TYPE"
                            , "MAXIMUM_SIZE"
                            , "ALPHANUMERIC_ALLOWED_FLAG"
                            , "UPPERCASE_ONLY_FLAG"
                            , "NUMERIC_MODE_ENABLED_FLAG"
                            , "DESCRIPTION"
                            , "DEPENDANT_DEFAULT_VALUE"
                            , "DEPENDANT_DEFAULT_MEANING"
                            , "PARENT_FLEX_VALUE_SET_ID"
                            , "MINIMUM_VALUE"
                            , "MAXIMUM_VALUE"
                            , "NUMBER_PRECISION"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_FND_FLEX_VALUE_SETS"
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