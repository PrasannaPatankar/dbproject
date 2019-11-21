CREATE TABLE [dbo].[SOVChangeOrderLineItems] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [Description]      TEXT            NULL,
    [Amount]           DECIMAL (18, 2) NOT NULL,
    [CostCodeId]       INT             NOT NULL,
    [CostTypeId]       INT             NOT NULL,
    [ChangeOrderId]    INT             NOT NULL,
    [BudgetLineItemId] INT             NOT NULL,
    [CreatedDate]      DATETIME        NULL,
    [CreatedByUserId]  INT             NULL,
    [IsDeleted]        BIT             NULL,
    CONSTRAINT [PK_SOVChangeOrderLineItems_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SOVChangeOrderLineItems_BudgetLineItem] FOREIGN KEY ([BudgetLineItemId]) REFERENCES [dbo].[BudgetLineItem] ([Id]),
    CONSTRAINT [FK_SOVChangeOrderLineItems_ChangeOrders] FOREIGN KEY ([ChangeOrderId]) REFERENCES [dbo].[ChangeOrders] ([Id]),
    CONSTRAINT [FK_SOVChangeOrderLineItems_CostCodes] FOREIGN KEY ([CostCodeId]) REFERENCES [dbo].[CostCodes] ([Id]),
    CONSTRAINT [FK_SOVChangeOrderLineItems_CostTypes] FOREIGN KEY ([CostTypeId]) REFERENCES [dbo].[CostTypes] ([Id]),
    CONSTRAINT [FK_SOVChangeOrderLineItems_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

