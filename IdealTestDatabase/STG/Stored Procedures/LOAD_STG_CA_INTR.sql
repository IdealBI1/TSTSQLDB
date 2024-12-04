

CREATE PROCEDURE "STG"."LOAD_STG_CA_INTR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        16/09/2022 6:41:37 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INTR";
    
    
    Source                 Destination         
    -------------------    ------------------- 
    LND"."LND_CA_INTR"    "STG"."STG_CA_INTR" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INTR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INTR"
                (
                    "Request#"
                    ,"Lfm"
                    ,"Lto"
                    ,"XfrBatch"
                    ,"So#"
                    ,"Sol#"
                    ,"Po#"
                    ,"Pol#"
                    ,"Item Code"
                    ,"S"
                    ,"Request Qty"
                    ,"Reject Qty"
                    ,"Dispatch Qty"
                    ,"RequestDat"
                    ,"Req Time"
                    ,"Rby"
                    ,"AcceptDate"
                    ,"Fill Date"
                    ,"FillTime"
                    ,"Fby"
                    ,"Comment"
                    ,"Notes"
                    ,"To#"
                    ,"Tol#"
                    ,"PublishDat"
                    ,"ExpectDate"
                    ,"Reason"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("REQUEST#" AS decimal(36,0)) AS "REQUEST#"
                        ,CAST("LFM" AS decimal(36,0)) AS "LFM"
                        ,CAST("LTO" AS decimal(36,0)) AS "LTO"
                        ,CAST("XFRBATCH" AS decimal(36,0)) AS "XFRBATCH"
                        ,CAST("SO#" AS decimal(36,0)) AS "SO#"
                        ,CAST("SOL#" AS decimal(36,0)) AS "SOL#"
                        ,CAST("PO#" AS decimal(36,0)) AS "PO#"
                        ,CAST("POL#" AS decimal(36,0)) AS "POL#"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("S" AS nvarchar(1) ) AS "S"
                        ,CAST("REQUEST QTY" AS decimal(36,0)) AS "REQUEST QTY"
                        ,CAST("REJECT QTY" AS decimal(36,0)) AS "REJECT QTY"
                        ,CAST("DISPATCH QTY" AS decimal(36,0)) AS "DISPATCH QTY"
                        ,CONVERT(date,"RequestDat",103) AS "REQUESTDAT"
                        ,CAST("REQ TIME" AS time) AS "REQ TIME"
                        ,CAST("RBY" AS nvarchar(3) ) AS "RBY"
                        ,CONVERT(date,"AcceptDate",103) AS "ACCEPTDATE"
                        ,CONVERT(date,"Fill Date",103) AS "FILL DATE"
                        ,CAST("FILLTIME" AS time) AS "FILLTIME"
                        ,CAST("FBY" AS nvarchar(3) ) AS "FBY"
                        ,CAST("COMMENT" AS nvarchar(1000) ) AS "COMMENT"
                        ,CAST("NOTES" AS nvarchar(1000) ) AS "NOTES"
                        ,CAST("TO#" AS decimal(36,0)) AS "TO#"
                        ,CAST("TOL#" AS decimal(36,0)) AS "TOL#"
                        ,CONVERT(date,"PublishDat",103) AS "PUBLISHDAT"
                        ,CONVERT(date,"ExpectDate",103) AS "EXPECTDATE"
                        ,CAST("REASON" AS nvarchar(1000) ) AS "REASON"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Request#"
                            , "Lfm"
                            , "Lto"
                            , "XfrBatch"
                            , "So#"
                            , "Sol#"
                            , "Po#"
                            , "Pol#"
                            , "Item Code"
                            , "S"
                            , "Request Qty"
                            , "Reject Qty"
                            , "Dispatch Qty"
                            , "RequestDat"
                            , "Req Time"
                            , "Rby"
                            , "AcceptDate"
                            , "Fill Date"
                            , "FillTime"
                            , "Fby"
                            , "Comment"
                            , "Notes"
                            , "To#"
                            , "Tol#"
                            , "PublishDat"
                            , "ExpectDate"
                            , "Reason"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INTR"
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
