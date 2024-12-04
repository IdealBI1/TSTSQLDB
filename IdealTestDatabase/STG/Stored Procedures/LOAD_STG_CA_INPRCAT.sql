

CREATE PROCEDURE "STG"."LOAD_STG_CA_INPRCAT"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        16/09/2022 3:58:02 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INPRCAT";
    
    
    Source                    Destination            
    ----------------------    ---------------------- 
    LND"."LND_CA_INPRCAT"    "STG"."STG_CA_INPRCAT" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-09-16    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_INPRCAT";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INPRCAT"
                (
                    "Prcat"
                    ,"Price Category Descriptn"
                    ,"MaxDis"
                    ,"Usage"
                    ,"CatReb"
                    ,"Sub Category Description"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("PRCAT" AS nvarchar(100) ) AS "PRCAT"
                        ,CAST("PRICE CATEGORY DESCRIPTN" AS nvarchar(100) ) AS "PRICE CATEGORY DESCRIPTN"
                        ,CAST("MAXDIS" AS decimal(36,4)) AS "MAXDIS"
                        ,CAST("USAGE" AS nvarchar(1000) ) AS "USAGE"
                        ,CAST("CATREB" AS decimal(36,4)) AS "CATREB"
                        ,CAST("SUB CATEGORY DESCRIPTION" AS nvarchar(1000) ) AS "SUB CATEGORY DESCRIPTION"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Prcat"
                            , "Price Category Descriptn"
                            , "MaxDis"
                            , "Usage"
                            , "CatReb"
                            , "Sub Category Description"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INPRCAT"
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
