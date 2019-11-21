CREATE TABLE [dbo].[UserPermissions] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [UserId]          INT      NOT NULL,
    [ToolId]          INT      NOT NULL,
    [AccessLevel]     INT      NOT NULL,
    [CreatedDate]     DATETIME NULL,
    [CreatedByUserId] INT      NULL,
    [IsDeleted]       BIT      NULL,
    CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserPermissions_ToolsList] FOREIGN KEY ([ToolId]) REFERENCES [dbo].[ToolsList] ([Id]),
    CONSTRAINT [FK_UserPermissions_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_UserPermissions_Users1] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

