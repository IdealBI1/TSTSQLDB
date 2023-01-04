﻿

CREATE Procedure[HSTG].[LOAD_HSTG_CA_DLSMAN]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:00 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_CA_DLSMAN";
    
    Source                   Destination             
    ---------------------    ---------------------- 
    STG"."STG_CA_DLSMAN"    "HSTG"."HSTG_CA_DLSMAN" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
	2022-06-03	  Sameh Hassan		Modified the “Deleted” flag to consider last 6 months only
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_DLSMAN"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_DLSMAN"
                (
                    "Spn"
                    ,"Salesperson Name"
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
                    ,"B"
                    ,"Loc"
                    ,"Salesperson Email"
                    ,"Direct Phone"
                    ,"O"
                    ,"PwWarnDate"
                    ,"Function Role Title"
                    ,"PasswdDate"
                    ,"Start Date"
                    ,"Block Date"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Spn"
                    ,"Salesperson Name"
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
                    ,"B"
                    ,"Loc"
                    ,"Salesperson Email"
                    ,"Direct Phone"
                    ,"O"
                    ,"PwWarnDate"
                    ,"Function Role Title"
                    ,"PasswdDate"
                    ,"Start Date"
                    ,"Block Date"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_DLSMAN" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_DLSMAN" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_DLSMAN"
                (
                    "Spn"
                    ,"Salesperson Name"
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
                    ,"B"
                    ,"Loc"
                    ,"Salesperson Email"
                    ,"Direct Phone"
                    ,"O"
                    ,"PwWarnDate"
                    ,"Function Role Title"
                    ,"PasswdDate"
                    ,"Start Date"
                    ,"Block Date"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Spn"
                    ,"Salesperson Name"
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
                    ,"B"
                    ,"Loc"
                    ,"Salesperson Email"
                    ,"Direct Phone"
                    ,"O"
                    ,"PwWarnDate"
                    ,"Function Role Title"
                    ,"PasswdDate"
                    ,"Start Date"
                    ,"Block Date"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_DLSMAN" H
                Where "OMD_INSERT_DATETIME" >= Dateadd(Month, -6, getdate())
					And NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_DLSMAN" S WHERE 
                    COALESCE(H."SPN",'''') = COALESCE(S."SPN",'''')
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_DLSMAN" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N'
					AND EXISTS (SELECT 1 FROM "STG"."STG_CA_DLSMAN" S WHERE 
                    COALESCE(H."SPN",'''') = COALESCE(S."SPN",'''')
            )
					AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_DLSMAN" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_DLSMAN" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_DLSMAN" S WHERE 
                    COALESCE(H."SPN",'''') = COALESCE(S."SPN",'''')
            )

			Update HSTG.HSTG_CA_DLSMAN 
			Set OMD_CURRENT_RECORD_INDICATOR = 'N'
			Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'N' 
				And Exists (Select *
							From HSTG.HSTG_CA_DLSMAN T (nolock)
							Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'Y' 
									And T.[Spn] = HSTG_CA_DLSMAN.[Spn])

            
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
