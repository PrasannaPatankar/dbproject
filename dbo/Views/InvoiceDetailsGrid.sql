

CREATE VIEW [dbo].[InvoiceDetailsGrid] AS
Select * from (
Select ISNULL(InvoiceDetails.Id,0) As InvoiceDetailsId, ISNULL(SOVLineItems.Id,0) As SOVLineItemId, ISNULL(InvoiceDetails.InvoiceId,0) As InvoiceId, 
ISNULL(InvoiceDetails.PreviousAmount,0) As PreviousAmount, ISNULL(InvoiceDetails.WorkCompleted,0) As WorkCompleted, ISNULL(InvoiceDetails.MaterialsStored,0) As MaterialsStored,
ISNULL(InvoiceDetails.WorkRetainagePercent,0) As WorkRetainagePercent, ISNULL(InvoiceDetails.WorkRetainageAmount,0) As WorkRetainageAmount, 
ISNULL(InvoiceDetails.MaterialsRetainagePercent,0) As MaterialsRetainagePercent, ISNULL(InvoiceDetails.MaterialsRetainageAmount,0) As MaterialsRetainageAmount,
ISNULL(InvoiceDetails.WorkRetainageReleased,0) As WorkRetainageReleased, ISNULL(InvoiceDetails.CreatedDate,0) As CreatedDate,
ISNULL(InvoiceDetails.CreatedByUserId,0) As CreatedByUserId, ISNULL(Users.FirstName + ' '+ Users.LastName,'') As CreatedByUserName, ISNULL(SOVLineItems.Amount,0) As SOVAmount,
ISNULL(CostCodes.CostCodeWithCategory,'') As CostCodeWithCategory, ISNULL(SOVLineItems.ParentId,0) As ParentId, ISNULL(SOVLineItems.ParentTypeId,0) As ParentTypeId, 
ISNULL(SOVLineItems.Description,'') As SOVDescription, ISNULL(SOVLineItems.IsDeleted,0) As SOVIsDeleted, ISNULL(InvoiceDetails.IsDeleted,0) As InvoiceDetailsIsDeleted,
ISNULL(SOVLineItems.ContractId,0) As SovContractId, ISNULL(Invoices.[Status],0) As InvoiceStatus
from InvoiceDetails
Right Join SOVLineItems on SOVLineItems.Id = InvoiceDetails.SOVLineItemId
Left Join Invoices on Invoices.Id = InvoiceDetails.InvoiceId
Left Join CostCodes on CostCodes.Id = SOVLineItems.CostCodeId
Left Join Users on Users.Id = InvoiceDetails.CreatedByUserId) As tmp
Where SOVIsDeleted = 0 And InvoiceDetailsIsDeleted = 0
