CREATE TABLE [dbo].[CostTypes] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Label]        NVARCHAR (50) NOT NULL,
    [Abbreviation] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CostTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

