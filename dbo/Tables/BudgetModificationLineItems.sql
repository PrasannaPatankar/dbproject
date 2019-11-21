CREATE TABLE [dbo].[BudgetModificationLineItems] (
    [Id]                       INT             IDENTITY (1, 1) NOT NULL,
    [FromBudgetLineItemId]     INT             NOT NULL,
    [ToBudgetLineItemId]       INT             NOT NULL,
    [BudgetModificationAmount] DECIMAL (18, 2) NOT NULL,
    [BudgetModificationDate]   DATETIME        NOT NULL,
    [CreatedDate]              DATETIME        NULL,
    [CreatedByUserId]          INT             NULL,
    [IsDeleted]                BIT             NULL,
    CONSTRAINT [PK_BudgetModificationLineItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetModificationLineItems_BudgetLineItem] FOREIGN KEY ([FromBudgetLineItemId]) REFERENCES [dbo].[BudgetLineItem] ([Id]),
    CONSTRAINT [FK_BudgetModificationLineItems_BudgetLineItem1] FOREIGN KEY ([ToBudgetLineItemId]) REFERENCES [dbo].[BudgetLineItem] ([Id]),
    CONSTRAINT [FK_BudgetModificationLineItems_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

