

CREATE PROCEDURE "STG"."LOAD_STG_CA_CLADDR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:40 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_CLADDR";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_CLADDR"    "STG"."STG_CA_CLADDR" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-09-23    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_CLADDR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_CLADDR"
                (
                    "Sup#"
                    ,"Code"
                    ,"Supplier Local Name"
                    ,"Supplier Local Address 1"
                    ,"Supplier Local Address 2"
                    ,"Supplier Local Address 3"
                    ,"Supplier Local Address 4"
                    ,"Contact"
                    ,"Phone"
                    ,"Mobile"
                    ,"Email Contact"
                    ,"Email Po"
                    ,"Free Phone"
                    ,"Email Rfc"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("CODE" AS nvarchar(100) ) AS "CODE"
                        ,CAST("SUPPLIER LOCAL NAME" AS nvarchar(100) ) AS "SUPPLIER LOCAL NAME"
                        ,CAST("SUPPLIER LOCAL ADDRESS 1" AS nvarchar(100) ) AS "SUPPLIER LOCAL ADDRESS 1"
                        ,CAST("SUPPLIER LOCAL ADDRESS 2" AS nvarchar(100) ) AS "SUPPLIER LOCAL ADDRESS 2"
                        ,CAST("SUPPLIER LOCAL ADDRESS 3" AS nvarchar(100) ) AS "SUPPLIER LOCAL ADDRESS 3"
                        ,CAST("SUPPLIER LOCAL ADDRESS 4" AS nvarchar(100) ) AS "SUPPLIER LOCAL ADDRESS 4"
                        ,CAST("CONTACT" AS nvarchar(100) ) AS "CONTACT"
                        ,CAST("PHONE" AS nvarchar(100) ) AS "PHONE"
                        ,CAST("MOBILE" AS nvarchar(100) ) AS "MOBILE"
                        ,CAST("EMAIL CONTACT" AS nvarchar(100) ) AS "EMAIL CONTACT"
                        ,CAST("EMAIL PO" AS nvarchar(100) ) AS "EMAIL PO"
                        ,CAST("FREE PHONE" AS nvarchar(100) ) AS "FREE PHONE"
                        ,CAST("EMAIL RFC" AS nvarchar(1000) ) AS "EMAIL RFC"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Sup#"
                            , "Code"
                            , "Supplier Local Name"
                            , "Supplier Local Address 1"
                            , "Supplier Local Address 2"
                            , "Supplier Local Address 3"
                            , "Supplier Local Address 4"
                            , "Contact"
                            , "Phone"
                            , "Mobile"
                            , "Email Contact"
                            , "Email Po"
                            , "Free Phone"
                            , "Email Rfc"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_CLADDR"
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
