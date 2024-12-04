CREATE PROCEDURE "STG"."LOAD_STG_EBS_CST_ITEM_COSTS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:52 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_CST_ITEM_COSTS";
    
    
    Source                            Destination                    
    ------------------------------    ------------------------------ 
    LND"."LND_EBS_CST_ITEM_COSTS"    "STG"."STG_EBS_CST_ITEM_COSTS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-05    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_CST_ITEM_COSTS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_CST_ITEM_COSTS"
                (
                    "INVENTORY_ITEM_ID"
                    ,"ORGANIZATION_ID"
                    ,"COST_TYPE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"INVENTORY_ASSET_FLAG"
                    ,"LOT_SIZE"
                    ,"BASED_ON_ROLLUP_FLAG"
                    ,"SHRINKAGE_RATE"
                    ,"DEFAULTED_FLAG"
                    ,"COST_UPDATE_ID"
                    ,"PL_MATERIAL"
                    ,"PL_MATERIAL_OVERHEAD"
                    ,"PL_RESOURCE"
                    ,"PL_OUTSIDE_PROCESSING"
                    ,"PL_OVERHEAD"
                    ,"TL_MATERIAL"
                    ,"TL_MATERIAL_OVERHEAD"
                    ,"TL_RESOURCE"
                    ,"TL_OUTSIDE_PROCESSING"
                    ,"TL_OVERHEAD"
                    ,"MATERIAL_COST"
                    ,"MATERIAL_OVERHEAD_COST"
                    ,"RESOURCE_COST"
                    ,"OUTSIDE_PROCESSING_COST"
                    ,"OVERHEAD_COST"
                    ,"PL_ITEM_COST"
                    ,"TL_ITEM_COST"
                    ,"ITEM_COST"
                    ,"UNBURDENED_COST"
                    ,"BURDEN_COST"
                    ,"ATTRIBUTE_CATEGORY"
                    ,"ATTRIBUTE1"
                    ,"ATTRIBUTE2"
                    ,"ATTRIBUTE3"
                    ,"ATTRIBUTE4"
                    ,"ATTRIBUTE5"
                    ,"ATTRIBUTE6"
                    ,"ATTRIBUTE7"
                    ,"ATTRIBUTE8"
                    ,"ATTRIBUTE9"
                    ,"ATTRIBUTE10"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"ROLLUP_ID"
                    ,"ASSIGNMENT_SET_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("COST_TYPE_ID" AS float) AS "COST_TYPE_ID"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("INVENTORY_ASSET_FLAG" AS float) AS "INVENTORY_ASSET_FLAG"
                        ,CAST("LOT_SIZE" AS float) AS "LOT_SIZE"
                        ,CAST("BASED_ON_ROLLUP_FLAG" AS float) AS "BASED_ON_ROLLUP_FLAG"
                        ,CAST("SHRINKAGE_RATE" AS float) AS "SHRINKAGE_RATE"
                        ,CAST("DEFAULTED_FLAG" AS float) AS "DEFAULTED_FLAG"
                        ,CAST("COST_UPDATE_ID" AS float) AS "COST_UPDATE_ID"
                        ,CAST("PL_MATERIAL" AS float) AS "PL_MATERIAL"
                        ,CAST("PL_MATERIAL_OVERHEAD" AS float) AS "PL_MATERIAL_OVERHEAD"
                        ,CAST("PL_RESOURCE" AS float) AS "PL_RESOURCE"
                        ,CAST("PL_OUTSIDE_PROCESSING" AS float) AS "PL_OUTSIDE_PROCESSING"
                        ,CAST("PL_OVERHEAD" AS float) AS "PL_OVERHEAD"
                        ,CAST("TL_MATERIAL" AS float) AS "TL_MATERIAL"
                        ,CAST("TL_MATERIAL_OVERHEAD" AS float) AS "TL_MATERIAL_OVERHEAD"
                        ,CAST("TL_RESOURCE" AS float) AS "TL_RESOURCE"
                        ,CAST("TL_OUTSIDE_PROCESSING" AS float) AS "TL_OUTSIDE_PROCESSING"
                        ,CAST("TL_OVERHEAD" AS float) AS "TL_OVERHEAD"
                        ,CAST("MATERIAL_COST" AS float) AS "MATERIAL_COST"
                        ,CAST("MATERIAL_OVERHEAD_COST" AS float) AS "MATERIAL_OVERHEAD_COST"
                        ,CAST("RESOURCE_COST" AS float) AS "RESOURCE_COST"
                        ,CAST("OUTSIDE_PROCESSING_COST" AS float) AS "OUTSIDE_PROCESSING_COST"
                        ,CAST("OVERHEAD_COST" AS float) AS "OVERHEAD_COST"
                        ,CAST("PL_ITEM_COST" AS float) AS "PL_ITEM_COST"
                        ,CAST("TL_ITEM_COST" AS float) AS "TL_ITEM_COST"
                        ,CAST("ITEM_COST" AS float) AS "ITEM_COST"
                        ,CAST("UNBURDENED_COST" AS float) AS "UNBURDENED_COST"
                        ,CAST("BURDEN_COST" AS float) AS "BURDEN_COST"
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "ATTRIBUTE_CATEGORY"
                        ,CAST("ATTRIBUTE1" AS varchar(1000) ) AS "ATTRIBUTE1"
                        ,CAST("ATTRIBUTE2" AS varchar(1000) ) AS "ATTRIBUTE2"
                        ,CAST("ATTRIBUTE3" AS varchar(1000) ) AS "ATTRIBUTE3"
                        ,CAST("ATTRIBUTE4" AS varchar(1000) ) AS "ATTRIBUTE4"
                        ,CAST("ATTRIBUTE5" AS varchar(1000) ) AS "ATTRIBUTE5"
                        ,CAST("ATTRIBUTE6" AS varchar(1000) ) AS "ATTRIBUTE6"
                        ,CAST("ATTRIBUTE7" AS varchar(1000) ) AS "ATTRIBUTE7"
                        ,CAST("ATTRIBUTE8" AS varchar(1000) ) AS "ATTRIBUTE8"
                        ,CAST("ATTRIBUTE9" AS varchar(1000) ) AS "ATTRIBUTE9"
                        ,CAST("ATTRIBUTE10" AS varchar(1000) ) AS "ATTRIBUTE10"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE"  AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("ROLLUP_ID" AS float) AS "ROLLUP_ID"
                        ,CAST("ASSIGNMENT_SET_ID" AS float) AS "ASSIGNMENT_SET_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "INVENTORY_ITEM_ID"
                            , "ORGANIZATION_ID"
                            , "COST_TYPE_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "INVENTORY_ASSET_FLAG"
                            , "LOT_SIZE"
                            , "BASED_ON_ROLLUP_FLAG"
                            , "SHRINKAGE_RATE"
                            , "DEFAULTED_FLAG"
                            , "COST_UPDATE_ID"
                            , "PL_MATERIAL"
                            , "PL_MATERIAL_OVERHEAD"
                            , "PL_RESOURCE"
                            , "PL_OUTSIDE_PROCESSING"
                            , "PL_OVERHEAD"
                            , "TL_MATERIAL"
                            , "TL_MATERIAL_OVERHEAD"
                            , "TL_RESOURCE"
                            , "TL_OUTSIDE_PROCESSING"
                            , "TL_OVERHEAD"
                            , "MATERIAL_COST"
                            , "MATERIAL_OVERHEAD_COST"
                            , "RESOURCE_COST"
                            , "OUTSIDE_PROCESSING_COST"
                            , "OVERHEAD_COST"
                            , "PL_ITEM_COST"
                            , "TL_ITEM_COST"
                            , "ITEM_COST"
                            , "UNBURDENED_COST"
                            , "BURDEN_COST"
                            , "ATTRIBUTE_CATEGORY"
                            , "ATTRIBUTE1"
                            , "ATTRIBUTE2"
                            , "ATTRIBUTE3"
                            , "ATTRIBUTE4"
                            , "ATTRIBUTE5"
                            , "ATTRIBUTE6"
                            , "ATTRIBUTE7"
                            , "ATTRIBUTE8"
                            , "ATTRIBUTE9"
                            , "ATTRIBUTE10"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "ROLLUP_ID"
                            , "ASSIGNMENT_SET_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_CST_ITEM_COSTS"
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