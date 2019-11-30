SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderandpay](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[dateofpurchase] [date] NOT NULL,
	[model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[color] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty] [int] NOT NULL,
	[rate] [decimal](10, 2) NULL,
	[finalpayamt] [decimal](10, 2) NOT NULL,
	[username] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[paytype] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cardholdername] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cardno] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cardexpiry] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[deladdr] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mobile] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_orderandpay] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modelimg] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[color] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dateofpurchase] [date] NOT NULL,
	[qty] [int] NOT NULL,
	[rate] [decimal](10, 2) NULL,
	[payprice] [decimal](10, 2) NOT NULL,
	[paymode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[deladdr] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mobile] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[username] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[modelimg] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price] [decimal](10, 2) NULL,
	[status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admintable](
	[adminid] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[lastused] [datetime] NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_admintable] PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userreview](
	[username] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[profilepic] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rating] [int] NULL,
	[review] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[username] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[secquestion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[secanswer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[profilepic] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[supplierid] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[productmodel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[price] [decimal](10, 2) NULL,
	[qty] [int] NOT NULL,
	[offerrate] [int] NULL,
	[offerdesc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[productmodel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productfeature](
	[brand] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[model] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[os] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ram] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[camr] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[camf] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sensor] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rflash] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[fflash] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chipset] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[processor] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[architecture] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[battery] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[fprint] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[fposition] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[height] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[width] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[weight] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bcase] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[audiojack] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[color1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[color2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[color3] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[image1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[image2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[image3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[image4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[display] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[resolution] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[displaytype] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[touchscreen] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[simslot] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[simsize] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[network] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[volte] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[gps] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rating] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_productfeature] PRIMARY KEY CLUSTERED 
(
	[model] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[brand] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[category] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[supplierid] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[price] [decimal](10, 2) NULL,
	[qty] [int] NOT NULL,
	[status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)

GO
ALTER TABLE [dbo].[orderandpay] ADD  CONSTRAINT [DF_orderandpay_dateofpurchase]  DEFAULT (getdate()) FOR [dateofpurchase]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_supplier1] FOREIGN KEY([model])
REFERENCES [dbo].[supplier] ([productmodel])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_supplier1]
GO
