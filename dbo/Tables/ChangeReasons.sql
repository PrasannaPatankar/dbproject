﻿CREATE TABLE [dbo].[ChangeReasons] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_ChangeReasons] PRIMARY KEY CLUSTERED ([Id] ASC)
);

