﻿

CREATE PROCEDURE [STG].[LOAD_STG_EBS_MTL_MATERIAL_TRANSACTIONS]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:45 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_MATERIAL_TRANSACTIONS";
    
    
    Source                                       Destination                               
    -----------------------------------------    ----------------------------------------- 
    LND"."LND_EBS_MTL_MATERIAL_TRANSACTIONS"    "STG"."STG_EBS_MTL_MATERIAL_TRANSACTIONS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_MTL_MATERIAL_TRANSACTIONS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_MATERIAL_TRANSACTIONS"
                (
                    "TRANSACTION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"INVENTORY_ITEM_ID"
                    ,"REVISION"
                    ,"ORGANIZATION_ID"
                    ,"SUBINVENTORY_CODE"
                    ,"LOCATOR_ID"
                    ,"TRANSACTION_TYPE_ID"
                    ,"TRANSACTION_ACTION_ID"
                    ,"TRANSACTION_SOURCE_TYPE_ID"
                    ,"TRANSACTION_SOURCE_ID"
                    ,"TRANSACTION_SOURCE_NAME"
                    ,"TRANSACTION_QUANTITY"
                    ,"TRANSACTION_UOM"
                    ,"PRIMARY_QUANTITY"
                    ,"TRANSACTION_DATE"
                    ,"VARIANCE_AMOUNT"
                    ,"ACCT_PERIOD_ID"
                    ,"TRANSACTION_REFERENCE"
                    ,"REASON_ID"
                    ,"DISTRIBUTION_ACCOUNT_ID"
                    ,"ENCUMBRANCE_ACCOUNT"
                    ,"ENCUMBRANCE_AMOUNT"
                    ,"COST_UPDATE_ID"
                    ,"COSTED_FLAG"
                    ,"TRANSACTION_GROUP_ID"
                    ,"INVOICED_FLAG"
                    ,"ACTUAL_COST"
                    ,"TRANSACTION_COST"
                    ,"PRIOR_COST"
                    ,"NEW_COST"
                    ,"CURRENCY_CODE"
                    ,"CURRENCY_CONVERSION_RATE"
                    ,"CURRENCY_CONVERSION_TYPE"
                    ,"CURRENCY_CONVERSION_DATE"
                    ,"USSGL_TRANSACTION_CODE"
                    ,"QUANTITY_ADJUSTED"
                    ,"EMPLOYEE_CODE"
                    ,"DEPARTMENT_ID"
                    ,"OPERATION_SEQ_NUM"
                    ,"MASTER_SCHEDULE_UPDATE_CODE"
                    ,"RECEIVING_DOCUMENT"
                    ,"PICKING_LINE_ID"
                    ,"TRX_SOURCE_LINE_ID"
                    ,"TRX_SOURCE_DELIVERY_ID"
                    ,"REPETITIVE_LINE_ID"
                    ,"PHYSICAL_ADJUSTMENT_ID"
                    ,"CYCLE_COUNT_ID"
                    ,"RMA_LINE_ID"
                    ,"TRANSFER_TRANSACTION_ID"
                    ,"TRANSACTION_SET_ID"
                    ,"RCV_TRANSACTION_ID"
                    ,"MOVE_TRANSACTION_ID"
                    ,"COMPLETION_TRANSACTION_ID"
                    ,"SHORTAGE_PROCESS_CODE"
                    ,"SOURCE_CODE"
                    ,"SOURCE_LINE_ID"
                    ,"VENDOR_LOT_NUMBER"
                    ,"TRANSFER_ORGANIZATION_ID"
                    ,"TRANSFER_SUBINVENTORY"
                    ,"TRANSFER_LOCATOR_ID"
                    ,"SHIPMENT_NUMBER"
                    ,"TRANSFER_COST"
                    ,"TRANSPORTATION_DIST_ACCOUNT"
                    ,"TRANSPORTATION_COST"
                    ,"TRANSFER_COST_DIST_ACCOUNT"
                    ,"WAYBILL_AIRBILL"
                    ,"FREIGHT_CODE"
                    ,"NUMBER_OF_CONTAINERS"
                    ,"VALUE_CHANGE"
                    ,"PERCENTAGE_CHANGE"
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
                    ,"MOVEMENT_ID"
                    ,"TASK_ID"
                    ,"TO_TASK_ID"
                    ,"PROJECT_ID"
                    ,"TO_PROJECT_ID"
                    ,"SOURCE_PROJECT_ID"
                    ,"PA_EXPENDITURE_ORG_ID"
                    ,"SOURCE_TASK_ID"
                    ,"EXPENDITURE_TYPE"
                    ,"ERROR_CODE"
                    ,"ERROR_EXPLANATION"
                    ,"PRIOR_COSTED_QUANTITY"
                    ,"TRANSFER_PRIOR_COSTED_QUANTITY"
                    ,"FINAL_COMPLETION_FLAG"
                    ,"PM_COST_COLLECTED"
                    ,"PM_COST_COLLECTOR_GROUP_ID"
                    ,"SHIPMENT_COSTED"
                    ,"TRANSFER_PERCENTAGE"
                    ,"MATERIAL_ACCOUNT"
                    ,"MATERIAL_OVERHEAD_ACCOUNT"
                    ,"RESOURCE_ACCOUNT"
                    ,"OUTSIDE_PROCESSING_ACCOUNT"
                    ,"OVERHEAD_ACCOUNT"
                    ,"COST_GROUP_ID"
                    ,"TRANSFER_COST_GROUP_ID"
                    ,"FLOW_SCHEDULE"
                    ,"QA_COLLECTION_ID"
                    ,"OVERCOMPLETION_TRANSACTION_QTY"
                    ,"OVERCOMPLETION_PRIMARY_QTY"
                    ,"OVERCOMPLETION_TRANSACTION_ID"
                    ,"MVT_STAT_STATUS"
                    ,"COMMON_BOM_SEQ_ID"
                    ,"COMMON_ROUTING_SEQ_ID"
                    ,"ORG_COST_GROUP_ID"
                    ,"COST_TYPE_ID"
                    ,"PERIODIC_PRIMARY_QUANTITY"
                    ,"MOVE_ORDER_LINE_ID"
                    ,"TASK_GROUP_ID"
                    ,"PICK_SLIP_NUMBER"
                    ,"LPN_ID"
                    ,"TRANSFER_LPN_ID"
                    ,"PICK_STRATEGY_ID"
                    ,"PICK_RULE_ID"
                    ,"PUT_AWAY_STRATEGY_ID"
                    ,"PUT_AWAY_RULE_ID"
                    ,"CONTENT_LPN_ID"
                    ,"PICK_SLIP_DATE"
                    ,"COST_CATEGORY_ID"
                    ,"ORGANIZATION_TYPE"
                    ,"TRANSFER_ORGANIZATION_TYPE"
                    ,"OWNING_ORGANIZATION_ID"
                    ,"OWNING_TP_TYPE"
                    ,"XFR_OWNING_ORGANIZATION_ID"
                    ,"TRANSFER_OWNING_TP_TYPE"
                    ,"PLANNING_ORGANIZATION_ID"
                    ,"PLANNING_TP_TYPE"
                    ,"XFR_PLANNING_ORGANIZATION_ID"
                    ,"TRANSFER_PLANNING_TP_TYPE"
                    ,"SECONDARY_UOM_CODE"
                    ,"SECONDARY_TRANSACTION_QUANTITY"
                    ,"TRANSACTION_GROUP_SEQ"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"RESERVATION_ID"
                    ,"TRANSACTION_MODE"
                    ,"TRANSACTION_BATCH_ID"
                    ,"TRANSACTION_BATCH_SEQ"
                    ,"INTRANSIT_ACCOUNT"
                    ,"FOB_POINT"
                    ,"PARENT_TRANSACTION_ID"
                    ,"LOGICAL_TRX_TYPE_CODE"
                    ,"TRX_FLOW_HEADER_ID"
                    ,"LOGICAL_TRANSACTIONS_CREATED"
                    ,"LOGICAL_TRANSACTION"
                    ,"INTERCOMPANY_COST"
                    ,"INTERCOMPANY_PRICING_OPTION"
                    ,"INTERCOMPANY_CURRENCY_CODE"
                    ,"ORIGINAL_TRANSACTION_TEMP_ID"
                    ,"TRANSFER_PRICE"
                    ,"EXPENSE_ACCOUNT_ID"
                    ,"COGS_RECOGNITION_PERCENT"
                    ,"SO_ISSUE_ACCOUNT_TYPE"
                    ,"OPM_COSTED_FLAG"
                    ,"MATERIAL_EXPENSE_ACCOUNT"
                    ,"TRANSACTION_EXTRACTED"
                    ,"XML_DOCUMENT_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("TRANSACTION_ID" AS float) AS "TRANSACTION_ID"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("REVISION" AS varchar(100) ) AS "REVISION"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("SUBINVENTORY_CODE" AS varchar(100) ) AS "SUBINVENTORY_CODE"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,CAST("TRANSACTION_TYPE_ID" AS float) AS "TRANSACTION_TYPE_ID"
                        ,CAST("TRANSACTION_ACTION_ID" AS float) AS "TRANSACTION_ACTION_ID"
                        ,CAST("TRANSACTION_SOURCE_TYPE_ID" AS float) AS "TRANSACTION_SOURCE_TYPE_ID"
                        ,CAST("TRANSACTION_SOURCE_ID" AS float) AS "TRANSACTION_SOURCE_ID"
                        ,CAST("TRANSACTION_SOURCE_NAME" AS varchar(1000) ) AS "TRANSACTION_SOURCE_NAME"
                        ,CAST("TRANSACTION_QUANTITY" AS float) AS "TRANSACTION_QUANTITY"
                        ,CAST("TRANSACTION_UOM" AS varchar(100) ) AS "TRANSACTION_UOM"
                        ,CAST("PRIMARY_QUANTITY" AS float) AS "PRIMARY_QUANTITY"
                        ,TRY_CONVERT(datetime2,"TRANSACTION_DATE",121) AS "TRANSACTION_DATE"
                        ,CAST("VARIANCE_AMOUNT" AS float) AS "VARIANCE_AMOUNT"
                        ,CAST("ACCT_PERIOD_ID" AS float) AS "ACCT_PERIOD_ID"
                        ,CAST("TRANSACTION_REFERENCE" AS varchar(1000) ) AS "TRANSACTION_REFERENCE"
                        ,CAST("REASON_ID" AS float) AS "REASON_ID"
                        ,CAST("DISTRIBUTION_ACCOUNT_ID" AS float) AS "DISTRIBUTION_ACCOUNT_ID"
                        ,CAST("ENCUMBRANCE_ACCOUNT" AS float) AS "ENCUMBRANCE_ACCOUNT"
                        ,CAST("ENCUMBRANCE_AMOUNT" AS float) AS "ENCUMBRANCE_AMOUNT"
                        ,CAST("COST_UPDATE_ID" AS float) AS "COST_UPDATE_ID"
                        ,CAST("COSTED_FLAG" AS varchar(100) ) AS "COSTED_FLAG"
                        ,CAST("TRANSACTION_GROUP_ID" AS float) AS "TRANSACTION_GROUP_ID"
                        ,CAST("INVOICED_FLAG" AS varchar(100) ) AS "INVOICED_FLAG"
                        ,CAST("ACTUAL_COST" AS float) AS "ACTUAL_COST"
                        ,CAST("TRANSACTION_COST" AS float) AS "TRANSACTION_COST"
                        ,CAST("PRIOR_COST" AS float) AS "PRIOR_COST"
                        ,CAST("NEW_COST" AS float) AS "NEW_COST"
                        ,CAST("CURRENCY_CODE" AS varchar(100) ) AS "CURRENCY_CODE"
                        ,CAST("CURRENCY_CONVERSION_RATE" AS float) AS "CURRENCY_CONVERSION_RATE"
                        ,CAST("CURRENCY_CONVERSION_TYPE" AS varchar(100) ) AS "CURRENCY_CONVERSION_TYPE"
                        ,TRY_CONVERT(datetime2,"CURRENCY_CONVERSION_DATE",121) AS "CURRENCY_CONVERSION_DATE"
                        ,CAST("USSGL_TRANSACTION_CODE" AS varchar(100) ) AS "USSGL_TRANSACTION_CODE"
                        ,CAST("QUANTITY_ADJUSTED" AS float) AS "QUANTITY_ADJUSTED"
                        ,CAST("EMPLOYEE_CODE" AS varchar(100) ) AS "EMPLOYEE_CODE"
                        ,CAST("DEPARTMENT_ID" AS float) AS "DEPARTMENT_ID"
                        ,CAST("OPERATION_SEQ_NUM" AS float) AS "OPERATION_SEQ_NUM"
                        ,CAST("MASTER_SCHEDULE_UPDATE_CODE" AS varchar(100) ) AS "MASTER_SCHEDULE_UPDATE_CODE"
                        ,CAST("RECEIVING_DOCUMENT" AS varchar(100) ) AS "RECEIVING_DOCUMENT"
                        ,CAST("PICKING_LINE_ID" AS float) AS "PICKING_LINE_ID"
                        ,CAST("TRX_SOURCE_LINE_ID" AS float) AS "TRX_SOURCE_LINE_ID"
                        ,CAST("TRX_SOURCE_DELIVERY_ID" AS float) AS "TRX_SOURCE_DELIVERY_ID"
                        ,CAST("REPETITIVE_LINE_ID" AS float) AS "REPETITIVE_LINE_ID"
                        ,CAST("PHYSICAL_ADJUSTMENT_ID" AS float) AS "PHYSICAL_ADJUSTMENT_ID"
                        ,CAST("CYCLE_COUNT_ID" AS float) AS "CYCLE_COUNT_ID"
                        ,CAST("RMA_LINE_ID" AS float) AS "RMA_LINE_ID"
                        ,CAST("TRANSFER_TRANSACTION_ID" AS float) AS "TRANSFER_TRANSACTION_ID"
                        ,CAST("TRANSACTION_SET_ID" AS float) AS "TRANSACTION_SET_ID"
                        ,CAST("RCV_TRANSACTION_ID" AS float) AS "RCV_TRANSACTION_ID"
                        ,CAST("MOVE_TRANSACTION_ID" AS float) AS "MOVE_TRANSACTION_ID"
                        ,CAST("COMPLETION_TRANSACTION_ID" AS float) AS "COMPLETION_TRANSACTION_ID"
                        ,CAST("SHORTAGE_PROCESS_CODE" AS float) AS "SHORTAGE_PROCESS_CODE"
                        ,CAST("SOURCE_CODE" AS varchar(100) ) AS "SOURCE_CODE"
                        ,CAST("SOURCE_LINE_ID" AS float) AS "SOURCE_LINE_ID"
                        ,CAST("VENDOR_LOT_NUMBER" AS varchar(100) ) AS "VENDOR_LOT_NUMBER"
                        ,CAST("TRANSFER_ORGANIZATION_ID" AS float) AS "TRANSFER_ORGANIZATION_ID"
                        ,CAST("TRANSFER_SUBINVENTORY" AS varchar(100) ) AS "TRANSFER_SUBINVENTORY"
                        ,CAST("TRANSFER_LOCATOR_ID" AS float) AS "TRANSFER_LOCATOR_ID"
                        ,CAST("SHIPMENT_NUMBER" AS varchar(100) ) AS "SHIPMENT_NUMBER"
                        ,CAST("TRANSFER_COST" AS float) AS "TRANSFER_COST"
                        ,CAST("TRANSPORTATION_DIST_ACCOUNT" AS float) AS "TRANSPORTATION_DIST_ACCOUNT"
                        ,CAST("TRANSPORTATION_COST" AS float) AS "TRANSPORTATION_COST"
                        ,CAST("TRANSFER_COST_DIST_ACCOUNT" AS float) AS "TRANSFER_COST_DIST_ACCOUNT"
                        ,CAST("WAYBILL_AIRBILL" AS varchar(100) ) AS "WAYBILL_AIRBILL"
                        ,CAST("FREIGHT_CODE" AS varchar(100) ) AS "FREIGHT_CODE"
                        ,CAST("NUMBER_OF_CONTAINERS" AS float) AS "NUMBER_OF_CONTAINERS"
                        ,CAST("VALUE_CHANGE" AS float) AS "VALUE_CHANGE"
                        ,CAST("PERCENTAGE_CHANGE" AS float) AS "PERCENTAGE_CHANGE"
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
                        ,CAST("MOVEMENT_ID" AS float) AS "MOVEMENT_ID"
                        ,CAST("TASK_ID" AS float) AS "TASK_ID"
                        ,CAST("TO_TASK_ID" AS float) AS "TO_TASK_ID"
                        ,CAST("PROJECT_ID" AS float) AS "PROJECT_ID"
                        ,CAST("TO_PROJECT_ID" AS float) AS "TO_PROJECT_ID"
                        ,CAST("SOURCE_PROJECT_ID" AS float) AS "SOURCE_PROJECT_ID"
                        ,CAST("PA_EXPENDITURE_ORG_ID" AS float) AS "PA_EXPENDITURE_ORG_ID"
                        ,CAST("SOURCE_TASK_ID" AS float) AS "SOURCE_TASK_ID"
                        ,CAST("EXPENDITURE_TYPE" AS varchar(100) ) AS "EXPENDITURE_TYPE"
                        ,CAST("ERROR_CODE" AS varchar(1000) ) AS "ERROR_CODE"
                        ,CAST("ERROR_EXPLANATION" AS varchar(1000) ) AS "ERROR_EXPLANATION"
                        ,CAST("PRIOR_COSTED_QUANTITY" AS float) AS "PRIOR_COSTED_QUANTITY"
                        ,CAST("TRANSFER_PRIOR_COSTED_QUANTITY" AS float) AS "TRANSFER_PRIOR_COSTED_QUANTITY"
                        ,CAST("FINAL_COMPLETION_FLAG" AS varchar(100) ) AS "FINAL_COMPLETION_FLAG"
                        ,CAST("PM_COST_COLLECTED" AS varchar(100) ) AS "PM_COST_COLLECTED"
                        ,CAST("PM_COST_COLLECTOR_GROUP_ID" AS float) AS "PM_COST_COLLECTOR_GROUP_ID"
                        ,CAST("SHIPMENT_COSTED" AS varchar(100) ) AS "SHIPMENT_COSTED"
                        ,CAST("TRANSFER_PERCENTAGE" AS float) AS "TRANSFER_PERCENTAGE"
                        ,CAST("MATERIAL_ACCOUNT" AS float) AS "MATERIAL_ACCOUNT"
                        ,CAST("MATERIAL_OVERHEAD_ACCOUNT" AS float) AS "MATERIAL_OVERHEAD_ACCOUNT"
                        ,CAST("RESOURCE_ACCOUNT" AS float) AS "RESOURCE_ACCOUNT"
                        ,CAST("OUTSIDE_PROCESSING_ACCOUNT" AS float) AS "OUTSIDE_PROCESSING_ACCOUNT"
                        ,CAST("OVERHEAD_ACCOUNT" AS float) AS "OVERHEAD_ACCOUNT"
                        ,CAST("COST_GROUP_ID" AS float) AS "COST_GROUP_ID"
                        ,CAST("TRANSFER_COST_GROUP_ID" AS float) AS "TRANSFER_COST_GROUP_ID"
                        ,CAST("FLOW_SCHEDULE" AS varchar(100) ) AS "FLOW_SCHEDULE"
                        ,CAST("QA_COLLECTION_ID" AS float) AS "QA_COLLECTION_ID"
                        ,CAST("OVERCOMPLETION_TRANSACTION_QTY" AS float) AS "OVERCOMPLETION_TRANSACTION_QTY"
                        ,CAST("OVERCOMPLETION_PRIMARY_QTY" AS float) AS "OVERCOMPLETION_PRIMARY_QTY"
                        ,CAST("OVERCOMPLETION_TRANSACTION_ID" AS float) AS "OVERCOMPLETION_TRANSACTION_ID"
                        ,CAST("MVT_STAT_STATUS" AS varchar(1000) ) AS "MVT_STAT_STATUS"
                        ,CAST("COMMON_BOM_SEQ_ID" AS float) AS "COMMON_BOM_SEQ_ID"
                        ,CAST("COMMON_ROUTING_SEQ_ID" AS float) AS "COMMON_ROUTING_SEQ_ID"
                        ,CAST("ORG_COST_GROUP_ID" AS float) AS "ORG_COST_GROUP_ID"
                        ,CAST("COST_TYPE_ID" AS float) AS "COST_TYPE_ID"
                        ,CAST("PERIODIC_PRIMARY_QUANTITY" AS float) AS "PERIODIC_PRIMARY_QUANTITY"
                        ,CAST("MOVE_ORDER_LINE_ID" AS float) AS "MOVE_ORDER_LINE_ID"
                        ,CAST("TASK_GROUP_ID" AS float) AS "TASK_GROUP_ID"
                        ,CAST("PICK_SLIP_NUMBER" AS float) AS "PICK_SLIP_NUMBER"
                        ,CAST("LPN_ID" AS float) AS "LPN_ID"
                        ,CAST("TRANSFER_LPN_ID" AS float) AS "TRANSFER_LPN_ID"
                        ,CAST("PICK_STRATEGY_ID" AS float) AS "PICK_STRATEGY_ID"
                        ,CAST("PICK_RULE_ID" AS float) AS "PICK_RULE_ID"
                        ,CAST("PUT_AWAY_STRATEGY_ID" AS float) AS "PUT_AWAY_STRATEGY_ID"
                        ,CAST("PUT_AWAY_RULE_ID" AS float) AS "PUT_AWAY_RULE_ID"
                        ,CAST("CONTENT_LPN_ID" AS float) AS "CONTENT_LPN_ID"
                        ,TRY_CONVERT(datetime2,"PICK_SLIP_DATE",121) AS "PICK_SLIP_DATE"
                        ,CAST("COST_CATEGORY_ID" AS float) AS "COST_CATEGORY_ID"
                        ,CAST("ORGANIZATION_TYPE" AS float) AS "ORGANIZATION_TYPE"
                        ,CAST("TRANSFER_ORGANIZATION_TYPE" AS float) AS "TRANSFER_ORGANIZATION_TYPE"
                        ,CAST("OWNING_ORGANIZATION_ID" AS float) AS "OWNING_ORGANIZATION_ID"
                        ,CAST("OWNING_TP_TYPE" AS float) AS "OWNING_TP_TYPE"
                        ,CAST("XFR_OWNING_ORGANIZATION_ID" AS float) AS "XFR_OWNING_ORGANIZATION_ID"
                        ,CAST("TRANSFER_OWNING_TP_TYPE" AS float) AS "TRANSFER_OWNING_TP_TYPE"
                        ,CAST("PLANNING_ORGANIZATION_ID" AS float) AS "PLANNING_ORGANIZATION_ID"
                        ,CAST("PLANNING_TP_TYPE" AS float) AS "PLANNING_TP_TYPE"
                        ,CAST("XFR_PLANNING_ORGANIZATION_ID" AS float) AS "XFR_PLANNING_ORGANIZATION_ID"
                        ,CAST("TRANSFER_PLANNING_TP_TYPE" AS float) AS "TRANSFER_PLANNING_TP_TYPE"
                        ,CAST("SECONDARY_UOM_CODE" AS varchar(100) ) AS "SECONDARY_UOM_CODE"
                        ,CAST("SECONDARY_TRANSACTION_QUANTITY" AS float) AS "SECONDARY_TRANSACTION_QUANTITY"
                        ,CAST("TRANSACTION_GROUP_SEQ" AS float) AS "TRANSACTION_GROUP_SEQ"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("RESERVATION_ID" AS float) AS "RESERVATION_ID"
                        ,CAST("TRANSACTION_MODE" AS float) AS "TRANSACTION_MODE"
                        ,CAST("TRANSACTION_BATCH_ID" AS float) AS "TRANSACTION_BATCH_ID"
                        ,CAST("TRANSACTION_BATCH_SEQ" AS float) AS "TRANSACTION_BATCH_SEQ"
                        ,CAST("INTRANSIT_ACCOUNT" AS float) AS "INTRANSIT_ACCOUNT"
                        ,CAST("FOB_POINT" AS float) AS "FOB_POINT"
                        ,CAST("PARENT_TRANSACTION_ID" AS float) AS "PARENT_TRANSACTION_ID"
                        ,CAST("LOGICAL_TRX_TYPE_CODE" AS float) AS "LOGICAL_TRX_TYPE_CODE"
                        ,CAST("TRX_FLOW_HEADER_ID" AS float) AS "TRX_FLOW_HEADER_ID"
                        ,CAST("LOGICAL_TRANSACTIONS_CREATED" AS float) AS "LOGICAL_TRANSACTIONS_CREATED"
                        ,CAST("LOGICAL_TRANSACTION" AS float) AS "LOGICAL_TRANSACTION"
                        ,CAST("INTERCOMPANY_COST" AS float) AS "INTERCOMPANY_COST"
                        ,CAST("INTERCOMPANY_PRICING_OPTION" AS float) AS "INTERCOMPANY_PRICING_OPTION"
                        ,CAST("INTERCOMPANY_CURRENCY_CODE" AS varchar(100) ) AS "INTERCOMPANY_CURRENCY_CODE"
                        ,CAST("ORIGINAL_TRANSACTION_TEMP_ID" AS float) AS "ORIGINAL_TRANSACTION_TEMP_ID"
                        ,CAST("TRANSFER_PRICE" AS float) AS "TRANSFER_PRICE"
                        ,CAST("EXPENSE_ACCOUNT_ID" AS float) AS "EXPENSE_ACCOUNT_ID"
                        ,CAST("COGS_RECOGNITION_PERCENT" AS float) AS "COGS_RECOGNITION_PERCENT"
                        ,CAST("SO_ISSUE_ACCOUNT_TYPE" AS float) AS "SO_ISSUE_ACCOUNT_TYPE"
                        ,CAST("OPM_COSTED_FLAG" AS varchar(100) ) AS "OPM_COSTED_FLAG"
                        ,CAST("MATERIAL_EXPENSE_ACCOUNT" AS float) AS "MATERIAL_EXPENSE_ACCOUNT"
                        ,CAST("TRANSACTION_EXTRACTED" AS varchar(100) ) AS "TRANSACTION_EXTRACTED"
                        ,CAST("XML_DOCUMENT_ID" AS float) AS "XML_DOCUMENT_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "TRANSACTION_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "INVENTORY_ITEM_ID"
                            , "REVISION"
                            , "ORGANIZATION_ID"
                            , "SUBINVENTORY_CODE"
                            , "LOCATOR_ID"
                            , "TRANSACTION_TYPE_ID"
                            , "TRANSACTION_ACTION_ID"
                            , "TRANSACTION_SOURCE_TYPE_ID"
                            , "TRANSACTION_SOURCE_ID"
                            , "TRANSACTION_SOURCE_NAME"
                            , "TRANSACTION_QUANTITY"
                            , "TRANSACTION_UOM"
                            , "PRIMARY_QUANTITY"
                            , "TRANSACTION_DATE"
                            , "VARIANCE_AMOUNT"
                            , "ACCT_PERIOD_ID"
                            , "TRANSACTION_REFERENCE"
                            , "REASON_ID"
                            , "DISTRIBUTION_ACCOUNT_ID"
                            , "ENCUMBRANCE_ACCOUNT"
                            , "ENCUMBRANCE_AMOUNT"
                            , "COST_UPDATE_ID"
                            , "COSTED_FLAG"
                            , "TRANSACTION_GROUP_ID"
                            , "INVOICED_FLAG"
                            , "ACTUAL_COST"
                            , "TRANSACTION_COST"
                            , "PRIOR_COST"
                            , "NEW_COST"
                            , "CURRENCY_CODE"
                            , "CURRENCY_CONVERSION_RATE"
                            , "CURRENCY_CONVERSION_TYPE"
                            , "CURRENCY_CONVERSION_DATE"
                            , "USSGL_TRANSACTION_CODE"
                            , "QUANTITY_ADJUSTED"
                            , "EMPLOYEE_CODE"
                            , "DEPARTMENT_ID"
                            , "OPERATION_SEQ_NUM"
                            , "MASTER_SCHEDULE_UPDATE_CODE"
                            , "RECEIVING_DOCUMENT"
                            , "PICKING_LINE_ID"
                            , "TRX_SOURCE_LINE_ID"
                            , "TRX_SOURCE_DELIVERY_ID"
                            , "REPETITIVE_LINE_ID"
                            , "PHYSICAL_ADJUSTMENT_ID"
                            , "CYCLE_COUNT_ID"
                            , "RMA_LINE_ID"
                            , "TRANSFER_TRANSACTION_ID"
                            , "TRANSACTION_SET_ID"
                            , "RCV_TRANSACTION_ID"
                            , "MOVE_TRANSACTION_ID"
                            , "COMPLETION_TRANSACTION_ID"
                            , "SHORTAGE_PROCESS_CODE"
                            , "SOURCE_CODE"
                            , "SOURCE_LINE_ID"
                            , "VENDOR_LOT_NUMBER"
                            , "TRANSFER_ORGANIZATION_ID"
                            , "TRANSFER_SUBINVENTORY"
                            , "TRANSFER_LOCATOR_ID"
                            , "SHIPMENT_NUMBER"
                            , "TRANSFER_COST"
                            , "TRANSPORTATION_DIST_ACCOUNT"
                            , "TRANSPORTATION_COST"
                            , "TRANSFER_COST_DIST_ACCOUNT"
                            , "WAYBILL_AIRBILL"
                            , "FREIGHT_CODE"
                            , "NUMBER_OF_CONTAINERS"
                            , "VALUE_CHANGE"
                            , "PERCENTAGE_CHANGE"
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
                            , "MOVEMENT_ID"
                            , "TASK_ID"
                            , "TO_TASK_ID"
                            , "PROJECT_ID"
                            , "TO_PROJECT_ID"
                            , "SOURCE_PROJECT_ID"
                            , "PA_EXPENDITURE_ORG_ID"
                            , "SOURCE_TASK_ID"
                            , "EXPENDITURE_TYPE"
                            , "ERROR_CODE"
                            , "ERROR_EXPLANATION"
                            , "PRIOR_COSTED_QUANTITY"
                            , "TRANSFER_PRIOR_COSTED_QUANTITY"
                            , "FINAL_COMPLETION_FLAG"
                            , "PM_COST_COLLECTED"
                            , "PM_COST_COLLECTOR_GROUP_ID"
                            , "SHIPMENT_COSTED"
                            , "TRANSFER_PERCENTAGE"
                            , "MATERIAL_ACCOUNT"
                            , "MATERIAL_OVERHEAD_ACCOUNT"
                            , "RESOURCE_ACCOUNT"
                            , "OUTSIDE_PROCESSING_ACCOUNT"
                            , "OVERHEAD_ACCOUNT"
                            , "COST_GROUP_ID"
                            , "TRANSFER_COST_GROUP_ID"
                            , "FLOW_SCHEDULE"
                            , "QA_COLLECTION_ID"
                            , "OVERCOMPLETION_TRANSACTION_QTY"
                            , "OVERCOMPLETION_PRIMARY_QTY"
                            , "OVERCOMPLETION_TRANSACTION_ID"
                            , "MVT_STAT_STATUS"
                            , "COMMON_BOM_SEQ_ID"
                            , "COMMON_ROUTING_SEQ_ID"
                            , "ORG_COST_GROUP_ID"
                            , "COST_TYPE_ID"
                            , "PERIODIC_PRIMARY_QUANTITY"
                            , "MOVE_ORDER_LINE_ID"
                            , "TASK_GROUP_ID"
                            , "PICK_SLIP_NUMBER"
                            , "LPN_ID"
                            , "TRANSFER_LPN_ID"
                            , "PICK_STRATEGY_ID"
                            , "PICK_RULE_ID"
                            , "PUT_AWAY_STRATEGY_ID"
                            , "PUT_AWAY_RULE_ID"
                            , "CONTENT_LPN_ID"
                            , "PICK_SLIP_DATE"
                            , "COST_CATEGORY_ID"
                            , "ORGANIZATION_TYPE"
                            , "TRANSFER_ORGANIZATION_TYPE"
                            , "OWNING_ORGANIZATION_ID"
                            , "OWNING_TP_TYPE"
                            , "XFR_OWNING_ORGANIZATION_ID"
                            , "TRANSFER_OWNING_TP_TYPE"
                            , "PLANNING_ORGANIZATION_ID"
                            , "PLANNING_TP_TYPE"
                            , "XFR_PLANNING_ORGANIZATION_ID"
                            , "TRANSFER_PLANNING_TP_TYPE"
                            , "SECONDARY_UOM_CODE"
                            , "SECONDARY_TRANSACTION_QUANTITY"
                            , "TRANSACTION_GROUP_SEQ"
                            , "SHIP_TO_LOCATION_ID"
                            , "RESERVATION_ID"
                            , "TRANSACTION_MODE"
                            , "TRANSACTION_BATCH_ID"
                            , "TRANSACTION_BATCH_SEQ"
                            , "INTRANSIT_ACCOUNT"
                            , "FOB_POINT"
                            , "PARENT_TRANSACTION_ID"
                            , "LOGICAL_TRX_TYPE_CODE"
                            , "TRX_FLOW_HEADER_ID"
                            , "LOGICAL_TRANSACTIONS_CREATED"
                            , "LOGICAL_TRANSACTION"
                            , "INTERCOMPANY_COST"
                            , "INTERCOMPANY_PRICING_OPTION"
                            , "INTERCOMPANY_CURRENCY_CODE"
                            , "ORIGINAL_TRANSACTION_TEMP_ID"
                            , "TRANSFER_PRICE"
                            , "EXPENSE_ACCOUNT_ID"
                            , "COGS_RECOGNITION_PERCENT"
                            , "SO_ISSUE_ACCOUNT_TYPE"
                            , "OPM_COSTED_FLAG"
                            , "MATERIAL_EXPENSE_ACCOUNT"
                            , "TRANSACTION_EXTRACTED"
                            , "XML_DOCUMENT_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_MTL_MATERIAL_TRANSACTIONS"
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
