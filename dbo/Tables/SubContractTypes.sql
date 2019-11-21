CREATE TABLE [dbo].[SubContractTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_SubContractTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

