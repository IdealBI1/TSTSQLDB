﻿

CREATE PROCEDURE [HSTG].[LOAD_HSTG_CA_INTR]
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
    
    EXEC "HSTG"."LOAD_HSTG_CA_INTR";
    
    Source                 Destination           
    -------------------    -------------------- 
    STG"."STG_CA_INTR"    "HSTG"."HSTG_CA_INTR" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_INTR"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_INTR"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_INTR" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_INTR" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_INTR"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_INTR" H
                WHERE NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_INTR" S WHERE 
                    COALESCE(H."REQUEST#",0) = COALESCE(S."REQUEST#",0)
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_INTR" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_INTR" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_INTR" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_INTR" S WHERE 
                    COALESCE(H."REQUEST#",0) = COALESCE(S."REQUEST#",0)
            )
            
            END
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
