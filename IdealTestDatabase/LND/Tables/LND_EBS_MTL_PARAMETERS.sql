﻿CREATE TABLE [LND].[LND_EBS_MTL_PARAMETERS] (
    [ORGANIZATION_ID]                FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]               DATETIME2 (0)  NULL,
    [LAST_UPDATED_BY]                FLOAT (53)     NULL,
    [CREATION_DATE]                  DATETIME2 (0)  NULL,
    [CREATED_BY]                     FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]              FLOAT (53)     NULL,
    [ORGANIZATION_CODE]              NVARCHAR (3)   NULL,
    [MASTER_ORGANIZATION_ID]         FLOAT (53)     NULL,
    [PRIMARY_COST_METHOD]            FLOAT (53)     NULL,
    [COST_ORGANIZATION_ID]           FLOAT (53)     NULL,
    [DEFAULT_MATERIAL_COST_ID]       FLOAT (53)     NULL,
    [CALENDAR_EXCEPTION_SET_ID]      FLOAT (53)     NULL,
    [CALENDAR_CODE]                  NVARCHAR (10)  NULL,
    [GENERAL_LEDGER_UPDATE_CODE]     FLOAT (53)     NULL,
    [DEFAULT_ATP_RULE_ID]            FLOAT (53)     NULL,
    [DEFAULT_PICKING_RULE_ID]        FLOAT (53)     NULL,
    [DEFAULT_LOCATOR_ORDER_VALUE]    FLOAT (53)     NULL,
    [DEFAULT_SUBINV_ORDER_VALUE]     FLOAT (53)     NULL,
    [NEGATIVE_INV_RECEIPT_CODE]      FLOAT (53)     NULL,
    [STOCK_LOCATOR_CONTROL_CODE]     FLOAT (53)     NULL,
    [MATERIAL_ACCOUNT]               FLOAT (53)     NULL,
    [MATERIAL_OVERHEAD_ACCOUNT]      FLOAT (53)     NULL,
    [MATL_OVHD_ABSORPTION_ACCT]      FLOAT (53)     NULL,
    [RESOURCE_ACCOUNT]               FLOAT (53)     NULL,
    [PURCHASE_PRICE_VAR_ACCOUNT]     FLOAT (53)     NULL,
    [AP_ACCRUAL_ACCOUNT]             FLOAT (53)     NULL,
    [OVERHEAD_ACCOUNT]               FLOAT (53)     NULL,
    [OUTSIDE_PROCESSING_ACCOUNT]     FLOAT (53)     NULL,
    [INTRANSIT_INV_ACCOUNT]          FLOAT (53)     NULL,
    [INTERORG_RECEIVABLES_ACCOUNT]   FLOAT (53)     NULL,
    [INTERORG_PRICE_VAR_ACCOUNT]     FLOAT (53)     NULL,
    [INTERORG_PAYABLES_ACCOUNT]      FLOAT (53)     NULL,
    [COST_OF_SALES_ACCOUNT]          FLOAT (53)     NULL,
    [ENCUMBRANCE_ACCOUNT]            FLOAT (53)     NULL,
    [PROJECT_COST_ACCOUNT]           FLOAT (53)     NULL,
    [INTERORG_TRANSFER_CR_ACCOUNT]   FLOAT (53)     NULL,
    [MATL_INTERORG_TRANSFER_CODE]    FLOAT (53)     NULL,
    [INTERORG_TRNSFR_CHARGE_PERCENT] FLOAT (53)     NULL,
    [SOURCE_ORGANIZATION_ID]         FLOAT (53)     NULL,
    [SOURCE_SUBINVENTORY]            NVARCHAR (10)  NULL,
    [SOURCE_TYPE]                    FLOAT (53)     NULL,
    [ORG_MAX_WEIGHT]                 FLOAT (53)     NULL,
    [ORG_MAX_WEIGHT_UOM_CODE]        NVARCHAR (3)   NULL,
    [ORG_MAX_VOLUME]                 FLOAT (53)     NULL,
    [ORG_MAX_VOLUME_UOM_CODE]        NVARCHAR (3)   NULL,
    [SERIAL_NUMBER_TYPE]             FLOAT (53)     NULL,
    [AUTO_SERIAL_ALPHA_PREFIX]       NVARCHAR (30)  NULL,
    [START_AUTO_SERIAL_NUMBER]       NVARCHAR (30)  NULL,
    [AUTO_LOT_ALPHA_PREFIX]          NVARCHAR (30)  NULL,
    [LOT_NUMBER_UNIQUENESS]          FLOAT (53)     NULL,
    [LOT_NUMBER_GENERATION]          FLOAT (53)     NULL,
    [LOT_NUMBER_ZERO_PADDING]        FLOAT (53)     NULL,
    [LOT_NUMBER_LENGTH]              FLOAT (53)     NULL,
    [STARTING_REVISION]              NVARCHAR (3)   NULL,
    [ATTRIBUTE_CATEGORY]             NVARCHAR (30)  NULL,
    [ATTRIBUTE1]                     NVARCHAR (150) NULL,
    [ATTRIBUTE2]                     NVARCHAR (150) NULL,
    [ATTRIBUTE3]                     NVARCHAR (150) NULL,
    [ATTRIBUTE4]                     NVARCHAR (150) NULL,
    [ATTRIBUTE5]                     NVARCHAR (150) NULL,
    [ATTRIBUTE6]                     NVARCHAR (150) NULL,
    [ATTRIBUTE7]                     NVARCHAR (150) NULL,
    [ATTRIBUTE8]                     NVARCHAR (150) NULL,
    [ATTRIBUTE9]                     NVARCHAR (150) NULL,
    [ATTRIBUTE10]                    NVARCHAR (150) NULL,
    [ATTRIBUTE11]                    NVARCHAR (150) NULL,
    [ATTRIBUTE12]                    NVARCHAR (150) NULL,
    [ATTRIBUTE13]                    NVARCHAR (150) NULL,
    [ATTRIBUTE14]                    NVARCHAR (150) NULL,
    [ATTRIBUTE15]                    NVARCHAR (150) NULL,
    [DEFAULT_DEMAND_CLASS]           NVARCHAR (30)  NULL,
    [ENCUMBRANCE_REVERSAL_FLAG]      FLOAT (53)     NULL,
    [MAINTAIN_FIFO_QTY_STACK_TYPE]   FLOAT (53)     NULL,
    [INVOICE_PRICE_VAR_ACCOUNT]      FLOAT (53)     NULL,
    [AVERAGE_COST_VAR_ACCOUNT]       FLOAT (53)     NULL,
    [SALES_ACCOUNT]                  FLOAT (53)     NULL,
    [EXPENSE_ACCOUNT]                FLOAT (53)     NULL,
    [SERIAL_NUMBER_GENERATION]       FLOAT (53)     NULL,
    [REQUEST_ID]                     FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]         FLOAT (53)     NULL,
    [PROGRAM_ID]                     FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]            DATETIME2 (0)  NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      NVARCHAR (30)  NULL,
    [GLOBAL_ATTRIBUTE1]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE2]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE3]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE4]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE5]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE6]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE7]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE8]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE9]              NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE10]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE11]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE12]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE13]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE14]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE15]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE16]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE17]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE18]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE19]             NVARCHAR (150) NULL,
    [GLOBAL_ATTRIBUTE20]             NVARCHAR (150) NULL,
    [MAT_OVHD_COST_TYPE_ID]          FLOAT (53)     NULL,
    [PROJECT_REFERENCE_ENABLED]      FLOAT (53)     NULL,
    [PM_COST_COLLECTION_ENABLED]     FLOAT (53)     NULL,
    [PROJECT_CONTROL_LEVEL]          FLOAT (53)     NULL,
    [AVG_RATES_COST_TYPE_ID]         FLOAT (53)     NULL,
    [TXN_APPROVAL_TIMEOUT_PERIOD]    FLOAT (53)     NULL,
    [MO_SOURCE_REQUIRED]             FLOAT (53)     NULL,
    [MO_PICK_CONFIRM_REQUIRED]       FLOAT (53)     NULL,
    [MO_APPROVAL_TIMEOUT_ACTION]     FLOAT (53)     NULL,
    [BORRPAY_MATL_VAR_ACCOUNT]       FLOAT (53)     NULL,
    [BORRPAY_MOH_VAR_ACCOUNT]        FLOAT (53)     NULL,
    [BORRPAY_RES_VAR_ACCOUNT]        FLOAT (53)     NULL,
    [BORRPAY_OSP_VAR_ACCOUNT]        FLOAT (53)     NULL,
    [BORRPAY_OVH_VAR_ACCOUNT]        FLOAT (53)     NULL,
    [PROCESS_ENABLED_FLAG]           NVARCHAR (1)   NULL,
    [PROCESS_ORGN_CODE]              NVARCHAR (4)   NULL,
    [WSM_ENABLED_FLAG]               NVARCHAR (1)   NULL,
    [DEFAULT_COST_GROUP_ID]          FLOAT (53)     NULL,
    [LPN_PREFIX]                     NVARCHAR (10)  NULL,
    [LPN_SUFFIX]                     NVARCHAR (10)  NULL,
    [LPN_STARTING_NUMBER]            FLOAT (53)     NULL,
    [WMS_ENABLED_FLAG]               NVARCHAR (1)   NULL,
    [PREGEN_PUTAWAY_TASKS_FLAG]      FLOAT (53)     NULL,
    [REGENERATION_INTERVAL]          FLOAT (53)     NULL,
    [TIMEZONE_ID]                    FLOAT (53)     NULL,
    [MAX_PICKS_BATCH]                FLOAT (53)     NULL,
    [DEFAULT_WMS_PICKING_RULE_ID]    FLOAT (53)     NULL,
    [DEFAULT_PUT_AWAY_RULE_ID]       FLOAT (53)     NULL,
    [DEFAULT_TASK_ASSIGN_RULE_ID]    FLOAT (53)     NULL,
    [DEFAULT_LABEL_COMP_RULE_ID]     FLOAT (53)     NULL,
    [DEFAULT_CARTON_RULE_ID]         FLOAT (53)     NULL,
    [DEFAULT_CYC_COUNT_HEADER_ID]    FLOAT (53)     NULL,
    [CROSSDOCK_FLAG]                 FLOAT (53)     NULL,
    [CARTONIZATION_FLAG]             FLOAT (53)     NULL,
    [COST_CUTOFF_DATE]               DATETIME2 (0)  NULL,
    [ENABLE_COSTING_BY_CATEGORY]     NVARCHAR (1)   NULL,
    [COST_GROUP_ACCOUNTING]          FLOAT (53)     NULL,
    [ALLOCATE_SERIAL_FLAG]           NVARCHAR (1)   NULL,
    [DEFAULT_PICK_TASK_TYPE_ID]      FLOAT (53)     NULL,
    [DEFAULT_CC_TASK_TYPE_ID]        FLOAT (53)     NULL,
    [DEFAULT_PUTAWAY_TASK_TYPE_ID]   FLOAT (53)     NULL,
    [DEFAULT_REPL_TASK_TYPE_ID]      FLOAT (53)     NULL,
    [EAM_ENABLED_FLAG]               NVARCHAR (1)   NULL,
    [MAINT_ORGANIZATION_ID]          FLOAT (53)     NULL,
    [PRIORITIZE_WIP_JOBS]            FLOAT (53)     NULL,
    [DEFAULT_CROSSDOCK_SUBINVENTORY] NVARCHAR (10)  NULL,
    [SKIP_TASK_WAITING_MINUTES]      FLOAT (53)     NULL,
    [QA_SKIPPING_INSP_FLAG]          NVARCHAR (1)   NULL,
    [DEFAULT_CROSSDOCK_LOCATOR_ID]   FLOAT (53)     NULL,
    [DEFAULT_MOXFER_TASK_TYPE_ID]    FLOAT (53)     NULL,
    [DEFAULT_MOISSUE_TASK_TYPE_ID]   FLOAT (53)     NULL,
    [DEFAULT_MATL_OVHD_COST_ID]      FLOAT (53)     NULL,
    [DISTRIBUTED_ORGANIZATION_FLAG]  NVARCHAR (1)   NULL,
    [CARRIER_MANIFESTING_FLAG]       NVARCHAR (1)   NULL,
    [DISTRIBUTION_ACCOUNT_ID]        FLOAT (53)     NULL,
    [DIRECT_SHIPPING_ALLOWED]        NVARCHAR (1)   NULL,
    [DEFAULT_PICK_OP_PLAN_ID]        FLOAT (53)     NULL,
    [MAX_CLUSTERS_ALLOWED]           FLOAT (53)     NULL,
    [CONSIGNED_FLAG]                 NVARCHAR (1)   NULL,
    [CARTONIZE_SALES_ORDERS]         NVARCHAR (1)   NULL,
    [CARTONIZE_MANUFACTURING]        NVARCHAR (1)   NULL,
    [DEFER_LOGICAL_TRANSACTIONS]     FLOAT (53)     NULL,
    [WIP_OVERPICK_ENABLED]           NVARCHAR (1)   NULL,
    [OVPK_TRANSFER_ORDERS_ENABLED]   NVARCHAR (1)   NULL,
    [TOTAL_LPN_LENGTH]               FLOAT (53)     NULL,
    [UCC_128_SUFFIX_FLAG]            NVARCHAR (1)   NULL,
    [WCS_ENABLED]                    NVARCHAR (1)   NULL,
    [ALLOW_DIFFERENT_STATUS]         FLOAT (53)     NULL,
    [CHILD_LOT_ALPHA_PREFIX]         NVARCHAR (30)  NULL,
    [CHILD_LOT_NUMBER_LENGTH]        FLOAT (53)     NULL,
    [CHILD_LOT_VALIDATION_FLAG]      NVARCHAR (1)   NULL,
    [CHILD_LOT_ZERO_PADDING_FLAG]    NVARCHAR (1)   NULL,
    [COPY_LOT_ATTRIBUTE_FLAG]        NVARCHAR (1)   NULL,
    [CREATE_LOT_UOM_CONVERSION]      FLOAT (53)     NULL,
    [GENEALOGY_FORMULA_SECURITY]     NVARCHAR (1)   NULL,
    [PARENT_CHILD_GENERATION_FLAG]   NVARCHAR (1)   NULL,
    [RULES_OVERRIDE_LOT_RESERVATION] NVARCHAR (1)   NULL,
    [AUTO_DEL_ALLOC_FLAG]            NVARCHAR (1)   NULL,
    [RFID_VERIF_PCNT_THRESHOLD]      FLOAT (53)     NULL,
    [YARD_MANAGEMENT_ENABLED_FLAG]   NVARCHAR (1)   NULL,
    [TRADING_PARTNER_ORG_FLAG]       NVARCHAR (1)   NULL,
    [DEFERRED_COGS_ACCOUNT]          FLOAT (53)     NULL,
    [DEFAULT_CROSSDOCK_CRITERIA_ID]  FLOAT (53)     NULL,
    [ENFORCE_LOCATOR_ALIS_UNQ_FLAG]  NVARCHAR (1)   NULL,
    [EPC_GENERATION_ENABLED_FLAG]    NVARCHAR (1)   NULL,
    [COMPANY_PREFIX]                 NVARCHAR (30)  NULL,
    [COMPANY_PREFIX_INDEX]           NVARCHAR (30)  NULL,
    [COMMERCIAL_GOVT_ENTITY_NUMBER]  NVARCHAR (30)  NULL,
    [LABOR_MANAGEMENT_ENABLED_FLAG]  NVARCHAR (1)   NULL,
    [DEFAULT_STATUS_ID]              FLOAT (53)     NULL,
    [LCM_ENABLED_FLAG]               NVARCHAR (1)   NULL,
    [LCM_VAR_ACCOUNT]                FLOAT (53)     NULL,
    [OPSM_ENABLED_FLAG]              NVARCHAR (1)   NULL,
    [ALLOCATE_LOT_FLAG]              NVARCHAR (1)   NULL,
    [CAT_WT_ACCOUNT]                 FLOAT (53)     NULL,
    [TRADING_PARTNER_ORG_TYPE]       FLOAT (53)     NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)  NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000) NOT NULL
);

