

CREATE PROCEDURE "STG"."LOAD_STG_CA_INLBIN"
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
    
    EXEC "STG"."LOAD_STG_CA_INLBIN";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_INLBIN"    "STG"."STG_CA_INLBIN" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_INLBIN";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_INLBIN"
                (
                    "Loc"
                    ,"Bin"
                    ,"Seq"
                    ,"Item Code"
                    ,"Comment"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("LOC" AS decimal(36,4)) AS "LOC"
                        ,CAST("BIN" AS nvarchar(100) ) AS "BIN"
                        ,CAST("SEQ" AS decimal(36,4)) AS "SEQ"
                        ,CAST("ITEM CODE" AS nvarchar(100) ) AS "ITEM CODE"
                        ,CAST("COMMENT" AS nvarchar(1000) ) AS "COMMENT"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Loc"
                            , "Bin"
                            , "Seq"
                            , "Item Code"
                            , "Comment"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_INLBIN"
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
