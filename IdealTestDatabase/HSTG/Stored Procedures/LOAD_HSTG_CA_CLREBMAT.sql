

CREATE PROCEDURE "HSTG"."LOAD_HSTG_CA_CLREBMAT"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:43 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_CA_CLREBMAT";
    
    Source                     Destination               
    -----------------------    ------------------------ 
    STG"."STG_CA_CLREBMAT"    "HSTG"."HSTG_CA_CLREBMAT" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_CLREBMAT"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_CLREBMAT"
                (
                    "Sup#"
                    ,"Rebate Cat"
                    ,"TL"
                    ,"Valid From"
                    ,"Category Description"
                    ,"Valid To"
                    ,"Rate"
                    ,"Comment"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Sup#"
                    ,"Rebate Cat"
                    ,"TL"
                    ,"Valid From"
                    ,"Category Description"
                    ,"Valid To"
                    ,"Rate"
                    ,"Comment"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_CLREBMAT" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_CLREBMAT" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_CLREBMAT"
                (
                    "Sup#"
                    ,"Rebate Cat"
                    ,"TL"
                    ,"Valid From"
                    ,"Category Description"
                    ,"Valid To"
                    ,"Rate"
                    ,"Comment"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Sup#"
                    ,"Rebate Cat"
                    ,"TL"
                    ,"Valid From"
                    ,"Category Description"
                    ,"Valid To"
                    ,"Rate"
                    ,"Comment"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_CLREBMAT" H
                WHERE NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_CLREBMAT" S WHERE 
                    COALESCE(H."SUP#",0) = COALESCE(S."SUP#",0)
                    AND COALESCE(H."REBATE CAT",'') = COALESCE(S."REBATE CAT",'')
                    AND COALESCE(H."TL",'') = COALESCE(S."TL",'')
                    AND COALESCE(H."VALID FROM",'') = COALESCE(S."VALID FROM",'')
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_CLREBMAT" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_CLREBMAT" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_CLREBMAT" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_CLREBMAT" S WHERE 
                    COALESCE(H."SUP#",0) = COALESCE(S."SUP#",0)
                    AND COALESCE(H."REBATE CAT",'') = COALESCE(S."REBATE CAT",'')
                    AND COALESCE(H."TL",'') = COALESCE(S."TL",'')
                    AND COALESCE(H."VALID FROM",'') = COALESCE(S."VALID FROM",'')
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
