USE [Test]
GO

/****** Object:  Table [dbo].[articleType]    Script Date: 2020/12/7 12:50:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[articleType](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](200) NOT NULL,
	[userName] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeName] ASC,
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[articleType]  WITH CHECK ADD FOREIGN KEY([userName])
REFERENCES [dbo].[users] ([userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO


