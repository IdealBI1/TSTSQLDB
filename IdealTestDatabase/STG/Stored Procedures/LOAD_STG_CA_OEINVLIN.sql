

CREATE PROCEDURE "STG"."LOAD_STG_CA_OEINVLIN"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_OEINVLIN";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_OEINVLIN"    "STG"."STG_CA_OEINVLIN" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_OEINVLIN";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_OEINVLIN"
                (
                    "Invoice#"
                    ,"Inl#"
                    ,"Item Code"
                    ,"Memo#"
                    ,"Sale Qty"
                    ,"Disc %"
                    ,"Disc Value"
                    ,"LinePrice"
                    ,"SV Gst Incl"
                    ,"Loc"
                    ,"Lto"
                    ,"Cogs Value"
                    ,"Gst Value"
                    ,"Gst %"
                    ,"P"
                    ,"Reas"
                    ,"Backord Qty"
                    ,"Order Qty"
                    ,"CusTyp"
                    ,"Spn"
                    ,"OeIncat"
                    ,"Trans Date"
                    ,"Pd"
                    ,"Cust#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("INVOICE#" AS decimal(36,4)) AS "INVOICE#"
                        ,CAST("INL#" AS decimal(36,4)) AS "INL#"
                        ,CAST("ITEM CODE" AS nvarchar(60) ) AS "ITEM CODE"
                        ,CAST("MEMO#" AS decimal(36,4)) AS "MEMO#"
                        ,CAST("SALE QTY" AS decimal(36,4)) AS "SALE QTY"
                        ,CAST("DISC %" AS decimal(36,4)) AS "DISC %"
                        ,CAST("DISC VALUE" AS decimal(36,4)) AS "DISC VALUE"
                        ,CAST("LINEPRICE" AS decimal(36,4)) AS "LINEPRICE"
                        ,CAST("SV GST INCL" AS decimal(36,4)) AS "SV GST INCL"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("LTO" AS nvarchar(6) ) AS "LTO"
                        ,CAST("COGS VALUE" AS decimal(36,4)) AS "COGS VALUE"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("GST %" AS decimal(36,4)) AS "GST %"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("REAS" AS nvarchar(8) ) AS "REAS"
                        ,CAST("BACKORD QTY" AS decimal(36,4)) AS "BACKORD QTY"
                        ,CAST("ORDER QTY" AS decimal(36,4)) AS "ORDER QTY"
                        ,CAST("CUSTYP" AS nvarchar(12) ) AS "CUSTYP"
                        ,CAST("SPN" AS nvarchar(6) ) AS "SPN"
                        ,CAST("OEINCAT" AS nvarchar(20) ) AS "OEINCAT"
                        ,TRY_CONVERT(datetime2,"Trans Date",104) AS "TRANS DATE"
                        ,CAST("PD" AS decimal(36,4)) AS "PD"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(30) ) AS "START BY"
                        ,TRY_CONVERT(datetime2,"Amend Date",104) AS "AMEND DATE"
                        ,TRY_CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(30) ) AS "AMEND BY"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Invoice#"
                            , "Inl#"
                            , "Item Code"
                            , "Memo#"
                            , "Sale Qty"
                            , "Disc %"
                            , "Disc Value"
                            , "LinePrice"
                            , "SV Gst Incl"
                            , "Loc"
                            , "Lto"
                            , "Cogs Value"
                            , "Gst Value"
                            , "Gst %"
                            , "P"
                            , "Reas"
                            , "Backord Qty"
                            , "Order Qty"
                            , "CusTyp"
                            , "Spn"
                            , "OeIncat"
                            , "Trans Date"
                            , "Pd"
                            , "Cust#"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_OEINVLIN"
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
