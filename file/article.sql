USE [Test]
GO

/****** Object:  Table [dbo].[article]    Script Date: 2020/12/7 12:48:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[article](
	[articleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[typeName] [nvarchar](200) NULL,
	[content] [nvarchar](400) NOT NULL,
	[publishDate] [date] NOT NULL,
	[modDate] [date] NOT NULL,
	[condition] [nvarchar](200) NULL,
	[userName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[content] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[article] ADD  DEFAULT ('∆Ù”√') FOR [condition]
GO

ALTER TABLE [dbo].[article]  WITH CHECK ADD FOREIGN KEY([typeName], [userName])
REFERENCES [dbo].[articleType] ([typeName], [userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[article]  WITH CHECK ADD CHECK  (([condition]='Ω˚”√' OR [condition]='∆Ù”√'))
GO


