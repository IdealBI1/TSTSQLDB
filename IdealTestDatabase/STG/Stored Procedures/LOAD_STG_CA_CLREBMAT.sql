

CREATE PROCEDURE "STG"."LOAD_STG_CA_CLREBMAT"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        23/09/2022 5:48:43 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_CLREBMAT";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_CLREBMAT"    "STG"."STG_CA_CLREBMAT" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_CLREBMAT";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_CLREBMAT"
                (
                    "Sup#"
                    ,"Rebate Cat"
                    ,"TL"
                    ,"Valid From"
                    ,"Category Description"
                    ,"Valid To"
                    ,"Rate"
                    ,"Comment"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SUP#" AS decimal(36,4)) AS "SUP#"
                        ,CAST("REBATE CAT" AS nvarchar(100) ) AS "REBATE CAT"
                        ,CAST("TL" AS nvarchar(100) ) AS "TL"
                        ,CONVERT(date,"Valid From",103) AS "VALID FROM"
                        ,CAST("CATEGORY DESCRIPTION" AS nvarchar(100) ) AS "CATEGORY DESCRIPTION"
                        ,CONVERT(date,"Valid To",103) AS "VALID TO"
                        ,CAST("RATE" AS decimal(36,4)) AS "RATE"
                        ,CAST("COMMENT" AS nvarchar(100) ) AS "COMMENT"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Sup#"
                            , "Rebate Cat"
                            , "TL"
                            , "Valid From"
                            , "Category Description"
                            , "Valid To"
                            , "Rate"
                            , "Comment"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_CLREBMAT"
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
