
CREATE PROCEDURE [DW].[usp_Update_Dim_TransactionSource]

/****************************************************************************
* Name:		usp_Update_Dim_TransactionSource
* Author:	Sameh Hassan
* Desc:		Inserts/updates the TransactionSource dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Truncate Table DW.Dim_TransactionSource 

Insert Into [DW].[Dim_TransactionSource] 
Select	* 
From	[DW].[Dim_TransactionSource_v]

