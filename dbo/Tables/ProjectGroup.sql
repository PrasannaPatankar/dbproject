CREATE TABLE [dbo].[ProjectGroup] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (50) NULL,
    [Photo]           IMAGE         NULL,
    [Logo]            IMAGE         NULL,
    [Location]        TEXT          NULL,
    [Website]         NVARCHAR (50) NULL,
    [Latitude]        NVARCHAR (50) NULL,
    [Longitude]       NVARCHAR (50) NULL,
    [Zip]             NVARCHAR (50) NULL,
    [iFrameUrl]       NVARCHAR (50) NULL,
    [iFrameHeight]    NVARCHAR (50) NULL,
    [Description]     TEXT          NULL,
    [CreatedDate]     DATETIME      NULL,
    [CreatedByUserId] INT           NULL,
    [IsDeleted]       BIT           NULL,
    CONSTRAINT [PK_ProjectGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectGroup_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

