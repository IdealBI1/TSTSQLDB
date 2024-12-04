

CREATE PROCEDURE "STG"."LOAD_STG_EBS_RD_BI_INV_VALUES_RPT"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        19/12/2022 5:19:17 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RD_BI_INV_VALUES_RPT";
    
    
    Source                                  Destination                          
    ------------------------------------    ------------------------------------ 
    LND"."LND_EBS_RD_BI_INV_VALUES_RPT"    "STG"."STG_EBS_RD_BI_INV_VALUES_RPT" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-19    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_RD_BI_INV_VALUES_RPT";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RD_BI_INV_VALUES_RPT"
                (
                    "DC"
                    ,"SUBINV_NAME"
                    ,"LOCATOR_CODE"
                    ,"ITEM_CODE"
                    ,"CATEGORY_CODE"
                    ,"STOCK_QTY"
                    ,"INTRANSIT_QTY"
                    ,"RECEIVING_QTY"
                    ,"STOCK_VALUE"
                    ,"INTRANSIT_VALUE"
                    ,"RECEIVING_VALUE"
                    ,"ITEM_COST"
                    ,"AS_OF_DATE"
                    ,"CREATION_DATE"
                    ,"TOTAL_QTY"
                    ,"UNRECEIVED_PO_QTY"
                    ,"BO_QTY"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("DC" AS varchar(1000) ) AS "DC"
                        ,CAST("SUBINV_NAME" AS varchar(1000) ) AS "SUBINV_NAME"
                        ,CAST("LOCATOR_CODE" AS varchar(1000) ) AS "LOCATOR_CODE"
                        ,CAST("ITEM_CODE" AS varchar(1000) ) AS "ITEM_CODE"
                        ,CAST("CATEGORY_CODE" AS varchar(1000) ) AS "CATEGORY_CODE"
                        ,CAST("STOCK_QTY" AS float) AS "STOCK_QTY"
                        ,CAST("INTRANSIT_QTY" AS float) AS "INTRANSIT_QTY"
                        ,CAST("RECEIVING_QTY" AS float) AS "RECEIVING_QTY"
                        ,CAST("STOCK_VALUE" AS float) AS "STOCK_VALUE"
                        ,CAST("INTRANSIT_VALUE" AS float) AS "INTRANSIT_VALUE"
                        ,CAST("RECEIVING_VALUE" AS float) AS "RECEIVING_VALUE"
                        ,CAST("ITEM_COST" AS float) AS "ITEM_COST"
                        ,CAST("AS_OF_DATE" AS datetime2) AS "AS_OF_DATE"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("TOTAL_QTY" AS float) AS "TOTAL_QTY"
                        ,CAST("UNRECEIVED_PO_QTY" AS float) AS "UNRECEIVED_PO_QTY"
                        ,CAST("BO_QTY" AS float) AS "BO_QTY"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            'NO_BK'
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("DC" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBINV_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CATEGORY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STOCK_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INTRANSIT_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIVING_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STOCK_VALUE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INTRANSIT_VALUE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIVING_VALUE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AS_OF_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TOTAL_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("UNRECEIVED_PO_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BO_QTY"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_RD_BI_INV_VALUES_RPT"
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
