

CREATE PROCEDURE "STG"."LOAD_STG_CA_POLINE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:50 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_POLINE";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_POLINE"    "STG"."STG_CA_POLINE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_POLINE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_POLINE"
                (
                    "Po#"
                    ,"Pol#"
                    ,"Item Code"
                    ,"Loc"
                    ,"Order Qty"
                    ,"Buy Price"
                    ,"InvoiceCost"
                    ,"Order Value"
                    ,"ExpectDate"
                    ,"Receipt Qty"
                    ,"Receipt Val"
                    ,"Invoice Qty"
                    ,"Invoice Val"
                    ,"Cancel Qty"
                    ,"Sup#"
                    ,"Job Ref"
                    ,"L"
                    ,"Comment"
                    ,"Factor"
                    ,"Prc Fact"
                    ,"GlAcct#"
                    ,"Supplier Item Code"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"O Price M2"
                    ,"InmLastCost"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("PO#" AS decimal(36,4)) AS "PO#"
                        ,CAST("POL#" AS decimal(36,4)) AS "POL#"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CAST("ORDER QTY" AS decimal(36,4)) AS "ORDER QTY"
                        ,CAST("BUY PRICE" AS decimal(36,4)) AS "BUY PRICE"
                        ,CAST("INVOICECOST" AS decimal(36,4)) AS "INVOICECOST"
                        ,CAST("ORDER VALUE" AS decimal(36,4)) AS "ORDER VALUE"
                        ,CONVERT(date,"ExpectDate",103) AS "EXPECTDATE"
                        ,CAST("RECEIPT QTY" AS decimal(36,4)) AS "RECEIPT QTY"
                        ,CAST("RECEIPT VAL" AS decimal(36,4)) AS "RECEIPT VAL"
                        ,CAST("INVOICE QTY" AS decimal(36,4)) AS "INVOICE QTY"
                        ,CAST("INVOICE VAL" AS decimal(36,4)) AS "INVOICE VAL"
                        ,CAST("CANCEL QTY" AS decimal(36,4)) AS "CANCEL QTY"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("JOB REF" AS nvarchar(100) ) AS "JOB REF"
                        ,CAST("L" AS nvarchar(100) ) AS "L"
                        ,CAST("COMMENT" AS nvarchar(2000) ) AS "COMMENT"
                        ,CAST("FACTOR" AS decimal(36,4)) AS "FACTOR"
                        ,CAST("PRC FACT" AS decimal(36,4)) AS "PRC FACT"
                        ,CAST("GLACCT#" AS nvarchar(100) ) AS "GLACCT#"
                        ,CAST("SUPPLIER ITEM CODE" AS nvarchar(100) ) AS "SUPPLIER ITEM CODE"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(100) ) AS "START BY"
                        ,CONVERT(date,"Amend Date",103) AS "AMEND DATE"
                        ,CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(100) ) AS "AMEND BY"
                        ,CAST("O PRICE M2" AS decimal(36,4)) AS "O PRICE M2"
                        ,CAST("INMLASTCOST" AS decimal(36,4)) AS "INMLASTCOST"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Po#"
                            , "Pol#"
                            , "Item Code"
                            , "Loc"
                            , "Order Qty"
                            , "Buy Price"
                            , "InvoiceCost"
                            , "Order Value"
                            , "ExpectDate"
                            , "Receipt Qty"
                            , "Receipt Val"
                            , "Invoice Qty"
                            , "Invoice Val"
                            , "Cancel Qty"
                            , "Sup#"
                            , "Job Ref"
                            , "L"
                            , "Comment"
                            , "Factor"
                            , "Prc Fact"
                            , "GlAcct#"
                            , "Supplier Item Code"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "O Price M2"
                            , "InmLastCost"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_POLINE"
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
