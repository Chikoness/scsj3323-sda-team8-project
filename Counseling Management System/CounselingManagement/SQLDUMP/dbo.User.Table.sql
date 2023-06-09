USE [99018CD14EE6C000FC5D0A2861F6699F_J3323-SDA-TEAM8-PROJECT\COUNSELING MANAGEMENT SYSTEM\COUNSELINGMANAGEMENT\APP_DATA\CMUTM_DB.MDF]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/9/2023 12:40:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] NOT NULL,
	[fName] [varchar](50) NOT NULL,
	[lName] [varchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[occupation] [varchar](50) NULL,
	[phone] [nvarchar](20) NOT NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[faculty] [nvarchar](30) NULL,
	[age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
