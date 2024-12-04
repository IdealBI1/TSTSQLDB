

CREATE PROCEDURE "STG"."LOAD_STG_CA_CLMAST"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:42:50 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_CLMAST";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_CLMAST"    "STG"."STG_CA_CLMAST" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_CLMAST";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_CLMAST"
                (
                    "Sup#"
                    ,"Supplier Name"
                    ,"Key"
                    ,"Address Line 1"
                    ,"Address Line 2"
                    ,"Address Line 3"
                    ,"Phone"
                    ,"Address Line 4"
                    ,"Typ"
                    ,"Cat"
                    ,"OraId#"
                    ,"Email"
                    ,"Mobile"
                    ,"T"
                    ,"R"
                    ,"P"
                    ,"C"
                    ,"A"
                    ,"B"
                    ,"Email Po"
                    ,"Po Popup"
                    ,"Rfc Popup"
                    ,"Start Date"
                    ,"LstOrdDate"
                    ,"LstDelDate"
                    ,"LstRetDate"
                    ,"Uninvoiced"
                    ,"Uncredited"
                    ,"Free Phone"
                    ,"Email Rfc"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("SUPPLIER NAME" AS nvarchar(100) ) AS "SUPPLIER NAME"
                        ,CAST("KEY" AS nvarchar(100) ) AS "KEY"
                        ,CAST("ADDRESS LINE 1" AS nvarchar(100) ) AS "ADDRESS LINE 1"
                        ,CAST("ADDRESS LINE 2" AS nvarchar(100) ) AS "ADDRESS LINE 2"
                        ,CAST("ADDRESS LINE 3" AS nvarchar(100) ) AS "ADDRESS LINE 3"
                        ,CAST("PHONE" AS nvarchar(100) ) AS "PHONE"
                        ,CAST("ADDRESS LINE 4" AS nvarchar(100) ) AS "ADDRESS LINE 4"
                        ,CAST("TYP" AS nvarchar(100) ) AS "TYP"
                        ,CAST("CAT" AS nvarchar(100) ) AS "CAT"
                        ,CAST("ORAID#" AS nvarchar(100) ) AS "ORAID#"
                        ,CAST("EMAIL" AS nvarchar(100) ) AS "EMAIL"
                        ,CAST("MOBILE" AS nvarchar(100) ) AS "MOBILE"
                        ,CAST("T" AS nvarchar(100) ) AS "T"
                        ,CAST("R" AS nvarchar(100) ) AS "R"
                        ,CAST("P" AS nvarchar(100) ) AS "P"
                        ,CAST("C" AS nvarchar(100) ) AS "C"
                        ,CAST("A" AS nvarchar(100) ) AS "A"
                        ,CAST("B" AS nvarchar(100) ) AS "B"
                        ,CAST("EMAIL PO" AS nvarchar(1000) ) AS "EMAIL PO"
                        ,CAST("PO POPUP" AS nvarchar(1000) ) AS "PO POPUP"
                        ,CAST("RFC POPUP" AS nvarchar(1000) ) AS "RFC POPUP"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CONVERT(date,"LstOrdDate",103) AS "LSTORDDATE"
                        ,CONVERT(date,"LstDelDate",103) AS "LSTDELDATE"
                        ,CONVERT(date,"LstRetDate",103) AS "LSTRETDATE"
                        ,CAST("UNINVOICED" AS decimal(36,4)) AS "UNINVOICED"
                        ,CAST("UNCREDITED" AS decimal(36,4)) AS "UNCREDITED"
                        ,CAST("FREE PHONE" AS nvarchar(100) ) AS "FREE PHONE"
                        ,CAST("EMAIL RFC" AS nvarchar(1000) ) AS "EMAIL RFC"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Sup#"
                            , "Supplier Name"
                            , "Key"
                            , "Address Line 1"
                            , "Address Line 2"
                            , "Address Line 3"
                            , "Phone"
                            , "Address Line 4"
                            , "Typ"
                            , "Cat"
                            , "OraId#"
                            , "Email"
                            , "Mobile"
                            , "T"
                            , "R"
                            , "P"
                            , "C"
                            , "A"
                            , "B"
                            , "Email Po"
                            , "Po Popup"
                            , "Rfc Popup"
                            , "Start Date"
                            , "LstOrdDate"
                            , "LstDelDate"
                            , "LstRetDate"
                            , "Uninvoiced"
                            , "Uncredited"
                            , "Free Phone"
                            , "Email Rfc"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_CLMAST"
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
