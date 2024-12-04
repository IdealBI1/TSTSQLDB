﻿

CREATE PROCEDURE "STG"."LOAD_STG_CA_INLOCAT"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        16/09/2022 6:41:35 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INLOCAT";
    
    
    Source                    Destination            
    ----------------------    ---------------------- 
    LND"."LND_CA_INLOCAT"    "STG"."STG_CA_INLOCAT" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-09-16    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_INLOCAT";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INLOCAT"
                (
                    "Item Code"
                    ,"Loc"
                    ,"Value @ Cost"
                    ,"Stock Qty"
                    ,"Loc Lst Buy"
                    ,"MinLev"
                    ,"MaxLev"
                    ,"Commit Qty"
                    ,"Po Qty"
                    ,"Last Sale"
                    ,"2ndLstSale"
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
                    ,"Purch 1"
                    ,"Purch 2"
                    ,"Purch 3"
                    ,"Purch 4"
                    ,"Purch 5"
                    ,"Purch 6"
                    ,"Purch 7"
                    ,"Purch 8"
                    ,"Purch 9"
                    ,"Purch 10"
                    ,"Purch 11"
                    ,"Purch 12"
                    ,"Purch 13"
                    ,"Purch 14"
                    ,"Purch 15"
                    ,"Purch 16"
                    ,"Purch 17"
                    ,"Purch 18"
                    ,"Purch 19"
                    ,"Purch 20"
                    ,"Purch 21"
                    ,"Purch 22"
                    ,"Purch 23"
                    ,"Purch 24"
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
                    ,"Sale Qty 1"
                    ,"Sale Qty 2"
                    ,"Sale Qty 3"
                    ,"Sale Qty 4"
                    ,"Sale Qty 5"
                    ,"Sale Qty 6"
                    ,"Sale Qty 7"
                    ,"Sale Qty 8"
                    ,"Sale Qty 9"
                    ,"Sale Qty 10"
                    ,"Sale Qty 11"
                    ,"Sale Qty 12"
                    ,"Sale Qty 13"
                    ,"Sale Qty 14"
                    ,"Sale Qty 15"
                    ,"Sale Qty 16"
                    ,"Sale Qty 17"
                    ,"Sale Qty 18"
                    ,"Sale Qty 19"
                    ,"Sale Qty 20"
                    ,"Sale Qty 21"
                    ,"Sale Qty 22"
                    ,"Sale Qty 23"
                    ,"Sale Qty 24"
                    ,"Last Stake"
                    ,"LstStk Qoh"
                    ,"Curr Stake"
                    ,"CurStk QOH"
                    ,"Frozen Qoh"
                    ,"Incat"
                    ,"Last Purch"
                    ,"StockTurns"
                    ,"Gross Mgn"
                    ,"Gmroi"
                    ,"LSup"
                    ,"PurQty 1"
                    ,"PurQty 2"
                    ,"PurQty 3"
                    ,"PurQty 4"
                    ,"PurQty 5"
                    ,"PurQty 6"
                    ,"PurQty 7"
                    ,"PurQty 8"
                    ,"PurQty 9"
                    ,"PurQty10"
                    ,"PurQty11"
                    ,"PurQty12"
                    ,"PurQty13"
                    ,"PurQty14"
                    ,"PurQty15"
                    ,"PurQty16"
                    ,"PurQty17"
                    ,"PurQty18"
                    ,"PurQty19"
                    ,"PurQty20"
                    ,"PurQty21"
                    ,"PurQty22"
                    ,"PurQty23"
                    ,"PurQty24"
                    ,"Frozen Vac"
                    ,"FrozLstBuy"
                    ,"Border Qty"
                    ,"P"
                    ,"S"
                    ,"O"
                    ,"Qoh Eop"
                    ,"Vac Eop"
                    ,"ObsFlagUpd"
                    ,"1st Purch"
                    ,"TrOpen Qty"
                    ,"PerfSetDat"
                    ,"TfrUnaccQty"
                    ,"LowMin"
                    ,"GrniBal Qty"
                    ,"GrniBal Val"
                    ,"GsniBal Qty"
                    ,"GsniBal Val"
                    ,"Start Date"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("LOC" AS decimal(36,4)) AS "LOC"
                        ,CAST("VALUE @ COST" AS decimal(36,4)) AS "VALUE @ COST"
                        ,CAST("STOCK QTY" AS decimal(36,4)) AS "STOCK QTY"
                        ,CAST("LOC LST BUY" AS decimal(36,4)) AS "LOC LST BUY"
                        ,CAST("MINLEV" AS decimal(36,4)) AS "MINLEV"
                        ,CAST("MAXLEV" AS decimal(36,4)) AS "MAXLEV"
                        ,CAST("COMMIT QTY" AS decimal(36,4)) AS "COMMIT QTY"
                        ,CAST("PO QTY" AS decimal(36,4)) AS "PO QTY"
                        ,CONVERT(date,"Last Sale",103) AS "LAST SALE"
                        ,CONVERT(date,"2ndLstSale",103) AS "2NDLSTSALE"
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
                        ,CAST("PURCH 1" AS decimal(36,4)) AS "PURCH 1"
                        ,CAST("PURCH 2" AS decimal(36,4)) AS "PURCH 2"
                        ,CAST("PURCH 3" AS decimal(36,4)) AS "PURCH 3"
                        ,CAST("PURCH 4" AS decimal(36,4)) AS "PURCH 4"
                        ,CAST("PURCH 5" AS decimal(36,4)) AS "PURCH 5"
                        ,CAST("PURCH 6" AS decimal(36,4)) AS "PURCH 6"
                        ,CAST("PURCH 7" AS decimal(36,4)) AS "PURCH 7"
                        ,CAST("PURCH 8" AS decimal(36,4)) AS "PURCH 8"
                        ,CAST("PURCH 9" AS decimal(36,4)) AS "PURCH 9"
                        ,CAST("PURCH 10" AS decimal(36,4)) AS "PURCH 10"
                        ,CAST("PURCH 11" AS decimal(36,4)) AS "PURCH 11"
                        ,CAST("PURCH 12" AS decimal(36,4)) AS "PURCH 12"
                        ,CAST("PURCH 13" AS decimal(36,4)) AS "PURCH 13"
                        ,CAST("PURCH 14" AS decimal(36,4)) AS "PURCH 14"
                        ,CAST("PURCH 15" AS decimal(36,4)) AS "PURCH 15"
                        ,CAST("PURCH 16" AS decimal(36,4)) AS "PURCH 16"
                        ,CAST("PURCH 17" AS decimal(36,4)) AS "PURCH 17"
                        ,CAST("PURCH 18" AS decimal(36,4)) AS "PURCH 18"
                        ,CAST("PURCH 19" AS decimal(36,4)) AS "PURCH 19"
                        ,CAST("PURCH 20" AS decimal(36,4)) AS "PURCH 20"
                        ,CAST("PURCH 21" AS decimal(36,4)) AS "PURCH 21"
                        ,CAST("PURCH 22" AS decimal(36,4)) AS "PURCH 22"
                        ,CAST("PURCH 23" AS decimal(36,4)) AS "PURCH 23"
                        ,CAST("PURCH 24" AS decimal(36,4)) AS "PURCH 24"
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
                        ,CAST("SALE QTY 1" AS decimal(36,4)) AS "SALE QTY 1"
                        ,CAST("SALE QTY 2" AS decimal(36,4)) AS "SALE QTY 2"
                        ,CAST("SALE QTY 3" AS decimal(36,4)) AS "SALE QTY 3"
                        ,CAST("SALE QTY 4" AS decimal(36,4)) AS "SALE QTY 4"
                        ,CAST("SALE QTY 5" AS decimal(36,4)) AS "SALE QTY 5"
                        ,CAST("SALE QTY 6" AS decimal(36,4)) AS "SALE QTY 6"
                        ,CAST("SALE QTY 7" AS decimal(36,4)) AS "SALE QTY 7"
                        ,CAST("SALE QTY 8" AS decimal(36,4)) AS "SALE QTY 8"
                        ,CAST("SALE QTY 9" AS decimal(36,4)) AS "SALE QTY 9"
                        ,CAST("SALE QTY 10" AS decimal(36,4)) AS "SALE QTY 10"
                        ,CAST("SALE QTY 11" AS decimal(36,4)) AS "SALE QTY 11"
                        ,CAST("SALE QTY 12" AS decimal(36,4)) AS "SALE QTY 12"
                        ,CAST("SALE QTY 13" AS decimal(36,4)) AS "SALE QTY 13"
                        ,CAST("SALE QTY 14" AS decimal(36,4)) AS "SALE QTY 14"
                        ,CAST("SALE QTY 15" AS decimal(36,4)) AS "SALE QTY 15"
                        ,CAST("SALE QTY 16" AS decimal(36,4)) AS "SALE QTY 16"
                        ,CAST("SALE QTY 17" AS decimal(36,4)) AS "SALE QTY 17"
                        ,CAST("SALE QTY 18" AS decimal(36,4)) AS "SALE QTY 18"
                        ,CAST("SALE QTY 19" AS decimal(36,4)) AS "SALE QTY 19"
                        ,CAST("SALE QTY 20" AS decimal(36,4)) AS "SALE QTY 20"
                        ,CAST("SALE QTY 21" AS decimal(36,4)) AS "SALE QTY 21"
                        ,CAST("SALE QTY 22" AS decimal(36,4)) AS "SALE QTY 22"
                        ,CAST("SALE QTY 23" AS decimal(36,4)) AS "SALE QTY 23"
                        ,CAST("SALE QTY 24" AS decimal(36,4)) AS "SALE QTY 24"
                        ,CONVERT(date,"Last Stake",103) AS "LAST STAKE"
                        ,CAST("LSTSTK QOH" AS decimal(36,4)) AS "LSTSTK QOH"
                        ,CONVERT(date,"Curr Stake",103) AS "CURR STAKE"
                        ,CAST("CURSTK QOH" AS decimal(36,4)) AS "CURSTK QOH"
                        ,CAST("FROZEN QOH" AS decimal(36,4)) AS "FROZEN QOH"
                        ,CAST("INCAT" AS nvarchar(100) ) AS "INCAT"
                        ,CONVERT(date,"Last Purch",103) AS "LAST PURCH"
                        ,CAST("STOCKTURNS" AS decimal(36,4)) AS "STOCKTURNS"
                        ,CAST("GROSS MGN" AS decimal(36,4)) AS "GROSS MGN"
                        ,CAST("GMROI" AS decimal(36,4)) AS "GMROI"
                        ,CAST("LSUP" AS decimal(36,4)) AS "LSUP"
                        ,CAST("PURQTY 1" AS decimal(36,4)) AS "PURQTY 1"
                        ,CAST("PURQTY 2" AS decimal(36,4)) AS "PURQTY 2"
                        ,CAST("PURQTY 3" AS decimal(36,4)) AS "PURQTY 3"
                        ,CAST("PURQTY 4" AS decimal(36,4)) AS "PURQTY 4"
                        ,CAST("PURQTY 5" AS decimal(36,4)) AS "PURQTY 5"
                        ,CAST("PURQTY 6" AS decimal(36,4)) AS "PURQTY 6"
                        ,CAST("PURQTY 7" AS decimal(36,4)) AS "PURQTY 7"
                        ,CAST("PURQTY 8" AS decimal(36,4)) AS "PURQTY 8"
                        ,CAST("PURQTY 9" AS decimal(36,4)) AS "PURQTY 9"
                        ,CAST("PURQTY10" AS decimal(36,4)) AS "PURQTY10"
                        ,CAST("PURQTY11" AS decimal(36,4)) AS "PURQTY11"
                        ,CAST("PURQTY12" AS decimal(36,4)) AS "PURQTY12"
                        ,CAST("PURQTY13" AS decimal(36,4)) AS "PURQTY13"
                        ,CAST("PURQTY14" AS decimal(36,4)) AS "PURQTY14"
                        ,CAST("PURQTY15" AS decimal(36,4)) AS "PURQTY15"
                        ,CAST("PURQTY16" AS decimal(36,4)) AS "PURQTY16"
                        ,CAST("PURQTY17" AS decimal(36,4)) AS "PURQTY17"
                        ,CAST("PURQTY18" AS decimal(36,4)) AS "PURQTY18"
                        ,CAST("PURQTY19" AS decimal(36,4)) AS "PURQTY19"
                        ,CAST("PURQTY20" AS decimal(36,4)) AS "PURQTY20"
                        ,CAST("PURQTY21" AS decimal(36,4)) AS "PURQTY21"
                        ,CAST("PURQTY22" AS decimal(36,4)) AS "PURQTY22"
                        ,CAST("PURQTY23" AS decimal(36,4)) AS "PURQTY23"
                        ,CAST("PURQTY24" AS decimal(36,4)) AS "PURQTY24"
                        ,CAST("FROZEN VAC" AS decimal(36,4)) AS "FROZEN VAC"
                        ,CAST("FROZLSTBUY" AS decimal(36,4)) AS "FROZLSTBUY"
                        ,CAST("BORDER QTY" AS decimal(36,4)) AS "BORDER QTY"
                        ,CAST("P" AS nvarchar(1) ) AS "P"
                        ,CAST("S" AS nvarchar(1) ) AS "S"
                        ,CAST("O" AS nvarchar(1) ) AS "O"
                        ,CAST("QOH EOP" AS decimal(36,4)) AS "QOH EOP"
                        ,CAST("VAC EOP" AS decimal(36,4)) AS "VAC EOP"
                        ,CONVERT(date,"ObsFlagUpd",103) AS "OBSFLAGUPD"
                        ,CONVERT(date,"1st Purch",103) AS "1ST PURCH"
                        ,CAST("TROPEN QTY" AS decimal(36,4)) AS "TROPEN QTY"
                        ,CONVERT(date,"PerfSetDat",103) AS "PERFSETDAT"
                        ,CAST("TFRUNACCQTY" AS decimal(36,4)) AS "TFRUNACCQTY"
                        ,CAST("LOWMIN" AS decimal(36,4)) AS "LOWMIN"
                        ,CAST("GRNIBAL QTY" AS decimal(36,4)) AS "GRNIBAL QTY"
                        ,CAST("GRNIBAL VAL" AS decimal(36,4)) AS "GRNIBAL VAL"
                        ,CAST("GSNIBAL QTY" AS decimal(36,4)) AS "GSNIBAL QTY"
                        ,CAST("GSNIBAL VAL" AS decimal(36,4)) AS "GSNIBAL VAL"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Item Code"
                            , "Loc"
                            , "Value @ Cost"
                            , "Stock Qty"
                            , "Loc Lst Buy"
                            , "MinLev"
                            , "MaxLev"
                            , "Commit Qty"
                            , "Po Qty"
                            , "Last Sale"
                            , "2ndLstSale"
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
                            , "Purch 1"
                            , "Purch 2"
                            , "Purch 3"
                            , "Purch 4"
                            , "Purch 5"
                            , "Purch 6"
                            , "Purch 7"
                            , "Purch 8"
                            , "Purch 9"
                            , "Purch 10"
                            , "Purch 11"
                            , "Purch 12"
                            , "Purch 13"
                            , "Purch 14"
                            , "Purch 15"
                            , "Purch 16"
                            , "Purch 17"
                            , "Purch 18"
                            , "Purch 19"
                            , "Purch 20"
                            , "Purch 21"
                            , "Purch 22"
                            , "Purch 23"
                            , "Purch 24"
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
                            , "Sale Qty 1"
                            , "Sale Qty 2"
                            , "Sale Qty 3"
                            , "Sale Qty 4"
                            , "Sale Qty 5"
                            , "Sale Qty 6"
                            , "Sale Qty 7"
                            , "Sale Qty 8"
                            , "Sale Qty 9"
                            , "Sale Qty 10"
                            , "Sale Qty 11"
                            , "Sale Qty 12"
                            , "Sale Qty 13"
                            , "Sale Qty 14"
                            , "Sale Qty 15"
                            , "Sale Qty 16"
                            , "Sale Qty 17"
                            , "Sale Qty 18"
                            , "Sale Qty 19"
                            , "Sale Qty 20"
                            , "Sale Qty 21"
                            , "Sale Qty 22"
                            , "Sale Qty 23"
                            , "Sale Qty 24"
                            , "Last Stake"
                            , "LstStk Qoh"
                            , "Curr Stake"
                            , "CurStk QOH"
                            , "Frozen Qoh"
                            , "Incat"
                            , "Last Purch"
                            , "StockTurns"
                            , "Gross Mgn"
                            , "Gmroi"
                            , "LSup"
                            , "PurQty 1"
                            , "PurQty 2"
                            , "PurQty 3"
                            , "PurQty 4"
                            , "PurQty 5"
                            , "PurQty 6"
                            , "PurQty 7"
                            , "PurQty 8"
                            , "PurQty 9"
                            , "PurQty10"
                            , "PurQty11"
                            , "PurQty12"
                            , "PurQty13"
                            , "PurQty14"
                            , "PurQty15"
                            , "PurQty16"
                            , "PurQty17"
                            , "PurQty18"
                            , "PurQty19"
                            , "PurQty20"
                            , "PurQty21"
                            , "PurQty22"
                            , "PurQty23"
                            , "PurQty24"
                            , "Frozen Vac"
                            , "FrozLstBuy"
                            , "Border Qty"
                            , "P"
                            , "S"
                            , "O"
                            , "Qoh Eop"
                            , "Vac Eop"
                            , "ObsFlagUpd"
                            , "1st Purch"
                            , "TrOpen Qty"
                            , "PerfSetDat"
                            , "TfrUnaccQty"
                            , "LowMin"
                            , "GrniBal Qty"
                            , "GrniBal Val"
                            , "GsniBal Qty"
                            , "GsniBal Val"
                            , "Start Date"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INLOCAT"
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