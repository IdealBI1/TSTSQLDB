

CREATE PROCEDURE "HSTG"."LOAD_HSTG_CA_INRFCHDR"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:45 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_CA_INRFCHDR";
    
    Source                     Destination               
    -----------------------    ------------------------ 
    STG"."STG_CA_INRFCHDR"    "HSTG"."HSTG_CA_INRFCHDR" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_INRFCHDR"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_INRFCHDR"
                (
                    "Rfc#"
                    ,"Sup#"
                    ,"Batch#"
                    ,"Rts Reference"
                    ,"Original Inv"
                    ,"Gra"
                    ,"Gra IssDat"
                    ,"Reason"
                    ,"Spn"
                    ,"ReturnDate"
                    ,"M"
                    ,"Match Date"
                    ,"AdrT"
                    ,"Loc"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Rfc Value"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Ship Date"
                    ,"Con Note"
                    ,"Carrier"
                    ,"O"
                    ,"Notes"
                    ,"Transmission"
                    ,"MatchMeth"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Rfc#"
                    ,"Sup#"
                    ,"Batch#"
                    ,"Rts Reference"
                    ,"Original Inv"
                    ,"Gra"
                    ,"Gra IssDat"
                    ,"Reason"
                    ,"Spn"
                    ,"ReturnDate"
                    ,"M"
                    ,"Match Date"
                    ,"AdrT"
                    ,"Loc"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Rfc Value"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Ship Date"
                    ,"Con Note"
                    ,"Carrier"
                    ,"O"
                    ,"Notes"
                    ,"Transmission"
                    ,"MatchMeth"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_INRFCHDR" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_INRFCHDR" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_INRFCHDR"
                (
                    "Rfc#"
                    ,"Sup#"
                    ,"Batch#"
                    ,"Rts Reference"
                    ,"Original Inv"
                    ,"Gra"
                    ,"Gra IssDat"
                    ,"Reason"
                    ,"Spn"
                    ,"ReturnDate"
                    ,"M"
                    ,"Match Date"
                    ,"AdrT"
                    ,"Loc"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Rfc Value"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Ship Date"
                    ,"Con Note"
                    ,"Carrier"
                    ,"O"
                    ,"Notes"
                    ,"Transmission"
                    ,"MatchMeth"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Rfc#"
                    ,"Sup#"
                    ,"Batch#"
                    ,"Rts Reference"
                    ,"Original Inv"
                    ,"Gra"
                    ,"Gra IssDat"
                    ,"Reason"
                    ,"Spn"
                    ,"ReturnDate"
                    ,"M"
                    ,"Match Date"
                    ,"AdrT"
                    ,"Loc"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Rfc Value"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Ship Date"
                    ,"Con Note"
                    ,"Carrier"
                    ,"O"
                    ,"Notes"
                    ,"Transmission"
                    ,"MatchMeth"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_INRFCHDR" H
                WHERE NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_INRFCHDR" S WHERE 
                    COALESCE(H."RFC#",0) = COALESCE(S."RFC#",0)
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_INRFCHDR" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_INRFCHDR" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_INRFCHDR" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_INRFCHDR" S WHERE 
                    COALESCE(H."RFC#",0) = COALESCE(S."RFC#",0)
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
