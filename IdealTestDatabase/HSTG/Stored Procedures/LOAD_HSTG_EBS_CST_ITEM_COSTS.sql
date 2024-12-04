

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_CST_ITEM_COSTS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:59:07 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_CST_ITEM_COSTS";
    
    Source                            Destination                      
    ------------------------------    ------------------------------- 
    STG"."STG_EBS_CST_ITEM_COSTS"    "HSTG"."HSTG_EBS_CST_ITEM_COSTS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_CST_ITEM_COSTS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_CST_ITEM_COSTS"
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
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
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
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_CST_ITEM_COSTS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_CST_ITEM_COSTS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_CST_ITEM_COSTS" H					Join "STG"."STG_EBS_CST_ITEM_COSTS" S						On H.INVENTORY_ITEM_ID= S.INVENTORY_ITEM_ID						And H.ORGANIZATION_ID= S.ORGANIZATION_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
            END
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
