CREATE TABLE [dbo].[ToolsList] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ToolsList] PRIMARY KEY CLUSTERED ([Id] ASC)
);

