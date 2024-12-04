

CREATE PROCEDURE "STG"."LOAD_STG_CA_POMAST"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_POMAST";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_POMAST"    "STG"."STG_CA_POMAST" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_POMAST";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_POMAST"
                (
                    "Po#"
                    ,"Sup#"
                    ,"Order Date"
                    ,"ExpectDate"
                    ,"Recpt Date"
                    ,"RequestDat"
                    ,"S"
                    ,"Lst Invoice Ref"
                    ,"Deliver to (legal)"
                    ,"Delivery Street & No"
                    ,"Delivery District"
                    ,"Delivery Region"
                    ,"Site Name / Details"
                    ,"Site Contact / Phone"
                    ,"Order Value"
                    ,"Receipt Val"
                    ,"Invoice Val"
                    ,"Oby"
                    ,"Supplier Ref"
                    ,"Adr#"
                    ,"Supplier Message"
                    ,"Transmission Message"
                    ,"Delivery Method"
                    ,"Flags"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"Internal Notes"
                    ,"Loc"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("PO#" AS decimal(36,4)) AS "PO#"
                        ,CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CONVERT(date,"Order Date",103) AS "ORDER DATE"
                        ,CONVERT(date,"ExpectDate",103) AS "EXPECTDATE"
                        ,CONVERT(date,"Recpt Date",103) AS "RECPT DATE"
                        ,CONVERT(date,"RequestDat",103) AS "REQUESTDAT"
                        ,CAST("S" AS nvarchar(100) ) AS "S"
                        ,CAST("LST INVOICE REF" AS nvarchar(100) ) AS "LST INVOICE REF"
                        ,CAST("DELIVER TO (LEGAL)" AS nvarchar(100) ) AS "DELIVER TO (LEGAL)"
                        ,CAST("DELIVERY STREET & NO" AS nvarchar(100) ) AS "DELIVERY STREET & NO"
                        ,CAST("DELIVERY DISTRICT" AS nvarchar(100) ) AS "DELIVERY DISTRICT"
                        ,CAST("DELIVERY REGION" AS nvarchar(100) ) AS "DELIVERY REGION"
                        ,CAST("SITE NAME / DETAILS" AS nvarchar(100) ) AS "SITE NAME / DETAILS"
                        ,CAST("SITE CONTACT / PHONE" AS nvarchar(100) ) AS "SITE CONTACT / PHONE"
                        ,CAST("ORDER VALUE" AS decimal(36,4)) AS "ORDER VALUE"
                        ,CAST("RECEIPT VAL" AS decimal(36,4)) AS "RECEIPT VAL"
                        ,CAST("INVOICE VAL" AS decimal(36,4)) AS "INVOICE VAL"
                        ,CAST("OBY" AS nvarchar(100) ) AS "OBY"
                        ,CAST("SUPPLIER REF" AS nvarchar(100) ) AS "SUPPLIER REF"
                        ,CAST("ADR#" AS nvarchar(100) ) AS "ADR#"
                        ,CAST("SUPPLIER MESSAGE" AS nvarchar(2000) ) AS "SUPPLIER MESSAGE"
                        ,CAST("TRANSMISSION MESSAGE" AS nvarchar(100) ) AS "TRANSMISSION MESSAGE"
                        ,CAST("DELIVERY METHOD" AS nvarchar(100) ) AS "DELIVERY METHOD"
                        ,CAST("FLAGS" AS nvarchar(100) ) AS "FLAGS"
                        ,CONVERT(date,"Start Date",103) AS "START DATE"
                        ,CAST("STIME" AS time) AS "STIME"
                        ,CAST("START BY" AS nvarchar(100) ) AS "START BY"
                        ,CONVERT(date,"Amend Date",103) AS "AMEND DATE"
                        ,CAST("ATIME" AS time) AS "ATIME"
                        ,CAST("AMEND BY" AS nvarchar(100) ) AS "AMEND BY"
                        ,CAST("INTERNAL NOTES" AS nvarchar(2000) ) AS "INTERNAL NOTES"
                        ,CAST("LOC" AS nvarchar(100) ) AS "LOC"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Po#"
                            , "Sup#"
                            , "Order Date"
                            , "ExpectDate"
                            , "Recpt Date"
                            , "RequestDat"
                            , "S"
                            , "Lst Invoice Ref"
                            , "Deliver to (legal)"
                            , "Delivery Street & No"
                            , "Delivery District"
                            , "Delivery Region"
                            , "Site Name / Details"
                            , "Site Contact / Phone"
                            , "Order Value"
                            , "Receipt Val"
                            , "Invoice Val"
                            , "Oby"
                            , "Supplier Ref"
                            , "Adr#"
                            , "Supplier Message"
                            , "Transmission Message"
                            , "Delivery Method"
                            , "Flags"
                            , "Start Date"
                            , "STime"
                            , "Start By"
                            , "Amend Date"
                            , "ATime"
                            , "Amend By"
                            , "Internal Notes"
                            , "Loc"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_POMAST"
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
