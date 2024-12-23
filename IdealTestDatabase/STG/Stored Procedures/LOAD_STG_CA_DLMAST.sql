﻿

CREATE PROCEDURE "STG"."LOAD_STG_CA_DLMAST"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:24:20 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_DLMAST";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_DLMAST"    "STG"."STG_CA_DLMAST" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_DLMAST";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_DLMAST"
                (
                    "Cust#"
                    ,"Key"
                    ,"Customer Name"
                    ,"Address Line 1"
                    ,"Address Line 2"
                    ,"Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"Bal Future"
                    ,"BalCurrent"
                    ,"Bal 30Days"
                    ,"Bal 60Days"
                    ,"Bal 90Days"
                    ,"LastRcpVal"
                    ,"LstRcpDate"
                    ,"Bnk"
                    ,"Bank Branch"
                    ,"Cred Limit"
                    ,"S"
                    ,"W"
                    ,"Profile"
                    ,"Start Date"
                    ,"Comment"
                    ,"Prc"
                    ,"CusTyp"
                    ,"Crl"
                    ,"Open Bal"
                    ,"Crmt"
                    ,"InsLim"
                    ,"TxCert"
                    ,"X"
                    ,"On Order"
                    ,"Sales 1"
                    ,"Sales 2"
                    ,"Sales 3"
                    ,"Sales 4"
                    ,"Sales 5"
                    ,"Sales 6"
                    ,"Sales 7"
                    ,"Sales 8"
                    ,"Sales 9"
                    ,"Sales 10"
                    ,"Sales 11"
                    ,"Sales 12"
                    ,"Sales 13"
                    ,"Sales 14"
                    ,"Sales 15"
                    ,"Sales 16"
                    ,"Sales 17"
                    ,"Sales 18"
                    ,"Sales 19"
                    ,"Sales 20"
                    ,"Sales 21"
                    ,"Sales 22"
                    ,"Sales 23"
                    ,"Sales 24"
                    ,"Cogs 1"
                    ,"Cogs 2"
                    ,"Cogs 3"
                    ,"Cogs 4"
                    ,"Cogs 5"
                    ,"Cogs 6"
                    ,"Cogs 7"
                    ,"Cogs 8"
                    ,"Cogs 9"
                    ,"Cogs 10"
                    ,"Cogs 11"
                    ,"Cogs 12"
                    ,"Cogs 13"
                    ,"Cogs 14"
                    ,"Cogs 15"
                    ,"Cogs 16"
                    ,"Cogs 17"
                    ,"Cogs 18"
                    ,"Cogs 19"
                    ,"Cogs 20"
                    ,"Cogs 21"
                    ,"Cogs 22"
                    ,"Cogs 23"
                    ,"Cogs 24"
                    ,"Last Sale"
                    ,"Spare Bal"
                    ,"DeliveryMeth"
                    ,"C"
                    ,"Last Aged"
                    ,"Stmt#"
                    ,"Mobile"
                    ,"Pstcde"
                    ,"Acn"
                    ,"PrvYrSals5"
                    ,"PrvYrSals4"
                    ,"PrvYrSals3"
                    ,"PrvYrSals2"
                    ,"PrvYrCogs5"
                    ,"PrvYrCogs4"
                    ,"PrvYrCogs3"
                    ,"PrvYrCogs2"
                    ,"Comment2"
                    ,"Email Contact"
                    ,"R"
                    ,"P"
                    ,"H"
                    ,"M"
                    ,"N"
                    ,"G"
                    ,"O"
                    ,"F"
                    ,"D"
                    ,"A"
                    ,"Invoice Popup Message"
                    ,"Debt Bal"
                    ,"Parm1"
                    ,"I"
                    ,"Email Invoice"
                    ,"T"
                    ,"Email Order Confimation"
                    ,"Email Quote"
                    ,"DefDAd"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST("KEY" AS nvarchar(12) ) AS "KEY"
                        ,CAST("CUSTOMER NAME" AS nvarchar(120) ) AS "CUSTOMER NAME"
                        ,CAST("ADDRESS LINE 1" AS nvarchar(120) ) AS "ADDRESS LINE 1"
                        ,CAST("ADDRESS LINE 2" AS nvarchar(120) ) AS "ADDRESS LINE 2"
                        ,CAST("ADDRESS LINE 3" AS nvarchar(80) ) AS "ADDRESS LINE 3"
                        ,CAST("CONTACT" AS nvarchar(60) ) AS "CONTACT"
                        ,CAST("PHONE" AS nvarchar(28) ) AS "PHONE"
                        ,CAST("FAX" AS nvarchar(28) ) AS "FAX"
                        ,CAST("BAL FUTURE" AS decimal(36,4)) AS "BAL FUTURE"
                        ,CAST("BALCURRENT" AS decimal(36,4)) AS "BALCURRENT"
                        ,CAST("BAL 30DAYS" AS decimal(36,4)) AS "BAL 30DAYS"
                        ,CAST("BAL 60DAYS" AS decimal(36,4)) AS "BAL 60DAYS"
                        ,CAST("BAL 90DAYS" AS decimal(36,4)) AS "BAL 90DAYS"
                        ,CAST("LASTRCPVAL" AS decimal(36,4)) AS "LASTRCPVAL"
                        ,TRY_CONVERT(datetime2,"LstRcpDate",104) AS "LSTRCPDATE"
                        ,CAST("BNK" AS nvarchar(6) ) AS "BNK"
                        ,CAST("BANK BRANCH" AS nvarchar(40) ) AS "BANK BRANCH"
                        ,CAST("CRED LIMIT" AS decimal(36,4)) AS "CRED LIMIT"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("W" AS nvarchar(20) ) AS "W"
                        ,CAST("PROFILE" AS nvarchar(24) ) AS "PROFILE"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,CAST("COMMENT" AS nvarchar(80) ) AS "COMMENT"
                        ,CAST("PRC" AS nvarchar(6) ) AS "PRC"
                        ,CAST("CUSTYP" AS nvarchar(12) ) AS "CUSTYP"
                        ,CAST("CRL" AS nvarchar(6) ) AS "CRL"
                        ,CAST("OPEN BAL" AS decimal(36,4)) AS "OPEN BAL"
                        ,CAST("CRMT" AS decimal(36,4)) AS "CRMT"
                        ,CAST("INSLIM" AS decimal(36,4)) AS "INSLIM"
                        ,CAST("TXCERT" AS nvarchar(40) ) AS "TXCERT"
                        ,CAST("X" AS nvarchar(2) ) AS "X"
                        ,CAST("ON ORDER" AS decimal(36,4)) AS "ON ORDER"
                        ,CAST("SALES 1" AS decimal(36,4)) AS "SALES 1"
                        ,CAST("SALES 2" AS decimal(36,4)) AS "SALES 2"
                        ,CAST("SALES 3" AS decimal(36,4)) AS "SALES 3"
                        ,CAST("SALES 4" AS decimal(36,4)) AS "SALES 4"
                        ,CAST("SALES 5" AS decimal(36,4)) AS "SALES 5"
                        ,CAST("SALES 6" AS decimal(36,4)) AS "SALES 6"
                        ,CAST("SALES 7" AS decimal(36,4)) AS "SALES 7"
                        ,CAST("SALES 8" AS decimal(36,4)) AS "SALES 8"
                        ,CAST("SALES 9" AS decimal(36,4)) AS "SALES 9"
                        ,CAST("SALES 10" AS decimal(36,4)) AS "SALES 10"
                        ,CAST("SALES 11" AS decimal(36,4)) AS "SALES 11"
                        ,CAST("SALES 12" AS decimal(36,4)) AS "SALES 12"
                        ,CAST("SALES 13" AS decimal(36,4)) AS "SALES 13"
                        ,CAST("SALES 14" AS decimal(36,4)) AS "SALES 14"
                        ,CAST("SALES 15" AS decimal(36,4)) AS "SALES 15"
                        ,CAST("SALES 16" AS decimal(36,4)) AS "SALES 16"
                        ,CAST("SALES 17" AS decimal(36,4)) AS "SALES 17"
                        ,CAST("SALES 18" AS decimal(36,4)) AS "SALES 18"
                        ,CAST("SALES 19" AS decimal(36,4)) AS "SALES 19"
                        ,CAST("SALES 20" AS decimal(36,4)) AS "SALES 20"
                        ,CAST("SALES 21" AS decimal(36,4)) AS "SALES 21"
                        ,CAST("SALES 22" AS decimal(36,4)) AS "SALES 22"
                        ,CAST("SALES 23" AS decimal(36,4)) AS "SALES 23"
                        ,CAST("SALES 24" AS decimal(36,4)) AS "SALES 24"
                        ,CAST("COGS 1" AS decimal(36,4)) AS "COGS 1"
                        ,CAST("COGS 2" AS decimal(36,4)) AS "COGS 2"
                        ,CAST("COGS 3" AS decimal(36,4)) AS "COGS 3"
                        ,CAST("COGS 4" AS decimal(36,4)) AS "COGS 4"
                        ,CAST("COGS 5" AS decimal(36,4)) AS "COGS 5"
                        ,CAST("COGS 6" AS decimal(36,4)) AS "COGS 6"
                        ,CAST("COGS 7" AS decimal(36,4)) AS "COGS 7"
                        ,CAST("COGS 8" AS decimal(36,4)) AS "COGS 8"
                        ,CAST("COGS 9" AS decimal(36,4)) AS "COGS 9"
                        ,CAST("COGS 10" AS decimal(36,4)) AS "COGS 10"
                        ,CAST("COGS 11" AS decimal(36,4)) AS "COGS 11"
                        ,CAST("COGS 12" AS decimal(36,4)) AS "COGS 12"
                        ,CAST("COGS 13" AS decimal(36,4)) AS "COGS 13"
                        ,CAST("COGS 14" AS decimal(36,4)) AS "COGS 14"
                        ,CAST("COGS 15" AS decimal(36,4)) AS "COGS 15"
                        ,CAST("COGS 16" AS decimal(36,4)) AS "COGS 16"
                        ,CAST("COGS 17" AS decimal(36,4)) AS "COGS 17"
                        ,CAST("COGS 18" AS decimal(36,4)) AS "COGS 18"
                        ,CAST("COGS 19" AS decimal(36,4)) AS "COGS 19"
                        ,CAST("COGS 20" AS decimal(36,4)) AS "COGS 20"
                        ,CAST("COGS 21" AS decimal(36,4)) AS "COGS 21"
                        ,CAST("COGS 22" AS decimal(36,4)) AS "COGS 22"
                        ,CAST("COGS 23" AS decimal(36,4)) AS "COGS 23"
                        ,CAST("COGS 24" AS decimal(36,4)) AS "COGS 24"
                        ,TRY_CONVERT(datetime2,"Last Sale",104) AS "LAST SALE"
                        ,CAST("SPARE BAL" AS decimal(36,4)) AS "SPARE BAL"
                        ,CAST("DELIVERYMETH" AS nvarchar(24) ) AS "DELIVERYMETH"
                        ,CAST("C" AS nvarchar(32) ) AS "C"
                        ,TRY_CONVERT(datetime2,"Last Aged",104) AS "LAST AGED"
                        ,CAST("STMT#" AS decimal(36,4)) AS "STMT#"
                        ,CAST("MOBILE" AS nvarchar(28) ) AS "MOBILE"
                        ,CAST("PSTCDE" AS nvarchar(12) ) AS "PSTCDE"
                        ,CAST("ACN" AS nvarchar(18) ) AS "ACN"
                        ,CAST("PRVYRSALS5" AS decimal(36,4)) AS "PRVYRSALS5"
                        ,CAST("PRVYRSALS4" AS decimal(36,4)) AS "PRVYRSALS4"
                        ,CAST("PRVYRSALS3" AS decimal(36,4)) AS "PRVYRSALS3"
                        ,CAST("PRVYRSALS2" AS decimal(36,4)) AS "PRVYRSALS2"
                        ,CAST("PRVYRCOGS5" AS decimal(36,4)) AS "PRVYRCOGS5"
                        ,CAST("PRVYRCOGS4" AS decimal(36,4)) AS "PRVYRCOGS4"
                        ,CAST("PRVYRCOGS3" AS decimal(36,4)) AS "PRVYRCOGS3"
                        ,CAST("PRVYRCOGS2" AS decimal(36,4)) AS "PRVYRCOGS2"
                        ,CAST("COMMENT2" AS nvarchar(100) ) AS "COMMENT2"
                        ,CAST("EMAIL CONTACT" AS nvarchar(400) ) AS "EMAIL CONTACT"
                        ,CAST("R" AS nvarchar(100) ) AS "R"
                        ,CAST("P" AS nvarchar(100) ) AS "P"
                        ,CAST("H" AS nvarchar(100) ) AS "H"
                        ,CAST("M" AS nvarchar(100) ) AS "M"
                        ,CAST("N" AS nvarchar(100) ) AS "N"
                        ,CAST("G" AS nvarchar(100) ) AS "G"
                        ,CAST("O" AS nvarchar(100) ) AS "O"
                        ,CAST("F" AS nvarchar(100) ) AS "F"
                        ,CAST("D" AS nvarchar(100) ) AS "D"
                        ,CAST("A" AS nvarchar(100) ) AS "A"
                        ,CAST("INVOICE POPUP MESSAGE" AS nvarchar(1000) ) AS "INVOICE POPUP MESSAGE"
                        ,CAST("DEBT BAL" AS decimal(36,4)) AS "DEBT BAL"
                        ,CAST("PARM1" AS decimal(36,4)) AS "PARM1"
                        ,CAST("I" AS nvarchar(2) ) AS "I"
                        ,CAST("EMAIL INVOICE" AS nvarchar(500) ) AS "EMAIL INVOICE"
                        ,CAST("T" AS nvarchar(500) ) AS "T"
                        ,CAST("EMAIL ORDER CONFIMATION" AS nvarchar(500) ) AS "EMAIL ORDER CONFIMATION"
                        ,CAST("EMAIL QUOTE" AS nvarchar(500) ) AS "EMAIL QUOTE"
                        ,CAST("DEFDAD" AS nvarchar(12) ) AS "DEFDAD"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Cust#"
                            , "Key"
                            , "Customer Name"
                            , "Address Line 1"
                            , "Address Line 2"
                            , "Address Line 3"
                            , "Contact"
                            , "Phone"
                            , "Fax"
                            , "Bal Future"
                            , "BalCurrent"
                            , "Bal 30Days"
                            , "Bal 60Days"
                            , "Bal 90Days"
                            , "LastRcpVal"
                            , "LstRcpDate"
                            , "Bnk"
                            , "Bank Branch"
                            , "Cred Limit"
                            , "S"
                            , "W"
                            , "Profile"
                            , "Start Date"
                            , "Comment"
                            , "Prc"
                            , "CusTyp"
                            , "Crl"
                            , "Open Bal"
                            , "Crmt"
                            , "InsLim"
                            , "TxCert"
                            , "X"
                            , "On Order"
                            , "Sales 1"
                            , "Sales 2"
                            , "Sales 3"
                            , "Sales 4"
                            , "Sales 5"
                            , "Sales 6"
                            , "Sales 7"
                            , "Sales 8"
                            , "Sales 9"
                            , "Sales 10"
                            , "Sales 11"
                            , "Sales 12"
                            , "Sales 13"
                            , "Sales 14"
                            , "Sales 15"
                            , "Sales 16"
                            , "Sales 17"
                            , "Sales 18"
                            , "Sales 19"
                            , "Sales 20"
                            , "Sales 21"
                            , "Sales 22"
                            , "Sales 23"
                            , "Sales 24"
                            , "Cogs 1"
                            , "Cogs 2"
                            , "Cogs 3"
                            , "Cogs 4"
                            , "Cogs 5"
                            , "Cogs 6"
                            , "Cogs 7"
                            , "Cogs 8"
                            , "Cogs 9"
                            , "Cogs 10"
                            , "Cogs 11"
                            , "Cogs 12"
                            , "Cogs 13"
                            , "Cogs 14"
                            , "Cogs 15"
                            , "Cogs 16"
                            , "Cogs 17"
                            , "Cogs 18"
                            , "Cogs 19"
                            , "Cogs 20"
                            , "Cogs 21"
                            , "Cogs 22"
                            , "Cogs 23"
                            , "Cogs 24"
                            , "Last Sale"
                            , "Spare Bal"
                            , "DeliveryMeth"
                            , "C"
                            , "Last Aged"
                            , "Stmt#"
                            , "Mobile"
                            , "Pstcde"
                            , "Acn"
                            , "PrvYrSals5"
                            , "PrvYrSals4"
                            , "PrvYrSals3"
                            , "PrvYrSals2"
                            , "PrvYrCogs5"
                            , "PrvYrCogs4"
                            , "PrvYrCogs3"
                            , "PrvYrCogs2"
                            , "Comment2"
                            , "Email Contact"
                            , "R"
                            , "P"
                            , "H"
                            , "M"
                            , "N"
                            , "G"
                            , "O"
                            , "F"
                            , "D"
                            , "A"
                            , "Invoice Popup Message"
                            , "Debt Bal"
                            , "Parm1"
                            , "I"
                            , "Email Invoice"
                            , "T"
                            , "Email Order Confimation"
                            , "Email Quote"
                            , "DefDAd"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_DLMAST"
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
