CREATE TABLE [dbo].[Invoices] (
    [Id]                  INT             IDENTITY (1, 1) NOT NULL,
    [BillingPeriodId]     INT             NOT NULL,
    [InvoiceNumber]       INT             NULL,
    [StartDate]           DATETIME        NULL,
    [EndDate]             DATETIME        NULL,
    [BillingDate]         DATETIME        NULL,
    [Status]              INT             NULL,
    [PaymentDate]         DATETIME        NULL,
    [SubmittedDate]       DATETIME        NULL,
    [ContractCompanyId]   INT             NULL,
    [TotalProposedAmount] DECIMAL (18, 2) NULL,
    [Description]         TEXT            NULL,
    [ContractId]          INT             NOT NULL,
    [CreatedDate]         DATETIME        NULL,
    [CreatedByUserId]     INT             NULL,
    [IsDeleted]           BIT             NULL,
    CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Invoices_BillingPeriods] FOREIGN KEY ([BillingPeriodId]) REFERENCES [dbo].[BillingPeriods] ([Id]),
    CONSTRAINT [FK_Invoices_Contracts] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contracts] ([Id]),
    CONSTRAINT [FK_Invoices_Invoices] FOREIGN KEY ([Id]) REFERENCES [dbo].[Invoices] ([Id]),
    CONSTRAINT [FK_Invoices_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

