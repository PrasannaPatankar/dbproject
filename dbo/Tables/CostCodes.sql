CREATE TABLE [dbo].[CostCodes] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [CategoryId]           INT           NOT NULL,
    [CostCode]             NVARCHAR (50) NOT NULL,
    [Description]          NVARCHAR (50) NOT NULL,
    [CostCodeWithCategory] NVARCHAR (50) NULL,
    CONSTRAINT [PK_CostCodes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CostCodes_CostCodeCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[CostCodeCategory] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CostCodes]
    ON [dbo].[CostCodes]([CostCodeWithCategory] ASC);

