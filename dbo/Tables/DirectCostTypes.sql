CREATE TABLE [dbo].[DirectCostTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_DirectCostTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

