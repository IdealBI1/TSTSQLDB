

CREATE PROCEDURE "STG"."LOAD_STG_CA_INLOCSUP"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        16/09/2022 3:58:01 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_INLOCSUP";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_INLOCSUP"    "STG"."STG_CA_INLOCSUP" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-09-16    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_INLOCSUP";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INLOCSUP"
                (
                    "Item Code"
                    ,"Loc"
                    ,"LSup"
                    ,"Loc Supp Item Code"
                    ,"Loc Buy Prc"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("LOC" AS decimal(36,4)) AS "LOC"
                        ,CAST("LSUP" AS decimal(36,4)) AS "LSUP"
                        ,CAST("LOC SUPP ITEM CODE" AS nvarchar(100) ) AS "LOC SUPP ITEM CODE"
                        ,CAST("LOC BUY PRC" AS decimal(36,4)) AS "LOC BUY PRC"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Item Code"
                            , "Loc"
                            , "LSup"
                            , "Loc Supp Item Code"
                            , "Loc Buy Prc"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INLOCSUP"
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
