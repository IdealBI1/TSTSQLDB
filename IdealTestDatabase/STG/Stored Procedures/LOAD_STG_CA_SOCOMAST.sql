

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOCOMAST"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:10 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOCOMAST";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_SOCOMAST"    "STG"."STG_CA_SOCOMAST" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_SOCOMAST";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOCOMAST"
                (
                    "So#"
                    ,"Co#"
                    ,"Start Date"
                    ,"STime"
                    ,"Cust#"
                    ,"Order Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"CusLnk"
                    ,"DelCod"
                    ,"DelLnk"
                    ,"MesLnk"
                    ,"InsLnk"
                    ,"P"
                    ,"Order Value"
                    ,"T"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"Disc Value"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Short Message"
                    ,"Short Delivery Instr"
                    ,"Req Ref"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("CO#" AS decimal(36,4)) AS "CO#"
                        ,TRY_CONVERT(datetime2,"Start Date",104) AS "START DATE"
                        ,TRY_CAST("STIME" AS time) AS "STIME"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,TRY_CONVERT(datetime2,"Order Date",104) AS "ORDER DATE"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("H" AS nvarchar(6) ) AS "H"
                        ,CAST("SPN" AS nvarchar(6) ) AS "SPN"
                        ,CAST("CUSLNK" AS decimal(36,4)) AS "CUSLNK"
                        ,CAST("DELCOD" AS nvarchar(12) ) AS "DELCOD"
                        ,CAST("DELLNK" AS decimal(36,4)) AS "DELLNK"
                        ,CAST("MESLNK" AS decimal(36,4)) AS "MESLNK"
                        ,CAST("INSLNK" AS decimal(36,4)) AS "INSLNK"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("ORDER VALUE" AS decimal(36,4)) AS "ORDER VALUE"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("PR" AS decimal(36,4)) AS "PR"
                        ,CAST("I" AS nvarchar(2) ) AS "I"
                        ,CAST("F" AS nvarchar(2) ) AS "F"
                        ,CAST("DISC VALUE" AS decimal(36,4)) AS "DISC VALUE"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("SHORT MESSAGE" AS nvarchar(40) ) AS "SHORT MESSAGE"
                        ,CAST("SHORT DELIVERY INSTR" AS nvarchar(40) ) AS "SHORT DELIVERY INSTR"
                        ,CAST("REQ REF" AS nvarchar(60) ) AS "REQ REF"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Co#"
                            , "Start Date"
                            , "STime"
                            , "Cust#"
                            , "Order Date"
                            , "Customer Reference"
                            , "Deliv Date"
                            , "H"
                            , "Spn"
                            , "CusLnk"
                            , "DelCod"
                            , "DelLnk"
                            , "MesLnk"
                            , "InsLnk"
                            , "P"
                            , "Order Value"
                            , "T"
                            , "Pr"
                            , "I"
                            , "F"
                            , "Disc Value"
                            , "Loc"
                            , "Gst Value"
                            , "Short Message"
                            , "Short Delivery Instr"
                            , "Req Ref"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOCOMAST"
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
