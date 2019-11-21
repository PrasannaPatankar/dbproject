CREATE TABLE [dbo].[SOVLineItems] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [Description]      TEXT            NULL,
    [Amount]           DECIMAL (18, 2) NOT NULL,
    [CostCodeId]       INT             NOT NULL,
    [CostTypeId]       INT             NOT NULL,
    [ParentId]         INT             NOT NULL,
    [BudgetLineItemId] INT             NOT NULL,
    [CreatedDate]      DATETIME        NULL,
    [CreatedByUserId]  INT             NULL,
    [IsDeleted]        BIT             NULL,
    [ParentTypeId]     INT             NOT NULL,
    [ContractId]       INT             CONSTRAINT [DF__SOVLineIt__Contr__4321E620] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_SOVLineItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SOVLineItems_BudgetLineItem] FOREIGN KEY ([BudgetLineItemId]) REFERENCES [dbo].[BudgetLineItem] ([Id]),
    CONSTRAINT [FK_SOVLineItems_CostCodeCategory] FOREIGN KEY ([CostTypeId]) REFERENCES [dbo].[ContractTypes] ([Id]),
    CONSTRAINT [FK_SOVLineItems_CostCodes] FOREIGN KEY ([CostCodeId]) REFERENCES [dbo].[CostCodes] ([Id])
);

