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
SET IDENTITY_INSERT [dbo].[orderandpay] ON 

GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (94, CAST(0x173E0B00 AS Date), N'Apple Iphone X', N'jet black', 1, CAST(83499.00 AS Decimal(10, 2)), CAST(83499.00 AS Decimal(10, 2)), N'team123', N'COD', NULL, NULL, NULL, N'7th cross road,Rajaaji Nagar Bangalore
576358,Karnataka', N'1115848510', N'Order Placed')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (95, CAST(0x173E0B00 AS Date), N'Lenovo K8 Plus', N'gold', 1, CAST(9999.00 AS Decimal(10, 2)), CAST(9999.00 AS Decimal(10, 2)), N'team123', N'COD', NULL, NULL, NULL, N'Kundapura 576231', N'1124214587', N'Order Placed')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (96, CAST(0x173E0B00 AS Date), N'Coolpad Note 5 Lite C', N'champagne Black', 1, CAST(6180.00 AS Decimal(10, 2)), CAST(6180.00 AS Decimal(10, 2)), N'team123', N'Card', N'kiran poojary                 ', N'2365147856942154', N'07-2022', N'Rajaji Nagar 3rd Cross Bangalore
576521,Karnataka', N'1111111111', N'Order Placed')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (97, CAST(0x173E0B00 AS Date), N'Oppo F5', N'black', 1, CAST(17999.00 AS Decimal(10, 2)), CAST(17999.00 AS Decimal(10, 2)), N'team123', N'Card', N'kiran                         ', N'8458965459', N'01-2019', N'aaa', N'1124121421', N'Order Placed')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (98, CAST(0x173E0B00 AS Date), N'Lenovo K8 Plus', N'gold', 1, CAST(9999.00 AS Decimal(10, 2)), CAST(9999.00 AS Decimal(10, 2)), N'team123', N'Card', N'kiranpoojary                  ', N'1234567891234561', N'01-2019', N'aa', N'9632860902', N'Cancelled By SmartMobileMart')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (99, CAST(0x173E0B00 AS Date), N'Moto C Plus', N'black', 2, CAST(6999.00 AS Decimal(10, 2)), CAST(13998.00 AS Decimal(10, 2)), N'team123', N'COD', NULL, NULL, NULL, N'aa', N'6325417895', N'Cancelled By Customer')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (101, CAST(0x183E0B00 AS Date), N'Oppo F5', N'black', 1, CAST(17999.00 AS Decimal(10, 2)), CAST(17999.00 AS Decimal(10, 2)), N'team123', N'COD', NULL, NULL, NULL, N'dfgh', N'456321478k', N'Cancelled By Customer')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (102, CAST(0x193E0B00 AS Date), N'Coolpad Note 5 Lite C', N'champagne Black', 1, CAST(6180.00 AS Decimal(10, 2)), CAST(6180.00 AS Decimal(10, 2)), N'team123', N'Card', N'kiran                         ', N'856321475896541', N'01-2022', N'gshjws', N'4569856328', N'Cancelled By SmartMobileMart')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (103, CAST(0x1A3E0B00 AS Date), N'Vivo V5', N'black', 1, CAST(13800.00 AS Decimal(10, 2)), CAST(13800.00 AS Decimal(10, 2)), N'kiran123', N'COD', NULL, NULL, NULL, N'kukkikatte', N'9632860902', N'Order Placed')
GO
INSERT [dbo].[orderandpay] ([orderid], [dateofpurchase], [model], [color], [qty], [rate], [finalpayamt], [username], [paytype], [cardholdername], [cardno], [cardexpiry], [deladdr], [mobile], [status]) VALUES (104, CAST(0x1A3E0B00 AS Date), N'Apple Iphone X', N'jet black', 1, CAST(83499.00 AS Decimal(10, 2)), CAST(83499.00 AS Decimal(10, 2)), N'kiran123', N'Card', N'kiran                         ', N'123465816234', N'01-2019', N'dfdf', N'9632860902', N'Approved and Order Placed')
GO
SET IDENTITY_INSERT [dbo].[orderandpay] OFF
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
SET IDENTITY_INSERT [dbo].[order] ON 

GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (94, N'team123', N'Apple Iphone X', N'images\Apple\Apple Iphone X_Image1.jpg', N'jet black', CAST(0x173E0B00 AS Date), 1, CAST(83499.00 AS Decimal(10, 2)), CAST(83499.00 AS Decimal(10, 2)), N'COD', N'7th cross road,Rajaaji Nagar Bangalore
576358,Karnataka', N'1115848510', N'Order Placed')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (95, N'team123', N'Lenovo K8 Plus', N'images\Lenovo\Lenovo K8 Plus_Image1.jpg', N'gold', CAST(0x173E0B00 AS Date), 1, CAST(9999.00 AS Decimal(10, 2)), CAST(9999.00 AS Decimal(10, 2)), N'COD', N'Kundapura 576231', N'1124214587', N'Order Placed')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (96, N'team123', N'Coolpad Note 5 Lite C', N'images\Coolpad\Coolpad Note 5 Lite C_Image1.jpg', N'champagne Black', CAST(0x173E0B00 AS Date), 1, CAST(6180.00 AS Decimal(10, 2)), CAST(6180.00 AS Decimal(10, 2)), N'Card', N'Rajaji Nagar 3rd Cross Bangalore
576521,Karnataka', N'1111111111', N'Order Placed')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (97, N'team123', N'Oppo F5', N'images\Oppo\Oppo F5_Image1.jpg', N'black', CAST(0x173E0B00 AS Date), 1, CAST(17999.00 AS Decimal(10, 2)), CAST(17999.00 AS Decimal(10, 2)), N'Card', N'aaa', N'1124121421', N'Order Placed')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (98, N'team123', N'Lenovo K8 Plus', N'images\Lenovo\Lenovo K8 Plus_Image1.jpg', N'gold', CAST(0x173E0B00 AS Date), 1, CAST(9999.00 AS Decimal(10, 2)), CAST(9999.00 AS Decimal(10, 2)), N'Card', N'aa', N'9632860902', N'Cancelled By SmartMobileMart')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (99, N'team123', N'Moto C Plus', N'images\Motorola\Moto C Plus_Image1.jpg', N'black', CAST(0x173E0B00 AS Date), 2, CAST(6999.00 AS Decimal(10, 2)), CAST(13998.00 AS Decimal(10, 2)), N'COD', N'aa', N'6325417895', N'You Cancelled this Order')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (101, N'team123', N'Oppo F5', N'images\Oppo\Oppo F5_Image1.jpg', N'black', CAST(0x183E0B00 AS Date), 1, CAST(17999.00 AS Decimal(10, 2)), CAST(17999.00 AS Decimal(10, 2)), N'COD', N'dfgh', N'456321478k', N'You Cancelled this Order')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (102, N'team123', N'Coolpad Note 5 Lite C', N'images\Coolpad\Coolpad Note 5 Lite C_Image1.jpg', N'champagne Black', CAST(0x193E0B00 AS Date), 1, CAST(6180.00 AS Decimal(10, 2)), CAST(6180.00 AS Decimal(10, 2)), N'Card', N'gshjws', N'4569856328', N'Cancelled By SmartMobileMart')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (103, N'kiran123', N'Vivo V5', N'images\Vivo\Vivo V5_Image1.jpg', N'black', CAST(0x1A3E0B00 AS Date), 1, CAST(13800.00 AS Decimal(10, 2)), CAST(13800.00 AS Decimal(10, 2)), N'COD', N'kukkikatte', N'9632860902', N'Order Placed')
GO
INSERT [dbo].[order] ([orderid], [username], [model], [modelimg], [color], [dateofpurchase], [qty], [rate], [payprice], [paymode], [deladdr], [mobile], [status]) VALUES (104, N'kiran123', N'Apple Iphone X', N'images\Apple\Apple Iphone X_Image1.jpg', N'jet black', CAST(0x1A3E0B00 AS Date), 1, CAST(83499.00 AS Decimal(10, 2)), CAST(83499.00 AS Decimal(10, 2)), N'Card', N'dfdf', N'9632860902', N'Approved and Order Placed')
GO
SET IDENTITY_INSERT [dbo].[order] OFF
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
INSERT [dbo].[cart] ([username], [model], [modelimg], [price], [status]) VALUES (N'team123', N'Oppo F5', N'images\Oppo\Oppo F5_Image1.jpg', CAST(17999.00 AS Decimal(10, 2)), N'Available')
GO
INSERT [dbo].[cart] ([username], [model], [modelimg], [price], [status]) VALUES (N'team123', N'Lenovo Vibe K5 Note', N'images\Lenovo\Lenovo Vibe K5 Note_Image1.jpg', CAST(9999.00 AS Decimal(10, 2)), N'Available')
GO
INSERT [dbo].[cart] ([username], [model], [modelimg], [price], [status]) VALUES (N'vinay789', N'Apple Iphone 6', N'images\Apple\Apple Iphone 6_Image1.jpg', CAST(25299.00 AS Decimal(10, 2)), N'Available')
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
INSERT [dbo].[admintable] ([adminid], [password], [lastused], [role]) VALUES (N'administrator', N'admin', CAST(0x0000A85D00000000 AS DateTime), 7)
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
INSERT [dbo].[userreview] ([username], [profilepic], [model], [rating], [review]) VALUES (N'team123', N'images\profile\team123.jpg', N'Apple Iphone 6', 3, N'Nice Product')
GO
INSERT [dbo].[userreview] ([username], [profilepic], [model], [rating], [review]) VALUES (N'alfred', N'images\profile\alfred.jpg', N'Apple Iphone X', 4, N'Nice Product,good one')
GO
INSERT [dbo].[userreview] ([username], [profilepic], [model], [rating], [review]) VALUES (N'alfred', N'images\profile\alfred.jpg', N'Lenovo K8 Plus', 5, N'superb product,world class quality')
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
INSERT [dbo].[user] ([username], [password], [email], [secquestion], [secanswer], [profilepic]) VALUES (N'alfred', N'123456789', N'aisa@gmail.com', N'My ATM Pin', N'1234', N'images\profile\alfred.jpg')
GO
INSERT [dbo].[user] ([username], [password], [email], [secquestion], [secanswer], [profilepic]) VALUES (N'kiran123', N'123kiran123', N'kiran@gmail.com', N'my ATM PIN', N'1234', N'images\profile\kiran123.jpg')
GO
INSERT [dbo].[user] ([username], [password], [email], [secquestion], [secanswer], [profilepic]) VALUES (N'team123', N'123team123', N'project_team@gmail.com', N'Group Name', N'BeardBoys', N'images\profile\team123.jpg')
GO
INSERT [dbo].[user] ([username], [password], [email], [secquestion], [secanswer], [profilepic]) VALUES (N'vinay789', N'12345678', N'vinay@gmail.com', N'My ATM Pin', N'1234', N'images\profile\vinay789.jpg')
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
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapur,Pune', N'Apple Iphone 6', CAST(25299.00 AS Decimal(10, 2)), 38, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapur,Pune', N'Apple Iphone 6s Plus', CAST(40999.00 AS Decimal(10, 2)), 23, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapur,Pune', N'Apple Iphone 7', CAST(42999.00 AS Decimal(10, 2)), 12, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapur,Pune', N'Apple Iphone 8', CAST(55999.00 AS Decimal(10, 2)), 31, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapura,Pune', N'Apple Iphone 8 Plus', CAST(78499.00 AS Decimal(10, 2)), 12, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapura,Pune', N'Apple Iphone SE', CAST(20650.00 AS Decimal(10, 2)), 4, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'SuperComNet', N'1', N'Kollapur,Pune', N'Apple Iphone X', CAST(83499.00 AS Decimal(10, 2)), 0, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Agra,UP', N'Asus Zenfone 3 ', CAST(11999.00 AS Decimal(10, 2)), 12, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Agra,UP', N'Asus Zenfone 3 Laser', CAST(9999.00 AS Decimal(10, 2)), 2, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Agra,UP', N'Asus Zenfone 3s Max', CAST(8999.00 AS Decimal(10, 2)), 24, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Agra,UP', N'Asus Zenfone 4 Selfie', CAST(9999.00 AS Decimal(10, 2)), 36, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyDukan', N'111', N'Balrampur,UP', N'Coolpad Cool 1', CAST(11999.00 AS Decimal(10, 2)), 23, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyDukan', N'111', N'BalramPur,UP', N'Coolpad Mega 3', CAST(5999.00 AS Decimal(10, 2)), 13, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyDukan', N'111', N'Balrampur,UP', N'Coolpad Note 5 Lite', CAST(7320.00 AS Decimal(10, 2)), 45, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyDukan', N'111', N'Balrampur,UP', N'Coolpad Note 5 Lite C', CAST(6180.00 AS Decimal(10, 2)), 51, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyTronicsSLP', N'2', N'Chikpet,Bangalore', N'Intex Aqua 4.0 4G  ', CAST(3299.00 AS Decimal(10, 2)), 18, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyTronicsSLP', N'2', N'Chikpet,Bangalore', N'Intex Aqua 4G Mini', CAST(2620.00 AS Decimal(10, 2)), 14, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyTronicsSLP', N'2', N'Chikpet,Bangalore', N'Intex Aqua A4', CAST(3199.00 AS Decimal(10, 2)), 16, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MyTronicsSLP', N'2', N'Chikpet,Bangalore', N'Intex Aqua Style III', CAST(3999.00 AS Decimal(10, 2)), 24, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MobileCollection', N'22', N'Gobindapur,Kalkat', N'Karbonn Aura', CAST(3199.00 AS Decimal(10, 2)), 4, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MobileCollection', N'22', N'Gobindapur,Kalkata', N'Karbonn Aura Note Play', CAST(6299.00 AS Decimal(10, 2)), 14, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MobileCollection', N'22', N'Gobindapur,Kalkata', N'Karbonn K9 Smart Eco', CAST(2869.00 AS Decimal(10, 2)), 3, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'MobileCollection', N'22', N'Gobindapur,Kalkata', N'Karbonn Titanium Jumbo', CAST(5190.00 AS Decimal(10, 2)), 45, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'LavaE-Store', N'222', N'Mysore,Kranataka', N'Lava A51', CAST(2799.00 AS Decimal(10, 2)), 5, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'LavaE-Store', N'222', N'Mysore,Karnataka', N'Lava A73', CAST(3849.00 AS Decimal(10, 2)), 15, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'LavaE-Store', N'222', N'Mysore,Karnataka', N'Lava A77', CAST(4599.00 AS Decimal(10, 2)), 15, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmnitechRetail', N'3', N'Banglore,Karnataka', N'Lava Z60', CAST(5499.00 AS Decimal(10, 2)), 225, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'JKNSTORE', N'33', N'Koramangal,Bangalore', N'Lenovo A1000', CAST(4300.00 AS Decimal(10, 2)), 15, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'IndiFlashMart', N'4', N'Gorakpur,mumbi', N'Lenovo K6 Power', CAST(7999.00 AS Decimal(10, 2)), 26, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'IndiFlashMart', N'4', N'Gorakpur,mumbi', N'Lenovo K8 Plus', CAST(9999.00 AS Decimal(10, 2)), 7, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'IndiFlashMart', N'4', N'Gorakpur,mumbi', N'Lenovo Vibe K5 Note', CAST(9999.00 AS Decimal(10, 2)), 65, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'JKNSTORE', N'44', N'Kramangala,Bangalore', N'Lenovo Z2 Plus', CAST(15499.00 AS Decimal(10, 2)), 33, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'ShoppingOnline', N'444', N'Panaji,Goa', N'LG G5', CAST(22999.00 AS Decimal(10, 2)), 34, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'ShoppingOnline', N'444', N'Panaji,Goa', N'LG G6', CAST(16999.00 AS Decimal(10, 2)), 25, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'ShoppingOnline', N'444', N'Panaji,Goa', N'LG Q6', CAST(12299.00 AS Decimal(10, 2)), 45, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'ShoppingOnline', N'444', N'Panaji,Goa', N'LG V20', CAST(21490.00 AS Decimal(10, 2)), 50, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashStaRCommerce', N'5', N'Agra,UP', N'Micromax 5 Lite Q462', CAST(4975.00 AS Decimal(10, 2)), 35, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashStaRCommerce', N'5', N'Agra,UP', N'Micromax Canvas 5 E481', CAST(6900.00 AS Decimal(10, 2)), 50, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashStaRCommerce', N'5', N'Agra,UP', N'Micromax Infinity Pro', CAST(13499.00 AS Decimal(10, 2)), 20, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashStaRCommerce', N'5', N'Agra,UP', N'Micromax Unite 4 Plus', CAST(5829.00 AS Decimal(10, 2)), 4, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VisionStar', N'55', N'Chandrapur,Mumbi', N'Moto C Plus', CAST(6999.00 AS Decimal(10, 2)), 11, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VisionStar', N'55', N'Ahemadnagar,mumbi', N'Moto E3 Power', CAST(6999.00 AS Decimal(10, 2)), 30, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VisionStar', N'55', N'Chandrapur,mumbi', N'Moto E4 Plus', CAST(9999.00 AS Decimal(10, 2)), 12, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VisionStar', N'55', N'Ahemadnagar', N'Moto M', CAST(12999.00 AS Decimal(10, 2)), 75, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Hasan,Karnataka', N'Nokia 2', CAST(6340.00 AS Decimal(10, 2)), 30, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Gulbarga,Karnataka', N'Nokia 5', CAST(10999.00 AS Decimal(10, 2)), 15, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Gulbarga,Karnataka', N'Nokia 6', CAST(13599.00 AS Decimal(10, 2)), 35, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Gulbarga,Karnataka', N'Nokia 8', CAST(26999.00 AS Decimal(10, 2)), 20, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashTechRetail', N'7', N'Bundi,Rajasthan', N'Oppo A37', CAST(8249.00 AS Decimal(10, 2)), 30, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashTechRetail', N'7', N'Bundi,Rajasthan', N'Oppo A71', CAST(9099.00 AS Decimal(10, 2)), 10, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashTechRetail', N'7', N'Bundi,Rajasthan', N'Oppo F3 Plus', CAST(17499.00 AS Decimal(10, 2)), 20, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'FlashTechRetail', N'7', N'Bundi,Rajasthan', N'Oppo F5', CAST(17999.00 AS Decimal(10, 2)), 24, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueNetCommerce', N'13', N'Puttur,Mangalore', N'Redmi 4A ', CAST(6799.00 AS Decimal(10, 2)), 12, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueNetCommerce', N'13', N'Puttur,Mangalore', N'Redmi A1', CAST(18999.00 AS Decimal(10, 2)), 9, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueNetCommerce', N'13', N'Puttur,Mangalore', N'Redmi Note 5', CAST(9999.00 AS Decimal(10, 2)), 25, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueNetCommerce', N'13', N'Puttur,Mangalore', N'Redmi Y1 Lite', CAST(6999.00 AS Decimal(10, 2)), 5, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueComRetail', N'88', N'Jayanagar,Bangalore', N'Samsung Galaxy Grand 2', CAST(16740.00 AS Decimal(10, 2)), 28, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueComRetail', N'88', N'Jayanagar,Bangalore', N'Samsung Galaxy J7 Plus', CAST(21990.00 AS Decimal(10, 2)), 3, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueComRetail', N'88', N'Jayanagar,Bangalore', N'Samsung Galaxy S Duos 2', CAST(8950.00 AS Decimal(10, 2)), 34, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'TrueComRetail', N'88', N'Jayanagar,Bangalore', N'Samsung Star Pro Dous', CAST(7550.00 AS Decimal(10, 2)), 20, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Hasan,Karnatak', N'Sony Experia E1 Dual', CAST(7549.00 AS Decimal(10, 2)), 0, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Hasan,Karnataka', N'Sony Experia R1', CAST(10443.00 AS Decimal(10, 2)), 47, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Hasan,Karnataka', N'Sony Experia X A1', CAST(16935.00 AS Decimal(10, 2)), 8, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'OmniTechRetail', N'11', N'Hasan,Karnataka', N'Sony Experia Z', CAST(32490.00 AS Decimal(10, 2)), 32, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VTMSLP', N'12', N'Udupi,Karnataka', N'Vivo V5', CAST(13800.00 AS Decimal(10, 2)), 22, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VTMSLP', N'12', N'Udupi,Karnataka', N'Vivo V7 Plus', CAST(18799.00 AS Decimal(10, 2)), 34, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VTMSLP', N'12', N'Udupi,Karnataka', N'Vivo X Play 7', CAST(29990.00 AS Decimal(10, 2)), 4, NULL, NULL)
GO
INSERT [dbo].[supplier] ([supplierid], [password], [address], [productmodel], [price], [qty], [offerrate], [offerdesc]) VALUES (N'VTMSLP', N'12', N'Udupi,Karnataka', N'Vivo Y53', CAST(8199.00 AS Decimal(10, 2)), 7, NULL, NULL)
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
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone 6', N'IOS v10', N'2GB', N'32GB', N'12Mp', N'7Mp', N'BSI Sensor', N'Yes       ', N'No        ', N'Apple A10 Fusion APL1024', N'Quadcore 2.34GHz', N'64Bit', N'1960mah(Li-ion )', N'Yes       ', N'Back      ', N'138.3mm', N'67.1mm', N'268gm', N'metal', N'3.5mm Sterio(TS)', N'silver', N'black', N'gold', N'images\Apple\Apple Iphone 6_Image1.jpg', N'images\Apple\Apple Iphone 6_Image2.jpg', N'images\Apple\Apple Iphone 6_Image3.jpg', N'images\Apple\Apple Iphone 6_Image4.jpg', N'4.7inch', N'322ppi', N'IPS LCD ', N'Touch', N'Single', N'Nano', N'4G,3G,2G Indian Band', N'Yes       ', N'Yes       ', CAST(3.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone 6S Plus', N'IOS v9', N'2GB', N'32GB', N'12MP', N'5MP', N'BSI Sensor', N'Yes       ', N'No        ', N'Apple A9 APL0898', N'dual core 1.84GHz', N'64Bit', N'1715Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'138.3mm', N'67.1mm', N'Alluminium', N'143gm', N'3.5mm Sterio(TS)', N'black', N'gold', N'silver', N'images\Apple\Apple Iphone 6S Plus_Image1.jpg', N'images\Apple\Apple Iphone 6S Plus_Image2.jpg', N'images\Apple\Apple Iphone 6S Plus_Image3.jpg', N'images\Apple\Apple Iphone 6S Plus_Image4.jpg', N'4.7inch', N'326ppi', N'IPS LCD', N'Touch', N'Single', N'Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone 7', N'IOS v10', N'2GB', N'32GB', N'12MP', N'7Mp', N'BSI Sensor', N'Yes       ', N'Yes       ', N'Apple A10 Fusion APL1024', N'Quadcore 2.34GHz', N'64Bit', N'1960mah(Li-ion )', N'Yes       ', N'Back      ', N'138.3mm', N'67.1mm', N'metal', N'138gm', N'3.5mm Sterio(TS)', N'jetblack', N'rose gold', N'silver', N'images\Apple\Apple Iphone 7_Image1.jpg', N'images\Apple\Apple Iphone 7_Image2.jpg', N'images\Apple\Apple Iphone 7_Image3.jpg', N'images\Apple\Apple Iphone 7_Image4.jpg', N'4.7inch', N'326ppi', N'IPS LCD', N'Touch', N'Single', N'Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone 8', N'iOS v11.0', N'2GB', N'64GB', N'12MP', N'7MP', N'BSI Sensor', N'Yes       ', N'No        ', N'Apple A11 Bionic', N'Hexa Core(2.53 Ghz)', N'64Bit', N'1821mah(Li-ion)', N'Yes       ', N'Back      ', N'138.mm', N'73mm', N'Alluminium', N'148gm', N'3.5mm Sterio(TS)', N'black', N'rose gold', N'white', N'images\Apple\Apple Iphone 8_Image1.jpg', N'images\Apple\Apple Iphone 8_Image2.jpg', N'images\Apple\Apple Iphone 8_Image3.jpg', N'images\Apple\Apple Iphone 8_Image4.jpg', N'4.7inch', N'326ppi', N'IPS LCD', N'Touch', N'Single', N'Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone 8 Plus', N'Android v7.0(Nougat)', N'512MB', N'512MB', N'13MP', N'16MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Apple A9 APL0898', N'bionic', N'32Bit', N'2650mah(Li-Polymer)', N'Yes       ', N'Back      ', N'138.3mm', N'172.5', N'metal', N'121gm', N'3.5mm Sterio(TS)', N'white', N'gold', N'silver', N'images\Apple\Apple Iphone 8 Plus_Image1.jpg', N'images\Apple\Apple Iphone 8 Plus_Image2.jpg', N'images\Apple\Apple Iphone 8 Plus_Image3.jpg', N'images\Apple\Apple Iphone 8 Plus_Image4.jpg', N'4.0inch', N'282ppi', N'IPS LCD ', N'Touch', N'dual(4G/4G)', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Apple', N'Apple Iphone X', N'iOS v11.0.1', N'4GB', N'32GB', N'12Mp/12Mp ', N'7Mp', N'cmos', N'Yes       ', N'No        ', N'Apple A11 Bionic', N'Hexa Core(2.53 Ghz)', N'64Bit', N'4000mAh(Li-ion)', N'No        ', N'Front     ', N'147.9mm', N'12', N'255gm', N'metal', N'3.5mm Sterio(TS)', N'jet black', N'silver', N'white', N'images\Apple\Apple Iphone X_Image1.jpg', N'images\Apple\Apple Iphone X_Image2.jpg', N'images\Apple\Apple Iphone X_Image3.jpg', N'images\Apple\Apple Iphone X_Image4.jpg', N'5Inch hd Display', N'441ppi', N'HD', N'Touch', N'dual(4G/4G)', N'Nano/Nano', N'4G,3G,2G Indian Band', N'Yes       ', N'Yes       ', CAST(3.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Asus', N'Asus Zenfone 3', N'Android v6.0(Marshmellow)', N'3GB', N'32GB', N'16MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 625MSM8953', N'Octacore 2GHz', N'64Bit', N'2650mah(Li-Polymer)', N'Yes       ', N'Front     ', N'146.8gm', N'73.9mm', N'metal', N'144gm', N'3.5mm Sterio(TS)', N'SapphireBlack', N'MoonLIght White', N'Shimmer Gold', N'images\Asus\Asus Zenfone 3_Image1.jpg', N'images\Asus\Asus Zenfone 3_Image2.jpg', N'images\Asus\Asus Zenfone 3_Image3.jpg', N'images\Asus\Asus Zenfone 3_Image4.jpg', N'5.2Inch', N'424ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Asus', N'Asus Zenfone 3 Laser', N'Android v6.0(Marshmellow)', N'4GB', N'32GB', N'13MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8892', N'Octacore 1.4GHz', N'64Bit', N'3000Mah(Li-Polymer)', N'Yes       ', N'Front     ', N'149mm', N'76mm', N'metal', N'150gm', N'3.5mm Sterio(TS)', N'jetblack', N'rose gold', N'Blue', N'images\Asus\Asus Zenfone 3 Laser_Image1.jpg', N'images\Asus\Asus Zenfone 3 Laser_Image2.jpg', N'images\Asus\Asus Zenfone 3 Laser_Image3.jpg', N'images\Asus\Asus Zenfone 3 Laser_Image4.jpg', N'5.5inch', N'282ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Asus', N'Asus Zenfone 3s Max', N'Android v7.0(Nougat)', N'3GB', N'32GB', N'13MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757C8', N'Octacore 1.5GHz', N'64Bit', N'5000mah(Li-ion)', N'Yes       ', N'Front     ', N'149.5mm', N'73.7mm', N'metal', N'175gm', N'3.5mm Sterio(TS)', N'black', N'rose gold', N'silver', N'images\Asus\Asus Zenfone 3s Max_Image1.jpg', N'images\Asus\Asus Zenfone 3s Max_Image2.jpg', N'images\Asus\Asus Zenfone 3s Max_Image3.jpg', N'images\Asus\Asus Zenfone 3s Max_Image4.jpg', N'5.2inch', N'282ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Asus', N'Asus Zenfone 4 Selfie', N'Android v7.0(Nougat)', N'4GB', N'64GB', N'16MP', N'20MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 625MSM8892', N'Octacore 1.4GHz', N'64Bit', N'3000mah(Li-ion)', N'Yes       ', N'Back      ', N'150.6mm', N'76.2mm', N'metal', N'144gm', N'3.5mm Sterio(TS)', N'black', N'gold', N'white', N'images\Asus\Asus Zenfone 4 Selfie_Image1.jpg', N'images\Asus\Asus Zenfone 4 Selfie_Image2.jpg', N'images\Asus\Asus Zenfone 4 Selfie_Image3.jpg', N'images\Asus\Asus Zenfone 4 Selfie_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Coolpad', N'Coolpad Cool 1', N'Android v6.0(Marshmellow)', N'3GB', N'32GB', N'13MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 625MSM8598', N'Octacore 1.8GHz', N'64Bit', N'4000Mah(Li-Polymer)', N'Yes       ', N'Front     ', N'152mm', N'74mm', N'metal', N'167gm', N'3.5mm Sterio(TS)', N'space gray', N'rose gold', N'silver', N'images\Coolpad\Coolpad Cool 1_Image1.jpg', N'images\Coolpad\Coolpad Cool 1_Image2.jpg', N'images\Coolpad\Coolpad Cool 1_Image3.jpg', N'images\Coolpad\Coolpad Cool 1_Image4.jpg', N'5.5inch', N'204ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Coolpad', N'Coolpad Mega 3', N'Android v6.0(Marshmellow)', N'2GB', N'16GB', N'8MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'Quadcore 1.24GHz', N'64Bit', N'3050Mah(Li-Polymer)', N'No        ', N'No        ', N'154.4mm', N'76.8mm', N'metal', N'170.5gm', N'3.5mm Sterio(TS)', N'champagne', N'coffee', N'silver', N'images\Coolpad\Coolpad Mega 3_Image1.jpg', N'images\Coolpad\Coolpad Mega 3_Image2.jpg', N'images\Coolpad\Coolpad Mega 3_Image3.jpg', N'images\Coolpad\Coolpad Mega 3_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Coolpad', N'Coolpad Note 5 Lite', N'Android v6.0(Marshmellow)', N'3GB', N'16GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'Quadcore 1GHz', N'64Bit', N'2500Mah(Li-Polymer)', N'Yes       ', N'Front     ', N'145.3mm', N'72.3mm', N'metal', N'148gm', N'3.5mm Sterio(TS)', N'champagne', N'Bold Red', N'white', N'images\Coolpad\Coolpad Note 5 Lite_Image1.jpg', N'images\Coolpad\Coolpad Note 5 Lite_Image2.jpg', N'images\Coolpad\Coolpad Note 5 Lite_Image3.jpg', N'images\Coolpad\Coolpad Note 5 Lite_Image4.jpg', N'5Iinch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Coolpad', N'Coolpad Note 5 Lite C', N'Android v7.0(Nougat)', N'3GB', N'16GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'Quadcore 1.1GHz', N'64Bit', N'2800mah(Li-Polymer)', N'Yes       ', N'Front     ', N'142.4mm', N'70.4mm', N'metal', N'139gm', N'3.5mm Sterio(TS)', N'champagne Black', N'rose gold', N'Shimmer Gold', N'images\Coolpad\Coolpad Note 5 Lite C_Image1.jpg', N'images\Coolpad\Coolpad Note 5 Lite C_Image2.jpg', N'images\Coolpad\Coolpad Note 5 Lite C_Image3.jpg', N'images\Coolpad\Coolpad Note 5 Lite C_Image4.jpg', N'5Iinch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Intex', N'Intex Aqua 4.0 4G  ', N'Android v6.0(Marshmellow)', N'512MB', N'4GB', N'2MP', N'0.3MP', N'Accelerometer', N'Yes       ', N'No        ', N'Spreadtrum SC9832A', N'Quadcore 1.3GHz', N'64Bit', N'1500mah(Li-ion)', N'No        ', N'No        ', N'124.7mm', N'61.6mm', N'Alluminium', N'112gm', N'3.5mm Mono(TRS)', N'champagne Black', N'gold', N'Shimmer Gold', N'images\Intex\Intex Aqua 4.0 4G  _Image1.jpg', N'images\Intex\Intex Aqua 4.0 4G  _Image2.jpg', N'images\Intex\Intex Aqua 4.0 4G  _Image3.jpg', N'images\Intex\Intex Aqua 4.0 4G  _Image4.jpg', N'4.0Iinch', N'294ppi', N'AMOLED', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Intex', N'Intex Aqua 4G Mini', N'Android v6.0(Marshmellow)', N'512MB', N'4GB', N'5MP', N'0.3MP', N'Accelerometer', N'Yes       ', N'No        ', N'Spreadtrum SC9832A', N'Quadcore 1.3GHz', N'64Bit', N'1450mah(Li-ion)', N'No        ', N'No        ', N'124.8mm', N'64.4mm', N'Alluminium', N'115gm', N'3.5mm Mono(TRS)', N'champagne Black', N'white', N'Shimmer Gold', N'images\Intex\Intex Aqua 4G Mini_Image1.jpg', N'images\Intex\Intex Aqua 4G Mini_Image2.jpg', N'images\Intex\Intex Aqua 4G Mini_Image3.jpg', N'images\Intex\Intex Aqua 4G Mini_Image4.jpg', N'4.0inch', N'233ppi', N'TFT', N'Touch', N'dual', N'Mini/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Intex', N'Intex Aqua A4', N'Android v7.0(Nougat)', N'1GB', N'8GB', N'5MP', N'2MP', N'Accelerometer', N'Yes       ', N'No        ', N'Spreadtrum SC9832A', N'Quadcore 1.3GHz', N'64Bit', N'1750mah(Li-ion)', N'Yes       ', N'No        ', N'125mm', N'64mm', N'Alluminium', N'119.5gm', N'3.5mm Mono(TRS)', N'champagne Black', N'rose gold', N'Shimmer Gold', N'images\Intex\Intex Aqua A4_Image1.jpg', N'images\Intex\Intex Aqua A4_Image2.jpg', N'images\Intex\Intex Aqua A4_Image3.jpg', N'images\Intex\Intex Aqua A4_Image4.jpg', N'4.0inch', N'233ppi', N'TFT', N'Touch', N'dual', N'Mini/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Intex', N'Intex Aqua Style III', N'Android v7.0(Nougat)', N'1GB', N'16GB', N'5MP', N'5MP', N'Accelerometer', N'Yes       ', N'No        ', N'Spreadtrum SC9832A', N'Quadcore 1.3GHz', N'64Bit', N'2500mah(Li-ion)', N'No        ', N'No        ', N'146.3mm', N'73.3mm', N'Alluminium', N'164gm', N'3.5mm Mono(TRS)', N'black', N'rose gold', N'silver', N'images\Intex\Intex Aqua Style III_Image1.jpg', N'images\Intex\Intex Aqua Style III_Image2.jpg', N'images\Intex\Intex Aqua Style III_Image3.jpg', N'images\Intex\Intex Aqua Style III_Image4.jpg', N'5inch', N'196ppi', N'TFT', N'Touch', N'dual', N'Mini/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Karbonn', N'Karbonn Aura', N'Android 5.1(Lollipop)', N'1GB', N'8GB', N'8MP', N'5', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6735P', N'Quadcore 1.3GHz', N'64Bit', N'4000Mah(Li-ion)', N'No        ', N'No        ', N'143mm', N'71.5mm', N'metal', N'175.5gm', N'3.5mm Sterio(TS)', N'silver', N'black', N'white', N'images\Karbonn\Karbonn Aura_Image1.jpg', N'images\Karbonn\Karbonn Aura_Image2.jpg', N'images\Karbonn\Karbonn Aura_Image3.jpg', N'images\Karbonn\Karbonn Aura_Image4.jpg', N'5.0inch', N'196ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'No        ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Karbonn', N'Karbonn Aura Note Play', N'Android v7.0(Nougat)', N'2GB', N'16GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6737M', N'Quadcore 1.3GHz', N'64Bit', N'3300mah(Li-ion)', N'Yes       ', N'No        ', N'161.3mm', N'84.9mm', N'metal', N'214gm', N'3.5mm Sterio(TS)', N'black', N'gold', N'silver', N'images\Karbonn\Karbonn Aura Note Play_Image1.jpg', N'images\Karbonn\Karbonn Aura Note Play_Image2.jpg', N'images\Karbonn\Karbonn Aura Note Play_Image3.jpg', N'images\Karbonn\Karbonn Aura Note Play_Image4.jpg', N'6.0inch', N'245ppi', N'IPS LCD', N'Touch', N'Single', N'FullSim', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(3.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Karbonn', N'Karbonn K9 Smart Eco', N'Android v7.0(Nougat)', N'1GB', N'8GB', N'2MP', N'2MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6737M', N'Quadcore 1.2GHz', N'64Bit', N'2300mah(Li-ion)', N'No        ', N'No        ', N'145mm', N'72mm', N'metal', N'156gm', N'2.5mm Mono(TS)', N'jetblack', N'white', N'Shimmer Gold', N'images\Karbonn\Karbonn K9 Smart Eco_Image1.jpg', N'images\Karbonn\Karbonn K9 Smart Eco_Image2.jpg', N'images\Karbonn\Karbonn K9 Smart Eco_Image3.jpg', N'images\Karbonn\Karbonn K9 Smart Eco_Image4.jpg', N'5.0inch', N'196ppi', N'TFT', N'Touch', N'Single', N'FullSim', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Karbonn', N'Karbonn Titanium Jumbo', N'Android v7.0(Nougat)', N'2GB', N'16GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Quadcore 1.3GHz', N'64Bit', N'4000mah(Li-ion)', N'Yes       ', N'Front     ', N'145mm', N'72mm', N'metal', N'166gm', N'3.5mm Sterio(TS)', N'jetblack', N'coffee', N'silver', N'images\Karbonn\Karbonn Titanium Jumbo_Image1.jpg', N'images\Karbonn\Karbonn Titanium Jumbo_Image2.jpg', N'images\Karbonn\Karbonn Titanium Jumbo_Image3.jpg', N'images\Karbonn\Karbonn Titanium Jumbo_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'Single', N'Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lava', N'Lava A51', N'Android v6.0(Marshmellow)', N'1GB', N'8GB', N'5MP', N'0.3MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Spreadtrum SC7731g', N'Octacore 1.2GHz', N'64Bit', N'1750Mah(Li-ion)', N'No        ', N'No        ', N'143.3mm', N'72.5mm', N'metal', N'149.5gm', N'3.5mm Sterio(TS)', N'silver', N'black', N'white', N'images\Lava\Lava A51_Image1.jpg', N'images\Lava\Lava A51_Image2.jpg', N'images\Lava\Lava A51_Image3.jpg', N'images\Lava\Lava A51_Image4.jpg', N'5.0inch', N'207ppi', N'TFT', N'Touch', N'dual', N'Micro/Nano', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lava', N'Lava A73', N'Android v6.0(Marshmellow)', N'1GB', N'8GB', N'5MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Spreadtrum SC7731G', N'Quadcore 1.2GHz', N'64Bit', N'2200Mah(Li-ion)', N'No        ', N'No        ', N'145.3mm', N'72.8mm', N'metal', N'149.5gm', N'3.5mm Sterio(TS)', N'black', N'white', N'silver', N'images\Lava\Lava A73_Image1.jpg', N'images\Lava\Lava A73_Image2.jpg', N'images\Lava\Lava A73_Image3.jpg', N'images\Lava\Lava A73_Image4.jpg', N'4.5inch', N'187ppi', N'TFT', N'Touch', N'dual', N'Micro/Nano', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lava', N'Lava A77', N'Android v6.0(Marshmellow)', N'1GB', N'8GB', N'5MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Spreadtrum SC9832A', N'Quadcore 1.3GHz', N'64Bit', N'2000Mah(Li-ion)', N'No        ', N'No        ', N'143.3mm', N'72.3mm', N'metal', N'149.5gm', N'3.5mm Sterio(TS)', N'black', N'white', N'silver', N'images\Lava\Lava A77_Image1.jpg', N'images\Lava\Lava A77_Image2.jpg', N'images\Lava\Lava A77_Image3.jpg', N'images\Lava\Lava A77_Image4.jpg', N'5.0inch', N'207ppi', N'TFT', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lava', N'Lava Z60', N'Android v7.0(Nougat)', N'1GB', N'16GB', N'5MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6737M', N'Quadcore 1.1GHz', N'64Bit', N'2500Mah(Li-ion)', N'No        ', N'No        ', N'143.3mm', N'72.3mm', N'metal', N'149gm', N'3.5mm Sterio(TS)', N'black', N'coffee', N'gold', N'images\Lava\Lava Z60_Image1.jpg', N'images\Lava\Lava Z60_Image2.jpg', N'images\Lava\Lava Z60_Image3.jpg', N'images\Lava\Lava Z60_Image4.jpg', N'4.5inch', N'196ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lenovo', N'Lenovo A1000', N'Android 5.0(Lollipop)', N'1GB', N'8GB', N'5MP', N'0.3MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Spreadtrum SC7731G', N'Quadcore 1.3GHz', N'64Bit', N'2000Mah(Li-Polymer)', N'No        ', N'No        ', N'124.5mm', N'64mm', N'metal', N'132gm', N'3.5mm Sterio(TS)', N'champagne', N'chapagne gold', N'black', N'images\Lenovo\Lenovo A1000_Image1.jpg', N'images\Lenovo\Lenovo A1000_Image2.jpg', N'images\Lenovo\Lenovo A1000_Image3.jpg', N'images\Lenovo\Lenovo A1000_Image4.jpg', N'4.0inch', N'223ppi', N'TFT', N'Touch', N'dual', N'Mini/Mini', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lenovo', N'Lenovo K6 Power', N'Android v6.0.1(Marshmellow)', N'3GB', N'32GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 332128', N'Octacore 1.4GHz', N'64Bit', N'4000Mah(Li-ion)', N'Yes       ', N'Front     ', N'141.9mm', N'70.3mm', N'metal', N'145gm', N'3.5mm Sterio(TS)', N'gold', N'black', N'silver', N'images\Lenovo\Lenovo K6 Power_Image1.jpg', N'images\Lenovo\Lenovo K6 Power_Image2.jpg', N'images\Lenovo\Lenovo K6 Power_Image3.jpg', N'images\Lenovo\Lenovo K6 Power_Image4.jpg', N'5.0inch', N'441ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lenovo', N'Lenovo K8 Plus', N'Android v7.1(Nougat)', N'3GB', N'32GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'Octacore 2.6GHz', N'64Bit', N'4000Mah(Li-ion)', N'Yes       ', N'Front     ', N'147.9mm', N'73.9mm', N'metal', N'165gm', N'3.5mm Sterio(TS)', N'gold', N'coffee', N'silver', N'images\Lenovo\Lenovo K8 Plus_Image1.jpg', N'images\Lenovo\Lenovo K8 Plus_Image2.jpg', N'images\Lenovo\Lenovo K8 Plus_Image3.jpg', N'images\Lenovo\Lenovo K8 Plus_Image4.jpg', N'5.2inch', N'424ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(4.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lenovo', N'Lenovo Vibe K5 Note', N'Android v6.0(Marshmellow)', N'4GB', N'32GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'Octacore 1.8GHz', N'64Bit', N'3500Mah(Li-ion)', N'Yes       ', N'Front     ', N'152mm', N'75.7mm', N'metal', N'165gm', N'3.5mm Sterio(TS)', N'gold', N'Bold Red', N'black', N'images\Lenovo\Lenovo Vibe K5 Note_Image1.jpg', N'images\Lenovo\Lenovo Vibe K5 Note_Image2.jpg', N'images\Lenovo\Lenovo Vibe K5 Note_Image3.jpg', N'images\Lenovo\Lenovo Vibe K5 Note_Image4.jpg', N'5.5inch', N'401ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Lenovo', N'Lenovo Z2 Plus', N'Android v6.0(Marshmellow)', N'4GB', N'64GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8598', N'Quadcore 2.15GHz', N'64Bit', N'3500Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'141.6mm', N'68.8mm', N'metal', N'149gm', N'3.5mm Sterio(TS)', N'gold', N'black', N'black', N'images\Lenovo\Lenovo Z2 Plus_Image1.jpg', N'images\Lenovo\Lenovo Z2 Plus_Image2.jpg', N'images\Lenovo\Lenovo Z2 Plus_Image3.jpg', N'images\Lenovo\Lenovo Z2 Plus_Image4.jpg', N'5.0inch', N'441ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'LG', N'LG G5', N'Android v6.0(Marshmellow)', N'4GB', N'32GB', N'16MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 820MSM8996', N'Octacore 2.1GHz', N'64Bit', N'2800mah(Li-ion)', N'Yes       ', N'Back      ', N'149.4mm', N'73.9mm', N'metal', N'159gm', N'3.5mm Sterio(TS)', N'white', N'black', N'gold', N'images\LG\LG G5_Image1.jpg', N'images\LG\LG G5_Image2.jpg', N'images\LG\LG G5_Image3.jpg', N'', N'5.3Inch', N'554ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'LG', N'LG G6', N'Android v7.0(Nougat)', N'4GB', N'64GB', N'13MP', N'5MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 820MSM8996', N'dual core 2.3GHz', N'64Bit', N'3300mah(Li-ion)', N'Yes       ', N'Front     ', N'148.9mm', N'71.9mm', N'metal', N'163gm', N'3.5mm Sterio(TS)', N'champagne Black', N'chapagne gold', N'silver', N'images\LG\LG G6_Image1.jpg', N'images\LG\LG G6_Image2.jpg', N'images\LG\LG G6_Image3.jpg', N'images\LG\LG G6_Image4.jpg', N'5.7Inch', N'515ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'LG', N'LG Q6', N'Android v7.1(Nougat)', N'3GB', N'32GB', N'13MP', N'5MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 332128', N'Quadcore 1.4GHz', N'64Bit', N'3000mah(Li-ion)', N'No        ', N'No        ', N'142.5mm', N'63.3mm', N'Alluminium', N'149gm', N'3.5mm Sterio(TS)', N'jetblack', N'chapagne gold', N'silver', N'images\LG\LG Q6_Image1.jpg', N'images\LG\LG Q6_Image2.jpg', N'images\LG\LG Q6_Image3.jpg', N'images\LG\LG Q6_Image4.jpg', N'5.5Inch', N'439ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'LG', N'LG V20', N'Android v7.0(Nougat)', N'4GB', N'64GB', N'16MP', N'5MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 820MSM8996', N'dual core 2.15GHz', N'64Bit', N'3200mah(Li-ion)', N'Yes       ', N'Front     ', N'159.5mm', N'78.1m', N'metal', N'174gm', N'3.5mm Sterio(TS)', N'gold', N'chapagne gold', N'silver', N'images\LG\LG V20_Image1.jpg', N'images\LG\LG V20_Image2.jpg', N'images\LG\LG V20_Image3.jpg', N'images\LG\LG V20_Image4.jpg', N'5.7Inch', N'515ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Micromax', N'Micromax 5 Lite Q462', N'Android 5.1(Lollipop)', N'2GB', N'16GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Quadcore 1.3GHz', N'64Bit', N'2000Mah(Li-ion)', N'No        ', N'No        ', N'144mm', N'73.5mm', N'metal', N'151gm', N'3.5mm Sterio(TS)', N'silver', N'black', N'white', N'images\Micromax\Micromax 5 Lite Q462_Image1.jpg', N'images\Micromax\Micromax 5 Lite Q462_Image2.jpg', N'images\Micromax\Micromax 5 Lite Q462_Image3.jpg', N'images\Micromax\Micromax 5 Lite Q462_Image4.jpg', N'5.0inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Micromax', N'Micromax Canvas 5 E481', N'Android 5.1(Lollipop)', N'3GB', N'16GB', N'13MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Octacore 1.4GHz', N'64Bit', N'2900mah(Li-ion)', N'No        ', N'No        ', N'148mm', N'73.1m', N'metal', N'143gm', N'3.5mm Sterio(TS)', N'black', N'gold', N'silver', N'images\Micromax\Micromax Canvas 5 E481_Image1.jpg', N'images\Micromax\Micromax Canvas 5 E481_Image2.jpg', N'images\Micromax\Micromax Canvas 5 E481_Image3.jpg', N'images\Micromax\Micromax Canvas 5 E481_Image4.jpg', N'5.2Inch', N'424ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Motorola', N'Moto C Plus', N'Android v7.0(Nougat)', N'2GB', N'16GB', N'8MP', N'2MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6737M', N'Quadcore 1.1GHz', N'64Bit', N'4000mAh(Li-ion)', N'No        ', N'No        ', N'144mm', N'72.3mm', N'metal', N'162gm', N'3.5mm Sterio(TS)', N'black', N'coffee', N'gold', N'images\Motorola\Moto C Plus_Image1.jpg', N'images\Motorola\Moto C Plus_Image2.jpg', N'images\Motorola\Moto C Plus_Image3.jpg', N'images\Motorola\Moto C Plus_Image4.jpg', N'5.0inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Motorola', N'Moto E3 Power', N'Android v7.1(Nougat)', N'2GB', N'16GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Quadcore 1GHz', N'64Bit', N'3000mAh(Li-ion)', N'No        ', N'No        ', N'143.8mm', N'71.6mm', N'metal', N'153.5gm', N'3.5mm Sterio(TS)', N'black', N'chapagne gold', N'gold', N'images\Motorola\Moto E3 Power_Image1.jpg', N'images\Motorola\Moto E3 Power_Image2.jpg', N'images\Motorola\Moto E3 Power_Image3.jpg', N'images\Motorola\Moto E3 Power_Image4.jpg', N'5.0inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Micro', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Motorola', N'Moto E4 Plus', N'Android v7.0(Nougat)', N'3GB', N'32GB', N'13MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Quadcore 1.3GHz', N'64Bit', N'5000mAh(Li-ion)', N'Yes       ', N'Back      ', N'155mm', N'77.6mm', N'Alluminium', N'198gm', N'3.5mm Sterio(TS)', N'black', N'chapagne gold', N'gold', N'images\Motorola\Moto E4 Plus_Image1.jpg', N'images\Motorola\Moto E4 Plus_Image2.jpg', N'images\Motorola\Moto E4 Plus_Image3.jpg', N'images\Motorola\Moto E4 Plus_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Motorola', N'Moto M', N'Android v6.0(Marshmellow)', N'4GB', N'64GB', N'16MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Octacore 2.1GHz', N'64Bit', N'3050mAh(Li-ion)', N'Yes       ', N'Front     ', N'151.5mm', N'75.35mm', N'Alluminium', N'163gm', N'3.5mm Sterio(TS)', N'SapphireBlack', N'white', N'gold', N'images\Motorola\Moto M_Image1.jpg', N'images\Motorola\Moto M_Image2.jpg', N'images\Motorola\Moto M_Image3.jpg', N'images\Motorola\Moto M_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Nokia', N'Nokia 2', N'Android v7.1.1(Nougat)', N'1GB', N'8GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon MSM8909', N'Quadcore 1.3GHz', N'32Bit', N'4100mah(Li-ion)', N'No        ', N'No        ', N'149.7mm', N'172.5', N'metal', N'169gm', N'3.5mm Sterio(TS)', N'black', N'white', N'silver', N'images\Nokia\Nokia 2_Image1.jpg', N'images\Nokia\Nokia 2_Image2.jpg', N'images\Nokia\Nokia 2_Image3.jpg', N'images\Nokia\Nokia 2_Image4.jpg', N'5inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Nokia', N'Nokia 5', N'Android v7.1.1(Nougat)', N'2GB', N'16GB', N'13MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Octacore 1.4GHz', N'64Bit', N'3000mah(Li-ion)', N'Yes       ', N'Back      ', N'149.7mm', N'72.5', N'metal', N'169gm', N'3.5mm Sterio(TS)', N'silver', N'white', N'black', N'images\Nokia\Nokia 5_Image1.jpg', N'images\Nokia\Nokia 5_Image2.jpg', N'images\Nokia\Nokia 5_Image3.jpg', N'images\Nokia\Nokia 5_Image4.jpg', N'5.2inch', N'282ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Nokia', N'Nokia 6', N'Android v7.1.1(Nougat)', N'3GB', N'32GB', N'16MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon MSM430', N'Octacore 1.4GHz', N'64Bit', N'3000mah(Li-ion)', N'Yes       ', N'Back      ', N'154mm', N'75.5mm', N'metal', N'143.3gm', N'3.5mm Sterio(TS)', N'silver', N'white', N'black', N'images\Nokia\Nokia 6_Image1.jpg', N'images\Nokia\Nokia 6_Image2.jpg', N'images\Nokia\Nokia 6_Image3.jpg', N'images\Nokia\Nokia 6_Image4.jpg', N'5.5inch', N'401ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Nokia', N'Nokia 8', N'Android v7.1.1(Nougat)', N'4GB', N'64GB', N'13MP', N'13MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon MSM430', N'Quadcore 2.34GHz', N'64Bit', N'3090mah(Li-ion)', N'Yes       ', N'Back      ', N'151.5mm', N'73.5mm', N'metal', N'170gm', N'3.5mm Sterio(TS)', N'silver', N'coffee', N'black', N'images\Nokia\Nokia 8_Image1.jpg', N'images\Nokia\Nokia 8_Image2.jpg', N'images\Nokia\Nokia 8_Image3.jpg', N'images\Nokia\Nokia 8_Image4.jpg', N'5.3inch', N'554ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Oppo', N'Oppo A37', N'Android 5.1(Lollipop)', N'2GB', N'16GB', N'8MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Quadcore 1.2GHz', N'64Bit', N'2650mah(Li-Polymer)', N'No        ', N'No        ', N'141.9mm', N'71.4mm', N'metal', N'136gm', N'3.5mm Sterio(TS)', N'silver', N'white', N'gold', N'images\Oppo\Oppo A37_Image1.jpg', N'images\Oppo\Oppo A37_Image2.jpg', N'images\Oppo\Oppo A37_Image3.jpg', N'images\Oppo\Oppo A37_Image4.jpg', N'5.0inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Oppo', N'Oppo A71', N'Android v7.1(Nougat)', N'3GB', N'16GB', N'13MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Quadcore 1.5GHz', N'64Bit', N'3010mah(Li-Polymer)', N'No        ', N'No        ', N'148.9mm', N'73.4mm', N'metal', N'137gm', N'3.5mm Sterio(TS)', N'silver', N'white', N'gold', N'images\Oppo\Oppo A71_Image1.jpg', N'images\Oppo\Oppo A71_Image2.jpg', N'images\Oppo\Oppo A71_Image3.jpg', N'images\Oppo\Oppo A71_Image4.jpg', N'5.2inch', N'282ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Oppo', N'Oppo F3 Plus', N'Android v6.0(Marshmellow)', N'4GB', N'64GB', N'16MP', N'16MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Octacore 1.95GHz', N'64Bit', N'4000mah(Li-Polymer)', N'Yes       ', N'Back      ', N'163.6mm', N'80.8mm', N'metal', N'185gm', N'3.5mm Sterio(TS)', N'silver', N'coffee', N'gold', N'images\Oppo\Oppo F3 Plus_Image1.jpg', N'images\Oppo\Oppo F3 Plus_Image2.jpg', N'images\Oppo\Oppo F3 Plus_Image3.jpg', N'images\Oppo\Oppo F3 Plus_Image4.jpg', N'6.0inch', N'367ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Oppo', N'Oppo F5', N'Android v7.1(Nougat)', N'4GB', N'32GB', N'16MP', N'20MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6763P', N'Octacore 2.5GHz', N'64Bit', N'3200mah(Li-Polymer)', N'Yes       ', N'Front     ', N'156.5mm', N'76mm', N'metal', N'152gm', N'3.5mm Sterio(TS)', N'black', N'white', N'gold', N'images\Oppo\Oppo F5_Image1.jpg', N'images\Oppo\Oppo F5_Image2.jpg', N'images\Oppo\Oppo F5_Image3.jpg', N'images\Oppo\Oppo F5_Image4.jpg', N'6.0inch', N'402ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Xiaomi', N'Redmi 4A', N'Android v7.2(Nougat)', N'2GB', N'16GB', N'13MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8598', N'Quadcore 1.4GHz', N'64Bit', N'3080mah(Li-Polymer)', N'No        ', N'No        ', N'139.9mm', N'70.4mm', N'metal', N'131.5gm', N'3.5mm Sterio(TS)', N'Grey', N'white', N'gold', N'images\Xiaomi\Redmi 4A_Image1.jpg', N'images\Xiaomi\Redmi 4A_Image2.jpg', N'images\Xiaomi\Redmi 4A_Image3.jpg', N'images\Xiaomi\Redmi 4A_Image4.jpg', N'5.0inch', N'292ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Xiaomi', N'Redmi A1', N'Android v7.1(Nougat)', N'4GB', N'64GB', N'12MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8598', N'Octacore 2.0GHz', N'64Bit', N'3080mah(Li-Polymer)', N'Yes       ', N'Front     ', N'154.4mm', N'75.7mm', N'metal', N'165gm', N'3.5mm Sterio(TS)', N'Grey', N'white', N'gold', N'images\Xiaomi\Redmi A1_Image1.jpg', N'images\Xiaomi\Redmi A1_Image2.jpg', N'images\Xiaomi\Redmi A1_Image3.jpg', N'images\Xiaomi\Redmi A1_Image4.jpg', N'5.5inch', N'401ppi', N'IPS LCD', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Xiaomi', N'Redmi Note 5', N'Android v7.1(Nougat)', N'3GB', N'32GB', N'12MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8598', N'Octacore 1.8GHz', N'64Bit', N'4320mah(Li-Polymer)', N'Yes       ', N'Front     ', N'158.4mm', N'75.4mm', N'metal', N'180gm', N'3.5mm Sterio(TS)', N'Grey', N'white', N'gold', N'images\Xiaomi\Redmi Note 5_Image1.jpg', N'images\Xiaomi\Redmi Note 5_Image2.jpg', N'images\Xiaomi\Redmi Note 5_Image3.jpg', N'images\Xiaomi\Redmi Note 5_Image4.jpg', N'5.9inch', N'403ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Xiaomi', N'Redmi Y1 Lite', N'Android v7.1(Nougat)', N'2GB', N'16GB', N'13MP', N'5MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8598', N'Quadcore 1.4GHz', N'64Bit', N'3080mah(Li-Polymer)', N'No        ', N'No        ', N'153mm', N'76.4mm', N'metal', N'150gm', N'3.5mm Sterio(TS)', N'Grey', N'white', N'gold', N'images\Xiaomi\Redmi Y1 Lite_Image1.jpg', N'images\Xiaomi\Redmi Y1 Lite_Image2.jpg', N'images\Xiaomi\Redmi Y1 Lite_Image3.jpg', N'images\Xiaomi\Redmi Y1 Lite_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Samsung', N'Samsung Galaxy Grand 2', N'Android v4.2(JellyBean)', N'1GB', N'8GB', N'8MP', N'1.9MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 625MSM8953', N'Quadcore 1.2GHz', N'64Bit', N'2600mah(Li-ion)', N'No        ', N'No        ', N'146.8gm', N'75.35mm', N'metal', N'163gm', N'3.5mm Sterio(TS)', N'black', N'gold', N'white', N'images\Samsung\Samsung Galaxy Grand 2_Image1.jpg', N'images\Samsung\Samsung Galaxy Grand 2_Image2.jpg', N'images\Samsung\Samsung Galaxy Grand 2_Image3.jpg', N'images\Samsung\Samsung Galaxy Grand 2_Image4.jpg', N'5.25Inch', N'280ppi', N'TFT', N'Touch', N'dual', N'Nano/Nano', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Samsung', N'Samsung Galaxy J7 Plus', N'Android v7.0(Nougat)', N'4GB', N'32GB', N'13MP', N'16MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6757CD', N'Octacore 2.3GHz', N'64Bit', N'3000Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'152.4mm', N'74.7mm', N'metal', N'150gm', N'3.5mm Sterio(TS)', N'gold', N'chapagne gold', N'white', N'images\Samsung\Samsung Galaxy J7 Plus_Image1.jpg', N'images\Samsung\Samsung Galaxy J7 Plus_Image2.jpg', N'images\Samsung\Samsung Galaxy J7 Plus_Image3.jpg', N'images\Samsung\Samsung Galaxy J7 Plus_Image4.jpg', N'5.5inch', N'401ppi', N'Super AMOLED', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'No        ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Samsung', N'Samsung Galaxy S Duos 2', N'Android v4.2(JellyBean)', N'512MB', N'4GB', N'5MP', N'0.3MP', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'BroadCom BCM216640', N'dual core 1.2GHz', N'32Bit', N'1500Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'121.5mm', N'63.1mm', N'metal', N'118gm', N'3.5mm Sterio(TS)', N'black', N'coffee', N'white', N'images\Samsung\Samsung Galaxy S Duos 2_Image1.jpg', N'images\Samsung\Samsung Galaxy S Duos 2_Image2.jpg', N'images\Samsung\Samsung Galaxy S Duos 2_Image3.jpg', N'images\Samsung\Samsung Galaxy S Duos 2_Image4.jpg', N'4.0inch', N'224ppi', N'TFT', N'Touch', N'Single', N'Micro', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Samsung', N'Samsung Star Pro Dous', N'Android v4.1(JellyBean)', N'512MB', N'1GB', N'2MP', N'N/A', N'CMOS Image Sensor', N'No        ', N'No        ', N'Spreadtrum SC7731g', N'SingleCore 1.0GHz', N'32Bit', N'1500mah(Li-ion)', N'No        ', N'No        ', N'121.2mm', N'62.7mm', N'metal', N'121gm', N'3.5mm Sterio(TS)', N'black', N'coffee', N'white', N'images\Samsung\Samsung Star Pro Dous_Image1.jpg', N'images\Samsung\Samsung Star Pro Dous_Image2.jpg', N'images\Samsung\Samsung Star Pro Dous_Image3.jpg', N'images\Samsung\Samsung Star Pro Dous_Image4.jpg', N'4.0inch', N'232ppi', N'TFT', N'Touch', N'Single', N'Micro', N'2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Sony', N'Sony Experia E1 Dual', N' Android v4.3(JellyBean)', N'512MB', N'4GB', N'3.1MP', N'N/A', N'CMOS Image Sensor', N'Yes       ', N'No        ', N'MediaTek MT6757CD', N'dual core 1.2GHz', N'32Bit', N'1750mah(Li-Polymer)', N'No        ', N'No        ', N'118mm', N'62.4mm', N'metal', N'120gm', N'3.5mm Sterio(TS)', N'Grey', N'white', N'black', N'images\Sony\Sony Experia E1 Dual_Image1.jpg', N'images\Sony\Sony Experia E1 Dual_Image2.jpg', N'images\Sony\Sony Experia E1 Dual_Image3.jpg', N'images\Sony\Sony Experia E1 Dual_Image4.jpg', N'4.0inch', N'233ppi', N'TFD', N'Touch', N'Single', N'Micro', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Sony', N'Sony Experia R1', N'Android v7.1(Nougat)', N'2GB', N'16GB', N'13MP', N'8MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon 332128', N'Octacore 1.4GHz', N'32Bit', N'2620mah(Li-Polymer)', N'No        ', N'No        ', N'146.3mm', N'73.1m', N'metal', N'154gm', N'3.5mm Sterio(TS)', N'jetblack', N'white', N'black', N'images\Sony\Sony Experia R1_Image1.jpg', N'images\Sony\Sony Experia R1_Image2.jpg', N'images\Sony\Sony Experia R1_Image3.jpg', N'images\Sony\Sony Experia R1_Image4.jpg', N'5.2inch', N'282ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Sony', N'Sony Experia X A1', N'Android v7.0(Nougat)', N'3GB', N'32GB', N'23MP', N'8MP', N'CMOS Image Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6737M', N'Octacore 2.3GHz', N'64Bit', N'2300mah(Li-Polymer)', N'No        ', N'No        ', N'145mm', N'67.1mm', N'metal', N'143gm', N'3.5mm Sterio(TS)', N'jetblack', N'white', N'silver', N'images\Sony\Sony Experia X A1_Image1.jpg', N'images\Sony\Sony Experia X A1_Image2.jpg', N'images\Sony\Sony Experia X A1_Image3.jpg', N'images\Sony\Sony Experia X A1_Image4.jpg', N'5inch', N'294ppi', N'IPS LCD', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Sony', N'Sony Experia Z', N'Android v4.1(JellyBean)', N'2GB', N'32GB', N'13MP', N'2.2MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'MediaTek MT6737M', N'Quadcore 1.5GHz', N'32Bit', N'2330mah(Li-Polymer)', N'No        ', N'No        ', N'139mm', N'71mm', N'metal', N'146gm', N'3.5mm Sterio(TS)', N'jetblack', N'coffee', N'silver', N'images\Sony\Sony Experia Z_Image1.jpg', N'images\Sony\Sony Experia Z_Image2.jpg', N'images\Sony\Sony Experia Z_Image3.jpg', N'images\Sony\Sony Experia Z_Image4.jpg', N'5.0inch', N'441ppi', N'IPS LCD', N'Touch', N'Single', N'Micro', N'3G/2G', N'No        ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Vivo', N'Vivo V5', N'Android v6.0(Marshmellow)', N'4GB', N'32GB', N'13', N'20', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'MediaTek MT6757CD', N'Octacore 1.5GHz', N'64Bit', N'3000Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'153.8mm', N'75.5mm', N'metal', N'154gm', N'3.5mm Sterio(TS)', N'black', N'chapagne gold', N'silver', N'images\Vivo\Vivo V5_Image1.jpg', N'images\Vivo\Vivo V5_Image2.jpg', N'images\Vivo\Vivo V5_Image3.jpg', N'images\Vivo\Vivo V5_Image4.jpg', N'5.5inch', N'267ppi', N'IPS LCD ', N'Touch', N'dual', N'Micro/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Vivo', N'Vivo V7 Plus', N'Android v7.1(Nougat)', N'4GB', N'64GB', N'16', N'24MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Octacore 1.8GHz', N'64Bit', N'3325Mah(Li-Polymer)', N'Yes       ', N'Front     ', N'155.8mm', N'75.4mm', N'metal', N'160gm', N'3.5mm Sterio(TS)', N'jetblack', N'chapagne gold', N'Blue', N'images\Vivo\Vivo V7 Plus_Image1.jpg', N'images\Vivo\Vivo V7 Plus_Image2.jpg', N'images\Vivo\Vivo V7 Plus_Image3.jpg', N'images\Vivo\Vivo V7 Plus_Image4.jpg', N'5.9inch', N'273ppi', N'IPS LCD ', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Vivo', N'Vivo X Play 7', N'Android v7.1(Nougat)', N'6GB', N'128GB', N'16MP', N'20MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'Yes       ', N'Qualcomm Snapdragon 332128', N'Octacore 2.45GHz', N'64Bit', N'3500Mah(Li-Polymer)', N'Yes       ', N'Back      ', N'153.8mm', N'75.45mm', N'metal', N'154gm', N'3.5mm Sterio(TS)', N'jetblack', N'black', N'Blue', N'images\Vivo\Vivo X Play 7_Image1.jpg', N'images\Vivo\Vivo X Play 7_Image2.jpg', N'images\Vivo\Vivo X Play 7_Image3.jpg', N'images\Vivo\Vivo X Play 7_Image4.jpg', N'5.7inch', N'515ppi', N'Super AMOLED', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[productfeature] ([brand], [model], [os], [ram], [rom], [camr], [camf], [sensor], [rflash], [fflash], [chipset], [processor], [architecture], [battery], [fprint], [fposition], [height], [width], [weight], [bcase], [audiojack], [color1], [color2], [color3], [image1], [image2], [image3], [image4], [display], [resolution], [displaytype], [touchscreen], [simslot], [simsize], [network], [volte], [gps], [rating]) VALUES (N'Vivo', N'Vivo Y53', N'Android v6.0(Marshmellow)', N'2GB', N'16GB', N'8MP', N'5MP', N'Exmor -RS CMOS Sensor', N'Yes       ', N'No        ', N'Qualcomm Snapdragon QSM332128', N'Octacore 1.4GHz', N'64Bit', N'2800Mah(Li-Polymer)', N'No        ', N'No        ', N'144.4mm', N'71.4mm', N'metal', N'137gm', N'3.5mm Sterio(TS)', N'Grey', N'black', N'silver', N'images\Vivo\Vivo Y53_Image1.jpg', N'images\Vivo\Vivo Y53_Image2.jpg', N'images\Vivo\Vivo Y53_Image3.jpg', N'images\Vivo\Vivo Y53_Image4.jpg', N'5.0inch', N'220ppi', N'Super AMOLED', N'Touch', N'dual', N'Nano/Nano', N'4g(Supports Indian Bands),3g,2g', N'Yes       ', N'Yes       ', CAST(0.0 AS Decimal(2, 1)))
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
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 6', N'Apple', N'Touch               ', N'SuperComNet', CAST(25299.00 AS Decimal(10, 2)), 38, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 6S Plus', N'Apple', N'Touch               ', N'SuperComNet', CAST(40999.00 AS Decimal(10, 2)), 23, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone X', N'Apple', N'Touch               ', N'SuperComNet', CAST(83499.00 AS Decimal(10, 2)), 0, N'Out Of Stock')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 7', N'Apple', N'Touch               ', N'SuperComNet', CAST(42999.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 8', N'Apple', N'Touch               ', N'SuperComNet', CAST(55999.00 AS Decimal(10, 2)), 31, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Asus Zenfone 3', N'Asus', N'Touch               ', N'OmniTechRetail', CAST(11999.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Asus Zenfone 3', N'Asus', N'Touch               ', N'OmniTechRetail', CAST(11999.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Asus Zenfone 3 Laser', N'Asus', N'Touch               ', N'OmniTechRetail', CAST(9999.00 AS Decimal(10, 2)), 2, N'Only 2 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Asus Zenfone 3s Max', N'Asus', N'Touch               ', N'OmniTechRetail', CAST(8999.00 AS Decimal(10, 2)), 24, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Asus Zenfone 4 Selfie', N'Asus', N'Touch               ', N'OmniTechRetail', CAST(9999.00 AS Decimal(10, 2)), 36, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Coolpad Cool 1', N'Coolpad', N'Touch               ', N'MyDukan', CAST(11999.00 AS Decimal(10, 2)), 23, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Coolpad Mega 3', N'Coolpad', N'Touch               ', N'MyDukan', CAST(5999.00 AS Decimal(10, 2)), 13, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Coolpad Note 5 Lite', N'Coolpad', N'Touch               ', N'MyDukan', CAST(7320.00 AS Decimal(10, 2)), 45, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Coolpad Note 5 Lite C', N'Coolpad', N'Touch               ', N'MyDukan', CAST(6180.00 AS Decimal(10, 2)), 51, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Intex Aqua 4.0 4G  ', N'Intex', N'Touch               ', N'MyTronicsSLP', CAST(3299.00 AS Decimal(10, 2)), 18, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Intex Aqua Style III', N'Intex', N'Touch               ', N'MyTronicsSLP', CAST(3999.00 AS Decimal(10, 2)), 24, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Karbonn Aura Note Play', N'Karbonn', N'Touch               ', N'MobileCollection', CAST(6299.00 AS Decimal(10, 2)), 14, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Karbonn K9 Smart Eco', N'Karbonn', N'Touch               ', N'MobileCollection', CAST(2869.00 AS Decimal(10, 2)), 3, N'Only 3 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Karbonn Titanium Jumbo', N'Karbonn', N'Touch               ', N'MobileCollection', CAST(5190.00 AS Decimal(10, 2)), 45, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Karbonn Aura', N'Karbonn', N'Touch               ', N'MobileCollection', CAST(3199.00 AS Decimal(10, 2)), 4, N'Only 4 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lava A51', N'Lava', N'Touch               ', N'LavaE-Store', CAST(2799.00 AS Decimal(10, 2)), 5, N'Only 5 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lava A73', N'Lava', N'Touch               ', N'LavaE-Store', CAST(3849.00 AS Decimal(10, 2)), 15, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lava A77', N'Lava', N'Touch               ', N'LavaE-Store', CAST(4599.00 AS Decimal(10, 2)), 15, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lava Z60', N'Lava', N'Touch               ', N'OmnitechRetail', CAST(5499.00 AS Decimal(10, 2)), 225, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lenovo K6 Power', N'Lenovo', N'Touch               ', N'IndiFlashMart', CAST(7999.00 AS Decimal(10, 2)), 26, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lenovo K8 Plus', N'Lenovo', N'Touch               ', N'IndiFlashMart', CAST(9999.00 AS Decimal(10, 2)), 7, N'Only 7 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lenovo Vibe K5 Note', N'Lenovo', N'Touch               ', N'IndiFlashMart', CAST(9999.00 AS Decimal(10, 2)), 65, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lenovo Z2 Plus', N'Lenovo', N'Touch               ', N'JKNSTORE', CAST(15499.00 AS Decimal(10, 2)), 33, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'LG G5', N'LG', N'Touch               ', N'ShoppingOnline', CAST(22999.00 AS Decimal(10, 2)), 34, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Micromax Canvas 5 E481', N'Micromax', N'Touch               ', N'FlashStarCommerce', CAST(6900.00 AS Decimal(10, 2)), 50, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Samsung Star Pro Dous', N'Samsung', N'Touch               ', N'TrueComRetail', CAST(7550.00 AS Decimal(10, 2)), 20, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Vivo V5', N'Vivo', N'Touch               ', N'VTMSLP', CAST(13800.00 AS Decimal(10, 2)), 22, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Vivo V7 Plus', N'Vivo', N'Touch               ', N'VTMSLP', CAST(18799.00 AS Decimal(10, 2)), 34, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Vivo X Play 7', N'Vivo', N'Touch               ', N'VTMSLP', CAST(29990.00 AS Decimal(10, 2)), 4, N'Only 4 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Vivo Y53', N'Vivo', N'Touch               ', N'VTMSLP', CAST(8199.00 AS Decimal(10, 2)), 7, N'Only 7 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Moto C Plus', N'Motorola', N'Touch               ', N'VisionStar', CAST(6999.00 AS Decimal(10, 2)), 11, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Moto E3 Power', N'Motorola', N'Touch               ', N'VisionStar', CAST(6999.00 AS Decimal(10, 2)), 30, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Moto E4 Plus', N'Motorola', N'Touch               ', N'VisionStar', CAST(9999.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Moto M', N'Motorola', N'Touch               ', N'VisionStar', CAST(12999.00 AS Decimal(10, 2)), 75, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Nokia 2', N'Nokia', N'Touch               ', N'OmniTechRetail', CAST(6340.00 AS Decimal(10, 2)), 30, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Nokia 5', N'Nokia', N'Touch               ', N'OmniTechRetail', CAST(10999.00 AS Decimal(10, 2)), 15, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Nokia 6', N'Nokia', N'Touch               ', N'OmniTechRetail', CAST(13599.00 AS Decimal(10, 2)), 35, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Nokia 8', N'Nokia', N'Touch               ', N'OmniTechRetail', CAST(26999.00 AS Decimal(10, 2)), 20, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Redmi A1', N'Xiaomi', N'Touch               ', N'TrueNetCommerce', CAST(18999.00 AS Decimal(10, 2)), 9, N'Only 9 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Redmi Note 5', N'Xiaomi', N'Touch               ', N'TrueNetCommerce', CAST(9999.00 AS Decimal(10, 2)), 25, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Sony Experia E1 Dual', N'Sony', N'Touch               ', N'OmniTechRetail', CAST(7549.00 AS Decimal(10, 2)), 0, N'Out Of Stock')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Sony Experia R1', N'Sony', N'Touch               ', N'OmniTechRetail', CAST(10443.00 AS Decimal(10, 2)), 47, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Sony Experia X A1', N'Sony', N'Touch               ', N'OmniTechRetail', CAST(16935.00 AS Decimal(10, 2)), 8, N'Only 8 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Sony Experia Z', N'Sony', N'Touch               ', N'OmniTechRetail', CAST(32490.00 AS Decimal(10, 2)), 32, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Intex Aqua 4G Mini', N'Intex', N'Touch               ', N'MyTronicsSLP', CAST(2620.00 AS Decimal(10, 2)), 14, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Intex Aqua A4', N'Intex', N'Touch               ', N'MyTronicsSLP', CAST(3199.00 AS Decimal(10, 2)), 16, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Lenovo A1000', N'Lenovo', N'Touch               ', N'JKNSTORE', CAST(4300.00 AS Decimal(10, 2)), 15, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'LG G6', N'LG', N'Touch               ', N'ShoppingOnline', CAST(16999.00 AS Decimal(10, 2)), 25, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'LG Q6', N'LG', N'Touch               ', N'ShoppingOnline', CAST(12299.00 AS Decimal(10, 2)), 45, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'LG V20', N'LG', N'Touch               ', N'ShoppingOnline', CAST(21490.00 AS Decimal(10, 2)), 50, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Micromax 5 Lite Q462', N'Micromax', N'Touch               ', N'FlashStaRCommerce', CAST(4975.00 AS Decimal(10, 2)), 35, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Oppo A37', N'Oppo', N'Touch               ', N'FlashTechRetail', CAST(8249.00 AS Decimal(10, 2)), 30, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Oppo A71', N'Oppo', N'Touch               ', N'FlashTechRetail', CAST(9099.00 AS Decimal(10, 2)), 10, N'Only 10 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Oppo F3 Plus', N'Oppo', N'Touch               ', N'FlashTechRetail', CAST(17499.00 AS Decimal(10, 2)), 20, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Oppo F5', N'Oppo', N'Touch               ', N'FlashTechRetail', CAST(17999.00 AS Decimal(10, 2)), 24, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Redmi 4A', N'Xiaomi', N'Touch               ', N'TrueNetCommerce', CAST(6799.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Redmi Y1 Lite', N'Xiaomi', N'Touch               ', N'TrueNetCommerce', CAST(6999.00 AS Decimal(10, 2)), 5, N'Only 5 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 8 Plus', N'Apple', N'Touch               ', N'SuperComNet', CAST(78499.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Samsung Galaxy Grand 2', N'Samsung', N'Touch               ', N'TrueComRetail', CAST(16740.00 AS Decimal(10, 2)), 28, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Samsung Galaxy J7 Plus', N'Samsung', N'Touch               ', N'TrueComRetail', CAST(21990.00 AS Decimal(10, 2)), 3, N'Only 3 Left')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Samsung Galaxy S Duos 2', N'Samsung', N'Touch               ', N'TrueComRetail', CAST(8950.00 AS Decimal(10, 2)), 34, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 8 Plus', N'Apple', N'Touch               ', N'SuperComNet', CAST(78499.00 AS Decimal(10, 2)), 12, N'Available')
GO
INSERT [dbo].[product] ([model], [brand], [category], [supplierid], [price], [qty], [status]) VALUES (N'Apple Iphone 8 Plus', N'Apple', N'Touch               ', N'SuperComNet', CAST(78499.00 AS Decimal(10, 2)), 12, N'Available')
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
