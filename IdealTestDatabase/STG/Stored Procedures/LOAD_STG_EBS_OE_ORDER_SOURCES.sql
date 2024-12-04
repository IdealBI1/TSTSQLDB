

CREATE PROCEDURE [STG].[LOAD_STG_EBS_OE_ORDER_SOURCES]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_OE_ORDER_SOURCES";
    
    
    Source                              Destination                      
    --------------------------------    -------------------------------- 
    LND"."LND_EBS_OE_ORDER_SOURCES"    "STG"."STG_EBS_OE_ORDER_SOURCES" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_OE_ORDER_SOURCES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_OE_ORDER_SOURCES"
                (
                    "ORDER_SOURCE_ID"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"NAME"
                    ,"DESCRIPTION"
                    ,"ENABLED_FLAG"
                    ,"CREATE_CUSTOMERS_FLAG"
                    ,"USE_IDS_FLAG"
                    ,"AIA_ENABLED_FLAG"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ORDER_SOURCE_ID" AS float) AS "ORDER_SOURCE_ID"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("NAME" AS varchar(1000) ) AS "NAME"
                        ,CAST("DESCRIPTION" AS varchar(8000) ) AS "DESCRIPTION"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("CREATE_CUSTOMERS_FLAG" AS varchar(100) ) AS "CREATE_CUSTOMERS_FLAG"
                        ,CAST("USE_IDS_FLAG" AS varchar(100) ) AS "USE_IDS_FLAG"
                        ,CAST("AIA_ENABLED_FLAG" AS varchar(100) ) AS "AIA_ENABLED_FLAG"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "ORDER_SOURCE_ID"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "NAME"
                            , "DESCRIPTION"
                            , "ENABLED_FLAG"
                            , "CREATE_CUSTOMERS_FLAG"
                            , "USE_IDS_FLAG"
                            , "AIA_ENABLED_FLAG"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_OE_ORDER_SOURCES"
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
