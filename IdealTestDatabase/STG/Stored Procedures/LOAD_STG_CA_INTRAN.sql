

CREATE PROCEDURE [STG].[LOAD_STG_CA_INTRAN]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        16/09/2022 3:58:06 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INTRAN";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_INTRAN"    "STG"."STG_CA_INTRAN" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INTRAN";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INTRAN"
                (
                    "Recnum"
                    ,"Type"
                    ,"Item Code"
                    ,"Loc"
                    ,"Lto"
                    ,"Prtnr#"
                    ,"Trans Date"
                    ,"Lin#"
                    ,"Trans Qty"
                    ,"SV Gst Incl"
                    ,"Gst Value"
                    ,"Cogs Value"
                    ,"C2O Date"
                    ,"Batch#"
                    ,"DPF"
                    ,"Last Cost"
                    ,"VReb %"
                    ,"Invoice#"
                    ,"Count Qty"
                    ,"Frozen Qoh"
                    ,"Delivery Docket"
                    ,"Po#"
                    ,"Spn"
                    ,"S"
                    ,"GlAcct#"
                    ,"C2O Cogs Val"
                    ,"Ven Reb Qty"
                    ,"VR"
                    ,"Vend Price"
                    ,"Vendor Ref"
                    ,"Comment"
                    ,"Start Date"
                    ,"STime"
                    ,"Sby"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Aby"
                    ,"G"
                    ,"Gst %"
                    ,"Inm Vac"
                    ,"Inm Qoh"
                    ,"Inl Vac"
                    ,"Inl Qoh"
                    ,"Qty Eop"
                    ,"Cogs Eop"
                    ,"TypPE"
                    ,"Rfc#"
                    ,"UPFM"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("Recnum" As Bigint) As Recnum
                        ,CAST("TYPE" AS nvarchar(100) ) AS "TYPE"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("LOC" AS decimal(36,4)) AS "LOC"
                        ,CAST("LTO" AS nvarchar(3) ) AS "LTO"
                        ,CAST("PRTNR#" AS decimal(36,4)) AS "PRTNR#"
                        ,CONVERT(date,"Trans Date",103) AS "TRANS DATE"
                        ,CAST("LIN#" AS decimal(36,4)) AS "LIN#"
                        ,CAST("TRANS QTY" AS decimal(36,4)) AS "TRANS QTY"
                        ,CAST("SV GST INCL" AS decimal(36,4)) AS "SV GST INCL"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("COGS VALUE" AS decimal(36,4)) AS "COGS VALUE"
                        ,CONVERT(date,"C2O Date",103) AS "C2O DATE"
                        ,CAST("BATCH#" AS decimal(36,4)) AS "BATCH#"
                        ,CAST("DPF" AS decimal(36,4)) AS "DPF"
                        ,CAST("LAST COST" AS decimal(36,4)) AS "LAST COST"
                        ,CAST("VREB %" AS decimal(36,4)) AS "VREB %"
                        ,CAST("INVOICE#" AS nvarchar(100) ) AS "INVOICE#"
                        ,CAST("COUNT QTY" AS decimal(36,4)) AS "COUNT QTY"
                        ,CAST("FROZEN QOH" AS decimal(36,4)) AS "FROZEN QOH"
                        ,CAST("DELIVERY DOCKET" AS nvarchar(100) ) AS "DELIVERY DOCKET"
                        ,CAST("PO#" AS decimal(36,4)) AS "PO#"
                        ,CAST("SPN" AS nvarchar(3) ) AS "SPN"
                        ,CAST("S" AS nvarchar(1) ) AS "S"
                        ,CAST("GLACCT#" AS nvarchar(100) ) AS "GLACCT#"
                        ,CAST("C2O COGS VAL" AS decimal(36,4)) AS "C2O COGS VAL"
                        ,CAST("VEN REB QTY" AS decimal(36,4)) AS "VEN REB QTY"
                        ,CAST("VR" AS decimal(36,4)) AS "VR"
                        ,CAST("VEND PRICE" AS decimal(36,4)) AS "VEND PRICE"
                        ,CAST("VENDOR REF" AS nvarchar(100) ) AS "VENDOR REF"
                        ,CAST("COMMENT" AS nvarchar(100) ) AS "COMMENT"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,Try_CAST("STIME" AS time) AS "STIME"
                        ,CAST("SBY" AS nvarchar(3) ) AS "SBY"
                        ,CONVERT(date,"Amend Date",103) AS "AMEND DATE"
                        ,Try_CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("ABY" AS nvarchar(3) ) AS "ABY"
                        ,CAST("G" AS decimal(36,4)) AS "G"
                        ,CAST("GST %" AS decimal(36,4)) AS "GST %"
                        ,CAST("INM VAC" AS decimal(36,4)) AS "INM VAC"
                        ,CAST("INM QOH" AS decimal(36,4)) AS "INM QOH"
                        ,CAST("INL VAC" AS decimal(36,4)) AS "INL VAC"
                        ,CAST("INL QOH" AS decimal(36,4)) AS "INL QOH"
                        ,CAST("QTY EOP" AS decimal(36,4)) AS "QTY EOP"
                        ,CAST("COGS EOP" AS decimal(36,4)) AS "COGS EOP"
                        ,CAST("TYPPE" AS nvarchar(100) ) AS "TYPPE"
                        ,CAST("RFC#" AS decimal(36,4)) AS "RFC#"
                        ,CAST("UPFM" AS nvarchar(1) ) AS "UPFM"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Recnum"
                            , "Type"
                            , "Item Code"
                            , "Loc"
                            , "Lto"
                            , "Prtnr#"
                            , "Trans Date"
                            , "Lin#"
                            , "Trans Qty"
                            , "SV Gst Incl"
                            , "Gst Value"
                            , "Cogs Value"
                            , "C2O Date"
                            , "Batch#"
                            , "DPF"
                            , "Last Cost"
                            , "VReb %"
                            , "Invoice#"
                            , "Count Qty"
                            , "Frozen Qoh"
                            , "Delivery Docket"
                            , "Po#"
                            , "Spn"
                            , "S"
                            , "GlAcct#"
                            , "C2O Cogs Val"
                            , "Ven Reb Qty"
                            , "VR"
                            , "Vend Price"
                            , "Vendor Ref"
                            , "Comment"
                            , "Start Date"
                            , "STime"
                            , "Sby"
                            , "Amend Date"
                            , "ATime"
                            , "Aby"
                            , "G"
                            , "Gst %"
                            , "Inm Vac"
                            , "Inm Qoh"
                            , "Inl Vac"
                            , "Inl Qoh"
                            , "Qty Eop"
                            , "Cogs Eop"
                            , "TypPE"
                            , "Rfc#"
                            , "UPFM"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INTRAN"
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
