

CREATE PROCEDURE "STG"."LOAD_STG_CA_OELREB"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:52 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_OELREB";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_OELREB"    "STG"."STG_CA_OELREB" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_OELREB";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_OELREB"
                (
                    "Invoice#"
                    ,"Inl#"
                    ,"T"
                    ,"RebateVal"
                    ,"Line Date"
                    ,"Pd"
                    ,"OeIncat"
                    ,"Item Code"
                    ,"Loc"
                    ,"Cust#"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("INVOICE#" AS decimal(36,4)) AS "INVOICE#"
                        ,CAST("INL#" AS decimal(36,4)) AS "INL#"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("REBATEVAL" AS decimal(36,4)) AS "REBATEVAL"
                        ,TRY_CONVERT(datetime2,"Line Date",104) AS "LINE DATE"
                        ,CAST("PD" AS decimal(36,4)) AS "PD"
                        ,CAST("OEINCAT" AS nvarchar(20) ) AS "OEINCAT"
                        ,CAST("ITEM CODE" AS nvarchar(60) ) AS "ITEM CODE"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Invoice#"
                            , "Inl#"
                            , "T"
                            , "RebateVal"
                            , "Line Date"
                            , "Pd"
                            , "OeIncat"
                            , "Item Code"
                            , "Loc"
                            , "Cust#"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_OELREB"
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
