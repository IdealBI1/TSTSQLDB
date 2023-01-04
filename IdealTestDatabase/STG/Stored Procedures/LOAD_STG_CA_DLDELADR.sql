

CREATE PROCEDURE "STG"."LOAD_STG_CA_DLDELADR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:50 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_DLDELADR";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_DLDELADR"    "STG"."STG_CA_DLDELADR" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_DLDELADR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_DLDELADR"
                (
                    "Cust#"
                    ,"AdrCde"
                    ,"Delivery Name"
                    ,"Delivery Address 1"
                    ,"Delivery Address 2"
                    ,"Delivery Address 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"Are"
                    ,"Dsp"
                    ,"Delivery Address 4"
                    ,"Delivery Address 5"
                    ,"Delivery Address 6"
                    ,"Delivery Address 7"
                    ,"Delivery Address 8"
                    ,"Delivery Address 9"
                    ,"Delivery Address 10"
                    ,"Delivery Address 11"
                    ,"Mobile"
                    ,"Email"
                    ,"Email Quote"
                    ,"Ste"
                    ,"Pstcde"
                    ,"Cry"
                    ,"District"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Last So#"
                    ,"LstSo Date"
                    ,"Last Sq#"
                    ,"LstSq Date"
                    ,"Webshop ID"
                    ,"B"
                    ,"Ora ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST("ADRCDE" AS nvarchar(12) ) AS "ADRCDE"
                        ,CAST("DELIVERY NAME" AS nvarchar(120) ) AS "DELIVERY NAME"
                        ,CAST("DELIVERY ADDRESS 1" AS nvarchar(120) ) AS "DELIVERY ADDRESS 1"
                        ,CAST("DELIVERY ADDRESS 2" AS nvarchar(120) ) AS "DELIVERY ADDRESS 2"
                        ,CAST("DELIVERY ADDRESS 3" AS nvarchar(80) ) AS "DELIVERY ADDRESS 3"
                        ,CAST("CONTACT" AS nvarchar(60) ) AS "CONTACT"
                        ,CAST("PHONE" AS nvarchar(28) ) AS "PHONE"
                        ,CAST("FAX" AS nvarchar(28) ) AS "FAX"
                        ,CAST("ARE" AS nvarchar(6) ) AS "ARE"
                        ,CAST("DSP" AS nvarchar(6) ) AS "DSP"
                        ,CAST("DELIVERY ADDRESS 4" AS nvarchar(80) ) AS "DELIVERY ADDRESS 4"
                        ,CAST("DELIVERY ADDRESS 5" AS nvarchar(80) ) AS "DELIVERY ADDRESS 5"
                        ,CAST("DELIVERY ADDRESS 6" AS nvarchar(80) ) AS "DELIVERY ADDRESS 6"
                        ,CAST("DELIVERY ADDRESS 7" AS nvarchar(80) ) AS "DELIVERY ADDRESS 7"
                        ,CAST("DELIVERY ADDRESS 8" AS nvarchar(80) ) AS "DELIVERY ADDRESS 8"
                        ,CAST("DELIVERY ADDRESS 9" AS nvarchar(80) ) AS "DELIVERY ADDRESS 9"
                        ,CAST("DELIVERY ADDRESS 10" AS nvarchar(80) ) AS "DELIVERY ADDRESS 10"
                        ,CAST("DELIVERY ADDRESS 11" AS nvarchar(80) ) AS "DELIVERY ADDRESS 11"
                        ,CAST("MOBILE" AS nvarchar(28) ) AS "MOBILE"
                        ,CAST("EMAIL" AS nvarchar(100) ) AS "EMAIL"
                        ,CAST("EMAIL QUOTE" AS nvarchar(100) ) AS "EMAIL QUOTE"
                        ,CAST("STE" AS nvarchar(6) ) AS "STE"
                        ,CAST("PSTCDE" AS nvarchar(12) ) AS "PSTCDE"
                        ,CAST("CRY" AS nvarchar(6) ) AS "CRY"
                        ,CAST("DISTRICT" AS nvarchar(42) ) AS "DISTRICT"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,TRY_CONVERT(datetime2,"Amend Date",104) AS "AMEND DATE"
                        ,TRY_CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(100) ) AS "AMEND BY"
                        ,CAST("LAST SO#" AS nvarchar(30) ) AS "LAST SO#"
                        ,TRY_CONVERT(datetime2,"LstSo Date",104) AS "LSTSO DATE"
                        ,CAST("LAST SQ#" AS nvarchar(20) ) AS "LAST SQ#"
                        ,TRY_CONVERT(datetime2,"LstSq Date",104) AS "LSTSQ DATE"
                        ,CAST("WEBSHOP ID" AS nvarchar(24) ) AS "WEBSHOP ID"
                        ,CAST("B" AS nvarchar(2) ) AS "B"
                        ,CAST("ORA ID" AS nvarchar(8) ) AS "ORA ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Cust#"
                            , "AdrCde"
                            , "Delivery Name"
                            , "Delivery Address 1"
                            , "Delivery Address 2"
                            , "Delivery Address 3"
                            , "Contact"
                            , "Phone"
                            , "Fax"
                            , "Are"
                            , "Dsp"
                            , "Delivery Address 4"
                            , "Delivery Address 5"
                            , "Delivery Address 6"
                            , "Delivery Address 7"
                            , "Delivery Address 8"
                            , "Delivery Address 9"
                            , "Delivery Address 10"
                            , "Delivery Address 11"
                            , "Mobile"
                            , "Email"
                            , "Email Quote"
                            , "Ste"
                            , "Pstcde"
                            , "Cry"
                            , "District"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "Last So#"
                            , "LstSo Date"
                            , "Last Sq#"
                            , "LstSq Date"
                            , "Webshop ID"
                            , "B"
                            , "Ora ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_DLDELADR"
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
