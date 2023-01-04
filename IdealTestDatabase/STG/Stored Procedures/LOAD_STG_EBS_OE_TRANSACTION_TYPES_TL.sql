

CREATE PROCEDURE [STG].[LOAD_STG_EBS_OE_TRANSACTION_TYPES_TL]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:52 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_OE_TRANSACTION_TYPES_TL";
    
    
    Source                                     Destination                             
    ---------------------------------------    --------------------------------------- 
    LND"."LND_EBS_OE_TRANSACTION_TYPES_TL"    "STG"."STG_EBS_OE_TRANSACTION_TYPES_TL" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_OE_TRANSACTION_TYPES_TL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_OE_TRANSACTION_TYPES_TL"
                (
                    "TRANSACTION_TYPE_ID"
                    ,"LANGUAGE"
                    ,"SOURCE_LANG"
                    ,"NAME"
                    ,"DESCRIPTION"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"REQUEST_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("TRANSACTION_TYPE_ID" AS float) AS "TRANSACTION_TYPE_ID"
                        ,CAST("LANGUAGE" AS varchar(100) ) AS "LANGUAGE"
                        ,CAST("SOURCE_LANG" AS varchar(100) ) AS "SOURCE_LANG"
                        ,CAST("NAME" AS varchar(100) ) AS "NAME"
                        ,CAST("DESCRIPTION" AS varchar(8000) ) AS "DESCRIPTION"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "TRANSACTION_TYPE_ID"
                            , "LANGUAGE"
                            , "SOURCE_LANG"
                            , "NAME"
                            , "DESCRIPTION"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "REQUEST_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_OE_TRANSACTION_TYPES_TL"
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
