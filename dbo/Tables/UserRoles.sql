CREATE TABLE [dbo].[UserRoles] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [Description] NVARCHAR (50) NULL,
    CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserRoles]
    ON [dbo].[UserRoles]([Name] ASC);

