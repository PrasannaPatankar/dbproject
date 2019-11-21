CREATE TABLE [dbo].[BudgetSnapShotLineItem] (
    [Id]                       INT             IDENTITY (1, 1) NOT NULL,
    [BudgetSnapShotId]         INT             NOT NULL,
    [CostCodeId]               INT             NOT NULL,
    [CostTypeId]               INT             NOT NULL,
    [OriginalBudgetAmount]     DECIMAL (18, 2) NOT NULL,
    [BudgetId]                 INT             NOT NULL,
    [BudgetModificationAmount] DECIMAL (18, 2) NOT NULL,
    [CreatedDate]              DATETIME        NULL,
    [CreatedByUserId]          INT             NULL,
    [IsDeleted]                BIT             NULL,
    CONSTRAINT [PK_BudgetSnapShotLineItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetSnapShotLineItem_Budget] FOREIGN KEY ([BudgetId]) REFERENCES [dbo].[Budget] ([Id]),
    CONSTRAINT [FK_BudgetSnapShotLineItem_BudgetSnapShots] FOREIGN KEY ([BudgetSnapShotId]) REFERENCES [dbo].[BudgetSnapShots] ([Id]),
    CONSTRAINT [FK_BudgetSnapShotLineItem_CostCodes] FOREIGN KEY ([CostCodeId]) REFERENCES [dbo].[CostCodes] ([Id]),
    CONSTRAINT [FK_BudgetSnapShotLineItem_CostTypes] FOREIGN KEY ([CostTypeId]) REFERENCES [dbo].[CostTypes] ([Id]),
    CONSTRAINT [FK_BudgetSnapShotLineItem_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

