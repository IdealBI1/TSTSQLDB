

CREATE PROCEDURE "STG"."LOAD_STG_CA_INRFCLIN"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:47 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INRFCLIN";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_INRFCLIN"    "STG"."STG_CA_INRFCLIN" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INRFCLIN";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INRFCLIN"
                (
                    "Rfc#"
                    ,"Rfcl"
                    ,"Item Code"
                    ,"Buy Price"
                    ,"Return Qty"
                    ,"Cogs Value"
                    ,"Comment"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Loc"
                    ,"Sup#"
                    ,"Spn"
                    ,"Po Delivery Ref"
                    ,"Po#"
                    ,"Pol#"
                    ,"Po BuyPrice"
                    ,"Po Invoice Ref"
                    ,"Credit Qty"
                    ,"Credit Cogs"
                    ,"Glacct#"
                    ,"LMatMeth"
                    ,"Matched Reference"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("RFC#" AS decimal(36,4)) AS "RFC#"
                        ,CAST("RFCL" AS decimal(36,4)) AS "RFCL"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("BUY PRICE" AS decimal(36,4)) AS "BUY PRICE"
                        ,CAST("RETURN QTY" AS decimal(36,4)) AS "RETURN QTY"
                        ,CAST("COGS VALUE" AS decimal(36,4)) AS "COGS VALUE"
                        ,CAST("COMMENT" AS nvarchar(2000) ) AS "COMMENT"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(100) ) AS "START BY"
                        ,CONVERT(date,"Amend Date",103) AS "AMEND DATE"
                        ,CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(100) ) AS "AMEND BY"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("SPN" AS nvarchar(100) ) AS "SPN"
                        ,CAST("PO DELIVERY REF" AS nvarchar(100) ) AS "PO DELIVERY REF"
                        ,CAST("PO#" AS decimal(36,4)) AS "PO#"
                        ,CAST("POL#" AS decimal(36,4)) AS "POL#"
                        ,CAST("PO BUYPRICE" AS decimal(36,4)) AS "PO BUYPRICE"
                        ,CAST("PO INVOICE REF" AS nvarchar(100) ) AS "PO INVOICE REF"
                        ,CAST("CREDIT QTY" AS decimal(36,4)) AS "CREDIT QTY"
                        ,CAST("CREDIT COGS" AS decimal(36,4)) AS "CREDIT COGS"
                        ,CAST("GLACCT#" AS nvarchar(100) ) AS "GLACCT#"
                        ,CAST("LMATMETH" AS nvarchar(100) ) AS "LMATMETH"
                        ,CAST("MATCHED REFERENCE" AS nvarchar(100) ) AS "MATCHED REFERENCE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Rfc#"
                            , "Rfcl"
                            , "Item Code"
                            , "Buy Price"
                            , "Return Qty"
                            , "Cogs Value"
                            , "Comment"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "Loc"
                            , "Sup#"
                            , "Spn"
                            , "Po Delivery Ref"
                            , "Po#"
                            , "Pol#"
                            , "Po BuyPrice"
                            , "Po Invoice Ref"
                            , "Credit Qty"
                            , "Credit Cogs"
                            , "Glacct#"
                            , "LMatMeth"
                            , "Matched Reference"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INRFCLIN"
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
