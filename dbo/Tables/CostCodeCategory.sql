CREATE TABLE [dbo].[CostCodeCategory] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [CategoryCode] NVARCHAR (50) NOT NULL,
    [Description]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CostCodeCategory] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CostCodeCategory]
    ON [dbo].[CostCodeCategory]([CategoryCode] ASC);

