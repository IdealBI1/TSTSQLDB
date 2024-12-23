﻿CREATE TABLE [LND].[LND_EBS_PO_LINE_LOCATIONS_ALL] (
    [LINE_LOCATION_ID]               NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]               NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]                NVARCHAR (4000) NULL,
    [PO_HEADER_ID]                   NVARCHAR (4000) NULL,
    [PO_LINE_ID]                     NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]              NVARCHAR (4000) NULL,
    [CREATION_DATE]                  NVARCHAR (4000) NULL,
    [CREATED_BY]                     NVARCHAR (4000) NULL,
    [QUANTITY]                       NVARCHAR (4000) NULL,
    [QUANTITY_RECEIVED]              NVARCHAR (4000) NULL,
    [QUANTITY_ACCEPTED]              NVARCHAR (4000) NULL,
    [QUANTITY_REJECTED]              NVARCHAR (4000) NULL,
    [QUANTITY_BILLED]                NVARCHAR (4000) NULL,
    [QUANTITY_CANCELLED]             NVARCHAR (4000) NULL,
    [UNIT_MEAS_LOOKUP_CODE]          NVARCHAR (4000) NULL,
    [PO_RELEASE_ID]                  NVARCHAR (4000) NULL,
    [SHIP_TO_LOCATION_ID]            NVARCHAR (4000) NULL,
    [SHIP_VIA_LOOKUP_CODE]           NVARCHAR (4000) NULL,
    [NEED_BY_DATE]                   NVARCHAR (4000) NULL,
    [PROMISED_DATE]                  NVARCHAR (4000) NULL,
    [LAST_ACCEPT_DATE]               NVARCHAR (4000) NULL,
    [PRICE_OVERRIDE]                 NVARCHAR (4000) NULL,
    [ENCUMBERED_FLAG]                NVARCHAR (4000) NULL,
    [ENCUMBERED_DATE]                NVARCHAR (4000) NULL,
    [UNENCUMBERED_QUANTITY]          NVARCHAR (4000) NULL,
    [FOB_LOOKUP_CODE]                NVARCHAR (4000) NULL,
    [FREIGHT_TERMS_LOOKUP_CODE]      NVARCHAR (4000) NULL,
    [TAXABLE_FLAG]                   NVARCHAR (4000) NULL,
    [TAX_NAME]                       NVARCHAR (4000) NULL,
    [ESTIMATED_TAX_AMOUNT]           NVARCHAR (4000) NULL,
    [FROM_HEADER_ID]                 NVARCHAR (4000) NULL,
    [FROM_LINE_ID]                   NVARCHAR (4000) NULL,
    [FROM_LINE_LOCATION_ID]          NVARCHAR (4000) NULL,
    [START_DATE]                     NVARCHAR (4000) NULL,
    [END_DATE]                       NVARCHAR (4000) NULL,
    [LEAD_TIME]                      NVARCHAR (4000) NULL,
    [LEAD_TIME_UNIT]                 NVARCHAR (4000) NULL,
    [PRICE_DISCOUNT]                 NVARCHAR (4000) NULL,
    [TERMS_ID]                       NVARCHAR (4000) NULL,
    [APPROVED_FLAG]                  NVARCHAR (4000) NULL,
    [APPROVED_DATE]                  NVARCHAR (4000) NULL,
    [CLOSED_FLAG]                    NVARCHAR (4000) NULL,
    [CANCEL_FLAG]                    NVARCHAR (4000) NULL,
    [CANCELLED_BY]                   NVARCHAR (4000) NULL,
    [CANCEL_DATE]                    NVARCHAR (4000) NULL,
    [CANCEL_REASON]                  NVARCHAR (4000) NULL,
    [FIRM_STATUS_LOOKUP_CODE]        NVARCHAR (4000) NULL,
    [FIRM_DATE]                      NVARCHAR (4000) NULL,
    [ATTRIBUTE_CATEGORY]             NVARCHAR (4000) NULL,
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
    [UNIT_OF_MEASURE_CLASS]          NVARCHAR (4000) NULL,
    [ENCUMBER_NOW]                   NVARCHAR (4000) NULL,
    [ATTRIBUTE11]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE12]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE13]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE14]                    NVARCHAR (4000) NULL,
    [ATTRIBUTE15]                    NVARCHAR (4000) NULL,
    [INSPECTION_REQUIRED_FLAG]       NVARCHAR (4000) NULL,
    [RECEIPT_REQUIRED_FLAG]          NVARCHAR (4000) NULL,
    [QTY_RCV_TOLERANCE]              NVARCHAR (4000) NULL,
    [QTY_RCV_EXCEPTION_CODE]         NVARCHAR (4000) NULL,
    [ENFORCE_SHIP_TO_LOCATION_CODE]  NVARCHAR (4000) NULL,
    [ALLOW_SUBSTITUTE_RECEIPTS_FLAG] NVARCHAR (4000) NULL,
    [DAYS_EARLY_RECEIPT_ALLOWED]     NVARCHAR (4000) NULL,
    [DAYS_LATE_RECEIPT_ALLOWED]      NVARCHAR (4000) NULL,
    [RECEIPT_DAYS_EXCEPTION_CODE]    NVARCHAR (4000) NULL,
    [INVOICE_CLOSE_TOLERANCE]        NVARCHAR (4000) NULL,
    [RECEIVE_CLOSE_TOLERANCE]        NVARCHAR (4000) NULL,
    [SHIP_TO_ORGANIZATION_ID]        NVARCHAR (4000) NULL,
    [SHIPMENT_NUM]                   NVARCHAR (4000) NULL,
    [SOURCE_SHIPMENT_ID]             NVARCHAR (4000) NULL,
    [SHIPMENT_TYPE]                  NVARCHAR (4000) NULL,
    [CLOSED_CODE]                    NVARCHAR (4000) NULL,
    [REQUEST_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_APPLICATION_ID]         NVARCHAR (4000) NULL,
    [PROGRAM_ID]                     NVARCHAR (4000) NULL,
    [PROGRAM_UPDATE_DATE]            NVARCHAR (4000) NULL,
    [USSGL_TRANSACTION_CODE]         NVARCHAR (4000) NULL,
    [GOVERNMENT_CONTEXT]             NVARCHAR (4000) NULL,
    [RECEIVING_ROUTING_ID]           NVARCHAR (4000) NULL,
    [ACCRUE_ON_RECEIPT_FLAG]         NVARCHAR (4000) NULL,
    [CLOSED_REASON]                  NVARCHAR (4000) NULL,
    [CLOSED_DATE]                    NVARCHAR (4000) NULL,
    [CLOSED_BY]                      NVARCHAR (4000) NULL,
    [ORG_ID]                         NVARCHAR (4000) NULL,
    [QUANTITY_SHIPPED]               NVARCHAR (4000) NULL,
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
    [COUNTRY_OF_ORIGIN_CODE]         NVARCHAR (4000) NULL,
    [TAX_USER_OVERRIDE_FLAG]         NVARCHAR (4000) NULL,
    [MATCH_OPTION]                   NVARCHAR (4000) NULL,
    [TAX_CODE_ID]                    NVARCHAR (4000) NULL,
    [CALCULATE_TAX_FLAG]             NVARCHAR (4000) NULL,
    [CHANGE_PROMISED_DATE_REASON]    NVARCHAR (4000) NULL,
    [NOTE_TO_RECEIVER]               NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY]             NVARCHAR (4000) NULL,
    [SECONDARY_UNIT_OF_MEASURE]      NVARCHAR (4000) NULL,
    [PREFERRED_GRADE]                NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY_RECEIVED]    NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY_ACCEPTED]    NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY_REJECTED]    NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY_CANCELLED]   NVARCHAR (4000) NULL,
    [VMI_FLAG]                       NVARCHAR (4000) NULL,
    [CONSIGNED_FLAG]                 NVARCHAR (4000) NULL,
    [RETROACTIVE_DATE]               NVARCHAR (4000) NULL,
    [SUPPLIER_ORDER_LINE_NUMBER]     NVARCHAR (4000) NULL,
    [AMOUNT]                         NVARCHAR (4000) NULL,
    [AMOUNT_RECEIVED]                NVARCHAR (4000) NULL,
    [AMOUNT_BILLED]                  NVARCHAR (4000) NULL,
    [AMOUNT_CANCELLED]               NVARCHAR (4000) NULL,
    [AMOUNT_REJECTED]                NVARCHAR (4000) NULL,
    [AMOUNT_ACCEPTED]                NVARCHAR (4000) NULL,
    [DROP_SHIP_FLAG]                 NVARCHAR (4000) NULL,
    [SALES_ORDER_UPDATE_DATE]        NVARCHAR (4000) NULL,
    [TRANSACTION_FLOW_HEADER_ID]     NVARCHAR (4000) NULL,
    [FINAL_MATCH_FLAG]               NVARCHAR (4000) NULL,
    [MANUAL_PRICE_CHANGE_FLAG]       NVARCHAR (4000) NULL,
    [SHIPMENT_CLOSED_DATE]           NVARCHAR (4000) NULL,
    [CLOSED_FOR_RECEIVING_DATE]      NVARCHAR (4000) NULL,
    [CLOSED_FOR_INVOICE_DATE]        NVARCHAR (4000) NULL,
    [SECONDARY_QUANTITY_SHIPPED]     NVARCHAR (4000) NULL,
    [VALUE_BASIS]                    NVARCHAR (4000) NULL,
    [MATCHING_BASIS]                 NVARCHAR (4000) NULL,
    [PAYMENT_TYPE]                   NVARCHAR (4000) NULL,
    [DESCRIPTION]                    NVARCHAR (4000) NULL,
    [WORK_APPROVER_ID]               NVARCHAR (4000) NULL,
    [BID_PAYMENT_ID]                 NVARCHAR (4000) NULL,
    [QUANTITY_FINANCED]              NVARCHAR (4000) NULL,
    [AMOUNT_FINANCED]                NVARCHAR (4000) NULL,
    [QUANTITY_RECOUPED]              NVARCHAR (4000) NULL,
    [AMOUNT_RECOUPED]                NVARCHAR (4000) NULL,
    [RETAINAGE_WITHHELD_AMOUNT]      NVARCHAR (4000) NULL,
    [RETAINAGE_RELEASED_AMOUNT]      NVARCHAR (4000) NULL,
    [AMOUNT_SHIPPED]                 NVARCHAR (4000) NULL,
    [OUTSOURCED_ASSEMBLY]            NVARCHAR (4000) NULL,
    [TAX_ATTRIBUTE_UPDATE_CODE]      NVARCHAR (4000) NULL,
    [ORIGINAL_SHIPMENT_ID]           NVARCHAR (4000) NULL,
    [LCM_FLAG]                       NVARCHAR (4000) NULL,
    [UDA_TEMPLATE_ID]                NVARCHAR (4000) NULL,
    [DRAFT_ID]                       NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]            DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                  VARCHAR (8000)  NOT NULL
);

