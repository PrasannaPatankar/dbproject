-- =============================================
-- Author:		Prasanna Patankar
-- Create date: 05/09/2019
-- Description:	SP to get Project wise Budget line items with other details.
-- =============================================
CREATE PROCEDURE [dbo].[GetBudget] 
	-- Add the parameters for the stored procedure here
	@projectId int = 0
	--@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select CostCodeCategory.Id As CategoryId, CostCodeCategory.Description As CostCodeCategory, 
	CostCodes.Id As CostCodeId, CostCodes.CostCode As CostCode, CostCodes.CostCodeWithCategory As CostCodeWithCategory, CostCodes.Description As Description,
	CostTypes.Id As CostTypeId, CostTypes.Abbreviation As CostType, 
	BudgetLineItem.Id As BudgetLineItemId, BudgetLineItem.OriginalBudgetAmount As OriginalBudgetAmount from BudgetLineItem
	Join CostTypes On CostTypes.Id = BudgetLineItem.CostTypeId
	Join CostCodes On CostCodes.Id = BudgetLineItem.CostCodeId
	Join CostCodeCategory On CostCodeCategory.Id = CostCodes.CategoryId
	Join Budget On Budget.Id = BudgetLineItem.BudgetId
	Join Project On Project.Id = Budget.ProjectId
	Where Budget.ProjectId = @projectId And Project.IsDeleted = 0
	Order By CostCode, CostTypeId
END
