CREATE TABLE [dbo].[ProjectUserList] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [ProjectId]       INT      NOT NULL,
    [UserId]          INT      NOT NULL,
    [UserRoleId]      INT      NOT NULL,
    [CreatedDate]     DATETIME NULL,
    [CreatedByUserId] INT      NULL,
    [IsDeleted]       BIT      NULL,
    CONSTRAINT [PK_ProjectUserList] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectUserList_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id]),
    CONSTRAINT [FK_ProjectUserList_UserRoles] FOREIGN KEY ([UserRoleId]) REFERENCES [dbo].[UserRoles] ([Id]),
    CONSTRAINT [FK_ProjectUserList_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_ProjectUserList_Users1] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

