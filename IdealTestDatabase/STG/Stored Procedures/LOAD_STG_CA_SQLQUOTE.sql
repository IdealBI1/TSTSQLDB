

CREATE PROCEDURE "STG"."LOAD_STG_CA_SQLQUOTE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:13 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SQLQUOTE";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_SQLQUOTE"    "STG"."STG_CA_SQLQUOTE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SQLQUOTE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SQLQUOTE"
                (
                    "Sq#"
                    ,"Sql#"
                    ,"Item Code"
                    ,"Pr"
                    ,"Deliv Date"
                    ,"Comment"
                    ,"Quote Qty"
                    ,"LinePrice"
                    ,"Disc %"
                    ,"QV Gst Incl"
                    ,"Quote Item Type"
                    ,"Quote Item Ref"
                    ,"Unit Cost"
                    ,"Cost Value"
                    ,"X"
                    ,"TxCert"
                    ,"Gst Value"
                    ,"Disc Value"
                    ,"Gst%"
                    ,"Loc"
                    ,"LSup"
                    ,"Supplier Item Code"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Mx NetPrc"
                    ,"Mx Price"
                    ,"MxDis%"
                    ,"T"
                    ,"Mx Item/Incat"
                    ,"MxCust"
                    ,"Mx QVGstExc"
                    ,"Mx Val Fm"
                    ,"Mx Val To"
                    ,"MxPrbk"
                    ,"MPC"
                    ,"Trade Prc"
                    ,"Msp"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SQ#" AS nvarchar(20) ) AS "SQ#"
                        ,CAST("SQL#" AS decimal(36,4)) AS "SQL#"
                        ,CAST("ITEM CODE" AS nvarchar(60) ) AS "ITEM CODE"
                        ,CAST("PR" AS decimal(36,4)) AS "PR"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("COMMENT" AS nvarchar(2000) ) AS "COMMENT"
                        ,CAST("QUOTE QTY" AS decimal(36,4)) AS "QUOTE QTY"
                        ,CAST("LINEPRICE" AS decimal(36,4)) AS "LINEPRICE"
                        ,CAST("DISC %" AS decimal(36,4)) AS "DISC %"
                        ,CAST("QV GST INCL" AS decimal(36,4)) AS "QV GST INCL"
                        ,CAST("QUOTE ITEM TYPE" AS nvarchar(60) ) AS "QUOTE ITEM TYPE"
                        ,CAST("QUOTE ITEM REF" AS nvarchar(60) ) AS "QUOTE ITEM REF"
                        ,CAST("UNIT COST" AS decimal(36,4)) AS "UNIT COST"
                        ,CAST("COST VALUE" AS decimal(36,4)) AS "COST VALUE"
                        ,CAST("X" AS nvarchar(2) ) AS "X"
                        ,CAST("TXCERT" AS nvarchar(40) ) AS "TXCERT"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("DISC VALUE" AS decimal(36,4)) AS "DISC VALUE"
                        ,CAST("GST%" AS decimal(36,4)) AS "GST%"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("LSUP" AS decimal(36,4)) AS "LSUP"
                        ,CAST("SUPPLIER ITEM CODE" AS nvarchar(80) ) AS "SUPPLIER ITEM CODE"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,CAST("MX NETPRC" AS decimal(36,4)) AS "MX NETPRC"
                        ,CAST("MX PRICE" AS decimal(36,4)) AS "MX PRICE"
                        ,CAST("MXDIS%" AS decimal(36,4)) AS "MXDIS%"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("MX ITEM/INCAT" AS nvarchar(60) ) AS "MX ITEM/INCAT"
                        ,CAST("MXCUST" AS decimal(36,4)) AS "MXCUST"
                        ,CAST("MX QVGSTEXC" AS decimal(36,4)) AS "MX QVGSTEXC"
                        ,TRY_CONVERT(datetime2,"Mx Val Fm",104) AS "MX VAL FM"
                        ,TRY_CONVERT(datetime2,"Mx Val To",104) AS "MX VAL TO"
                        ,CAST("MXPRBK" AS nvarchar(12) ) AS "MXPRBK"
                        ,CAST("MPC" AS nvarchar(6) ) AS "MPC"
                        ,CAST("TRADE PRC" AS decimal(36,4)) AS "TRADE PRC"
                        ,CAST("MSP" AS nvarchar(6) ) AS "MSP"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Sq#"
                            , "Sql#"
                            , "Item Code"
                            , "Pr"
                            , "Deliv Date"
                            , "Comment"
                            , "Quote Qty"
                            , "LinePrice"
                            , "Disc %"
                            , "QV Gst Incl"
                            , "Quote Item Type"
                            , "Quote Item Ref"
                            , "Unit Cost"
                            , "Cost Value"
                            , "X"
                            , "TxCert"
                            , "Gst Value"
                            , "Disc Value"
                            , "Gst%"
                            , "Loc"
                            , "LSup"
                            , "Supplier Item Code"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Mx NetPrc"
                            , "Mx Price"
                            , "MxDis%"
                            , "T"
                            , "Mx Item/Incat"
                            , "MxCust"
                            , "Mx QVGstExc"
                            , "Mx Val Fm"
                            , "Mx Val To"
                            , "MxPrbk"
                            , "MPC"
                            , "Trade Prc"
                            , "Msp"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SQLQUOTE"
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
