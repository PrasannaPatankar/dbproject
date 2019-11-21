CREATE TABLE [dbo].[BudgetSnapShots] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (50) NOT NULL,
    [CreatedByUserId] INT           NOT NULL,
    [CreatedDate]     DATETIME      NOT NULL,
    [IsDeleted]       BIT           NULL,
    CONSTRAINT [PK_BudgetSnapShots] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetSnapShots_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

