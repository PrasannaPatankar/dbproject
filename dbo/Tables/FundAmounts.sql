CREATE TABLE [dbo].[FundAmounts] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [FundSourceId]    INT             NOT NULL,
    [FundSeriesId]    INT             NOT NULL,
    [Amount]          DECIMAL (18, 2) NULL,
    [CreatedDate]     DATETIME        NOT NULL,
    [CreatedByUserId] INT             NOT NULL,
    CONSTRAINT [PK_FundAmounts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FundAmounts_FundSeries1] FOREIGN KEY ([FundSeriesId]) REFERENCES [dbo].[FundSeries] ([Id]),
    CONSTRAINT [FK_FundAmounts_FundSource] FOREIGN KEY ([FundSourceId]) REFERENCES [dbo].[FundSource] ([Id]),
    CONSTRAINT [FK_FundAmounts_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

