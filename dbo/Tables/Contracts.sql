﻿CREATE TABLE [dbo].[Contracts] (
    [Id]                         INT           IDENTITY (1, 1) NOT NULL,
    [ProjectId]                  INT           NOT NULL,
    [Description]                NVARCHAR (50) NULL,
    [Status]                     INT           NULL,
    [OwnerCompanyId]             INT           NULL,
    [ContractorCompanyId]        INT           NULL,
    [ArchitectUserId]            INT           NULL,
    [DefaultRetainage]           FLOAT (53)    NULL,
    [StartDate]                  DATETIME      NULL,
    [TerminationDate]            DATETIME      NULL,
    [EstimatedCompletionDate]    DATETIME      NULL,
    [ActualCompletionDate]       DATETIME      NULL,
    [SignedContractReceivedDate] DATETIME      NULL,
    [Title]                      NVARCHAR (50) NOT NULL,
    [ContractDate]               DATETIME      NULL,
    [IssueOnDate]                DATETIME      NULL,
    [BillingAddress]             NVARCHAR (50) NULL,
    [ShippingAddress]            NVARCHAR (50) NULL,
    [PaymentTerms]               NVARCHAR (50) NULL,
    [ShipVia]                    NVARCHAR (50) NULL,
    [ContractTypeId]             INT           NOT NULL,
    [SubContractTypeId]          INT           NULL,
    [ContractSerialNumber]       INT           NULL,
    [CreatedDate]                DATETIME      NULL,
    [CreatedByUserId]            INT           NULL,
    [SubstantialCompletionDate]  DATETIME      NULL,
    [Notes]                      TEXT          NULL,
    [AssignedToUserId]           INT           NULL,
    [DeliveryDate]               DATETIME      NULL,
    CONSTRAINT [PK_PrimeContract] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Contracts_ContractTypes] FOREIGN KEY ([ContractTypeId]) REFERENCES [dbo].[ContractTypes] ([Id]),
    CONSTRAINT [FK_Contracts_SubContractTypes] FOREIGN KEY ([SubContractTypeId]) REFERENCES [dbo].[SubContractTypes] ([Id]),
    CONSTRAINT [FK_Contracts_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_PrimeContract_Client] FOREIGN KEY ([OwnerCompanyId]) REFERENCES [dbo].[Client] ([Id]),
    CONSTRAINT [FK_PrimeContract_Client1] FOREIGN KEY ([ContractorCompanyId]) REFERENCES [dbo].[Client] ([Id]),
    CONSTRAINT [FK_PrimeContract_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id]),
    CONSTRAINT [FK_PrimeContract_Users] FOREIGN KEY ([ArchitectUserId]) REFERENCES [dbo].[Users] ([Id])
);
