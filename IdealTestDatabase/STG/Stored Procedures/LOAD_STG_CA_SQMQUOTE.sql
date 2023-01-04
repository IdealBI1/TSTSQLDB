

CREATE PROCEDURE "STG"."LOAD_STG_CA_SQMQUOTE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:12 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SQMQUOTE";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_SQMQUOTE"    "STG"."STG_CA_SQMQUOTE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SQMQUOTE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SQMQUOTE"
                (
                    "Sq#"
                    ,"Cust#"
                    ,"Quote Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"DelCod"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"QV Gst Incl"
                    ,"Valid Date"
                    ,"Cogs Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"ProjPB"
                    ,"Webshop / Copy2So#-Sq#"
                    ,"Quote Salutation"
                    ,"PC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Email"
                    ,"Contact Mobile"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"P"
                    ,"CopyFmSq#"
                    ,"Pstcde"
                    ,"Delivery Mode"
                    ,"Order Placed By"
                    ,"Rfq#"
                    ,"QteNeedDat"
                    ,"Quote Description"
                    ,"W"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SQ#" AS nvarchar(20) ) AS "SQ#"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Quote Date",104) AS "QUOTE DATE"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("H" AS nvarchar(6) ) AS "H"
                        ,CAST("SPN" AS nvarchar(6) ) AS "SPN"
                        ,CAST("DELCOD" AS nvarchar(12) ) AS "DELCOD"
                        ,CAST("DELIVERY NAME" AS nvarchar(120) ) AS "DELIVERY NAME"
                        ,CAST("DELIVERY ADDRESS LINE 1" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 1"
                        ,CAST("DELIVERY ADDRESS LINE 2" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 2"
                        ,CAST("DELIVERY ADDRESS LINE 3" AS nvarchar(80) ) AS "DELIVERY ADDRESS LINE 3"
                        ,CAST("CONTACT" AS nvarchar(60) ) AS "CONTACT"
                        ,CAST("PHONE" AS nvarchar(28) ) AS "PHONE"
                        ,CAST("FAX" AS nvarchar(28) ) AS "FAX"
                        ,CAST("QV GST INCL" AS decimal(36,4)) AS "QV GST INCL"
                        ,TRY_CONVERT(datetime2,"Valid Date",104) AS "VALID DATE"
                        ,CAST("COGS VALUE" AS decimal(36,4)) AS "COGS VALUE"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("PR" AS decimal(36,4)) AS "PR"
                        ,CAST("I" AS nvarchar(2) ) AS "I"
                        ,CAST("F" AS nvarchar(2) ) AS "F"
                        ,CAST("PROJPB" AS nvarchar(60) ) AS "PROJPB"
                        ,CAST("WEBSHOP / COPY2SO#-SQ#" AS nvarchar(60) ) AS "WEBSHOP / COPY2SO#-SQ#"
                        ,CAST("QUOTE SALUTATION" AS nvarchar(60) ) AS "QUOTE SALUTATION"
                        ,CAST("PC" AS decimal(36,4)) AS "PC"
                        ,CAST("TXCERT" AS nvarchar(40) ) AS "TXCERT"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("EMAIL" AS nvarchar(120) ) AS "EMAIL"
                        ,CAST("CONTACT MOBILE" AS nvarchar(28) ) AS "CONTACT MOBILE"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("COPYFMSQ#" AS nvarchar(20) ) AS "COPYFMSQ#"
                        ,CAST("PSTCDE" AS nvarchar(12) ) AS "PSTCDE"
                        ,CAST("DELIVERY MODE" AS nvarchar(60) ) AS "DELIVERY MODE"
                        ,CAST("ORDER PLACED BY" AS nvarchar(60) ) AS "ORDER PLACED BY"
                        ,CAST("RFQ#" AS nvarchar(50) ) AS "RFQ#"
                        ,TRY_CONVERT(datetime2,"QteNeedDat",104) AS "QTENEEDDAT"
                        ,CAST("QUOTE DESCRIPTION" AS nvarchar(500) ) AS "QUOTE DESCRIPTION"
                        ,CAST("W" AS nvarchar(2) ) AS "W"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Sq#"
                            , "Cust#"
                            , "Quote Date"
                            , "Customer Reference"
                            , "Deliv Date"
                            , "H"
                            , "Spn"
                            , "DelCod"
                            , "Delivery Name"
                            , "Delivery Address Line 1"
                            , "Delivery Address Line 2"
                            , "Delivery Address Line 3"
                            , "Contact"
                            , "Phone"
                            , "Fax"
                            , "QV Gst Incl"
                            , "Valid Date"
                            , "Cogs Value"
                            , "T"
                            , "S"
                            , "Pr"
                            , "I"
                            , "F"
                            , "ProjPB"
                            , "Webshop / Copy2So#-Sq#"
                            , "Quote Salutation"
                            , "PC"
                            , "TxCert"
                            , "Loc"
                            , "Gst Value"
                            , "Email"
                            , "Contact Mobile"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "P"
                            , "CopyFmSq#"
                            , "Pstcde"
                            , "Delivery Mode"
                            , "Order Placed By"
                            , "Rfq#"
                            , "QteNeedDat"
                            , "Quote Description"
                            , "W"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SQMQUOTE"
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
