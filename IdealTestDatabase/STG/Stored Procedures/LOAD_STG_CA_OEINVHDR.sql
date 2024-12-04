

CREATE PROCEDURE "STG"."LOAD_STG_CA_OEINVHDR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:14 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_OEINVHDR";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_OEINVHDR"    "STG"."STG_CA_OEINVHDR" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_OEINVHDR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_OEINVHDR"
                (
                    "Invoice#"
                    ,"Cust#"
                    ,"Batch#"
                    ,"Trans Date"
                    ,"Customer Reference"
                    ,"P"
                    ,"SV Gst Incl"
                    ,"Message"
                    ,"Gst Value"
                    ,"Cogs Value"
                    ,"Line Total"
                    ,"So#"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Tax Certificate"
                    ,"Spn"
                    ,"Job Ref"
                    ,"Credit#"
                    ,"Ins"
                    ,"C2OBch"
                    ,"Disp Via"
                    ,"Consignment Note#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Loc"
                    ,"Line Gst Val"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("INVOICE#" AS decimal(36,4)) AS "INVOICE#"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST("BATCH#" AS decimal(36,4)) AS "BATCH#"
                        ,TRY_CONVERT(datetime2,"Trans Date",104) AS "TRANS DATE"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("SV GST INCL" AS decimal(36,4)) AS "SV GST INCL"
                        ,CAST("MESSAGE" AS nvarchar(1000) ) AS "MESSAGE"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("COGS VALUE" AS decimal(36,4)) AS "COGS VALUE"
                        ,CAST("LINE TOTAL" AS decimal(36,4)) AS "LINE TOTAL"
                        ,CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("DELIVERY NAME" AS nvarchar(120) ) AS "DELIVERY NAME"
                        ,CAST("DELIVERY ADDRESS LINE 1" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 1"
                        ,CAST("DELIVERY ADDRESS LINE 2" AS nvarchar(120) ) AS "DELIVERY ADDRESS LINE 2"
                        ,CAST("DELIVERY ADDRESS LINE 3" AS nvarchar(80) ) AS "DELIVERY ADDRESS LINE 3"
                        ,CAST("TAX CERTIFICATE" AS nvarchar(30) ) AS "TAX CERTIFICATE"
                        ,CAST("SPN" AS nvarchar(6) ) AS "SPN"
                        ,CAST("JOB REF" AS nvarchar(20) ) AS "JOB REF"
                        ,CAST("CREDIT#" AS nvarchar(60) ) AS "CREDIT#"
                        ,CAST("INS" AS nvarchar(100) ) AS "INS"
                        ,CAST("C2OBCH" AS nvarchar(12) ) AS "C2OBCH"
                        ,CAST("DISP VIA" AS nvarchar(200) ) AS "DISP VIA"
                        ,CAST("CONSIGNMENT NOTE#" AS nvarchar(200) ) AS "CONSIGNMENT NOTE#"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,TRY_CONVERT(datetime2,"Amend Date",104) AS "AMEND DATE"
                        ,TRY_CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(30) ) AS "AMEND BY"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("LINE GST VAL" AS decimal(36,4)) AS "LINE GST VAL"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Invoice#"
                            , "Cust#"
                            , "Batch#"
                            , "Trans Date"
                            , "Customer Reference"
                            , "P"
                            , "SV Gst Incl"
                            , "Message"
                            , "Gst Value"
                            , "Cogs Value"
                            , "Line Total"
                            , "So#"
                            , "Delivery Name"
                            , "Delivery Address Line 1"
                            , "Delivery Address Line 2"
                            , "Delivery Address Line 3"
                            , "Tax Certificate"
                            , "Spn"
                            , "Job Ref"
                            , "Credit#"
                            , "Ins"
                            , "C2OBch"
                            , "Disp Via"
                            , "Consignment Note#"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "Loc"
                            , "Line Gst Val"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_OEINVHDR"
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
