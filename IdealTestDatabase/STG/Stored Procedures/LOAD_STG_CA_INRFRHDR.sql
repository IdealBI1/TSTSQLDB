

CREATE PROCEDURE "STG"."LOAD_STG_CA_INRFRHDR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:49 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INRFRHDR";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_INRFRHDR"    "STG"."STG_CA_INRFRHDR" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INRFRHDR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INRFRHDR"
                (
                    "Rfr#"
                    ,"ReturnDate"
                    ,"Sup#"
                    ,"Loc"
                    ,"Eby"
                    ,"Batch#"
                    ,"Invoice#"
                    ,"Gra"
                    ,"Adr#"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("RFR#" AS decimal(36,4)) AS "RFR#"
                        ,CONVERT(date,"ReturnDate",103) AS "RETURNDATE"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CAST("EBY" AS nvarchar(100) ) AS "EBY"
                        ,CAST("BATCH#" AS decimal(36,4)) AS "BATCH#"
                        ,CAST("INVOICE#" AS nvarchar(100) ) AS "INVOICE#"
                        ,CAST("GRA" AS nvarchar(100) ) AS "GRA"
                        ,CAST("ADR#" AS nvarchar(100) ) AS "ADR#"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Rfr#"
                            , "ReturnDate"
                            , "Sup#"
                            , "Loc"
                            , "Eby"
                            , "Batch#"
                            , "Invoice#"
                            , "Gra"
                            , "Adr#"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INRFRHDR"
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
