CREATE TABLE [dbo].[InvoiceContactList] (
    [Id]                INT      IDENTITY (1, 1) NOT NULL,
    [UserId]            INT      NOT NULL,
    [ParentId]          BIT      NOT NULL,
    [InvoiceParentType] INT      NOT NULL,
    [CreatedDate]       DATETIME NULL,
    [CreatedByUserId]   INT      NULL,
    [IsDeleted]         BIT      NULL,
    CONSTRAINT [PK_InvoiceContactList] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceContactList_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_InvoiceContactList_Users1] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

