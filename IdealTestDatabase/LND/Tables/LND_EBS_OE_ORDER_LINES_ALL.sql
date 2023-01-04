﻿CREATE TABLE [LND].[LND_EBS_OE_ORDER_LINES_ALL] (
    [LINE_ID]                        NVARCHAR (4000) NULL,
    [ORG_ID]                         NVARCHAR (4000) NULL,
    [HEADER_ID]                      NVARCHAR (4000) NULL,
    [LINE_TYPE_ID]                   NVARCHAR (4000) NULL,
    [LINE_NUMBER]                    NVARCHAR (4000) NULL,
    [ORDERED_ITEM]                   NVARCHAR (4000) NULL,
    [REQUEST_DATE]                   NVARCHAR (4000) NULL,
    [PROMISE_DATE]                   NVARCHAR (4000) NULL,
    [SCHEDULE_SHIP_DATE]             NVARCHAR (4000) NULL,
    [ORDER_QUANTITY_UOM]             NVARCHAR (4000) NULL,
    [PRICING_QUANTITY]               NVARCHAR (4000) NULL,
    [PRICING_QUANTITY_UOM]           NVARCHAR (4000) NULL,
    [CANCELLED_QUANTITY]             NVARCHAR (4000) NULL,
    [SHIPPED_QUANTITY]               NVARCHAR (4000) NULL,
    [ORDERED_QUANTITY]               NVARCHAR (4000) NULL,
    [FULFILLED_QUANTITY]             NVARCHAR (4000) NULL,
    [SHIPPING_QUANTITY]              NVARCHAR (4000) NULL,
    [SHIPPING_QUANTITY_UOM]          NVARCHAR (4000) NULL,
    [DELIVERY_LEAD_TIME]             NVARCHAR (4000) NULL,
    [TAX_EXEMPT_FLAG]                NVARCHAR (4000) NULL,
    [TAX_EXEMPT_NUMBER]              NVARCHAR (4000) NULL,
    [TAX_EXEMPT_REASON_CODE]         NVARCHAR (4000) NULL,
    [SHIP_FROM_ORG_ID]               NVARCHAR (4000) NULL,
    [SHIP_TO_ORG_ID]                 NVARCHAR (4000) NULL,
    [INVOICE_TO_ORG_ID]              NVARCHAR (4000) NULL,
    [DELIVER_TO_ORG_ID]              NVARCHAR (4000) NULL,
    [SHIP_TO_CONTACT_ID]             NVARCHAR (4000) NULL,
    [DELIVER_TO_CONTACT_ID]          NVARCHAR (4000) NULL,
    [INVOICE_TO_CONTACT_ID]          NVARCHAR (4000) NULL,
    [INTMED_SHIP_TO_ORG_ID]          NVARCHAR (4000) NULL,
    [INTMED_SHIP_TO_CONTACT_ID]      NVARCHAR (4000) NULL,
    [SOLD_FROM_ORG_ID]               NVARCHAR (4000) NULL,
    [SOLD_TO_ORG_ID]                 NVARCHAR (4000) NULL,
    [CUST_PO_NUMBER]                 NVARCHAR (4000) NULL,
    [SHIP_TOLERANCE_ABOVE]           NVARCHAR (4000) NULL,
    [SHIP_TOLERANCE_BELOW]           NVARCHAR (4000) NULL,
    [DEMAND_BUCKET_TYPE_CODE]        NVARCHAR (4000) NULL,
    [VEH_CUS_ITEM_CUM_KEY_ID]        NVARCHAR (4000) NULL,
    [RLA_SCHEDULE_TYPE_CODE]         NVARCHAR (4000) NULL,
    [CUSTOMER_DOCK_CODE]             NVARCHAR (4000) NULL,
    [CUSTOMER_JOB]                   NVARCHAR (4000) NULL,
    [CUSTOMER_PRODUCTION_LINE]       NVARCHAR (4000) NULL,
    [CUST_MODEL_SERIAL_NUMBER]       NVARCHAR (4000) NULL,
    [PROJECT_ID]                     NVARCHAR (4000) NULL,
    [TASK_ID]                        NVARCHAR (4000) NULL,
    [INVENTORY_ITEM_ID]              NVARCHAR (4000) NULL,
    [TAX_DATE]                       NVARCHAR (4000) NULL,
    [TAX_CODE]                       NVARCHAR (4000) NULL,
    [TAX_RATE]                       NVARCHAR (4000) NULL,
    [INVOICE_INTERFACE_STATUS_CODE]  NVARCHAR (4000) NULL,
    [DEMAND_CLASS_CODE]              NVARCHAR (4000) NULL,
    [PRICE_LIST_ID]                  NVARCHAR (4000) NULL,
    [PRICING_DATE]                   NVARCHAR (4000) NULL,
    [SHIPMENT_NUMBER]                NVARCHAR (4000) NULL,
    [AGREEMENT_ID]                   NVARCHAR (4000) NULL,
    [SHIPMENT_PRIORITY_CODE]         NVARCHAR (4000) NULL,
    [SHIPPING_METHOD_CODE]           NVARCHAR (4000) NULL,
    [FREIGHT_CARRIER_CODE]           NVARCHAR (4000) NULL,
    [FREIGHT_TERMS_CODE]             NVARCHAR (4000) NULL,
    [FOB_POINT_CODE]                 NVARCHAR (4000) NULL,
    [TAX_POINT_CODE]                 NVARCHAR (4000) NULL,
    [PAYMENT_TERM_ID]                NVARCHAR (4000) NULL,
    [INVOICING_RULE_ID]              NVARCHAR (4000) NULL,
    [ACCOUNTING_RULE_ID]             NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_TYPE_ID]        NVARCHAR (4000) NULL,
    [ORIG_SYS_DOCUMENT_REF]          NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_ID]             NVARCHAR (4000) NULL,
    [ORIG_SYS_LINE_REF]              NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_LINE_ID]        NVARCHAR (4000) NULL,
    [REFERENCE_LINE_ID]              NVARCHAR (4000) NULL,
    [REFERENCE_TYPE]                 NVARCHAR (4000) NULL,
    [REFERENCE_HEADER_ID]            NVARCHAR (4000) NULL,
    [ITEM_REVISION]                  NVARCHAR (4000) NULL,
    [UNIT_SELLING_PRICE]             NVARCHAR (4000) NULL,
    [UNIT_LIST_PRICE]                NVARCHAR (4000) NULL,
    [TAX_VALUE]                      NVARCHAR (4000) NULL,
    [CONTEXT]                        NVARCHAR (4000) NULL,
    [ATTRIBUTE1]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE2]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE3]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE4]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE5]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE6]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE7]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE8]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE9]                     NVARCHAR (4000) NULL,
    [ATTRIBUTE10]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE11]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                    NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]      NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE1]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE2]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE3]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE4]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE5]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE6]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE7]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE8]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE9]              NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE10]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE11]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE12]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE13]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE14]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE15]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE16]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE17]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE18]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE19]             NVARCHAR (4000) NULL,
    [GLOBAL_ATTRIBUTE20]             NVARCHAR (4000) NULL,
    [PRICING_CONTEXT]                NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE1]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE2]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE3]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE4]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE5]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE6]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE7]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE8]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE9]             NVARCHAR (4000) NULL,
    [PRICING_ATTRIBUTE10]            NVARCHAR (4000) NULL,
    [INDUSTRY_CONTEXT]               NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE1]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE2]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE3]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE4]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE5]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE6]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE7]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE8]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE9]            NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE10]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE11]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE13]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE12]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE14]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE15]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE16]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE17]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE18]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE19]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE20]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE21]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE22]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE23]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE24]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE25]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE26]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE27]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE28]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE29]           NVARCHAR (4000) NULL,
    [INDUSTRY_ATTRIBUTE30]           NVARCHAR (4000) NULL,
    [CREATION_DATE]                  NVARCHAR (4000) NULL,
    [CREATED_BY]                     NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]               NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]              NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]         NVARCHAR (4000) NULL,
    [PROGRAM_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [REQUEST_ID]                     NVARCHAR (4000) NULL,
    [TOP_MODEL_LINE_ID]              NVARCHAR (4000) NULL,
    [LINK_TO_LINE_ID]                NVARCHAR (4000) NULL,
    [COMPONENT_SEQUENCE_ID]          NVARCHAR (4000) NULL,
    [COMPONENT_CODE]                 NVARCHAR (4000) NULL,
    [CONFIG_DISPLAY_SEQUENCE]        NVARCHAR (4000) NULL,
    [SORT_ORDER]                     NVARCHAR (4000) NULL,
    [ITEM_TYPE_CODE]                 NVARCHAR (4000) NULL,
    [OPTION_NUMBER]                  NVARCHAR (4000) NULL,
    [OPTION_FLAG]                    NVARCHAR (4000) NULL,
    [DEP_PLAN_REQUIRED_FLAG]         NVARCHAR (4000) NULL,
    [VISIBLE_DEMAND_FLAG]            NVARCHAR (4000) NULL,
    [LINE_CATEGORY_CODE]             NVARCHAR (4000) NULL,
    [ACTUAL_SHIPMENT_DATE]           NVARCHAR (4000) NULL,
    [CUSTOMER_TRX_LINE_ID]           NVARCHAR (4000) NULL,
    [RETURN_CONTEXT]                 NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE1]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE2]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE3]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE4]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE5]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE6]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE7]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE8]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE9]              NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE10]             NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE11]             NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE12]             NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE13]             NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE14]             NVARCHAR (4000) NULL,
    [RETURN_ATTRIBUTE15]             NVARCHAR (4000) NULL,
    [ACTUAL_ARRIVAL_DATE]            NVARCHAR (4000) NULL,
    [ATO_LINE_ID]                    NVARCHAR (4000) NULL,
    [AUTO_SELECTED_QUANTITY]         NVARCHAR (4000) NULL,
    [COMPONENT_NUMBER]               NVARCHAR (4000) NULL,
    [EARLIEST_ACCEPTABLE_DATE]       NVARCHAR (4000) NULL,
    [EXPLOSION_DATE]                 NVARCHAR (4000) NULL,
    [LATEST_ACCEPTABLE_DATE]         NVARCHAR (4000) NULL,
    [MODEL_GROUP_NUMBER]             NVARCHAR (4000) NULL,
    [SCHEDULE_ARRIVAL_DATE]          NVARCHAR (4000) NULL,
    [SHIP_MODEL_COMPLETE_FLAG]       NVARCHAR (4000) NULL,
    [SCHEDULE_STATUS_CODE]           NVARCHAR (4000) NULL,
    [SOURCE_TYPE_CODE]               NVARCHAR (4000) NULL,
    [CANCELLED_FLAG]                 NVARCHAR (4000) NULL,
    [OPEN_FLAG]                      NVARCHAR (4000) NULL,
    [BOOKED_FLAG]                    NVARCHAR (4000) NULL,
    [SALESREP_ID]                    NVARCHAR (4000) NULL,
    [RETURN_REASON_CODE]             NVARCHAR (4000) NULL,
    [ARRIVAL_SET_ID]                 NVARCHAR (4000) NULL,
    [SHIP_SET_ID]                    NVARCHAR (4000) NULL,
    [SPLIT_FROM_LINE_ID]             NVARCHAR (4000) NULL,
    [CUST_PRODUCTION_SEQ_NUM]        NVARCHAR (4000) NULL,
    [AUTHORIZED_TO_SHIP_FLAG]        NVARCHAR (4000) NULL,
    [OVER_SHIP_REASON_CODE]          NVARCHAR (4000) NULL,
    [OVER_SHIP_RESOLVED_FLAG]        NVARCHAR (4000) NULL,
    [ORDERED_ITEM_ID]                NVARCHAR (4000) NULL,
    [ITEM_IDENTIFIER_TYPE]           NVARCHAR (4000) NULL,
    [CONFIGURATION_ID]               NVARCHAR (4000) NULL,
    [COMMITMENT_ID]                  NVARCHAR (4000) NULL,
    [SHIPPING_INTERFACED_FLAG]       NVARCHAR (4000) NULL,
    [CREDIT_INVOICE_LINE_ID]         NVARCHAR (4000) NULL,
    [FIRST_ACK_CODE]                 NVARCHAR (4000) NULL,
    [FIRST_ACK_DATE]                 NVARCHAR (4000) NULL,
    [LAST_ACK_CODE]                  NVARCHAR (4000) NULL,
    [LAST_ACK_DATE]                  NVARCHAR (4000) NULL,
    [PLANNING_PRIORITY]              NVARCHAR (4000) NULL,
    [ORDER_SOURCE_ID]                NVARCHAR (4000) NULL,
    [ORIG_SYS_SHIPMENT_REF]          NVARCHAR (4000) NULL,
    [CHANGE_SEQUENCE]                NVARCHAR (4000) NULL,
    [DROP_SHIP_FLAG]                 NVARCHAR (4000) NULL,
    [CUSTOMER_LINE_NUMBER]           NVARCHAR (4000) NULL,
    [CUSTOMER_SHIPMENT_NUMBER]       NVARCHAR (4000) NULL,
    [CUSTOMER_ITEM_NET_PRICE]        NVARCHAR (4000) NULL,
    [CUSTOMER_PAYMENT_TERM_ID]       NVARCHAR (4000) NULL,
    [FULFILLED_FLAG]                 NVARCHAR (4000) NULL,
    [END_ITEM_UNIT_NUMBER]           NVARCHAR (4000) NULL,
    [CONFIG_HEADER_ID]               NVARCHAR (4000) NULL,
    [CONFIG_REV_NBR]                 NVARCHAR (4000) NULL,
    [MFG_COMPONENT_SEQUENCE_ID]      NVARCHAR (4000) NULL,
    [SHIPPING_INSTRUCTIONS]          NVARCHAR (4000) NULL,
    [PACKING_INSTRUCTIONS]           NVARCHAR (4000) NULL,
    [INVOICED_QUANTITY]              NVARCHAR (4000) NULL,
    [REFERENCE_CUSTOMER_TRX_LINE_ID] NVARCHAR (4000) NULL,
    [SPLIT_BY]                       NVARCHAR (4000) NULL,
    [LINE_SET_ID]                    NVARCHAR (4000) NULL,
    [SERVICE_TXN_REASON_CODE]        NVARCHAR (4000) NULL,
    [SERVICE_TXN_COMMENTS]           NVARCHAR (4000) NULL,
    [SERVICE_DURATION]               NVARCHAR (4000) NULL,
    [SERVICE_START_DATE]             NVARCHAR (4000) NULL,
    [SERVICE_END_DATE]               NVARCHAR (4000) NULL,
    [SERVICE_COTERMINATE_FLAG]       NVARCHAR (4000) NULL,
    [UNIT_LIST_PERCENT]              NVARCHAR (4000) NULL,
    [UNIT_SELLING_PERCENT]           NVARCHAR (4000) NULL,
    [UNIT_PERCENT_BASE_PRICE]        NVARCHAR (4000) NULL,
    [SERVICE_NUMBER]                 NVARCHAR (4000) NULL,
    [SERVICE_PERIOD]                 NVARCHAR (4000) NULL,
    [SHIPPABLE_FLAG]                 NVARCHAR (4000) NULL,
    [MODEL_REMNANT_FLAG]             NVARCHAR (4000) NULL,
    [RE_SOURCE_FLAG]                 NVARCHAR (4000) NULL,
    [FLOW_STATUS_CODE]               NVARCHAR (4000) NULL,
    [TP_CONTEXT]                     NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE1]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE2]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE3]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE4]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE5]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE6]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE7]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE8]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE9]                  NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE10]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE11]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE12]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE13]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE14]                 NVARCHAR (4000) NULL,
    [TP_ATTRIBUTE15]                 NVARCHAR (4000) NULL,
    [FULFILLMENT_METHOD_CODE]        NVARCHAR (4000) NULL,
    [MARKETING_SOURCE_CODE_ID]       NVARCHAR (4000) NULL,
    [SERVICE_REFERENCE_TYPE_CODE]    NVARCHAR (4000) NULL,
    [SERVICE_REFERENCE_LINE_ID]      NVARCHAR (4000) NULL,
    [SERVICE_REFERENCE_SYSTEM_ID]    NVARCHAR (4000) NULL,
    [CALCULATE_PRICE_FLAG]           NVARCHAR (4000) NULL,
    [UPGRADED_FLAG]                  NVARCHAR (4000) NULL,
    [REVENUE_AMOUNT]                 NVARCHAR (4000) NULL,
    [FULFILLMENT_DATE]               NVARCHAR (4000) NULL,
    [PREFERRED_GRADE]                NVARCHAR (4000) NULL,
    [ORDERED_QUANTITY2]              NVARCHAR (4000) NULL,
    [ORDERED_QUANTITY_UOM2]          NVARCHAR (4000) NULL,
    [SHIPPING_QUANTITY2]             NVARCHAR (4000) NULL,
    [CANCELLED_QUANTITY2]            NVARCHAR (4000) NULL,
    [SHIPPED_QUANTITY2]              NVARCHAR (4000) NULL,
    [SHIPPING_QUANTITY_UOM2]         NVARCHAR (4000) NULL,
    [FULFILLED_QUANTITY2]            NVARCHAR (4000) NULL,
    [MFG_LEAD_TIME]                  NVARCHAR (4000) NULL,
    [LOCK_CONTROL]                   NVARCHAR (4000) NULL,
    [SUBINVENTORY]                   NVARCHAR (4000) NULL,
    [UNIT_LIST_PRICE_PER_PQTY]       NVARCHAR (4000) NULL,
    [UNIT_SELLING_PRICE_PER_PQTY]    NVARCHAR (4000) NULL,
    [PRICE_REQUEST_CODE]             NVARCHAR (4000) NULL,
    [ORIGINAL_INVENTORY_ITEM_ID]     NVARCHAR (4000) NULL,
    [ORIGINAL_ORDERED_ITEM_ID]       NVARCHAR (4000) NULL,
    [ORIGINAL_ORDERED_ITEM]          NVARCHAR (4000) NULL,
    [ORIGINAL_ITEM_IDENTIFIER_TYPE]  NVARCHAR (4000) NULL,
    [ITEM_SUBSTITUTION_TYPE_CODE]    NVARCHAR (4000) NULL,
    [OVERRIDE_ATP_DATE_CODE]         NVARCHAR (4000) NULL,
    [LATE_DEMAND_PENALTY_FACTOR]     NVARCHAR (4000) NULL,
    [ACCOUNTING_RULE_DURATION]       NVARCHAR (4000) NULL,
    [ATTRIBUTE16]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE17]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE18]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE19]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE20]                    NVARCHAR (4000) NULL,
    [USER_ITEM_DESCRIPTION]          NVARCHAR (4000) NULL,
    [UNIT_COST]                      NVARCHAR (4000) NULL,
    [ITEM_RELATIONSHIP_TYPE]         NVARCHAR (4000) NULL,
    [BLANKET_LINE_NUMBER]            NVARCHAR (4000) NULL,
    [BLANKET_NUMBER]                 NVARCHAR (4000) NULL,
    [BLANKET_VERSION_NUMBER]         NVARCHAR (4000) NULL,
    [SALES_DOCUMENT_TYPE_CODE]       NVARCHAR (4000) NULL,
    [FIRM_DEMAND_FLAG]               NVARCHAR (4000) NULL,
    [EARLIEST_SHIP_DATE]             NVARCHAR (4000) NULL,
    [TRANSACTION_PHASE_CODE]         NVARCHAR (4000) NULL,
    [SOURCE_DOCUMENT_VERSION_NUMBER] NVARCHAR (4000) NULL,
    [PAYMENT_TYPE_CODE]              NVARCHAR (4000) NULL,
    [MINISITE_ID]                    NVARCHAR (4000) NULL,
    [END_CUSTOMER_ID]                NVARCHAR (4000) NULL,
    [END_CUSTOMER_CONTACT_ID]        NVARCHAR (4000) NULL,
    [END_CUSTOMER_SITE_USE_ID]       NVARCHAR (4000) NULL,
    [IB_OWNER]                       NVARCHAR (4000) NULL,
    [IB_CURRENT_LOCATION]            NVARCHAR (4000) NULL,
    [IB_INSTALLED_AT_LOCATION]       NVARCHAR (4000) NULL,
    [RETROBILL_REQUEST_ID]           NVARCHAR (4000) NULL,
    [ORIGINAL_LIST_PRICE]            NVARCHAR (4000) NULL,
    [SERVICE_CREDIT_ELIGIBLE_CODE]   NVARCHAR (4000) NULL,
    [ORDER_FIRMED_DATE]              NVARCHAR (4000) NULL,
    [ACTUAL_FULFILLMENT_DATE]        NVARCHAR (4000) NULL,
    [CHARGE_PERIODICITY_CODE]        NVARCHAR (4000) NULL,
    [CONTINGENCY_ID]                 NVARCHAR (4000) NULL,
    [REVREC_EVENT_CODE]              NVARCHAR (4000) NULL,
    [REVREC_EXPIRATION_DAYS]         NVARCHAR (4000) NULL,
    [ACCEPTED_QUANTITY]              NVARCHAR (4000) NULL,
    [ACCEPTED_BY]                    NVARCHAR (4000) NULL,
    [REVREC_COMMENTS]                NVARCHAR (4000) NULL,
    [REVREC_REFERENCE_DOCUMENT]      NVARCHAR (4000) NULL,
    [REVREC_SIGNATURE]               NVARCHAR (4000) NULL,
    [REVREC_SIGNATURE_DATE]          NVARCHAR (4000) NULL,
    [REVREC_IMPLICIT_FLAG]           NVARCHAR (4000) NULL,
    [BYPASS_SCH_FLAG]                NVARCHAR (4000) NULL,
    [PRE_EXPLODED_FLAG]              NVARCHAR (4000) NULL,
    [EQUIPMENT_ID]                   NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000)  NOT NULL
);

