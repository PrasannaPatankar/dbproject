CREATE TABLE [dbo].[Transaction] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceId]       INT             NOT NULL,
    [Date]            DATETIME        NOT NULL,
    [PaymentNumber]   TEXT            NULL,
    [InvoiceNumber]   TEXT            NULL,
    [CheckNumber]     TEXT            NULL,
    [Notes]           TEXT            NULL,
    [Amount]          DECIMAL (18, 2) NOT NULL,
    [FundSourceId]    INT             NOT NULL,
    [CreatedDate]     DATETIME        NULL,
    [CreatedByUserId] INT             NULL,
    [IsDeleted]       BIT             NULL,
    [FundAmountId]    INT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Transaction_FundAmounts] FOREIGN KEY ([FundAmountId]) REFERENCES [dbo].[FundAmounts] ([Id]),
    CONSTRAINT [FK_Transaction_Invoices1] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]),
    CONSTRAINT [FK_Transaction_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

