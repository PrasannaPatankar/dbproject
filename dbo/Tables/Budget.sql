CREATE TABLE [dbo].[Budget] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [IsActive]        BIT      NOT NULL,
    [ProjectId]       INT      NOT NULL,
    [CreatedDate]     DATETIME NOT NULL,
    [IsLocked]        BIT      NOT NULL,
    [CreatedByUserId] INT      NOT NULL,
    CONSTRAINT [PK_Budget] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Budget_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id]),
    CONSTRAINT [FK_Budget_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

