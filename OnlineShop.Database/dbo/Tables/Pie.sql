CREATE TABLE [dbo].[Pie] (
    [Id]                INT             IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (MAX)  NULL,
    [Price]             DECIMAL (18, 2) NOT NULL,
    [ShortDescription]  NVARCHAR (MAX)  NULL,
    [LongDescription]   NVARCHAR (MAX)  NULL,
    [InStock]           BIT             NOT NULL,
    [IsPieOfTheWeek]    BIT             NOT NULL,
    [ImageUrl]          NVARCHAR (MAX)  NULL,
    [ThumbnailImageUrl] NVARCHAR (MAX)  NULL,
    [CategoryId]        INT             NOT NULL,
    CONSTRAINT [PK_Pie] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Pie_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Pie_CategoryId]
    ON [dbo].[Pie]([CategoryId] ASC);

