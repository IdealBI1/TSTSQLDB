﻿CREATE TABLE [STG].[STG_EBS_MTL_SYSTEM_ITEMS_B] (
    [INVENTORY_ITEM_ID]              FLOAT (53)     NULL,
    [ORGANIZATION_ID]                FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]               DATETIME       NULL,
    [LAST_UPDATED_BY]                FLOAT (53)     NULL,
    [CREATION_DATE]                  DATETIME       NULL,
    [CREATED_BY]                     FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]              FLOAT (53)     NULL,
    [SUMMARY_FLAG]                   VARCHAR (100)  NULL,
    [ENABLED_FLAG]                   VARCHAR (100)  NULL,
    [START_DATE_ACTIVE]              DATETIME       NULL,
    [END_DATE_ACTIVE]                DATETIME       NULL,
    [DESCRIPTION]                    VARCHAR (1000) NULL,
    [BUYER_ID]                       FLOAT (53)     NULL,
    [ACCOUNTING_RULE_ID]             FLOAT (53)     NULL,
    [INVOICING_RULE_ID]              FLOAT (53)     NULL,
    [SEGMENT1]                       VARCHAR (100)  NULL,
    [SEGMENT2]                       VARCHAR (100)  NULL,
    [SEGMENT3]                       VARCHAR (100)  NULL,
    [SEGMENT4]                       VARCHAR (100)  NULL,
    [SEGMENT5]                       VARCHAR (100)  NULL,
    [SEGMENT6]                       VARCHAR (100)  NULL,
    [SEGMENT7]                       VARCHAR (100)  NULL,
    [SEGMENT8]                       VARCHAR (100)  NULL,
    [SEGMENT9]                       VARCHAR (100)  NULL,
    [SEGMENT10]                      VARCHAR (100)  NULL,
    [SEGMENT11]                      VARCHAR (100)  NULL,
    [SEGMENT12]                      VARCHAR (100)  NULL,
    [SEGMENT13]                      VARCHAR (100)  NULL,
    [SEGMENT14]                      VARCHAR (100)  NULL,
    [SEGMENT15]                      VARCHAR (100)  NULL,
    [SEGMENT16]                      VARCHAR (100)  NULL,
    [SEGMENT17]                      VARCHAR (100)  NULL,
    [SEGMENT18]                      VARCHAR (100)  NULL,
    [SEGMENT19]                      VARCHAR (100)  NULL,
    [SEGMENT20]                      VARCHAR (100)  NULL,
    [ATTRIBUTE_CATEGORY]             VARCHAR (100)  NULL,
    [ATTRIBUTE1]                     VARCHAR (1000) NULL,
    [ATTRIBUTE2]                     VARCHAR (1000) NULL,
    [ATTRIBUTE3]                     VARCHAR (1000) NULL,
    [ATTRIBUTE4]                     VARCHAR (1000) NULL,
    [ATTRIBUTE5]                     VARCHAR (1000) NULL,
    [ATTRIBUTE6]                     VARCHAR (1000) NULL,
    [ATTRIBUTE7]                     VARCHAR (1000) NULL,
    [ATTRIBUTE8]                     VARCHAR (1000) NULL,
    [ATTRIBUTE9]                     VARCHAR (1000) NULL,
    [ATTRIBUTE10]                    VARCHAR (1000) NULL,
    [ATTRIBUTE11]                    VARCHAR (1000) NULL,
    [ATTRIBUTE12]                    VARCHAR (1000) NULL,
    [ATTRIBUTE13]                    VARCHAR (1000) NULL,
    [ATTRIBUTE14]                    VARCHAR (1000) NULL,
    [ATTRIBUTE15]                    VARCHAR (1000) NULL,
    [PURCHASING_ITEM_FLAG]           VARCHAR (100)  NULL,
    [SHIPPABLE_ITEM_FLAG]            VARCHAR (100)  NULL,
    [CUSTOMER_ORDER_FLAG]            VARCHAR (100)  NULL,
    [INTERNAL_ORDER_FLAG]            VARCHAR (100)  NULL,
    [SERVICE_ITEM_FLAG]              VARCHAR (100)  NULL,
    [INVENTORY_ITEM_FLAG]            VARCHAR (100)  NULL,
    [ENG_ITEM_FLAG]                  VARCHAR (100)  NULL,
    [INVENTORY_ASSET_FLAG]           VARCHAR (100)  NULL,
    [PURCHASING_ENABLED_FLAG]        VARCHAR (100)  NULL,
    [CUSTOMER_ORDER_ENABLED_FLAG]    VARCHAR (100)  NULL,
    [INTERNAL_ORDER_ENABLED_FLAG]    VARCHAR (100)  NULL,
    [SO_TRANSACTIONS_FLAG]           VARCHAR (100)  NULL,
    [MTL_TRANSACTIONS_ENABLED_FLAG]  VARCHAR (100)  NULL,
    [STOCK_ENABLED_FLAG]             VARCHAR (100)  NULL,
    [BOM_ENABLED_FLAG]               VARCHAR (100)  NULL,
    [BUILD_IN_WIP_FLAG]              VARCHAR (100)  NULL,
    [REVISION_QTY_CONTROL_CODE]      FLOAT (53)     NULL,
    [ITEM_CATALOG_GROUP_ID]          FLOAT (53)     NULL,
    [CATALOG_STATUS_FLAG]            VARCHAR (100)  NULL,
    [RETURNABLE_FLAG]                VARCHAR (100)  NULL,
    [DEFAULT_SHIPPING_ORG]           FLOAT (53)     NULL,
    [COLLATERAL_FLAG]                VARCHAR (100)  NULL,
    [TAXABLE_FLAG]                   VARCHAR (100)  NULL,
    [QTY_RCV_EXCEPTION_CODE]         VARCHAR (100)  NULL,
    [ALLOW_ITEM_DESC_UPDATE_FLAG]    VARCHAR (100)  NULL,
    [INSPECTION_REQUIRED_FLAG]       VARCHAR (100)  NULL,
    [RECEIPT_REQUIRED_FLAG]          VARCHAR (100)  NULL,
    [MARKET_PRICE]                   FLOAT (53)     NULL,
    [HAZARD_CLASS_ID]                FLOAT (53)     NULL,
    [RFQ_REQUIRED_FLAG]              VARCHAR (100)  NULL,
    [QTY_RCV_TOLERANCE]              FLOAT (53)     NULL,
    [LIST_PRICE_PER_UNIT]            FLOAT (53)     NULL,
    [UN_NUMBER_ID]                   FLOAT (53)     NULL,
    [PRICE_TOLERANCE_PERCENT]        FLOAT (53)     NULL,
    [ASSET_CATEGORY_ID]              FLOAT (53)     NULL,
    [ROUNDING_FACTOR]                FLOAT (53)     NULL,
    [UNIT_OF_ISSUE]                  VARCHAR (100)  NULL,
    [ENFORCE_SHIP_TO_LOCATION_CODE]  VARCHAR (100)  NULL,
    [ALLOW_SUBSTITUTE_RECEIPTS_FLAG] VARCHAR (100)  NULL,
    [ALLOW_UNORDERED_RECEIPTS_FLAG]  VARCHAR (100)  NULL,
    [ALLOW_EXPRESS_DELIVERY_FLAG]    VARCHAR (100)  NULL,
    [DAYS_EARLY_RECEIPT_ALLOWED]     FLOAT (53)     NULL,
    [DAYS_LATE_RECEIPT_ALLOWED]      FLOAT (53)     NULL,
    [RECEIPT_DAYS_EXCEPTION_CODE]    VARCHAR (100)  NULL,
    [RECEIVING_ROUTING_ID]           FLOAT (53)     NULL,
    [INVOICE_CLOSE_TOLERANCE]        FLOAT (53)     NULL,
    [RECEIVE_CLOSE_TOLERANCE]        FLOAT (53)     NULL,
    [AUTO_LOT_ALPHA_PREFIX]          VARCHAR (100)  NULL,
    [START_AUTO_LOT_NUMBER]          VARCHAR (100)  NULL,
    [LOT_CONTROL_CODE]               FLOAT (53)     NULL,
    [SHELF_LIFE_CODE]                FLOAT (53)     NULL,
    [SHELF_LIFE_DAYS]                FLOAT (53)     NULL,
    [SERIAL_NUMBER_CONTROL_CODE]     FLOAT (53)     NULL,
    [START_AUTO_SERIAL_NUMBER]       VARCHAR (100)  NULL,
    [AUTO_SERIAL_ALPHA_PREFIX]       VARCHAR (100)  NULL,
    [SOURCE_TYPE]                    FLOAT (53)     NULL,
    [SOURCE_ORGANIZATION_ID]         FLOAT (53)     NULL,
    [SOURCE_SUBINVENTORY]            VARCHAR (100)  NULL,
    [EXPENSE_ACCOUNT]                FLOAT (53)     NULL,
    [ENCUMBRANCE_ACCOUNT]            FLOAT (53)     NULL,
    [RESTRICT_SUBINVENTORIES_CODE]   FLOAT (53)     NULL,
    [UNIT_WEIGHT]                    FLOAT (53)     NULL,
    [WEIGHT_UOM_CODE]                VARCHAR (100)  NULL,
    [VOLUME_UOM_CODE]                VARCHAR (100)  NULL,
    [UNIT_VOLUME]                    FLOAT (53)     NULL,
    [RESTRICT_LOCATORS_CODE]         FLOAT (53)     NULL,
    [LOCATION_CONTROL_CODE]          FLOAT (53)     NULL,
    [SHRINKAGE_RATE]                 FLOAT (53)     NULL,
    [ACCEPTABLE_EARLY_DAYS]          FLOAT (53)     NULL,
    [PLANNING_TIME_FENCE_CODE]       FLOAT (53)     NULL,
    [DEMAND_TIME_FENCE_CODE]         FLOAT (53)     NULL,
    [LEAD_TIME_LOT_SIZE]             FLOAT (53)     NULL,
    [STD_LOT_SIZE]                   FLOAT (53)     NULL,
    [CUM_MANUFACTURING_LEAD_TIME]    FLOAT (53)     NULL,
    [OVERRUN_PERCENTAGE]             FLOAT (53)     NULL,
    [MRP_CALCULATE_ATP_FLAG]         VARCHAR (100)  NULL,
    [ACCEPTABLE_RATE_INCREASE]       FLOAT (53)     NULL,
    [ACCEPTABLE_RATE_DECREASE]       FLOAT (53)     NULL,
    [CUMULATIVE_TOTAL_LEAD_TIME]     FLOAT (53)     NULL,
    [PLANNING_TIME_FENCE_DAYS]       FLOAT (53)     NULL,
    [DEMAND_TIME_FENCE_DAYS]         FLOAT (53)     NULL,
    [END_ASSEMBLY_PEGGING_FLAG]      VARCHAR (100)  NULL,
    [REPETITIVE_PLANNING_FLAG]       VARCHAR (100)  NULL,
    [PLANNING_EXCEPTION_SET]         VARCHAR (100)  NULL,
    [BOM_ITEM_TYPE]                  FLOAT (53)     NULL,
    [PICK_COMPONENTS_FLAG]           VARCHAR (100)  NULL,
    [REPLENISH_TO_ORDER_FLAG]        VARCHAR (100)  NULL,
    [BASE_ITEM_ID]                   FLOAT (53)     NULL,
    [ATP_COMPONENTS_FLAG]            VARCHAR (100)  NULL,
    [ATP_FLAG]                       VARCHAR (100)  NULL,
    [FIXED_LEAD_TIME]                FLOAT (53)     NULL,
    [VARIABLE_LEAD_TIME]             FLOAT (53)     NULL,
    [WIP_SUPPLY_LOCATOR_ID]          FLOAT (53)     NULL,
    [WIP_SUPPLY_TYPE]                FLOAT (53)     NULL,
    [WIP_SUPPLY_SUBINVENTORY]        VARCHAR (100)  NULL,
    [PRIMARY_UOM_CODE]               VARCHAR (100)  NULL,
    [PRIMARY_UNIT_OF_MEASURE]        VARCHAR (100)  NULL,
    [ALLOWED_UNITS_LOOKUP_CODE]      FLOAT (53)     NULL,
    [COST_OF_SALES_ACCOUNT]          FLOAT (53)     NULL,
    [SALES_ACCOUNT]                  FLOAT (53)     NULL,
    [DEFAULT_INCLUDE_IN_ROLLUP_FLAG] VARCHAR (100)  NULL,
    [INVENTORY_ITEM_STATUS_CODE]     VARCHAR (100)  NULL,
    [INVENTORY_PLANNING_CODE]        FLOAT (53)     NULL,
    [PLANNER_CODE]                   VARCHAR (100)  NULL,
    [PLANNING_MAKE_BUY_CODE]         FLOAT (53)     NULL,
    [FIXED_LOT_MULTIPLIER]           FLOAT (53)     NULL,
    [ROUNDING_CONTROL_TYPE]          FLOAT (53)     NULL,
    [CARRYING_COST]                  FLOAT (53)     NULL,
    [POSTPROCESSING_LEAD_TIME]       FLOAT (53)     NULL,
    [PREPROCESSING_LEAD_TIME]        FLOAT (53)     NULL,
    [FULL_LEAD_TIME]                 FLOAT (53)     NULL,
    [ORDER_COST]                     FLOAT (53)     NULL,
    [MRP_SAFETY_STOCK_PERCENT]       FLOAT (53)     NULL,
    [MRP_SAFETY_STOCK_CODE]          FLOAT (53)     NULL,
    [MIN_MINMAX_QUANTITY]            FLOAT (53)     NULL,
    [MAX_MINMAX_QUANTITY]            FLOAT (53)     NULL,
    [MINIMUM_ORDER_QUANTITY]         FLOAT (53)     NULL,
    [FIXED_ORDER_QUANTITY]           FLOAT (53)     NULL,
    [FIXED_DAYS_SUPPLY]              FLOAT (53)     NULL,
    [MAXIMUM_ORDER_QUANTITY]         FLOAT (53)     NULL,
    [ATP_RULE_ID]                    FLOAT (53)     NULL,
    [PICKING_RULE_ID]                FLOAT (53)     NULL,
    [RESERVABLE_TYPE]                FLOAT (53)     NULL,
    [POSITIVE_MEASUREMENT_ERROR]     FLOAT (53)     NULL,
    [NEGATIVE_MEASUREMENT_ERROR]     FLOAT (53)     NULL,
    [ENGINEERING_ECN_CODE]           VARCHAR (1000) NULL,
    [ENGINEERING_ITEM_ID]            FLOAT (53)     NULL,
    [ENGINEERING_DATE]               DATETIME       NULL,
    [SERVICE_STARTING_DELAY]         FLOAT (53)     NULL,
    [VENDOR_WARRANTY_FLAG]           VARCHAR (100)  NULL,
    [SERVICEABLE_COMPONENT_FLAG]     VARCHAR (100)  NULL,
    [SERVICEABLE_PRODUCT_FLAG]       VARCHAR (100)  NULL,
    [BASE_WARRANTY_SERVICE_ID]       FLOAT (53)     NULL,
    [PAYMENT_TERMS_ID]               FLOAT (53)     NULL,
    [PREVENTIVE_MAINTENANCE_FLAG]    VARCHAR (100)  NULL,
    [PRIMARY_SPECIALIST_ID]          FLOAT (53)     NULL,
    [SECONDARY_SPECIALIST_ID]        FLOAT (53)     NULL,
    [SERVICEABLE_ITEM_CLASS_ID]      FLOAT (53)     NULL,
    [TIME_BILLABLE_FLAG]             VARCHAR (100)  NULL,
    [MATERIAL_BILLABLE_FLAG]         VARCHAR (100)  NULL,
    [EXPENSE_BILLABLE_FLAG]          VARCHAR (100)  NULL,
    [PRORATE_SERVICE_FLAG]           VARCHAR (100)  NULL,
    [COVERAGE_SCHEDULE_ID]           FLOAT (53)     NULL,
    [SERVICE_DURATION_PERIOD_CODE]   VARCHAR (100)  NULL,
    [SERVICE_DURATION]               FLOAT (53)     NULL,
    [WARRANTY_VENDOR_ID]             FLOAT (53)     NULL,
    [MAX_WARRANTY_AMOUNT]            FLOAT (53)     NULL,
    [RESPONSE_TIME_PERIOD_CODE]      VARCHAR (100)  NULL,
    [RESPONSE_TIME_VALUE]            FLOAT (53)     NULL,
    [NEW_REVISION_CODE]              VARCHAR (100)  NULL,
    [INVOICEABLE_ITEM_FLAG]          VARCHAR (100)  NULL,
    [TAX_CODE]                       VARCHAR (1000) NULL,
    [INVOICE_ENABLED_FLAG]           VARCHAR (100)  NULL,
    [MUST_USE_APPROVED_VENDOR_FLAG]  VARCHAR (100)  NULL,
    [REQUEST_ID]                     FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]         FLOAT (53)     NULL,
    [PROGRAM_ID]                     FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]            DATETIME       NULL,
    [OUTSIDE_OPERATION_FLAG]         VARCHAR (100)  NULL,
    [OUTSIDE_OPERATION_UOM_TYPE]     VARCHAR (100)  NULL,
    [SAFETY_STOCK_BUCKET_DAYS]       FLOAT (53)     NULL,
    [AUTO_REDUCE_MPS]                FLOAT (53)     NULL,
    [COSTING_ENABLED_FLAG]           VARCHAR (100)  NULL,
    [AUTO_CREATED_CONFIG_FLAG]       VARCHAR (100)  NULL,
    [CYCLE_COUNT_ENABLED_FLAG]       VARCHAR (100)  NULL,
    [ITEM_TYPE]                      VARCHAR (100)  NULL,
    [MODEL_CONFIG_CLAUSE_NAME]       VARCHAR (100)  NULL,
    [SHIP_MODEL_COMPLETE_FLAG]       VARCHAR (100)  NULL,
    [MRP_PLANNING_CODE]              FLOAT (53)     NULL,
    [RETURN_INSPECTION_REQUIREMENT]  FLOAT (53)     NULL,
    [ATO_FORECAST_CONTROL]           FLOAT (53)     NULL,
    [RELEASE_TIME_FENCE_CODE]        FLOAT (53)     NULL,
    [RELEASE_TIME_FENCE_DAYS]        FLOAT (53)     NULL,
    [CONTAINER_ITEM_FLAG]            VARCHAR (100)  NULL,
    [VEHICLE_ITEM_FLAG]              VARCHAR (100)  NULL,
    [MAXIMUM_LOAD_WEIGHT]            FLOAT (53)     NULL,
    [MINIMUM_FILL_PERCENT]           FLOAT (53)     NULL,
    [CONTAINER_TYPE_CODE]            VARCHAR (100)  NULL,
    [INTERNAL_VOLUME]                FLOAT (53)     NULL,
    [WH_UPDATE_DATE]                 DATETIME       NULL,
    [PRODUCT_FAMILY_ITEM_ID]         FLOAT (53)     NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE1]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE2]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE3]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE4]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE5]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE6]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE7]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE8]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE9]              VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE10]             VARCHAR (1000) NULL,
    [PURCHASING_TAX_CODE]            VARCHAR (1000) NULL,
    [OVERCOMPLETION_TOLERANCE_TYPE]  FLOAT (53)     NULL,
    [OVERCOMPLETION_TOLERANCE_VALUE] FLOAT (53)     NULL,
    [EFFECTIVITY_CONTROL]            FLOAT (53)     NULL,
    [CHECK_SHORTAGES_FLAG]           VARCHAR (100)  NULL,
    [OVER_SHIPMENT_TOLERANCE]        FLOAT (53)     NULL,
    [UNDER_SHIPMENT_TOLERANCE]       FLOAT (53)     NULL,
    [OVER_RETURN_TOLERANCE]          FLOAT (53)     NULL,
    [UNDER_RETURN_TOLERANCE]         FLOAT (53)     NULL,
    [EQUIPMENT_TYPE]                 FLOAT (53)     NULL,
    [RECOVERED_PART_DISP_CODE]       VARCHAR (100)  NULL,
    [DEFECT_TRACKING_ON_FLAG]        VARCHAR (100)  NULL,
    [USAGE_ITEM_FLAG]                VARCHAR (100)  NULL,
    [EVENT_FLAG]                     VARCHAR (100)  NULL,
    [ELECTRONIC_FLAG]                VARCHAR (100)  NULL,
    [DOWNLOADABLE_FLAG]              VARCHAR (100)  NULL,
    [VOL_DISCOUNT_EXEMPT_FLAG]       VARCHAR (100)  NULL,
    [COUPON_EXEMPT_FLAG]             VARCHAR (100)  NULL,
    [COMMS_NL_TRACKABLE_FLAG]        VARCHAR (100)  NULL,
    [ASSET_CREATION_CODE]            VARCHAR (100)  NULL,
    [COMMS_ACTIVATION_REQD_FLAG]     VARCHAR (100)  NULL,
    [ORDERABLE_ON_WEB_FLAG]          VARCHAR (100)  NULL,
    [BACK_ORDERABLE_FLAG]            VARCHAR (100)  NULL,
    [WEB_STATUS]                     VARCHAR (100)  NULL,
    [INDIVISIBLE_FLAG]               VARCHAR (100)  NULL,
    [DIMENSION_UOM_CODE]             VARCHAR (100)  NULL,
    [UNIT_LENGTH]                    FLOAT (53)     NULL,
    [UNIT_WIDTH]                     FLOAT (53)     NULL,
    [UNIT_HEIGHT]                    FLOAT (53)     NULL,
    [BULK_PICKED_FLAG]               VARCHAR (100)  NULL,
    [LOT_STATUS_ENABLED]             VARCHAR (100)  NULL,
    [DEFAULT_LOT_STATUS_ID]          FLOAT (53)     NULL,
    [SERIAL_STATUS_ENABLED]          VARCHAR (100)  NULL,
    [DEFAULT_SERIAL_STATUS_ID]       FLOAT (53)     NULL,
    [LOT_SPLIT_ENABLED]              VARCHAR (100)  NULL,
    [LOT_MERGE_ENABLED]              VARCHAR (100)  NULL,
    [INVENTORY_CARRY_PENALTY]        FLOAT (53)     NULL,
    [OPERATION_SLACK_PENALTY]        FLOAT (53)     NULL,
    [FINANCING_ALLOWED_FLAG]         VARCHAR (100)  NULL,
    [EAM_ITEM_TYPE]                  FLOAT (53)     NULL,
    [EAM_ACTIVITY_TYPE_CODE]         VARCHAR (100)  NULL,
    [EAM_ACTIVITY_CAUSE_CODE]        VARCHAR (100)  NULL,
    [EAM_ACT_NOTIFICATION_FLAG]      VARCHAR (100)  NULL,
    [EAM_ACT_SHUTDOWN_STATUS]        VARCHAR (100)  NULL,
    [DUAL_UOM_CONTROL]               FLOAT (53)     NULL,
    [SECONDARY_UOM_CODE]             VARCHAR (100)  NULL,
    [DUAL_UOM_DEVIATION_HIGH]        FLOAT (53)     NULL,
    [DUAL_UOM_DEVIATION_LOW]         FLOAT (53)     NULL,
    [CONTRACT_ITEM_TYPE_CODE]        VARCHAR (100)  NULL,
    [SUBSCRIPTION_DEPEND_FLAG]       VARCHAR (100)  NULL,
    [SERV_REQ_ENABLED_CODE]          VARCHAR (100)  NULL,
    [SERV_BILLING_ENABLED_FLAG]      VARCHAR (100)  NULL,
    [SERV_IMPORTANCE_LEVEL]          FLOAT (53)     NULL,
    [PLANNED_INV_POINT_FLAG]         VARCHAR (100)  NULL,
    [LOT_TRANSLATE_ENABLED]          VARCHAR (100)  NULL,
    [DEFAULT_SO_SOURCE_TYPE]         VARCHAR (100)  NULL,
    [CREATE_SUPPLY_FLAG]             VARCHAR (100)  NULL,
    [SUBSTITUTION_WINDOW_CODE]       FLOAT (53)     NULL,
    [SUBSTITUTION_WINDOW_DAYS]       FLOAT (53)     NULL,
    [IB_ITEM_INSTANCE_CLASS]         VARCHAR (100)  NULL,
    [CONFIG_MODEL_TYPE]              VARCHAR (100)  NULL,
    [LOT_SUBSTITUTION_ENABLED]       VARCHAR (100)  NULL,
    [MINIMUM_LICENSE_QUANTITY]       FLOAT (53)     NULL,
    [EAM_ACTIVITY_SOURCE_CODE]       VARCHAR (100)  NULL,
    [LIFECYCLE_ID]                   FLOAT (53)     NULL,
    [CURRENT_PHASE_ID]               FLOAT (53)     NULL,
    [OBJECT_VERSION_NUMBER]          FLOAT (53)     NULL,
    [TRACKING_QUANTITY_IND]          VARCHAR (100)  NULL,
    [ONT_PRICING_QTY_SOURCE]         VARCHAR (100)  NULL,
    [SECONDARY_DEFAULT_IND]          VARCHAR (100)  NULL,
    [OPTION_SPECIFIC_SOURCED]        FLOAT (53)     NULL,
    [APPROVAL_STATUS]                VARCHAR (100)  NULL,
    [VMI_MINIMUM_UNITS]              FLOAT (53)     NULL,
    [VMI_MINIMUM_DAYS]               FLOAT (53)     NULL,
    [VMI_MAXIMUM_UNITS]              FLOAT (53)     NULL,
    [VMI_MAXIMUM_DAYS]               FLOAT (53)     NULL,
    [VMI_FIXED_ORDER_QUANTITY]       FLOAT (53)     NULL,
    [SO_AUTHORIZATION_FLAG]          FLOAT (53)     NULL,
    [CONSIGNED_FLAG]                 FLOAT (53)     NULL,
    [ASN_AUTOEXPIRE_FLAG]            FLOAT (53)     NULL,
    [VMI_FORECAST_TYPE]              FLOAT (53)     NULL,
    [FORECAST_HORIZON]               FLOAT (53)     NULL,
    [EXCLUDE_FROM_BUDGET_FLAG]       FLOAT (53)     NULL,
    [DAYS_TGT_INV_SUPPLY]            FLOAT (53)     NULL,
    [DAYS_TGT_INV_WINDOW]            FLOAT (53)     NULL,
    [DAYS_MAX_INV_SUPPLY]            FLOAT (53)     NULL,
    [DAYS_MAX_INV_WINDOW]            FLOAT (53)     NULL,
    [DRP_PLANNED_FLAG]               FLOAT (53)     NULL,
    [CRITICAL_COMPONENT_FLAG]        FLOAT (53)     NULL,
    [CONTINOUS_TRANSFER]             FLOAT (53)     NULL,
    [CONVERGENCE]                    FLOAT (53)     NULL,
    [DIVERGENCE]                     FLOAT (53)     NULL,
    [CONFIG_ORGS]                    VARCHAR (100)  NULL,
    [CONFIG_MATCH]                   VARCHAR (100)  NULL,
    [ATTRIBUTE16]                    VARCHAR (1000) NULL,
    [ATTRIBUTE17]                    VARCHAR (1000) NULL,
    [ATTRIBUTE18]                    VARCHAR (1000) NULL,
    [ATTRIBUTE19]                    VARCHAR (1000) NULL,
    [ATTRIBUTE20]                    VARCHAR (1000) NULL,
    [ATTRIBUTE21]                    VARCHAR (1000) NULL,
    [ATTRIBUTE22]                    VARCHAR (1000) NULL,
    [ATTRIBUTE23]                    VARCHAR (1000) NULL,
    [ATTRIBUTE24]                    VARCHAR (1000) NULL,
    [ATTRIBUTE25]                    VARCHAR (1000) NULL,
    [ATTRIBUTE26]                    VARCHAR (1000) NULL,
    [ATTRIBUTE27]                    VARCHAR (1000) NULL,
    [ATTRIBUTE28]                    VARCHAR (1000) NULL,
    [ATTRIBUTE29]                    VARCHAR (1000) NULL,
    [ATTRIBUTE30]                    VARCHAR (1000) NULL,
    [CAS_NUMBER]                     VARCHAR (100)  NULL,
    [CHILD_LOT_FLAG]                 VARCHAR (100)  NULL,
    [CHILD_LOT_PREFIX]               VARCHAR (100)  NULL,
    [CHILD_LOT_STARTING_NUMBER]      FLOAT (53)     NULL,
    [CHILD_LOT_VALIDATION_FLAG]      VARCHAR (100)  NULL,
    [COPY_LOT_ATTRIBUTE_FLAG]        VARCHAR (100)  NULL,
    [DEFAULT_GRADE]                  VARCHAR (1000) NULL,
    [EXPIRATION_ACTION_CODE]         VARCHAR (100)  NULL,
    [EXPIRATION_ACTION_INTERVAL]     FLOAT (53)     NULL,
    [GRADE_CONTROL_FLAG]             VARCHAR (100)  NULL,
    [HAZARDOUS_MATERIAL_FLAG]        VARCHAR (100)  NULL,
    [HOLD_DAYS]                      FLOAT (53)     NULL,
    [LOT_DIVISIBLE_FLAG]             VARCHAR (100)  NULL,
    [MATURITY_DAYS]                  FLOAT (53)     NULL,
    [PARENT_CHILD_GENERATION_FLAG]   VARCHAR (100)  NULL,
    [PROCESS_COSTING_ENABLED_FLAG]   VARCHAR (100)  NULL,
    [PROCESS_EXECUTION_ENABLED_FLAG] VARCHAR (100)  NULL,
    [PROCESS_QUALITY_ENABLED_FLAG]   VARCHAR (100)  NULL,
    [PROCESS_SUPPLY_LOCATOR_ID]      FLOAT (53)     NULL,
    [PROCESS_SUPPLY_SUBINVENTORY]    VARCHAR (100)  NULL,
    [PROCESS_YIELD_LOCATOR_ID]       FLOAT (53)     NULL,
    [PROCESS_YIELD_SUBINVENTORY]     VARCHAR (100)  NULL,
    [RECIPE_ENABLED_FLAG]            VARCHAR (100)  NULL,
    [RETEST_INTERVAL]                FLOAT (53)     NULL,
    [CHARGE_PERIODICITY_CODE]        VARCHAR (100)  NULL,
    [REPAIR_LEADTIME]                FLOAT (53)     NULL,
    [REPAIR_YIELD]                   FLOAT (53)     NULL,
    [PREPOSITION_POINT]              VARCHAR (100)  NULL,
    [REPAIR_PROGRAM]                 FLOAT (53)     NULL,
    [SUBCONTRACTING_COMPONENT]       FLOAT (53)     NULL,
    [OUTSOURCED_ASSEMBLY]            FLOAT (53)     NULL,
    [EGO_MASTER_ITEMS_DFF_CTX]       VARCHAR (100)  NULL,
    [GDSN_OUTBOUND_ENABLED_FLAG]     VARCHAR (100)  NULL,
    [TRADE_ITEM_DESCRIPTOR]          VARCHAR (100)  NULL,
    [STYLE_ITEM_ID]                  FLOAT (53)     NULL,
    [STYLE_ITEM_FLAG]                VARCHAR (100)  NULL,
    [LAST_SUBMITTED_NIR_ID]          FLOAT (53)     NULL,
    [DEFAULT_MATERIAL_STATUS_ID]     FLOAT (53)     NULL,
    [GLOBAL_ATTRIBUTE11]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE12]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE13]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE14]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE15]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE16]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE17]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE18]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE19]             VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE20]             VARCHAR (1000) NULL,
    [SERIAL_TAGGING_FLAG]            VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD]           VARCHAR (1000) NULL
);

