CREATE TABLE [dbo].[InvoiceDetails] (
    [Id]                        INT             IDENTITY (1, 1) NOT NULL,
    [SOVLineItemId]             INT             NOT NULL,
    [InvoiceId]                 INT             NOT NULL,
    [PreviousAmount]            DECIMAL (18, 2) CONSTRAINT [DF_InvoiceDetails_PreviousAmount] DEFAULT ((0)) NULL,
    [WorkCompleted]             DECIMAL (18, 2) NULL,
    [MaterialsStored]           DECIMAL (18, 2) NULL,
    [WorkRetainagePercent]      FLOAT (53)      NULL,
    [WorkRetainageAmount]       DECIMAL (18, 2) NULL,
    [MaterialsRetainagePercent] FLOAT (53)      NULL,
    [MaterialsRetainageAmount]  DECIMAL (18, 2) NULL,
    [WorkRetainageReleased]     DECIMAL (18, 2) NULL,
    [IsDeleted]                 BIT             NULL,
    [CreatedDate]               DATETIME        NULL,
    [CreatedByUserId]           INT             NULL,
    CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceDetails_Invoices] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]),
    CONSTRAINT [FK_InvoiceDetails_SOVLineItems] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_InvoiceDetails_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

