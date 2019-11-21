CREATE TABLE [dbo].[DirectCosts] (
    [Id]               INT      IDENTITY (1, 1) NOT NULL,
    [DirectCostTypeId] INT      NOT NULL,
    [CreatedDate]      DATETIME NULL,
    [Status]           INT      NOT NULL,
    [VendorId]         INT      NULL,
    [EmployeeId]       INT      NULL,
    [Description]      INT      NULL,
    [ReceivedDate]     DATETIME NULL,
    [PaidDate]         DATETIME NULL,
    [CreatedByUserId]  INT      NULL,
    [IsDeleted]        BIT      NULL,
    CONSTRAINT [PK_DirectCosts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DirectCosts_DirectCostTypes] FOREIGN KEY ([DirectCostTypeId]) REFERENCES [dbo].[DirectCostTypes] ([Id]),
    CONSTRAINT [FK_DirectCosts_Users] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_DirectCosts_Users1] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_DirectCosts_Users2] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[Users] ([Id])
);

