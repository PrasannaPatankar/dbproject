﻿CREATE TABLE [dbo].[ContractTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_PrimeContractTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

