

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOLINE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:05 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOLINE";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_SOLINE"    "STG"."STG_CA_SOLINE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SOLINE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOLINE"
                (
                    "So#"
                    ,"Sol#"
                    ,"Item Code"
                    ,"Pr"
                    ,"Deliv Date"
                    ,"S"
                    ,"Comment"
                    ,"Order Qty"
                    ,"Commit Qty"
                    ,"Bord Qty"
                    ,"Cancel Qty"
                    ,"Inv Qty"
                    ,"Po Qty"
                    ,"LinePrice"
                    ,"Disc %"
                    ,"OV Gst Incl"
                    ,"Po#"
                    ,"A"
                    ,"Quote Item Type"
                    ,"Quote Item Ref"
                    ,"Trade Prc"
                    ,"Mx NetPrc"
                    ,"Loc"
                    ,"X"
                    ,"Gst%"
                    ,"Gst Value"
                    ,"Disc Value"
                    ,"LSup"
                    ,"Supplier Item Code"
                    ,"Cust#"
                    ,"Supply Qty"
                    ,"Prev ComQty"
                    ,"Prev SupQty"
                    ,"Tr Qty"
                    ,"Pol#"
                    ,"Customer Reference"
                    ,"Mx Price"
                    ,"MxDis%"
                    ,"Msp"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Unit Cost"
                    ,"T"
                    ,"Mx Item/Incat"
                    ,"MxCust"
                    ,"Mx OV GstExc"
                    ,"Mx Val Fm"
                    ,"Mx Val To"
                    ,"MxPrbk"
                    ,"MPC"
                    ,"Request#"
                    ,"P"
                    ,"Offerid"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("SOL#" AS decimal(36,4)) AS "SOL#"
                        ,CAST("ITEM CODE" AS nvarchar(60) ) AS "ITEM CODE"
                        ,CAST("PR" AS decimal(36,4)) AS "PR"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("COMMENT" AS nvarchar(2000) ) AS "COMMENT"
                        ,CAST("ORDER QTY" AS decimal(36,4)) AS "ORDER QTY"
                        ,CAST("COMMIT QTY" AS decimal(36,4)) AS "COMMIT QTY"
                        ,CAST("BORD QTY" AS decimal(36,4)) AS "BORD QTY"
                        ,CAST("CANCEL QTY" AS decimal(36,4)) AS "CANCEL QTY"
                        ,CAST("INV QTY" AS decimal(36,4)) AS "INV QTY"
                        ,CAST("PO QTY" AS decimal(36,4)) AS "PO QTY"
                        ,CAST("LINEPRICE" AS decimal(36,4)) AS "LINEPRICE"
                        ,CAST("DISC %" AS decimal(36,4)) AS "DISC %"
                        ,CAST("OV GST INCL" AS decimal(36,4)) AS "OV GST INCL"
                        ,CAST("PO#" AS nvarchar(10) ) AS "PO#"
                        ,CAST("A" AS nvarchar(60) ) AS "A"
                        ,CAST("QUOTE ITEM TYPE" AS nvarchar(60) ) AS "QUOTE ITEM TYPE"
                        ,CAST("QUOTE ITEM REF" AS nvarchar(60) ) AS "QUOTE ITEM REF"
                        ,CAST("TRADE PRC" AS decimal(36,4)) AS "TRADE PRC"
                        ,CAST("MX NETPRC" AS decimal(36,4)) AS "MX NETPRC"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("X" AS nvarchar(2) ) AS "X"
                        ,CAST("GST%" AS decimal(36,4)) AS "GST%"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("DISC VALUE" AS decimal(36,4)) AS "DISC VALUE"
                        ,CAST("LSUP" AS decimal(36,4)) AS "LSUP"
                        ,CAST("SUPPLIER ITEM CODE" AS nvarchar(80) ) AS "SUPPLIER ITEM CODE"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST("SUPPLY QTY" AS decimal(36,4)) AS "SUPPLY QTY"
                        ,CAST("PREV COMQTY" AS decimal(36,4)) AS "PREV COMQTY"
                        ,CAST("PREV SUPQTY" AS decimal(36,4)) AS "PREV SUPQTY"
                        ,CAST("TR QTY" AS decimal(36,4)) AS "TR QTY"
                        ,CAST("POL#" AS decimal(36,4)) AS "POL#"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,CAST("MX PRICE" AS decimal(36,4)) AS "MX PRICE"
                        ,CAST("MXDIS%" AS decimal(36,4)) AS "MXDIS%"
                        ,CAST("MSP" AS nvarchar(6) ) AS "MSP"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,CAST("UNIT COST" AS decimal(36,4)) AS "UNIT COST"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("MX ITEM/INCAT" AS nvarchar(60) ) AS "MX ITEM/INCAT"
                        ,CAST("MXCUST" AS decimal(36,4)) AS "MXCUST"
                        ,CAST("MX OV GSTEXC" AS decimal(36,4)) AS "MX OV GSTEXC"
                        ,TRY_CONVERT(datetime2,"Mx Val Fm",104) AS "MX VAL FM"
                        ,TRY_CONVERT(datetime2,"Mx Val To",104) AS "MX VAL TO"
                        ,CAST("MXPRBK" AS nvarchar(12) ) AS "MXPRBK"
                        ,CAST("MPC" AS nvarchar(6) ) AS "MPC"
                        ,CAST("REQUEST#" AS decimal(36,4)) AS "REQUEST#"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("OFFERID" AS nvarchar(30) ) AS "OFFERID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Sol#"
                            , "Item Code"
                            , "Pr"
                            , "Deliv Date"
                            , "S"
                            , "Comment"
                            , "Order Qty"
                            , "Commit Qty"
                            , "Bord Qty"
                            , "Cancel Qty"
                            , "Inv Qty"
                            , "Po Qty"
                            , "LinePrice"
                            , "Disc %"
                            , "OV Gst Incl"
                            , "Po#"
                            , "A"
                            , "Quote Item Type"
                            , "Quote Item Ref"
                            , "Trade Prc"
                            , "Mx NetPrc"
                            , "Loc"
                            , "X"
                            , "Gst%"
                            , "Gst Value"
                            , "Disc Value"
                            , "LSup"
                            , "Supplier Item Code"
                            , "Cust#"
                            , "Supply Qty"
                            , "Prev ComQty"
                            , "Prev SupQty"
                            , "Tr Qty"
                            , "Pol#"
                            , "Customer Reference"
                            , "Mx Price"
                            , "MxDis%"
                            , "Msp"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Unit Cost"
                            , "T"
                            , "Mx Item/Incat"
                            , "MxCust"
                            , "Mx OV GstExc"
                            , "Mx Val Fm"
                            , "Mx Val To"
                            , "MxPrbk"
                            , "MPC"
                            , "Request#"
                            , "P"
                            , "Offerid"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOLINE"
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
