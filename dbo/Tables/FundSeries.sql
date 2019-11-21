CREATE TABLE [dbo].[FundSeries] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (50) NOT NULL,
    [IsActive]        BIT           NULL,
    [StartDate]       DATETIME      NOT NULL,
    [EndDate]         DATETIME      NOT NULL,
    [CreatedDate]     DATETIME      NULL,
    [CreatedByUserId] INT           NULL,
    CONSTRAINT [PK_FundSeries] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FundSeries_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

