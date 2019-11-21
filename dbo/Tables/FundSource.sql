CREATE TABLE [dbo].[FundSource] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (50) NOT NULL,
    [DisplayName]     NVARCHAR (50) NULL,
    [FundAccessLevel] INT           NOT NULL,
    [CreatedDate]     DATETIME      NULL,
    [CreatedByUserId] INT           NULL,
    CONSTRAINT [PK_FundSource] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FundSource_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

