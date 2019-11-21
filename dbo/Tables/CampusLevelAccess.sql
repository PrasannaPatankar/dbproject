CREATE TABLE [dbo].[CampusLevelAccess] (
    [Id]       INT IDENTITY (1, 1) NOT NULL,
    [UserId]   INT NOT NULL,
    [CampusId] INT NOT NULL,
    CONSTRAINT [PK_CampusLevelAccess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CampusLevelAccess_Campus] FOREIGN KEY ([CampusId]) REFERENCES [dbo].[Campus] ([Id]),
    CONSTRAINT [FK_CampusLevelAccess_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

