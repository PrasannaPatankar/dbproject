CREATE TABLE [dbo].[Insurances] (
    [Id]                         INT             IDENTITY (1, 1) NOT NULL,
    [ClientId]                   INT             NOT NULL,
    [Type]                       NVARCHAR (50)   NULL,
    [InsuranceProviderName]      NVARCHAR (50)   NULL,
    [PolicyNumber]               INT             NOT NULL,
    [Limit]                      DECIMAL (18, 2) NULL,
    [IsInformationRecieved]      BIT             CONSTRAINT [DF_Insurances_IsInformationRecieved] DEFAULT ((0)) NOT NULL,
    [EffectiveDate]              DATETIME        NULL,
    [ExpirationDate]             DATETIME        NULL,
    [SendExpirationNotification] BIT             CONSTRAINT [DF_Insurances_SendExpirationNotification] DEFAULT ((0)) NULL,
    [Status]                     INT             NULL,
    [Notes]                      NVARCHAR (50)   NULL,
    [CreatedByUserId]            INT             NULL,
    [CreatedDate]                DATETIME        NULL,
    [IsDeleted]                  BIT             NULL,
    CONSTRAINT [PK_Insurances] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Insurances_Client] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]),
    CONSTRAINT [FK_Insurances_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

