USE [eticaretDB]
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[basketId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[TotalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[basketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriMenu]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriMenu](
	[CatMenuId] [int] IDENTITY(1,1) NOT NULL,
	[CatMenuName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CategoriMenu] PRIMARY KEY CLUSTERED 
(
	[CatMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChildCategories]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildCategories](
	[ChildCatId] [int] IDENTITY(1,1) NOT NULL,
	[ChildCatName] [nvarchar](50) NULL,
	[CatId] [int] NULL,
 CONSTRAINT [PK_ChildCategories] PRIMARY KEY CLUSTERED 
(
	[ChildCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChildDownCategories]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildDownCategories](
	[ChildDownId] [int] IDENTITY(1,1) NOT NULL,
	[ChildName] [nvarchar](50) NULL,
	[CatId] [int] NULL,
	[ChildCatId] [int] NULL,
 CONSTRAINT [PK_ChildDownCategories] PRIMARY KEY CLUSTERED 
(
	[ChildDownId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductPrice] [decimal](18, 0) NULL,
	[ProductOldPrice] [decimal](18, 0) NULL,
	[Picture] [nvarchar](max) NULL,
	[ProductDetails] [nvarchar](max) NULL,
	[ProductStatus] [nvarchar](50) NULL,
	[ProductStock] [int] NULL,
	[Stockfinished] [bit] NULL,
	[CatId] [int] NULL,
	[CatMenuId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 25.07.2017 13:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[SurName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[PaswordR] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Permission] [nvarchar](50) NULL,
	[Block] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_Users]
GO
ALTER TABLE [dbo].[ChildCategories]  WITH CHECK ADD  CONSTRAINT [FK_ChildCategories_Categories] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([CatId])
GO
ALTER TABLE [dbo].[ChildCategories] CHECK CONSTRAINT [FK_ChildCategories_Categories]
GO
ALTER TABLE [dbo].[ChildDownCategories]  WITH CHECK ADD  CONSTRAINT [FK_ChildDownCategories_Categories] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([CatId])
GO
ALTER TABLE [dbo].[ChildDownCategories] CHECK CONSTRAINT [FK_ChildDownCategories_Categories]
GO
ALTER TABLE [dbo].[ChildDownCategories]  WITH CHECK ADD  CONSTRAINT [FK_ChildDownCategories_ChildCategories] FOREIGN KEY([ChildCatId])
REFERENCES [dbo].[ChildCategories] ([ChildCatId])
GO
ALTER TABLE [dbo].[ChildDownCategories] CHECK CONSTRAINT [FK_ChildDownCategories_ChildCategories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([CatId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories1] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([CatId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CategoriMenu] FOREIGN KEY([CatMenuId])
REFERENCES [dbo].[CategoriMenu] ([CatMenuId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CategoriMenu]
GO
