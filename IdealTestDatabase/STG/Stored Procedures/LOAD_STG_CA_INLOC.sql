

CREATE PROCEDURE "STG"."LOAD_STG_CA_INLOC"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:56 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INLOC";
    
    
    Source                  Destination          
    --------------------    -------------------- 
    LND"."LND_CA_INLOC"    "STG"."STG_CA_INLOC" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INLOC";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INLOC"
                (
                    "Loc"
                    ,"Location Name"
                    ,"P"
                    ,"Address Line 1"
                    ,"Address Line 2"
                    ,"Address Line 3"
                    ,"Phone"
                    ,"Fax"
                    ,"Banner Location Name"
                    ,"O"
                    ,"DB"
                    ,"CurrDep0"
                    ,"Last Inv#"
                    ,"Last Rcp#"
                    ,"Last So#"
                    ,"Last Sq#"
                    ,"Last Po#"
                    ,"LastXfr#"
                    ,"LastBch#"
                    ,"LstInBch"
                    ,"Delivery Name"
                    ,"Delivery Address 1"
                    ,"Delivery Address 2"
                    ,"Delivery Address 3"
                    ,"Del Phone"
                    ,"Deliv Fax"
                    ,"B"
                    ,"X"
                    ,"Iar"
                    ,"Email"
                    ,"Rg"
                    ,"A"
                    ,"Msp"
                    ,"Pstcde"
                    ,"Last Stake"
                    ,"Curr Stake"
                    ,"S"
                    ,"W"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("LOCATION NAME" AS nvarchar(60) ) AS "LOCATION NAME"
                        ,CAST("P" AS nvarchar(2) ) AS "P"
                        ,CAST("ADDRESS LINE 1" AS nvarchar(100) ) AS "ADDRESS LINE 1"
                        ,CAST("ADDRESS LINE 2" AS nvarchar(100) ) AS "ADDRESS LINE 2"
                        ,CAST("ADDRESS LINE 3" AS nvarchar(100) ) AS "ADDRESS LINE 3"
                        ,CAST("PHONE" AS nvarchar(40) ) AS "PHONE"
                        ,CAST("FAX" AS nvarchar(40) ) AS "FAX"
                        ,CAST("BANNER LOCATION NAME" AS nvarchar(160) ) AS "BANNER LOCATION NAME"
                        ,CAST("O" AS nvarchar(36) ) AS "O"
                        ,CAST("DB" AS nvarchar(2) ) AS "DB"
                        ,CAST("CURRDEP0" AS decimal(36,4)) AS "CURRDEP0"
                        ,CAST("LAST INV#" AS decimal(36,4)) AS "LAST INV#"
                        ,CAST("LAST RCP#" AS decimal(36,4)) AS "LAST RCP#"
                        ,CAST("LAST SO#" AS decimal(36,4)) AS "LAST SO#"
                        ,CAST("LAST SQ#" AS decimal(36,4)) AS "LAST SQ#"
                        ,CAST("LAST PO#" AS decimal(36,4)) AS "LAST PO#"
                        ,CAST("LASTXFR#" AS decimal(36,4)) AS "LASTXFR#"
                        ,CAST("LASTBCH#" AS decimal(36,4)) AS "LASTBCH#"
                        ,CAST("LSTINBCH" AS decimal(36,4)) AS "LSTINBCH"
                        ,CAST("DELIVERY NAME" AS nvarchar(160) ) AS "DELIVERY NAME"
                        ,CAST("DELIVERY ADDRESS 1" AS nvarchar(120) ) AS "DELIVERY ADDRESS 1"
                        ,CAST("DELIVERY ADDRESS 2" AS nvarchar(120) ) AS "DELIVERY ADDRESS 2"
                        ,CAST("DELIVERY ADDRESS 3" AS nvarchar(80) ) AS "DELIVERY ADDRESS 3"
                        ,CAST("DEL PHONE" AS nvarchar(40) ) AS "DEL PHONE"
                        ,CAST("DELIV FAX" AS nvarchar(40) ) AS "DELIV FAX"
                        ,CAST("B" AS nvarchar(2) ) AS "B"
                        ,CAST("X" AS nvarchar(100) ) AS "X"
                        ,CAST("IAR" AS nvarchar(12) ) AS "IAR"
                        ,CAST("EMAIL" AS nvarchar(100) ) AS "EMAIL"
                        ,CAST("RG" AS nvarchar(4) ) AS "RG"
                        ,CAST("A" AS nvarchar(4) ) AS "A"
                        ,CAST("MSP" AS nvarchar(6) ) AS "MSP"
                        ,CAST("PSTCDE" AS nvarchar(12) ) AS "PSTCDE"
                        ,TRY_CONVERT(datetime2,"Last Stake",104) AS "LAST STAKE"
                        ,TRY_CONVERT(datetime2,"Curr Stake",104) AS "CURR STAKE"
                        ,CAST("S" AS nvarchar(2) ) AS "S"
                        ,CAST("W" AS nvarchar(2) ) AS "W"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Loc"
                            , "Location Name"
                            , "P"
                            , "Address Line 1"
                            , "Address Line 2"
                            , "Address Line 3"
                            , "Phone"
                            , "Fax"
                            , "Banner Location Name"
                            , "O"
                            , "DB"
                            , "CurrDep0"
                            , "Last Inv#"
                            , "Last Rcp#"
                            , "Last So#"
                            , "Last Sq#"
                            , "Last Po#"
                            , "LastXfr#"
                            , "LastBch#"
                            , "LstInBch"
                            , "Delivery Name"
                            , "Delivery Address 1"
                            , "Delivery Address 2"
                            , "Delivery Address 3"
                            , "Del Phone"
                            , "Deliv Fax"
                            , "B"
                            , "X"
                            , "Iar"
                            , "Email"
                            , "Rg"
                            , "A"
                            , "Msp"
                            , "Pstcde"
                            , "Last Stake"
                            , "Curr Stake"
                            , "S"
                            , "W"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INLOC"
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
