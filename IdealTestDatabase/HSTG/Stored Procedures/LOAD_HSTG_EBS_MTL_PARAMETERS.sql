﻿

Create Procedure [HSTG].[LOAD_HSTG_EBS_MTL_PARAMETERS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        11/03/2022 4:26:19 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_PARAMETERS";
    
    Source                                   Destination                             
    -------------------------------------    -------------------------------------- 
    STG"."STG_EBS_MTL_PARAMETERS"    "HSTG"."HSTG_EBS_MTL_PARAMETERS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-11    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_PARAMETERS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_PARAMETERS"
                ("ORGANIZATION_ID", 
					"LAST_UPDATE_DATE", 
					"LAST_UPDATED_BY", 
					"CREATION_DATE", 
					"CREATED_BY", 
					"LAST_UPDATE_LOGIN", 
					"ORGANIZATION_CODE", 
					"MASTER_ORGANIZATION_ID", 
					"PRIMARY_COST_METHOD", 
					"COST_ORGANIZATION_ID", 
					"DEFAULT_MATERIAL_COST_ID", 
					"CALENDAR_EXCEPTION_SET_ID", 
					"CALENDAR_CODE", 
					"GENERAL_LEDGER_UPDATE_CODE", 
					"DEFAULT_ATP_RULE_ID", 
					"DEFAULT_PICKING_RULE_ID", 
					"DEFAULT_LOCATOR_ORDER_VALUE", 
					"DEFAULT_SUBINV_ORDER_VALUE", 
					"NEGATIVE_INV_RECEIPT_CODE", 
					"STOCK_LOCATOR_CONTROL_CODE", 
					"MATERIAL_ACCOUNT", 
					"MATERIAL_OVERHEAD_ACCOUNT", 
					"MATL_OVHD_ABSORPTION_ACCT", 
					"RESOURCE_ACCOUNT", 
					"PURCHASE_PRICE_VAR_ACCOUNT", 
					"AP_ACCRUAL_ACCOUNT", 
					"OVERHEAD_ACCOUNT", 
					"OUTSIDE_PROCESSING_ACCOUNT", 
					"INTRANSIT_INV_ACCOUNT", 
					"INTERORG_RECEIVABLES_ACCOUNT", 
					"INTERORG_PRICE_VAR_ACCOUNT", 
					"INTERORG_PAYABLES_ACCOUNT", 
					"COST_OF_SALES_ACCOUNT", 
					"ENCUMBRANCE_ACCOUNT", 
					"PROJECT_COST_ACCOUNT", 
					"INTERORG_TRANSFER_CR_ACCOUNT", 
					"MATL_INTERORG_TRANSFER_CODE", 
					"INTERORG_TRNSFR_CHARGE_PERCENT", 
					"SOURCE_ORGANIZATION_ID", 
					"SOURCE_SUBINVENTORY", 
					"SOURCE_TYPE", 
					"ORG_MAX_WEIGHT", 
					"ORG_MAX_WEIGHT_UOM_CODE", 
					"ORG_MAX_VOLUME", 
					"ORG_MAX_VOLUME_UOM_CODE", 
					"SERIAL_NUMBER_TYPE", 
					"AUTO_SERIAL_ALPHA_PREFIX", 
					"START_AUTO_SERIAL_NUMBER", 
					"AUTO_LOT_ALPHA_PREFIX", 
					"LOT_NUMBER_UNIQUENESS", 
					"LOT_NUMBER_GENERATION", 
					"LOT_NUMBER_ZERO_PADDING", 
					"LOT_NUMBER_LENGTH", 
					"STARTING_REVISION", 
					"ATTRIBUTE_CATEGORY", 
					"ATTRIBUTE1", 
					"ATTRIBUTE2", 
					"ATTRIBUTE3", 
					"ATTRIBUTE4", 
					"ATTRIBUTE5", 
					"ATTRIBUTE6", 
					"ATTRIBUTE7", 
					"ATTRIBUTE8", 
					"ATTRIBUTE9", 
					"ATTRIBUTE10", 
					"ATTRIBUTE11", 
					"ATTRIBUTE12", 
					"ATTRIBUTE13", 
					"ATTRIBUTE14", 
					"ATTRIBUTE15", 
					"DEFAULT_DEMAND_CLASS", 
					"ENCUMBRANCE_REVERSAL_FLAG", 
					"MAINTAIN_FIFO_QTY_STACK_TYPE", 
					"INVOICE_PRICE_VAR_ACCOUNT", 
					"AVERAGE_COST_VAR_ACCOUNT", 
					"SALES_ACCOUNT", 
					"EXPENSE_ACCOUNT", 
					"SERIAL_NUMBER_GENERATION", 
					"REQUEST_ID", 
					"PROGRAM_APPLICATION_ID", 
					"PROGRAM_ID", 
					"PROGRAM_UPDATE_DATE", 
					"GLOBAL_ATTRIBUTE_CATEGORY", 
					"GLOBAL_ATTRIBUTE1", 
					"GLOBAL_ATTRIBUTE2", 
					"GLOBAL_ATTRIBUTE3", 
					"GLOBAL_ATTRIBUTE4", 
					"GLOBAL_ATTRIBUTE5", 
					"GLOBAL_ATTRIBUTE6", 
					"GLOBAL_ATTRIBUTE7", 
					"GLOBAL_ATTRIBUTE8", 
					"GLOBAL_ATTRIBUTE9", 
					"GLOBAL_ATTRIBUTE10", 
					"GLOBAL_ATTRIBUTE11", 
					"GLOBAL_ATTRIBUTE12", 
					"GLOBAL_ATTRIBUTE13", 
					"GLOBAL_ATTRIBUTE14", 
					"GLOBAL_ATTRIBUTE15", 
					"GLOBAL_ATTRIBUTE16", 
					"GLOBAL_ATTRIBUTE17", 
					"GLOBAL_ATTRIBUTE18", 
					"GLOBAL_ATTRIBUTE19", 
					"GLOBAL_ATTRIBUTE20", 
					"MAT_OVHD_COST_TYPE_ID", 
					"PROJECT_REFERENCE_ENABLED", 
					"PM_COST_COLLECTION_ENABLED", 
					"PROJECT_CONTROL_LEVEL", 
					"AVG_RATES_COST_TYPE_ID", 
					"TXN_APPROVAL_TIMEOUT_PERIOD", 
					"MO_SOURCE_REQUIRED", 
					"MO_PICK_CONFIRM_REQUIRED", 
					"MO_APPROVAL_TIMEOUT_ACTION", 
					"BORRPAY_MATL_VAR_ACCOUNT", 
					"BORRPAY_MOH_VAR_ACCOUNT", 
					"BORRPAY_RES_VAR_ACCOUNT", 
					"BORRPAY_OSP_VAR_ACCOUNT", 
					"BORRPAY_OVH_VAR_ACCOUNT", 
					"PROCESS_ENABLED_FLAG", 
					"PROCESS_ORGN_CODE", 
					"WSM_ENABLED_FLAG", 
					"DEFAULT_COST_GROUP_ID", 
					"LPN_PREFIX", 
					"LPN_SUFFIX", 
					"LPN_STARTING_NUMBER", 
					"WMS_ENABLED_FLAG", 
					"PREGEN_PUTAWAY_TASKS_FLAG", 
					"REGENERATION_INTERVAL", 
					"TIMEZONE_ID", 
					"MAX_PICKS_BATCH", 
					"DEFAULT_WMS_PICKING_RULE_ID", 
					"DEFAULT_PUT_AWAY_RULE_ID", 
					"DEFAULT_TASK_ASSIGN_RULE_ID", 
					"DEFAULT_LABEL_COMP_RULE_ID", 
					"DEFAULT_CARTON_RULE_ID", 
					"DEFAULT_CYC_COUNT_HEADER_ID", 
					"CROSSDOCK_FLAG", 
					"CARTONIZATION_FLAG", 
					"COST_CUTOFF_DATE", 
					"ENABLE_COSTING_BY_CATEGORY", 
					"COST_GROUP_ACCOUNTING", 
					"ALLOCATE_SERIAL_FLAG", 
					"DEFAULT_PICK_TASK_TYPE_ID", 
					"DEFAULT_CC_TASK_TYPE_ID", 
					"DEFAULT_PUTAWAY_TASK_TYPE_ID", 
					"DEFAULT_REPL_TASK_TYPE_ID", 
					"EAM_ENABLED_FLAG", 
					"MAINT_ORGANIZATION_ID", 
					"PRIORITIZE_WIP_JOBS", 
					"DEFAULT_CROSSDOCK_SUBINVENTORY", 
					"SKIP_TASK_WAITING_MINUTES", 
					"QA_SKIPPING_INSP_FLAG", 
					"DEFAULT_CROSSDOCK_LOCATOR_ID", 
					"DEFAULT_MOXFER_TASK_TYPE_ID", 
					"DEFAULT_MOISSUE_TASK_TYPE_ID", 
					"DEFAULT_MATL_OVHD_COST_ID", 
					"DISTRIBUTED_ORGANIZATION_FLAG", 
					"CARRIER_MANIFESTING_FLAG", 
					"DISTRIBUTION_ACCOUNT_ID", 
					"DIRECT_SHIPPING_ALLOWED", 
					"DEFAULT_PICK_OP_PLAN_ID", 
					"MAX_CLUSTERS_ALLOWED", 
					"CONSIGNED_FLAG", 
					"CARTONIZE_SALES_ORDERS", 
					"CARTONIZE_MANUFACTURING", 
					"DEFER_LOGICAL_TRANSACTIONS", 
					"WIP_OVERPICK_ENABLED", 
					"OVPK_TRANSFER_ORDERS_ENABLED", 
					"TOTAL_LPN_LENGTH", 
					"UCC_128_SUFFIX_FLAG", 
					"WCS_ENABLED", 
					"ALLOW_DIFFERENT_STATUS", 
					"CHILD_LOT_ALPHA_PREFIX", 
					"CHILD_LOT_NUMBER_LENGTH", 
					"CHILD_LOT_VALIDATION_FLAG", 
					"CHILD_LOT_ZERO_PADDING_FLAG", 
					"COPY_LOT_ATTRIBUTE_FLAG", 
					"CREATE_LOT_UOM_CONVERSION", 
					"GENEALOGY_FORMULA_SECURITY", 
					"PARENT_CHILD_GENERATION_FLAG", 
					"RULES_OVERRIDE_LOT_RESERVATION", 
					"AUTO_DEL_ALLOC_FLAG", 
					"RFID_VERIF_PCNT_THRESHOLD", 
					"YARD_MANAGEMENT_ENABLED_FLAG", 
					"TRADING_PARTNER_ORG_FLAG", 
					"DEFERRED_COGS_ACCOUNT", 
					"DEFAULT_CROSSDOCK_CRITERIA_ID", 
					"ENFORCE_LOCATOR_ALIS_UNQ_FLAG", 
					"EPC_GENERATION_ENABLED_FLAG", 
					"COMPANY_PREFIX", 
					"COMPANY_PREFIX_INDEX", 
					"COMMERCIAL_GOVT_ENTITY_NUMBER", 
					"LABOR_MANAGEMENT_ENABLED_FLAG", 
					"DEFAULT_STATUS_ID", 
					"LCM_ENABLED_FLAG", 
					"LCM_VAR_ACCOUNT", 
					"OPSM_ENABLED_FLAG", 
					"ALLOCATE_LOT_FLAG", 
					"CAT_WT_ACCOUNT", 
					"TRADING_PARTNER_ORG_TYPE", 
					"OMD_INSERT_DATETIME", 
					"OMD_FILE_NAME", 
					"OMD_HASH_FULL_RECORD", 
					"OMD_IS_RECORD_DELETED", 
					"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "ORGANIZATION_ID", 
					"LAST_UPDATE_DATE", 
					"LAST_UPDATED_BY", 
					"CREATION_DATE", 
					"CREATED_BY", 
					"LAST_UPDATE_LOGIN", 
					"ORGANIZATION_CODE", 
					"MASTER_ORGANIZATION_ID", 
					"PRIMARY_COST_METHOD", 
					"COST_ORGANIZATION_ID", 
					"DEFAULT_MATERIAL_COST_ID", 
					"CALENDAR_EXCEPTION_SET_ID", 
					"CALENDAR_CODE", 
					"GENERAL_LEDGER_UPDATE_CODE", 
					"DEFAULT_ATP_RULE_ID", 
					"DEFAULT_PICKING_RULE_ID", 
					"DEFAULT_LOCATOR_ORDER_VALUE", 
					"DEFAULT_SUBINV_ORDER_VALUE", 
					"NEGATIVE_INV_RECEIPT_CODE", 
					"STOCK_LOCATOR_CONTROL_CODE", 
					"MATERIAL_ACCOUNT", 
					"MATERIAL_OVERHEAD_ACCOUNT", 
					"MATL_OVHD_ABSORPTION_ACCT", 
					"RESOURCE_ACCOUNT", 
					"PURCHASE_PRICE_VAR_ACCOUNT", 
					"AP_ACCRUAL_ACCOUNT", 
					"OVERHEAD_ACCOUNT", 
					"OUTSIDE_PROCESSING_ACCOUNT", 
					"INTRANSIT_INV_ACCOUNT", 
					"INTERORG_RECEIVABLES_ACCOUNT", 
					"INTERORG_PRICE_VAR_ACCOUNT", 
					"INTERORG_PAYABLES_ACCOUNT", 
					"COST_OF_SALES_ACCOUNT", 
					"ENCUMBRANCE_ACCOUNT", 
					"PROJECT_COST_ACCOUNT", 
					"INTERORG_TRANSFER_CR_ACCOUNT", 
					"MATL_INTERORG_TRANSFER_CODE", 
					"INTERORG_TRNSFR_CHARGE_PERCENT", 
					"SOURCE_ORGANIZATION_ID", 
					"SOURCE_SUBINVENTORY", 
					"SOURCE_TYPE", 
					"ORG_MAX_WEIGHT", 
					"ORG_MAX_WEIGHT_UOM_CODE", 
					"ORG_MAX_VOLUME", 
					"ORG_MAX_VOLUME_UOM_CODE", 
					"SERIAL_NUMBER_TYPE", 
					"AUTO_SERIAL_ALPHA_PREFIX", 
					"START_AUTO_SERIAL_NUMBER", 
					"AUTO_LOT_ALPHA_PREFIX", 
					"LOT_NUMBER_UNIQUENESS", 
					"LOT_NUMBER_GENERATION", 
					"LOT_NUMBER_ZERO_PADDING", 
					"LOT_NUMBER_LENGTH", 
					"STARTING_REVISION", 
					"ATTRIBUTE_CATEGORY", 
					"ATTRIBUTE1", 
					"ATTRIBUTE2", 
					"ATTRIBUTE3", 
					"ATTRIBUTE4", 
					"ATTRIBUTE5", 
					"ATTRIBUTE6", 
					"ATTRIBUTE7", 
					"ATTRIBUTE8", 
					"ATTRIBUTE9", 
					"ATTRIBUTE10", 
					"ATTRIBUTE11", 
					"ATTRIBUTE12", 
					"ATTRIBUTE13", 
					"ATTRIBUTE14", 
					"ATTRIBUTE15", 
					"DEFAULT_DEMAND_CLASS", 
					"ENCUMBRANCE_REVERSAL_FLAG", 
					"MAINTAIN_FIFO_QTY_STACK_TYPE", 
					"INVOICE_PRICE_VAR_ACCOUNT", 
					"AVERAGE_COST_VAR_ACCOUNT", 
					"SALES_ACCOUNT", 
					"EXPENSE_ACCOUNT", 
					"SERIAL_NUMBER_GENERATION", 
					"REQUEST_ID", 
					"PROGRAM_APPLICATION_ID", 
					"PROGRAM_ID", 
					"PROGRAM_UPDATE_DATE", 
					"GLOBAL_ATTRIBUTE_CATEGORY", 
					"GLOBAL_ATTRIBUTE1", 
					"GLOBAL_ATTRIBUTE2", 
					"GLOBAL_ATTRIBUTE3", 
					"GLOBAL_ATTRIBUTE4", 
					"GLOBAL_ATTRIBUTE5", 
					"GLOBAL_ATTRIBUTE6", 
					"GLOBAL_ATTRIBUTE7", 
					"GLOBAL_ATTRIBUTE8", 
					"GLOBAL_ATTRIBUTE9", 
					"GLOBAL_ATTRIBUTE10", 
					"GLOBAL_ATTRIBUTE11", 
					"GLOBAL_ATTRIBUTE12", 
					"GLOBAL_ATTRIBUTE13", 
					"GLOBAL_ATTRIBUTE14", 
					"GLOBAL_ATTRIBUTE15", 
					"GLOBAL_ATTRIBUTE16", 
					"GLOBAL_ATTRIBUTE17", 
					"GLOBAL_ATTRIBUTE18", 
					"GLOBAL_ATTRIBUTE19", 
					"GLOBAL_ATTRIBUTE20", 
					"MAT_OVHD_COST_TYPE_ID", 
					"PROJECT_REFERENCE_ENABLED", 
					"PM_COST_COLLECTION_ENABLED", 
					"PROJECT_CONTROL_LEVEL", 
					"AVG_RATES_COST_TYPE_ID", 
					"TXN_APPROVAL_TIMEOUT_PERIOD", 
					"MO_SOURCE_REQUIRED", 
					"MO_PICK_CONFIRM_REQUIRED", 
					"MO_APPROVAL_TIMEOUT_ACTION", 
					"BORRPAY_MATL_VAR_ACCOUNT", 
					"BORRPAY_MOH_VAR_ACCOUNT", 
					"BORRPAY_RES_VAR_ACCOUNT", 
					"BORRPAY_OSP_VAR_ACCOUNT", 
					"BORRPAY_OVH_VAR_ACCOUNT", 
					"PROCESS_ENABLED_FLAG", 
					"PROCESS_ORGN_CODE", 
					"WSM_ENABLED_FLAG", 
					"DEFAULT_COST_GROUP_ID", 
					"LPN_PREFIX", 
					"LPN_SUFFIX", 
					"LPN_STARTING_NUMBER", 
					"WMS_ENABLED_FLAG", 
					"PREGEN_PUTAWAY_TASKS_FLAG", 
					"REGENERATION_INTERVAL", 
					"TIMEZONE_ID", 
					"MAX_PICKS_BATCH", 
					"DEFAULT_WMS_PICKING_RULE_ID", 
					"DEFAULT_PUT_AWAY_RULE_ID", 
					"DEFAULT_TASK_ASSIGN_RULE_ID", 
					"DEFAULT_LABEL_COMP_RULE_ID", 
					"DEFAULT_CARTON_RULE_ID", 
					"DEFAULT_CYC_COUNT_HEADER_ID", 
					"CROSSDOCK_FLAG", 
					"CARTONIZATION_FLAG", 
					"COST_CUTOFF_DATE", 
					"ENABLE_COSTING_BY_CATEGORY", 
					"COST_GROUP_ACCOUNTING", 
					"ALLOCATE_SERIAL_FLAG", 
					"DEFAULT_PICK_TASK_TYPE_ID", 
					"DEFAULT_CC_TASK_TYPE_ID", 
					"DEFAULT_PUTAWAY_TASK_TYPE_ID", 
					"DEFAULT_REPL_TASK_TYPE_ID", 
					"EAM_ENABLED_FLAG", 
					"MAINT_ORGANIZATION_ID", 
					"PRIORITIZE_WIP_JOBS", 
					"DEFAULT_CROSSDOCK_SUBINVENTORY", 
					"SKIP_TASK_WAITING_MINUTES", 
					"QA_SKIPPING_INSP_FLAG", 
					"DEFAULT_CROSSDOCK_LOCATOR_ID", 
					"DEFAULT_MOXFER_TASK_TYPE_ID", 
					"DEFAULT_MOISSUE_TASK_TYPE_ID", 
					"DEFAULT_MATL_OVHD_COST_ID", 
					"DISTRIBUTED_ORGANIZATION_FLAG", 
					"CARRIER_MANIFESTING_FLAG", 
					"DISTRIBUTION_ACCOUNT_ID", 
					"DIRECT_SHIPPING_ALLOWED", 
					"DEFAULT_PICK_OP_PLAN_ID", 
					"MAX_CLUSTERS_ALLOWED", 
					"CONSIGNED_FLAG", 
					"CARTONIZE_SALES_ORDERS", 
					"CARTONIZE_MANUFACTURING", 
					"DEFER_LOGICAL_TRANSACTIONS", 
					"WIP_OVERPICK_ENABLED", 
					"OVPK_TRANSFER_ORDERS_ENABLED", 
					"TOTAL_LPN_LENGTH", 
					"UCC_128_SUFFIX_FLAG", 
					"WCS_ENABLED", 
					"ALLOW_DIFFERENT_STATUS", 
					"CHILD_LOT_ALPHA_PREFIX", 
					"CHILD_LOT_NUMBER_LENGTH", 
					"CHILD_LOT_VALIDATION_FLAG", 
					"CHILD_LOT_ZERO_PADDING_FLAG", 
					"COPY_LOT_ATTRIBUTE_FLAG", 
					"CREATE_LOT_UOM_CONVERSION", 
					"GENEALOGY_FORMULA_SECURITY", 
					"PARENT_CHILD_GENERATION_FLAG", 
					"RULES_OVERRIDE_LOT_RESERVATION", 
					"AUTO_DEL_ALLOC_FLAG", 
					"RFID_VERIF_PCNT_THRESHOLD", 
					"YARD_MANAGEMENT_ENABLED_FLAG", 
					"TRADING_PARTNER_ORG_FLAG", 
					"DEFERRED_COGS_ACCOUNT", 
					"DEFAULT_CROSSDOCK_CRITERIA_ID", 
					"ENFORCE_LOCATOR_ALIS_UNQ_FLAG", 
					"EPC_GENERATION_ENABLED_FLAG", 
					"COMPANY_PREFIX", 
					"COMPANY_PREFIX_INDEX", 
					"COMMERCIAL_GOVT_ENTITY_NUMBER", 
					"LABOR_MANAGEMENT_ENABLED_FLAG", 
					"DEFAULT_STATUS_ID", 
					"LCM_ENABLED_FLAG", 
					"LCM_VAR_ACCOUNT", 
					"OPSM_ENABLED_FLAG", 
					"ALLOCATE_LOT_FLAG", 
					"CAT_WT_ACCOUNT", 
					"TRADING_PARTNER_ORG_TYPE"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_MTL_PARAMETERS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_PARAMETERS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)

            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 
				SET OMD_CURRENT_RECORD_INDICATOR='N'
				FROM "HSTG"."HSTG_EBS_MTL_PARAMETERS" H
					Join "STG"."STG_EBS_MTL_PARAMETERS" S
						On H.ORGANIZATION_ID= S.ORGANIZATION_ID
				WHERE "OMD_IS_RECORD_DELETED" = 'N'
						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
