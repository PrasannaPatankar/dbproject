CREATE TABLE [dbo].[AttachmentOwnerTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_AttachmentOwnerTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

