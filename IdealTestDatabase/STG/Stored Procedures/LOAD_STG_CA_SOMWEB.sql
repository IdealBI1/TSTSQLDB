

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOMWEB"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:07 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOMWEB";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_SOMWEB"    "STG"."STG_CA_SOMWEB" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SOMWEB";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOMWEB"
                (
                    "So#"
                    ,"Cust#"
                    ,"Order Date"
                    ,"WebType"
                    ,"OrderRef"
                    ,"Order Placed By"
                    ,"Webshop First Name"
                    ,"Webshop Last Name"
                    ,"CCAuth"
                    ,"CC Amount"
                    ,"CC Token"
                    ,"CC UserID"
                    ,"CC Expiry"
                    ,"Lst4"
                    ,"CC Holder Name"
                    ,"CCTyp"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Order Date",104) AS "ORDER DATE"
                        ,CAST("WEBTYPE" AS nvarchar(40) ) AS "WEBTYPE"
                        ,CAST("ORDERREF" AS nvarchar(20) ) AS "ORDERREF"
                        ,CAST("ORDER PLACED BY" AS nvarchar(60) ) AS "ORDER PLACED BY"
                        ,CAST("WEBSHOP FIRST NAME" AS nvarchar(60) ) AS "WEBSHOP FIRST NAME"
                        ,CAST("WEBSHOP LAST NAME" AS nvarchar(60) ) AS "WEBSHOP LAST NAME"
                        ,CAST("CCAUTH" AS nvarchar(12) ) AS "CCAUTH"
                        ,CAST("CC AMOUNT" AS decimal(36,4)) AS "CC AMOUNT"
                        ,CAST("CC TOKEN" AS nvarchar(32) ) AS "CC TOKEN"
                        ,CAST("CC USERID" AS nvarchar(60) ) AS "CC USERID"
                        ,TRY_CONVERT(datetime2,"CC Expiry",104) AS "CC EXPIRY"
                        ,CAST("LST4" AS nvarchar(8) ) AS "LST4"
                        ,CAST("CC HOLDER NAME" AS nvarchar(120) ) AS "CC HOLDER NAME"
                        ,CAST("CCTYP" AS nvarchar(12) ) AS "CCTYP"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Cust#"
                            , "Order Date"
                            , "WebType"
                            , "OrderRef"
                            , "Order Placed By"
                            , "Webshop First Name"
                            , "Webshop Last Name"
                            , "CCAuth"
                            , "CC Amount"
                            , "CC Token"
                            , "CC UserID"
                            , "CC Expiry"
                            , "Lst4"
                            , "CC Holder Name"
                            , "CCTyp"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOMWEB"
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
