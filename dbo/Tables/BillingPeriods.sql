CREATE TABLE [dbo].[BillingPeriods] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [FromDate]        DATETIME      NULL,
    [ToDate]          DATETIME      NULL,
    [DueDate]         DATETIME      NULL,
    [Description]     NVARCHAR (50) NULL,
    [Status]          INT           NULL,
    [IsDeleted]       BIT           NULL,
    [IsAutomatic]     BIT           NULL,
    [Frequency]       INT           NULL,
    [StartDate]       DATETIME      NULL,
    [EndDate]         DATETIME      NULL,
    [CreatedDate]     DATETIME      NULL,
    [CreatedByUserId] INT           NULL,
    CONSTRAINT [PK_BillingPeriods] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BillingPeriods_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

