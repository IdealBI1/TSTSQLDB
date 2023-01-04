

CREATE PROCEDURE "STG"."LOAD_STG_CA_INRFR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:48 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INRFR";
    
    
    Source                  Destination          
    --------------------    -------------------- 
    LND"."LND_CA_INRFR"    "STG"."STG_CA_INRFR" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_INRFR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INRFR"
                (
                    "Rfr#"
                    ,"Rfrl"
                    ,"ReplaceDat"
                    ,"Sup#"
                    ,"Loc"
                    ,"Item Code"
                    ,"Replacement Inv"
                    ,"Reason"
                    ,"Ret Qty"
                    ,"Rby"
                    ,"Comment"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("RFR#" AS decimal(36,4)) AS "RFR#"
                        ,CAST("RFRL" AS decimal(36,4)) AS "RFRL"
                        ,CONVERT(date,"ReplaceDat",103) AS "REPLACEDAT"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("REPLACEMENT INV" AS nvarchar(100) ) AS "REPLACEMENT INV"
                        ,CAST("REASON" AS nvarchar(100) ) AS "REASON"
                        ,CAST("RET QTY" AS decimal(36,4)) AS "RET QTY"
                        ,CAST("RBY" AS nvarchar(100) ) AS "RBY"
                        ,CAST("COMMENT" AS nvarchar(1000) ) AS "COMMENT"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(100) ) AS "START BY"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Rfr#"
                            , "Rfrl"
                            , "ReplaceDat"
                            , "Sup#"
                            , "Loc"
                            , "Item Code"
                            , "Replacement Inv"
                            , "Reason"
                            , "Ret Qty"
                            , "Rby"
                            , "Comment"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INRFR"
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
