CREATE TABLE [dbo].[Campus] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [Address]           NVARCHAR (50) NULL,
    [ClientId]          INT           NULL,
    [IsActive]          BIT           CONSTRAINT [DF_Campus_IsActive] DEFAULT ((1)) NULL,
    [IsCorporateOffice] BIT           CONSTRAINT [DF_Campus_IsCorporateAddress] DEFAULT ((0)) NULL,
    [Phone]             TEXT          NULL,
    [Fax]               TEXT          NULL,
    [City]              NVARCHAR (50) NULL,
    [State]             NVARCHAR (50) NULL,
    [Zip]               NVARCHAR (50) NULL,
    [Country]           NVARCHAR (50) CONSTRAINT [DF_Campus_Country] DEFAULT (N'United States Of America') NULL,
    [CampusLogo]        IMAGE         NULL,
    CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Campus_Client] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Campus_States] FOREIGN KEY ([State]) REFERENCES [dbo].[States] ([Id])
);

