

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOMAST"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:03 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOMAST";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_SOMAST"    "STG"."STG_CA_SOMAST" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SOMAST";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOMAST"
                (
                    "So#"
                    ,"Cust#"
                    ,"Order Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"AdrCde"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Message"
                    ,"P"
                    ,"OV Gst Incl"
                    ,"Last Inv#"
                    ,"LstInvDate"
                    ,"Inv Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"Req Ref"
                    ,"ProjPB"
                    ,"Freight Co"
                    ,"Order Source"
                    ,"Quote Salutation"
                    ,"PckC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Delivery Address Line 4"
                    ,"Contact"
                    ,"Contact Phone"
                    ,"Contact Fax"
                    ,"Start Date"
                    ,"Delivery Instructions"
                    ,"Eby"
                    ,"Start By"
                    ,"Contact Mobile"
                    ,"Contact Email"
                    ,"Gst Value"
                    ,"STime"
                    ,"Inby"
                    ,"Aby"
                    ,"Edit Date"
                    ,"ESTime"
                    ,"EFTime"
                    ,"Ste"
                    ,"Pstcde"
                    ,"Delivery District"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Order Date",104) AS "ORDER DATE"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("H" AS nvarchar(6) ) AS "H"
                        ,CAST("SPN" AS nvarchar(6) ) AS "SPN"
                        ,CAST("ADRCDE" AS nvarchar(12) ) AS "ADRCDE"
                        ,CAST("DELIVERY NAME" AS nvarchar(120) ) AS "DELIVERY NAME"
                        ,CAST("DELIVERY ADDRESS LINE 1" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 1"
                        ,CAST("DELIVERY ADDRESS LINE 2" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 2"
                        ,CAST("DELIVERY ADDRESS LINE 3" AS nvarchar(80) ) AS "DELIVERY ADDRESS LINE 3"
                        ,CAST("MESSAGE" AS nvarchar(1000) ) AS "MESSAGE"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("OV GST INCL" AS decimal(36,4)) AS "OV GST INCL"
                        ,CAST("LAST INV#" AS decimal(36,4)) AS "LAST INV#"
                        ,TRY_CONVERT(datetime2,"LstInvDate",104) AS "LSTINVDATE"
                        ,CAST("INV VALUE" AS nvarchar(10) ) AS "INV VALUE"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("PR" AS decimal(36,4)) AS "PR"
                        ,CAST("I" AS nvarchar(2) ) AS "I"
                        ,CAST("F" AS nvarchar(2) ) AS "F"
                        ,CAST("REQ REF" AS nvarchar(60) ) AS "REQ REF"
                        ,CAST("PROJPB" AS nvarchar(60) ) AS "PROJPB"
                        ,CAST("FREIGHT CO" AS nvarchar(40) ) AS "FREIGHT CO"
                        ,CAST("ORDER SOURCE" AS nvarchar(60) ) AS "ORDER SOURCE"
                        ,CAST("QUOTE SALUTATION" AS nvarchar(60) ) AS "QUOTE SALUTATION"
                        ,CAST("PCKC" AS decimal(36,4)) AS "PCKC"
                        ,CAST("TXCERT" AS nvarchar(40) ) AS "TXCERT"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("DELIVERY ADDRESS LINE 4" AS nvarchar(60) ) AS "DELIVERY ADDRESS LINE 4"
                        ,CAST("CONTACT" AS nvarchar(60) ) AS "CONTACT"
                        ,CAST("CONTACT PHONE" AS nvarchar(28) ) AS "CONTACT PHONE"
                        ,CAST("CONTACT FAX" AS nvarchar(28) ) AS "CONTACT FAX"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,CAST("DELIVERY INSTRUCTIONS" AS nvarchar(1000) ) AS "DELIVERY INSTRUCTIONS"
                        ,CAST("EBY" AS nvarchar(6) ) AS "EBY"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,CAST("CONTACT MOBILE" AS nvarchar(28) ) AS "CONTACT MOBILE"
                        ,CAST("CONTACT EMAIL" AS nvarchar(500) ) AS "CONTACT EMAIL"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("INBY" AS decimal(36,4)) AS "INBY"
                        ,CAST("ABY" AS nvarchar(16) ) AS "ABY"
                        ,TRY_CONVERT(datetime2,"Edit Date",104) AS "EDIT DATE"
                        ,TRY_CAST("ESTIME" AS time) AS "ESTIME"
                        ,TRY_CAST("EFTIME" AS time) AS "EFTIME"
                        ,CAST("STE" AS nvarchar(6) ) AS "STE"
                        ,CAST("PSTCDE" AS nvarchar(12) ) AS "PSTCDE"
                        ,CAST("DELIVERY DISTRICT" AS nvarchar(42) ) AS "DELIVERY DISTRICT"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Cust#"
                            , "Order Date"
                            , "Customer Reference"
                            , "Deliv Date"
                            , "H"
                            , "Spn"
                            , "AdrCde"
                            , "Delivery Name"
                            , "Delivery Address Line 1"
                            , "Delivery Address Line 2"
                            , "Delivery Address Line 3"
                            , "Message"
                            , "P"
                            , "OV Gst Incl"
                            , "Last Inv#"
                            , "LstInvDate"
                            , "Inv Value"
                            , "T"
                            , "S"
                            , "Pr"
                            , "I"
                            , "F"
                            , "Req Ref"
                            , "ProjPB"
                            , "Freight Co"
                            , "Order Source"
                            , "Quote Salutation"
                            , "PckC"
                            , "TxCert"
                            , "Loc"
                            , "Delivery Address Line 4"
                            , "Contact"
                            , "Contact Phone"
                            , "Contact Fax"
                            , "Start Date"
                            , "Delivery Instructions"
                            , "Eby"
                            , "Start By"
                            , "Contact Mobile"
                            , "Contact Email"
                            , "Gst Value"
                            , "STime"
                            , "Inby"
                            , "Aby"
                            , "Edit Date"
                            , "ESTime"
                            , "EFTime"
                            , "Ste"
                            , "Pstcde"
                            , "Delivery District"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOMAST"
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
