

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOLSTAT"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:09 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOLSTAT";
    
    
    Source                    Destination            
    ----------------------    ---------------------- 
    LND"."LND_CA_SOLSTAT"    "STG"."STG_CA_SOLSTAT" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_SOLSTAT";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOLSTAT"
                (
                    "So#"
                    ,"Sol#"
                    ,"Cust#"
                    ,"Order Date"
                    ,"S"
                    ,"I"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("SOL#" AS decimal(36,4)) AS "SOL#"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Order Date",104) AS "ORDER DATE"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("I" AS nvarchar(2) ) AS "I"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Sol#"
                            , "Cust#"
                            , "Order Date"
                            , "S"
                            , "I"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOLSTAT"
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
