CREATE TABLE [dbo].[Attachments] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [OwnerId]             INT           NOT NULL,
    [Name]                NVARCHAR (50) NOT NULL,
    [CreatedByUserId]     INT           NOT NULL,
    [CreatedDate]         DATETIME      NOT NULL,
    [IsDeleted]           BIT           CONSTRAINT [DF_Attachments_IsDeleted] DEFAULT ((0)) NOT NULL,
    [AttachmentOwnerType] INT           NOT NULL,
    [UploadObjectId]      NVARCHAR (50) NOT NULL,
    [UploadUrl]           NVARCHAR (50) NOT NULL,
    [Testt] NCHAR(10) NULL, 
    CONSTRAINT [PK_Attachments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Attachments_AttachmentOwnerTypes] FOREIGN KEY ([AttachmentOwnerType]) REFERENCES [dbo].[AttachmentOwnerTypes] ([Id]),
    CONSTRAINT [FK_Attachments_Users] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

