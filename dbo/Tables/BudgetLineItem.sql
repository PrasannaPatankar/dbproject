CREATE TABLE [dbo].[BudgetLineItem] (
    [Id]                       INT             IDENTITY (1, 1) NOT NULL,
    [CostCodeId]               INT             NOT NULL,
    [CostTypeId]               INT             NOT NULL,
    [OriginalBudgetAmount]     DECIMAL (18, 2) NOT NULL,
    [BudgetId]                 INT             NOT NULL,
    [BudgetModificationAmount] DECIMAL (18, 2) NOT NULL,
    [IsNonBudgeted]            BIT             NOT NULL,
    [CreatedDate]              DATETIME        NULL,
    [CreatedByUserId]          INT             NULL,
    [IsDeleted]                BIT             NULL,
    CONSTRAINT [PK_BudgetLineItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetLineItem_Budget] FOREIGN KEY ([BudgetId]) REFERENCES [dbo].[Budget] ([Id]),
    CONSTRAINT [FK_BudgetLineItem_CostCodes] FOREIGN KEY ([CostCodeId]) REFERENCES [dbo].[CostCodes] ([Id]),
    CONSTRAINT [FK_BudgetLineItem_CostTypes] FOREIGN KEY ([CostTypeId]) REFERENCES [dbo].[CostTypes] ([Id]),
    CONSTRAINT [FK_BudgetLineItem_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

