USE [Test]
GO

/****** Object:  Table [dbo].[comment]    Script Date: 2020/12/7 12:50:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](200) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[commentDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC,
	[title] ASC,
	[commentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[comment]  WITH CHECK ADD FOREIGN KEY([userName])
REFERENCES [dbo].[users] ([userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO


