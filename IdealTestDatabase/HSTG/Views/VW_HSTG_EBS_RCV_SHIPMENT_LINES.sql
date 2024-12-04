

CREATE VIEW "HSTG"."VW_HSTG_EBS_RCV_SHIPMENT_LINES"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:55 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_RCV_SHIPMENT_LINES"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "SHIPMENT_LINE_ID"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"SHIPMENT_HEADER_ID"
        ,"LINE_NUM"
        ,"CATEGORY_ID"
        ,"QUANTITY_SHIPPED"
        ,"QUANTITY_RECEIVED"
        ,"UNIT_OF_MEASURE"
        ,"ITEM_DESCRIPTION"
        ,"ITEM_ID"
        ,"ITEM_REVISION"
        ,"VENDOR_ITEM_NUM"
        ,"VENDOR_LOT_NUM"
        ,"UOM_CONVERSION_RATE"
        ,"SHIPMENT_LINE_STATUS_CODE"
        ,"SOURCE_DOCUMENT_CODE"
        ,"PO_HEADER_ID"
        ,"PO_RELEASE_ID"
        ,"PO_LINE_ID"
        ,"PO_LINE_LOCATION_ID"
        ,"PO_DISTRIBUTION_ID"
        ,"REQUISITION_LINE_ID"
        ,"REQ_DISTRIBUTION_ID"
        ,"ROUTING_HEADER_ID"
        ,"PACKING_SLIP"
        ,"FROM_ORGANIZATION_ID"
        ,"DELIVER_TO_PERSON_ID"
        ,"EMPLOYEE_ID"
        ,"DESTINATION_TYPE_CODE"
        ,"TO_ORGANIZATION_ID"
        ,"TO_SUBINVENTORY"
        ,"LOCATOR_ID"
        ,"DELIVER_TO_LOCATION_ID"
        ,"CHARGE_ACCOUNT_ID"
        ,"TRANSPORTATION_ACCOUNT_ID"
        ,"SHIPMENT_UNIT_PRICE"
        ,"TRANSFER_COST"
        ,"TRANSPORTATION_COST"
        ,"COMMENTS"
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
        ,"REASON_ID"
        ,"USSGL_TRANSACTION_CODE"
        ,"GOVERNMENT_CONTEXT"
        ,"REQUEST_ID"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
        ,"DESTINATION_CONTEXT"
        ,"PRIMARY_UNIT_OF_MEASURE"
        ,"EXCESS_TRANSPORT_REASON"
        ,"EXCESS_TRANSPORT_RESPONSIBLE"
        ,"EXCESS_TRANSPORT_AUTH_NUM"
        ,"ASN_LINE_FLAG"
        ,"ORIGINAL_ASN_PARENT_LINE_ID"
        ,"ORIGINAL_ASN_LINE_FLAG"
        ,"VENDOR_CUM_SHIPPED_QUANTITY"
        ,"NOTICE_UNIT_PRICE"
        ,"TAX_NAME"
        ,"TAX_AMOUNT"
        ,"INVOICE_STATUS_CODE"
        ,"CUM_COMPARISON_FLAG"
        ,"CONTAINER_NUM"
        ,"TRUCK_NUM"
        ,"BAR_CODE_LABEL"
        ,"TRANSFER_PERCENTAGE"
        ,"MRC_SHIPMENT_UNIT_PRICE"
        ,"MRC_TRANSFER_COST"
        ,"MRC_TRANSPORTATION_COST"
        ,"MRC_NOTICE_UNIT_PRICE"
        ,"SHIP_TO_LOCATION_ID"
        ,"COUNTRY_OF_ORIGIN_CODE"
        ,"OE_ORDER_HEADER_ID"
        ,"OE_ORDER_LINE_ID"
        ,"CUSTOMER_ITEM_NUM"
        ,"COST_GROUP_ID"
        ,"SECONDARY_QUANTITY_SHIPPED"
        ,"SECONDARY_QUANTITY_RECEIVED"
        ,"SECONDARY_UNIT_OF_MEASURE"
        ,"QC_GRADE"
        ,"MMT_TRANSACTION_ID"
        ,"ASN_LPN_ID"
        ,"AMOUNT"
        ,"AMOUNT_RECEIVED"
        ,"JOB_ID"
        ,"TIMECARD_ID"
        ,"TIMECARD_OVN"
        ,"OSA_FLAG"
        ,"REQUESTED_AMOUNT"
        ,"MATERIAL_STORED_AMOUNT"
        ,"APPROVAL_STATUS"
        ,"AMOUNT_SHIPPED"
        ,"LCM_SHIPMENT_LINE_ID"
        ,"UNIT_LANDED_COST"
        ,"EQUIPMENT_ID"
	,"META_RECORD_KEY"
    ,"META_EFFECTIVE_DATETIME"
    ,"META_EXPIRY_DATETIME"
    ,"META_CDC_OPERATION"
    ,"META_FILE_NAME"
    ,"META_CURRENT_RECORD_INDICATOR"
    ,"META_DELETE_INDICATOR"
    ,"META_RECORD_CHECKSUM"
    ,"META_RECORD_SOURCE"
    ,"META_ROW_ID"
    FROM "HSTG"."HSTG_EBS_RCV_SHIPMENT_LINES" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
