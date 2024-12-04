

CREATE PROCEDURE "STG"."LOAD_STG_CA_INRFCHDR"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:44 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INRFCHDR";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_INRFCHDR"    "STG"."STG_CA_INRFCHDR" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INRFCHDR";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INRFCHDR"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("RFC#" AS decimal(36,4)) AS "RFC#"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("BATCH#" AS decimal(36,4)) AS "BATCH#"
                        ,CAST("RTS REFERENCE" AS nvarchar(100) ) AS "RTS REFERENCE"
                        ,CAST("ORIGINAL INV" AS nvarchar(100) ) AS "ORIGINAL INV"
                        ,CAST("GRA" AS nvarchar(100) ) AS "GRA"
                        ,CONVERT(date,"Gra IssDat",103) AS "GRA ISSDAT"
                        ,CAST("REASON" AS nvarchar(100) ) AS "REASON"
                        ,CAST("SPN" AS nvarchar(100) ) AS "SPN"
                        ,CONVERT(date,"ReturnDate",103) AS "RETURNDATE"
                        ,CAST("M" AS nvarchar(100) ) AS "M"
                        ,CONVERT(date,"Match Date",103) AS "MATCH DATE"
                        ,CAST("ADRT" AS nvarchar(100) ) AS "ADRT"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(100) ) AS "START BY"
                        ,CAST("RFC VALUE" AS decimal(36,4)) AS "RFC VALUE"
                        ,CONVERT(date,"Amend Date",103) AS "AMEND DATE"
                        ,CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(100) ) AS "AMEND BY"
                        ,CONVERT(date,"Ship Date",103) AS "SHIP DATE"
                        ,CAST("CON NOTE" AS nvarchar(100) ) AS "CON NOTE"
                        ,CAST("CARRIER" AS nvarchar(100) ) AS "CARRIER"
                        ,CAST("O" AS nvarchar(100) ) AS "O"
                        ,CAST("NOTES" AS nvarchar(1000) ) AS "NOTES"
                        ,CAST("TRANSMISSION" AS nvarchar(100) ) AS "TRANSMISSION"
                        ,CAST("MATCHMETH" AS nvarchar(100) ) AS "MATCHMETH"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Rfc#"
                            , "Sup#"
                            , "Batch#"
                            , "Rts Reference"
                            , "Original Inv"
                            , "Gra"
                            , "Gra IssDat"
                            , "Reason"
                            , "Spn"
                            , "ReturnDate"
                            , "M"
                            , "Match Date"
                            , "AdrT"
                            , "Loc"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Rfc Value"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "Ship Date"
                            , "Con Note"
                            , "Carrier"
                            , "O"
                            , "Notes"
                            , "Transmission"
                            , "MatchMeth"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INRFCHDR"
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
