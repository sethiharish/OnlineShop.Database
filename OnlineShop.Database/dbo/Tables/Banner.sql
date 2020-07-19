CREATE TABLE [dbo].[Banner] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [Description] NVARCHAR (MAX) NULL,
    [ImageUrl]    NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED ([Id] ASC)
);

