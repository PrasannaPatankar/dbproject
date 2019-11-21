CREATE TABLE [dbo].[Documents] (
    [Id]              INT                 IDENTITY (1, 1) NOT NULL,
    [Level]           [sys].[hierarchyid] NOT NULL,
    [ItemName]        NVARCHAR (50)       NOT NULL,
    [IsFolder]        BIT                 NOT NULL,
    [IsDeleted]       BIT                 CONSTRAINT [DF_Documents_IsDeleted] DEFAULT ((0)) NOT NULL,
    [CreatedDate]     DATETIME            NULL,
    [CreatedByUserId] INT                 NULL,
    CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Documents_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

