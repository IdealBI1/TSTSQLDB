﻿

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_MTL_SYSTEM_ITEMS_B]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:47 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_SYSTEM_ITEMS_B";
    
    Source                                Destination                          
    ----------------------------------    ----------------------------------- 
    STG"."STG_EBS_MTL_SYSTEM_ITEMS_B"    "HSTG"."HSTG_EBS_MTL_SYSTEM_ITEMS_B" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_SYSTEM_ITEMS_B"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_SYSTEM_ITEMS_B"
                (
                    "INVENTORY_ITEM_ID"
                    ,"ORGANIZATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"DESCRIPTION"
                    ,"BUYER_ID"
                    ,"ACCOUNTING_RULE_ID"
                    ,"INVOICING_RULE_ID"
                    ,"SEGMENT1"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"SEGMENT6"
                    ,"SEGMENT7"
                    ,"SEGMENT8"
                    ,"SEGMENT9"
                    ,"SEGMENT10"
                    ,"SEGMENT11"
                    ,"SEGMENT12"
                    ,"SEGMENT13"
                    ,"SEGMENT14"
                    ,"SEGMENT15"
                    ,"SEGMENT16"
                    ,"SEGMENT17"
                    ,"SEGMENT18"
                    ,"SEGMENT19"
                    ,"SEGMENT20"
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
                    ,"PURCHASING_ITEM_FLAG"
                    ,"SHIPPABLE_ITEM_FLAG"
                    ,"CUSTOMER_ORDER_FLAG"
                    ,"INTERNAL_ORDER_FLAG"
                    ,"SERVICE_ITEM_FLAG"
                    ,"INVENTORY_ITEM_FLAG"
                    ,"ENG_ITEM_FLAG"
                    ,"INVENTORY_ASSET_FLAG"
                    ,"PURCHASING_ENABLED_FLAG"
                    ,"CUSTOMER_ORDER_ENABLED_FLAG"
                    ,"INTERNAL_ORDER_ENABLED_FLAG"
                    ,"SO_TRANSACTIONS_FLAG"
                    ,"MTL_TRANSACTIONS_ENABLED_FLAG"
                    ,"STOCK_ENABLED_FLAG"
                    ,"BOM_ENABLED_FLAG"
                    ,"BUILD_IN_WIP_FLAG"
                    ,"REVISION_QTY_CONTROL_CODE"
                    ,"ITEM_CATALOG_GROUP_ID"
                    ,"CATALOG_STATUS_FLAG"
                    ,"RETURNABLE_FLAG"
                    ,"DEFAULT_SHIPPING_ORG"
                    ,"COLLATERAL_FLAG"
                    ,"TAXABLE_FLAG"
                    ,"QTY_RCV_EXCEPTION_CODE"
                    ,"ALLOW_ITEM_DESC_UPDATE_FLAG"
                    ,"INSPECTION_REQUIRED_FLAG"
                    ,"RECEIPT_REQUIRED_FLAG"
                    ,"MARKET_PRICE"
                    ,"HAZARD_CLASS_ID"
                    ,"RFQ_REQUIRED_FLAG"
                    ,"QTY_RCV_TOLERANCE"
                    ,"LIST_PRICE_PER_UNIT"
                    ,"UN_NUMBER_ID"
                    ,"PRICE_TOLERANCE_PERCENT"
                    ,"ASSET_CATEGORY_ID"
                    ,"ROUNDING_FACTOR"
                    ,"UNIT_OF_ISSUE"
                    ,"ENFORCE_SHIP_TO_LOCATION_CODE"
                    ,"ALLOW_SUBSTITUTE_RECEIPTS_FLAG"
                    ,"ALLOW_UNORDERED_RECEIPTS_FLAG"
                    ,"ALLOW_EXPRESS_DELIVERY_FLAG"
                    ,"DAYS_EARLY_RECEIPT_ALLOWED"
                    ,"DAYS_LATE_RECEIPT_ALLOWED"
                    ,"RECEIPT_DAYS_EXCEPTION_CODE"
                    ,"RECEIVING_ROUTING_ID"
                    ,"INVOICE_CLOSE_TOLERANCE"
                    ,"RECEIVE_CLOSE_TOLERANCE"
                    ,"AUTO_LOT_ALPHA_PREFIX"
                    ,"START_AUTO_LOT_NUMBER"
                    ,"LOT_CONTROL_CODE"
                    ,"SHELF_LIFE_CODE"
                    ,"SHELF_LIFE_DAYS"
                    ,"SERIAL_NUMBER_CONTROL_CODE"
                    ,"START_AUTO_SERIAL_NUMBER"
                    ,"AUTO_SERIAL_ALPHA_PREFIX"
                    ,"SOURCE_TYPE"
                    ,"SOURCE_ORGANIZATION_ID"
                    ,"SOURCE_SUBINVENTORY"
                    ,"EXPENSE_ACCOUNT"
                    ,"ENCUMBRANCE_ACCOUNT"
                    ,"RESTRICT_SUBINVENTORIES_CODE"
                    ,"UNIT_WEIGHT"
                    ,"WEIGHT_UOM_CODE"
                    ,"VOLUME_UOM_CODE"
                    ,"UNIT_VOLUME"
                    ,"RESTRICT_LOCATORS_CODE"
                    ,"LOCATION_CONTROL_CODE"
                    ,"SHRINKAGE_RATE"
                    ,"ACCEPTABLE_EARLY_DAYS"
                    ,"PLANNING_TIME_FENCE_CODE"
                    ,"DEMAND_TIME_FENCE_CODE"
                    ,"LEAD_TIME_LOT_SIZE"
                    ,"STD_LOT_SIZE"
                    ,"CUM_MANUFACTURING_LEAD_TIME"
                    ,"OVERRUN_PERCENTAGE"
                    ,"MRP_CALCULATE_ATP_FLAG"
                    ,"ACCEPTABLE_RATE_INCREASE"
                    ,"ACCEPTABLE_RATE_DECREASE"
                    ,"CUMULATIVE_TOTAL_LEAD_TIME"
                    ,"PLANNING_TIME_FENCE_DAYS"
                    ,"DEMAND_TIME_FENCE_DAYS"
                    ,"END_ASSEMBLY_PEGGING_FLAG"
                    ,"REPETITIVE_PLANNING_FLAG"
                    ,"PLANNING_EXCEPTION_SET"
                    ,"BOM_ITEM_TYPE"
                    ,"PICK_COMPONENTS_FLAG"
                    ,"REPLENISH_TO_ORDER_FLAG"
                    ,"BASE_ITEM_ID"
                    ,"ATP_COMPONENTS_FLAG"
                    ,"ATP_FLAG"
                    ,"FIXED_LEAD_TIME"
                    ,"VARIABLE_LEAD_TIME"
                    ,"WIP_SUPPLY_LOCATOR_ID"
                    ,"WIP_SUPPLY_TYPE"
                    ,"WIP_SUPPLY_SUBINVENTORY"
                    ,"PRIMARY_UOM_CODE"
                    ,"PRIMARY_UNIT_OF_MEASURE"
                    ,"ALLOWED_UNITS_LOOKUP_CODE"
                    ,"COST_OF_SALES_ACCOUNT"
                    ,"SALES_ACCOUNT"
                    ,"DEFAULT_INCLUDE_IN_ROLLUP_FLAG"
                    ,"INVENTORY_ITEM_STATUS_CODE"
                    ,"INVENTORY_PLANNING_CODE"
                    ,"PLANNER_CODE"
                    ,"PLANNING_MAKE_BUY_CODE"
                    ,"FIXED_LOT_MULTIPLIER"
                    ,"ROUNDING_CONTROL_TYPE"
                    ,"CARRYING_COST"
                    ,"POSTPROCESSING_LEAD_TIME"
                    ,"PREPROCESSING_LEAD_TIME"
                    ,"FULL_LEAD_TIME"
                    ,"ORDER_COST"
                    ,"MRP_SAFETY_STOCK_PERCENT"
                    ,"MRP_SAFETY_STOCK_CODE"
                    ,"MIN_MINMAX_QUANTITY"
                    ,"MAX_MINMAX_QUANTITY"
                    ,"MINIMUM_ORDER_QUANTITY"
                    ,"FIXED_ORDER_QUANTITY"
                    ,"FIXED_DAYS_SUPPLY"
                    ,"MAXIMUM_ORDER_QUANTITY"
                    ,"ATP_RULE_ID"
                    ,"PICKING_RULE_ID"
                    ,"RESERVABLE_TYPE"
                    ,"POSITIVE_MEASUREMENT_ERROR"
                    ,"NEGATIVE_MEASUREMENT_ERROR"
                    ,"ENGINEERING_ECN_CODE"
                    ,"ENGINEERING_ITEM_ID"
                    ,"ENGINEERING_DATE"
                    ,"SERVICE_STARTING_DELAY"
                    ,"VENDOR_WARRANTY_FLAG"
                    ,"SERVICEABLE_COMPONENT_FLAG"
                    ,"SERVICEABLE_PRODUCT_FLAG"
                    ,"BASE_WARRANTY_SERVICE_ID"
                    ,"PAYMENT_TERMS_ID"
                    ,"PREVENTIVE_MAINTENANCE_FLAG"
                    ,"PRIMARY_SPECIALIST_ID"
                    ,"SECONDARY_SPECIALIST_ID"
                    ,"SERVICEABLE_ITEM_CLASS_ID"
                    ,"TIME_BILLABLE_FLAG"
                    ,"MATERIAL_BILLABLE_FLAG"
                    ,"EXPENSE_BILLABLE_FLAG"
                    ,"PRORATE_SERVICE_FLAG"
                    ,"COVERAGE_SCHEDULE_ID"
                    ,"SERVICE_DURATION_PERIOD_CODE"
                    ,"SERVICE_DURATION"
                    ,"WARRANTY_VENDOR_ID"
                    ,"MAX_WARRANTY_AMOUNT"
                    ,"RESPONSE_TIME_PERIOD_CODE"
                    ,"RESPONSE_TIME_VALUE"
                    ,"NEW_REVISION_CODE"
                    ,"INVOICEABLE_ITEM_FLAG"
                    ,"TAX_CODE"
                    ,"INVOICE_ENABLED_FLAG"
                    ,"MUST_USE_APPROVED_VENDOR_FLAG"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"OUTSIDE_OPERATION_FLAG"
                    ,"OUTSIDE_OPERATION_UOM_TYPE"
                    ,"SAFETY_STOCK_BUCKET_DAYS"
                    ,"AUTO_REDUCE_MPS"
                    ,"COSTING_ENABLED_FLAG"
                    ,"AUTO_CREATED_CONFIG_FLAG"
                    ,"CYCLE_COUNT_ENABLED_FLAG"
                    ,"ITEM_TYPE"
                    ,"MODEL_CONFIG_CLAUSE_NAME"
                    ,"SHIP_MODEL_COMPLETE_FLAG"
                    ,"MRP_PLANNING_CODE"
                    ,"RETURN_INSPECTION_REQUIREMENT"
                    ,"ATO_FORECAST_CONTROL"
                    ,"RELEASE_TIME_FENCE_CODE"
                    ,"RELEASE_TIME_FENCE_DAYS"
                    ,"CONTAINER_ITEM_FLAG"
                    ,"VEHICLE_ITEM_FLAG"
                    ,"MAXIMUM_LOAD_WEIGHT"
                    ,"MINIMUM_FILL_PERCENT"
                    ,"CONTAINER_TYPE_CODE"
                    ,"INTERNAL_VOLUME"
                    ,"WH_UPDATE_DATE"
                    ,"PRODUCT_FAMILY_ITEM_ID"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"PURCHASING_TAX_CODE"
                    ,"OVERCOMPLETION_TOLERANCE_TYPE"
                    ,"OVERCOMPLETION_TOLERANCE_VALUE"
                    ,"EFFECTIVITY_CONTROL"
                    ,"CHECK_SHORTAGES_FLAG"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"EQUIPMENT_TYPE"
                    ,"RECOVERED_PART_DISP_CODE"
                    ,"DEFECT_TRACKING_ON_FLAG"
                    ,"USAGE_ITEM_FLAG"
                    ,"EVENT_FLAG"
                    ,"ELECTRONIC_FLAG"
                    ,"DOWNLOADABLE_FLAG"
                    ,"VOL_DISCOUNT_EXEMPT_FLAG"
                    ,"COUPON_EXEMPT_FLAG"
                    ,"COMMS_NL_TRACKABLE_FLAG"
                    ,"ASSET_CREATION_CODE"
                    ,"COMMS_ACTIVATION_REQD_FLAG"
                    ,"ORDERABLE_ON_WEB_FLAG"
                    ,"BACK_ORDERABLE_FLAG"
                    ,"WEB_STATUS"
                    ,"INDIVISIBLE_FLAG"
                    ,"DIMENSION_UOM_CODE"
                    ,"UNIT_LENGTH"
                    ,"UNIT_WIDTH"
                    ,"UNIT_HEIGHT"
                    ,"BULK_PICKED_FLAG"
                    ,"LOT_STATUS_ENABLED"
                    ,"DEFAULT_LOT_STATUS_ID"
                    ,"SERIAL_STATUS_ENABLED"
                    ,"DEFAULT_SERIAL_STATUS_ID"
                    ,"LOT_SPLIT_ENABLED"
                    ,"LOT_MERGE_ENABLED"
                    ,"INVENTORY_CARRY_PENALTY"
                    ,"OPERATION_SLACK_PENALTY"
                    ,"FINANCING_ALLOWED_FLAG"
                    ,"EAM_ITEM_TYPE"
                    ,"EAM_ACTIVITY_TYPE_CODE"
                    ,"EAM_ACTIVITY_CAUSE_CODE"
                    ,"EAM_ACT_NOTIFICATION_FLAG"
                    ,"EAM_ACT_SHUTDOWN_STATUS"
                    ,"DUAL_UOM_CONTROL"
                    ,"SECONDARY_UOM_CODE"
                    ,"DUAL_UOM_DEVIATION_HIGH"
                    ,"DUAL_UOM_DEVIATION_LOW"
                    ,"CONTRACT_ITEM_TYPE_CODE"
                    ,"SUBSCRIPTION_DEPEND_FLAG"
                    ,"SERV_REQ_ENABLED_CODE"
                    ,"SERV_BILLING_ENABLED_FLAG"
                    ,"SERV_IMPORTANCE_LEVEL"
                    ,"PLANNED_INV_POINT_FLAG"
                    ,"LOT_TRANSLATE_ENABLED"
                    ,"DEFAULT_SO_SOURCE_TYPE"
                    ,"CREATE_SUPPLY_FLAG"
                    ,"SUBSTITUTION_WINDOW_CODE"
                    ,"SUBSTITUTION_WINDOW_DAYS"
                    ,"IB_ITEM_INSTANCE_CLASS"
                    ,"CONFIG_MODEL_TYPE"
                    ,"LOT_SUBSTITUTION_ENABLED"
                    ,"MINIMUM_LICENSE_QUANTITY"
                    ,"EAM_ACTIVITY_SOURCE_CODE"
                    ,"LIFECYCLE_ID"
                    ,"CURRENT_PHASE_ID"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"TRACKING_QUANTITY_IND"
                    ,"ONT_PRICING_QTY_SOURCE"
                    ,"SECONDARY_DEFAULT_IND"
                    ,"OPTION_SPECIFIC_SOURCED"
                    ,"APPROVAL_STATUS"
                    ,"VMI_MINIMUM_UNITS"
                    ,"VMI_MINIMUM_DAYS"
                    ,"VMI_MAXIMUM_UNITS"
                    ,"VMI_MAXIMUM_DAYS"
                    ,"VMI_FIXED_ORDER_QUANTITY"
                    ,"SO_AUTHORIZATION_FLAG"
                    ,"CONSIGNED_FLAG"
                    ,"ASN_AUTOEXPIRE_FLAG"
                    ,"VMI_FORECAST_TYPE"
                    ,"FORECAST_HORIZON"
                    ,"EXCLUDE_FROM_BUDGET_FLAG"
                    ,"DAYS_TGT_INV_SUPPLY"
                    ,"DAYS_TGT_INV_WINDOW"
                    ,"DAYS_MAX_INV_SUPPLY"
                    ,"DAYS_MAX_INV_WINDOW"
                    ,"DRP_PLANNED_FLAG"
                    ,"CRITICAL_COMPONENT_FLAG"
                    ,"CONTINOUS_TRANSFER"
                    ,"CONVERGENCE"
                    ,"DIVERGENCE"
                    ,"CONFIG_ORGS"
                    ,"CONFIG_MATCH"
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"CAS_NUMBER"
                    ,"CHILD_LOT_FLAG"
                    ,"CHILD_LOT_PREFIX"
                    ,"CHILD_LOT_STARTING_NUMBER"
                    ,"CHILD_LOT_VALIDATION_FLAG"
                    ,"COPY_LOT_ATTRIBUTE_FLAG"
                    ,"DEFAULT_GRADE"
                    ,"EXPIRATION_ACTION_CODE"
                    ,"EXPIRATION_ACTION_INTERVAL"
                    ,"GRADE_CONTROL_FLAG"
                    ,"HAZARDOUS_MATERIAL_FLAG"
                    ,"HOLD_DAYS"
                    ,"LOT_DIVISIBLE_FLAG"
                    ,"MATURITY_DAYS"
                    ,"PARENT_CHILD_GENERATION_FLAG"
                    ,"PROCESS_COSTING_ENABLED_FLAG"
                    ,"PROCESS_EXECUTION_ENABLED_FLAG"
                    ,"PROCESS_QUALITY_ENABLED_FLAG"
                    ,"PROCESS_SUPPLY_LOCATOR_ID"
                    ,"PROCESS_SUPPLY_SUBINVENTORY"
                    ,"PROCESS_YIELD_LOCATOR_ID"
                    ,"PROCESS_YIELD_SUBINVENTORY"
                    ,"RECIPE_ENABLED_FLAG"
                    ,"RETEST_INTERVAL"
                    ,"CHARGE_PERIODICITY_CODE"
                    ,"REPAIR_LEADTIME"
                    ,"REPAIR_YIELD"
                    ,"PREPOSITION_POINT"
                    ,"REPAIR_PROGRAM"
                    ,"SUBCONTRACTING_COMPONENT"
                    ,"OUTSOURCED_ASSEMBLY"
                    ,"EGO_MASTER_ITEMS_DFF_CTX"
                    ,"GDSN_OUTBOUND_ENABLED_FLAG"
                    ,"TRADE_ITEM_DESCRIPTOR"
                    ,"STYLE_ITEM_ID"
                    ,"STYLE_ITEM_FLAG"
                    ,"LAST_SUBMITTED_NIR_ID"
                    ,"DEFAULT_MATERIAL_STATUS_ID"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"SERIAL_TAGGING_FLAG"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "INVENTORY_ITEM_ID"
                    ,"ORGANIZATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"DESCRIPTION"
                    ,"BUYER_ID"
                    ,"ACCOUNTING_RULE_ID"
                    ,"INVOICING_RULE_ID"
                    ,"SEGMENT1"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"SEGMENT6"
                    ,"SEGMENT7"
                    ,"SEGMENT8"
                    ,"SEGMENT9"
                    ,"SEGMENT10"
                    ,"SEGMENT11"
                    ,"SEGMENT12"
                    ,"SEGMENT13"
                    ,"SEGMENT14"
                    ,"SEGMENT15"
                    ,"SEGMENT16"
                    ,"SEGMENT17"
                    ,"SEGMENT18"
                    ,"SEGMENT19"
                    ,"SEGMENT20"
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
                    ,"PURCHASING_ITEM_FLAG"
                    ,"SHIPPABLE_ITEM_FLAG"
                    ,"CUSTOMER_ORDER_FLAG"
                    ,"INTERNAL_ORDER_FLAG"
                    ,"SERVICE_ITEM_FLAG"
                    ,"INVENTORY_ITEM_FLAG"
                    ,"ENG_ITEM_FLAG"
                    ,"INVENTORY_ASSET_FLAG"
                    ,"PURCHASING_ENABLED_FLAG"
                    ,"CUSTOMER_ORDER_ENABLED_FLAG"
                    ,"INTERNAL_ORDER_ENABLED_FLAG"
                    ,"SO_TRANSACTIONS_FLAG"
                    ,"MTL_TRANSACTIONS_ENABLED_FLAG"
                    ,"STOCK_ENABLED_FLAG"
                    ,"BOM_ENABLED_FLAG"
                    ,"BUILD_IN_WIP_FLAG"
                    ,"REVISION_QTY_CONTROL_CODE"
                    ,"ITEM_CATALOG_GROUP_ID"
                    ,"CATALOG_STATUS_FLAG"
                    ,"RETURNABLE_FLAG"
                    ,"DEFAULT_SHIPPING_ORG"
                    ,"COLLATERAL_FLAG"
                    ,"TAXABLE_FLAG"
                    ,"QTY_RCV_EXCEPTION_CODE"
                    ,"ALLOW_ITEM_DESC_UPDATE_FLAG"
                    ,"INSPECTION_REQUIRED_FLAG"
                    ,"RECEIPT_REQUIRED_FLAG"
                    ,"MARKET_PRICE"
                    ,"HAZARD_CLASS_ID"
                    ,"RFQ_REQUIRED_FLAG"
                    ,"QTY_RCV_TOLERANCE"
                    ,"LIST_PRICE_PER_UNIT"
                    ,"UN_NUMBER_ID"
                    ,"PRICE_TOLERANCE_PERCENT"
                    ,"ASSET_CATEGORY_ID"
                    ,"ROUNDING_FACTOR"
                    ,"UNIT_OF_ISSUE"
                    ,"ENFORCE_SHIP_TO_LOCATION_CODE"
                    ,"ALLOW_SUBSTITUTE_RECEIPTS_FLAG"
                    ,"ALLOW_UNORDERED_RECEIPTS_FLAG"
                    ,"ALLOW_EXPRESS_DELIVERY_FLAG"
                    ,"DAYS_EARLY_RECEIPT_ALLOWED"
                    ,"DAYS_LATE_RECEIPT_ALLOWED"
                    ,"RECEIPT_DAYS_EXCEPTION_CODE"
                    ,"RECEIVING_ROUTING_ID"
                    ,"INVOICE_CLOSE_TOLERANCE"
                    ,"RECEIVE_CLOSE_TOLERANCE"
                    ,"AUTO_LOT_ALPHA_PREFIX"
                    ,"START_AUTO_LOT_NUMBER"
                    ,"LOT_CONTROL_CODE"
                    ,"SHELF_LIFE_CODE"
                    ,"SHELF_LIFE_DAYS"
                    ,"SERIAL_NUMBER_CONTROL_CODE"
                    ,"START_AUTO_SERIAL_NUMBER"
                    ,"AUTO_SERIAL_ALPHA_PREFIX"
                    ,"SOURCE_TYPE"
                    ,"SOURCE_ORGANIZATION_ID"
                    ,"SOURCE_SUBINVENTORY"
                    ,"EXPENSE_ACCOUNT"
                    ,"ENCUMBRANCE_ACCOUNT"
                    ,"RESTRICT_SUBINVENTORIES_CODE"
                    ,"UNIT_WEIGHT"
                    ,"WEIGHT_UOM_CODE"
                    ,"VOLUME_UOM_CODE"
                    ,"UNIT_VOLUME"
                    ,"RESTRICT_LOCATORS_CODE"
                    ,"LOCATION_CONTROL_CODE"
                    ,"SHRINKAGE_RATE"
                    ,"ACCEPTABLE_EARLY_DAYS"
                    ,"PLANNING_TIME_FENCE_CODE"
                    ,"DEMAND_TIME_FENCE_CODE"
                    ,"LEAD_TIME_LOT_SIZE"
                    ,"STD_LOT_SIZE"
                    ,"CUM_MANUFACTURING_LEAD_TIME"
                    ,"OVERRUN_PERCENTAGE"
                    ,"MRP_CALCULATE_ATP_FLAG"
                    ,"ACCEPTABLE_RATE_INCREASE"
                    ,"ACCEPTABLE_RATE_DECREASE"
                    ,"CUMULATIVE_TOTAL_LEAD_TIME"
                    ,"PLANNING_TIME_FENCE_DAYS"
                    ,"DEMAND_TIME_FENCE_DAYS"
                    ,"END_ASSEMBLY_PEGGING_FLAG"
                    ,"REPETITIVE_PLANNING_FLAG"
                    ,"PLANNING_EXCEPTION_SET"
                    ,"BOM_ITEM_TYPE"
                    ,"PICK_COMPONENTS_FLAG"
                    ,"REPLENISH_TO_ORDER_FLAG"
                    ,"BASE_ITEM_ID"
                    ,"ATP_COMPONENTS_FLAG"
                    ,"ATP_FLAG"
                    ,"FIXED_LEAD_TIME"
                    ,"VARIABLE_LEAD_TIME"
                    ,"WIP_SUPPLY_LOCATOR_ID"
                    ,"WIP_SUPPLY_TYPE"
                    ,"WIP_SUPPLY_SUBINVENTORY"
                    ,"PRIMARY_UOM_CODE"
                    ,"PRIMARY_UNIT_OF_MEASURE"
                    ,"ALLOWED_UNITS_LOOKUP_CODE"
                    ,"COST_OF_SALES_ACCOUNT"
                    ,"SALES_ACCOUNT"
                    ,"DEFAULT_INCLUDE_IN_ROLLUP_FLAG"
                    ,"INVENTORY_ITEM_STATUS_CODE"
                    ,"INVENTORY_PLANNING_CODE"
                    ,"PLANNER_CODE"
                    ,"PLANNING_MAKE_BUY_CODE"
                    ,"FIXED_LOT_MULTIPLIER"
                    ,"ROUNDING_CONTROL_TYPE"
                    ,"CARRYING_COST"
                    ,"POSTPROCESSING_LEAD_TIME"
                    ,"PREPROCESSING_LEAD_TIME"
                    ,"FULL_LEAD_TIME"
                    ,"ORDER_COST"
                    ,"MRP_SAFETY_STOCK_PERCENT"
                    ,"MRP_SAFETY_STOCK_CODE"
                    ,"MIN_MINMAX_QUANTITY"
                    ,"MAX_MINMAX_QUANTITY"
                    ,"MINIMUM_ORDER_QUANTITY"
                    ,"FIXED_ORDER_QUANTITY"
                    ,"FIXED_DAYS_SUPPLY"
                    ,"MAXIMUM_ORDER_QUANTITY"
                    ,"ATP_RULE_ID"
                    ,"PICKING_RULE_ID"
                    ,"RESERVABLE_TYPE"
                    ,"POSITIVE_MEASUREMENT_ERROR"
                    ,"NEGATIVE_MEASUREMENT_ERROR"
                    ,"ENGINEERING_ECN_CODE"
                    ,"ENGINEERING_ITEM_ID"
                    ,"ENGINEERING_DATE"
                    ,"SERVICE_STARTING_DELAY"
                    ,"VENDOR_WARRANTY_FLAG"
                    ,"SERVICEABLE_COMPONENT_FLAG"
                    ,"SERVICEABLE_PRODUCT_FLAG"
                    ,"BASE_WARRANTY_SERVICE_ID"
                    ,"PAYMENT_TERMS_ID"
                    ,"PREVENTIVE_MAINTENANCE_FLAG"
                    ,"PRIMARY_SPECIALIST_ID"
                    ,"SECONDARY_SPECIALIST_ID"
                    ,"SERVICEABLE_ITEM_CLASS_ID"
                    ,"TIME_BILLABLE_FLAG"
                    ,"MATERIAL_BILLABLE_FLAG"
                    ,"EXPENSE_BILLABLE_FLAG"
                    ,"PRORATE_SERVICE_FLAG"
                    ,"COVERAGE_SCHEDULE_ID"
                    ,"SERVICE_DURATION_PERIOD_CODE"
                    ,"SERVICE_DURATION"
                    ,"WARRANTY_VENDOR_ID"
                    ,"MAX_WARRANTY_AMOUNT"
                    ,"RESPONSE_TIME_PERIOD_CODE"
                    ,"RESPONSE_TIME_VALUE"
                    ,"NEW_REVISION_CODE"
                    ,"INVOICEABLE_ITEM_FLAG"
                    ,"TAX_CODE"
                    ,"INVOICE_ENABLED_FLAG"
                    ,"MUST_USE_APPROVED_VENDOR_FLAG"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"OUTSIDE_OPERATION_FLAG"
                    ,"OUTSIDE_OPERATION_UOM_TYPE"
                    ,"SAFETY_STOCK_BUCKET_DAYS"
                    ,"AUTO_REDUCE_MPS"
                    ,"COSTING_ENABLED_FLAG"
                    ,"AUTO_CREATED_CONFIG_FLAG"
                    ,"CYCLE_COUNT_ENABLED_FLAG"
                    ,"ITEM_TYPE"
                    ,"MODEL_CONFIG_CLAUSE_NAME"
                    ,"SHIP_MODEL_COMPLETE_FLAG"
                    ,"MRP_PLANNING_CODE"
                    ,"RETURN_INSPECTION_REQUIREMENT"
                    ,"ATO_FORECAST_CONTROL"
                    ,"RELEASE_TIME_FENCE_CODE"
                    ,"RELEASE_TIME_FENCE_DAYS"
                    ,"CONTAINER_ITEM_FLAG"
                    ,"VEHICLE_ITEM_FLAG"
                    ,"MAXIMUM_LOAD_WEIGHT"
                    ,"MINIMUM_FILL_PERCENT"
                    ,"CONTAINER_TYPE_CODE"
                    ,"INTERNAL_VOLUME"
                    ,"WH_UPDATE_DATE"
                    ,"PRODUCT_FAMILY_ITEM_ID"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"PURCHASING_TAX_CODE"
                    ,"OVERCOMPLETION_TOLERANCE_TYPE"
                    ,"OVERCOMPLETION_TOLERANCE_VALUE"
                    ,"EFFECTIVITY_CONTROL"
                    ,"CHECK_SHORTAGES_FLAG"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"EQUIPMENT_TYPE"
                    ,"RECOVERED_PART_DISP_CODE"
                    ,"DEFECT_TRACKING_ON_FLAG"
                    ,"USAGE_ITEM_FLAG"
                    ,"EVENT_FLAG"
                    ,"ELECTRONIC_FLAG"
                    ,"DOWNLOADABLE_FLAG"
                    ,"VOL_DISCOUNT_EXEMPT_FLAG"
                    ,"COUPON_EXEMPT_FLAG"
                    ,"COMMS_NL_TRACKABLE_FLAG"
                    ,"ASSET_CREATION_CODE"
                    ,"COMMS_ACTIVATION_REQD_FLAG"
                    ,"ORDERABLE_ON_WEB_FLAG"
                    ,"BACK_ORDERABLE_FLAG"
                    ,"WEB_STATUS"
                    ,"INDIVISIBLE_FLAG"
                    ,"DIMENSION_UOM_CODE"
                    ,"UNIT_LENGTH"
                    ,"UNIT_WIDTH"
                    ,"UNIT_HEIGHT"
                    ,"BULK_PICKED_FLAG"
                    ,"LOT_STATUS_ENABLED"
                    ,"DEFAULT_LOT_STATUS_ID"
                    ,"SERIAL_STATUS_ENABLED"
                    ,"DEFAULT_SERIAL_STATUS_ID"
                    ,"LOT_SPLIT_ENABLED"
                    ,"LOT_MERGE_ENABLED"
                    ,"INVENTORY_CARRY_PENALTY"
                    ,"OPERATION_SLACK_PENALTY"
                    ,"FINANCING_ALLOWED_FLAG"
                    ,"EAM_ITEM_TYPE"
                    ,"EAM_ACTIVITY_TYPE_CODE"
                    ,"EAM_ACTIVITY_CAUSE_CODE"
                    ,"EAM_ACT_NOTIFICATION_FLAG"
                    ,"EAM_ACT_SHUTDOWN_STATUS"
                    ,"DUAL_UOM_CONTROL"
                    ,"SECONDARY_UOM_CODE"
                    ,"DUAL_UOM_DEVIATION_HIGH"
                    ,"DUAL_UOM_DEVIATION_LOW"
                    ,"CONTRACT_ITEM_TYPE_CODE"
                    ,"SUBSCRIPTION_DEPEND_FLAG"
                    ,"SERV_REQ_ENABLED_CODE"
                    ,"SERV_BILLING_ENABLED_FLAG"
                    ,"SERV_IMPORTANCE_LEVEL"
                    ,"PLANNED_INV_POINT_FLAG"
                    ,"LOT_TRANSLATE_ENABLED"
                    ,"DEFAULT_SO_SOURCE_TYPE"
                    ,"CREATE_SUPPLY_FLAG"
                    ,"SUBSTITUTION_WINDOW_CODE"
                    ,"SUBSTITUTION_WINDOW_DAYS"
                    ,"IB_ITEM_INSTANCE_CLASS"
                    ,"CONFIG_MODEL_TYPE"
                    ,"LOT_SUBSTITUTION_ENABLED"
                    ,"MINIMUM_LICENSE_QUANTITY"
                    ,"EAM_ACTIVITY_SOURCE_CODE"
                    ,"LIFECYCLE_ID"
                    ,"CURRENT_PHASE_ID"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"TRACKING_QUANTITY_IND"
                    ,"ONT_PRICING_QTY_SOURCE"
                    ,"SECONDARY_DEFAULT_IND"
                    ,"OPTION_SPECIFIC_SOURCED"
                    ,"APPROVAL_STATUS"
                    ,"VMI_MINIMUM_UNITS"
                    ,"VMI_MINIMUM_DAYS"
                    ,"VMI_MAXIMUM_UNITS"
                    ,"VMI_MAXIMUM_DAYS"
                    ,"VMI_FIXED_ORDER_QUANTITY"
                    ,"SO_AUTHORIZATION_FLAG"
                    ,"CONSIGNED_FLAG"
                    ,"ASN_AUTOEXPIRE_FLAG"
                    ,"VMI_FORECAST_TYPE"
                    ,"FORECAST_HORIZON"
                    ,"EXCLUDE_FROM_BUDGET_FLAG"
                    ,"DAYS_TGT_INV_SUPPLY"
                    ,"DAYS_TGT_INV_WINDOW"
                    ,"DAYS_MAX_INV_SUPPLY"
                    ,"DAYS_MAX_INV_WINDOW"
                    ,"DRP_PLANNED_FLAG"
                    ,"CRITICAL_COMPONENT_FLAG"
                    ,"CONTINOUS_TRANSFER"
                    ,"CONVERGENCE"
                    ,"DIVERGENCE"
                    ,"CONFIG_ORGS"
                    ,"CONFIG_MATCH"
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"CAS_NUMBER"
                    ,"CHILD_LOT_FLAG"
                    ,"CHILD_LOT_PREFIX"
                    ,"CHILD_LOT_STARTING_NUMBER"
                    ,"CHILD_LOT_VALIDATION_FLAG"
                    ,"COPY_LOT_ATTRIBUTE_FLAG"
                    ,"DEFAULT_GRADE"
                    ,"EXPIRATION_ACTION_CODE"
                    ,"EXPIRATION_ACTION_INTERVAL"
                    ,"GRADE_CONTROL_FLAG"
                    ,"HAZARDOUS_MATERIAL_FLAG"
                    ,"HOLD_DAYS"
                    ,"LOT_DIVISIBLE_FLAG"
                    ,"MATURITY_DAYS"
                    ,"PARENT_CHILD_GENERATION_FLAG"
                    ,"PROCESS_COSTING_ENABLED_FLAG"
                    ,"PROCESS_EXECUTION_ENABLED_FLAG"
                    ,"PROCESS_QUALITY_ENABLED_FLAG"
                    ,"PROCESS_SUPPLY_LOCATOR_ID"
                    ,"PROCESS_SUPPLY_SUBINVENTORY"
                    ,"PROCESS_YIELD_LOCATOR_ID"
                    ,"PROCESS_YIELD_SUBINVENTORY"
                    ,"RECIPE_ENABLED_FLAG"
                    ,"RETEST_INTERVAL"
                    ,"CHARGE_PERIODICITY_CODE"
                    ,"REPAIR_LEADTIME"
                    ,"REPAIR_YIELD"
                    ,"PREPOSITION_POINT"
                    ,"REPAIR_PROGRAM"
                    ,"SUBCONTRACTING_COMPONENT"
                    ,"OUTSOURCED_ASSEMBLY"
                    ,"EGO_MASTER_ITEMS_DFF_CTX"
                    ,"GDSN_OUTBOUND_ENABLED_FLAG"
                    ,"TRADE_ITEM_DESCRIPTOR"
                    ,"STYLE_ITEM_ID"
                    ,"STYLE_ITEM_FLAG"
                    ,"LAST_SUBMITTED_NIR_ID"
                    ,"DEFAULT_MATERIAL_STATUS_ID"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"SERIAL_TAGGING_FLAG"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_MTL_SYSTEM_ITEMS_B" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_SYSTEM_ITEMS_B" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_MTL_SYSTEM_ITEMS_B" H					Join "STG"."STG_EBS_MTL_SYSTEM_ITEMS_B" S						On H.INVENTORY_ITEM_ID= S.INVENTORY_ITEM_ID						And H.ORGANIZATION_ID= S.ORGANIZATION_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
