USE [Poultry_CRM]
GO
/****** Object:  Table [dbo].[Bird_Issue_master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bird_Issue_master](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Farm_name] [varchar](100) NULL,
	[Item_Name] [varchar](100) NULL,
	[Quentity] [int] NULL,
	[Batch] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[date] [varchar](100) NULL,
 CONSTRAINT [PK_Bird_Issue_master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Birds_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Birds_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Birds_Name] [varchar](100) NULL,
	[Birds_ID] [varchar](100) NULL,
 CONSTRAINT [PK_Birds_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chiken_Breed_master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chiken_Breed_master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chiken_Breed] [varchar](50) NULL,
 CONSTRAINT [PK_Chiken_Breed_master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Daily_Feeding_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Daily_Feeding_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Flock] [varchar](100) NULL,
	[feeding_date] [varchar](100) NULL,
	[Type_Of_Bird] [varchar](100) NULL,
	[Feed_Type] [varchar](100) NULL,
	[Quantity_Fed] [int] NULL,
	[Comment] [varchar](max) NULL,
 CONSTRAINT [PK_Daily_Feeding_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[diseases_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[diseases_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Diseases] [varchar](100) NULL,
 CONSTRAINT [PK_diseases_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[diseases_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[diseases_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Flock] [varchar](50) NULL,
	[diseases] [varchar](100) NULL,
	[symptoms] [varchar](100) NULL,
	[Image] [varchar](100) NULL,
	[Notes] [varchar](100) NULL,
 CONSTRAINT [PK_diseases_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Egg_Collection_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Egg_Collection_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Flock] [varchar](50) NULL,
	[Collection_Date] [varchar](100) NULL,
	[Collected_Eggs] [varchar](50) NULL,
	[Good_Eggs] [varchar](50) NULL,
	[Spoilt_Eggs] [varchar](50) NULL,
	[Comment] [varchar](max) NULL,
 CONSTRAINT [PK_Egg_Collection_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Farm_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Farm_Master](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Farm_Name] [varchar](100) NULL,
	[Owner_Name] [varchar](50) NULL,
	[Contact_person] [varchar](100) NULL,
	[Addrees] [varchar](max) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[date] [varchar](100) NULL,
 CONSTRAINT [PK_Farm_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedType_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeedType_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Feed_Type] [varchar](100) NULL,
	[Feed_Type_Value] [varchar](100) NULL,
 CONSTRAINT [PK_FeedType_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Flock_Management_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flock_Management_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Acquired_On] [varchar](100) NULL,
	[Flock_Name] [varchar](100) NULL,
	[Flock_Breed] [varchar](50) NULL,
	[Flock_Source] [varchar](50) NULL,
	[Total_Chiken] [varchar](50) NULL,
	[Chicks] [varchar](50) NULL,
	[Hens] [varchar](50) NULL,
	[Cocks] [varchar](50) NULL,
	[Date] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Flock_Management_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Issue_Items_master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Issue_Items_master](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Farm_name] [varchar](100) NULL,
	[Farm_Id] [varchar](100) NULL,
	[Item_Type] [varchar](50) NULL,
	[Item_Name] [varchar](50) NULL,
	[Quentity] [int] NULL,
	[Issue_Date] [varchar](100) NULL,
	[Farm_number] [varchar](100) NULL,
	[Unit] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Issue_Items_master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login_Reg_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login_Reg_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Mobile_number] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
 CONSTRAINT [PK_Login_Reg_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medication_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medication_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Medication] [varchar](100) NOT NULL,
	[Medication_value] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Medication_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medication_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medication_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Flock] [varchar](50) NULL,
	[Medication_Date] [varchar](100) NULL,
	[Medication] [varchar](100) NULL,
	[Chiks] [varchar](100) NULL,
 CONSTRAINT [PK_Medication_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [varchar](100) NULL,
	[Unit_value] [varchar](100) NULL,
 CONSTRAINT [PK_Unit_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vaccination_tbl]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vaccination_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Flock] [varchar](50) NULL,
	[Vaccination_Date] [varchar](100) NULL,
	[Vaccine] [varchar](100) NULL,
	[Chiks] [varchar](100) NULL,
 CONSTRAINT [PK_Vaccination_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vaccine_Master]    Script Date: 2022-02-14 10:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vaccine_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vaccine] [varchar](50) NULL,
 CONSTRAINT [PK_Vaccine_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bird_Issue_master] ON 

INSERT [dbo].[Bird_Issue_master] ([Id], [Farm_name], [Item_Name], [Quentity], [Batch], [Unit], [Price], [date]) VALUES (1, N'terr', N'Growers Mash', 2, N'6', N'Kg', CAST(148 AS Decimal(18, 0)), N'Mar 26 2021 12:00AM')
INSERT [dbo].[Bird_Issue_master] ([Id], [Farm_name], [Item_Name], [Quentity], [Batch], [Unit], [Price], [date]) VALUES (2, N'PTRfarm', N'Chicks', 20, N'PTRfarm3', N'Kg', CAST(1500 AS Decimal(18, 0)), N'4/1/2021')
INSERT [dbo].[Bird_Issue_master] ([Id], [Farm_name], [Item_Name], [Quentity], [Batch], [Unit], [Price], [date]) VALUES (3, N'PTRfarm', N'Chicks', 20, N'PTRfarm4', N'Kg', CAST(150 AS Decimal(18, 0)), N'4/2/2021')
INSERT [dbo].[Bird_Issue_master] ([Id], [Farm_name], [Item_Name], [Quentity], [Batch], [Unit], [Price], [date]) VALUES (4, N'PTRfarm', N'Chicks', 23, N'PTRfarm1', N'Kg', CAST(1200 AS Decimal(18, 0)), N'4/1/2021')
INSERT [dbo].[Bird_Issue_master] ([Id], [Farm_name], [Item_Name], [Quentity], [Batch], [Unit], [Price], [date]) VALUES (5, N'PTRfarm', N'Chicks', 20, N'PTRfarm2', N'Kg', CAST(1000 AS Decimal(18, 0)), N'4/1/2021')
SET IDENTITY_INSERT [dbo].[Bird_Issue_master] OFF
SET IDENTITY_INSERT [dbo].[Birds_Master] ON 

INSERT [dbo].[Birds_Master] ([ID], [Birds_Name], [Birds_ID]) VALUES (1, N'Broilers', N'Broilers')
INSERT [dbo].[Birds_Master] ([ID], [Birds_Name], [Birds_ID]) VALUES (2, N'Chicks', N'Chicks')
INSERT [dbo].[Birds_Master] ([ID], [Birds_Name], [Birds_ID]) VALUES (3, N'Kienyeji', N'Kienyeji')
INSERT [dbo].[Birds_Master] ([ID], [Birds_Name], [Birds_ID]) VALUES (4, N'Layers', N'Layers')
INSERT [dbo].[Birds_Master] ([ID], [Birds_Name], [Birds_ID]) VALUES (5, N'Others', N'Others')
SET IDENTITY_INSERT [dbo].[Birds_Master] OFF
SET IDENTITY_INSERT [dbo].[Chiken_Breed_master] ON 

INSERT [dbo].[Chiken_Breed_master] ([ID], [Chiken_Breed]) VALUES (1, N'test')
INSERT [dbo].[Chiken_Breed_master] ([ID], [Chiken_Breed]) VALUES (2, NULL)
SET IDENTITY_INSERT [dbo].[Chiken_Breed_master] OFF
SET IDENTITY_INSERT [dbo].[Daily_Feeding_tbl] ON 

INSERT [dbo].[Daily_Feeding_tbl] ([Id], [Flock], [feeding_date], [Type_Of_Bird], [Feed_Type], [Quantity_Fed], [Comment]) VALUES (11, N'PTRfarm1', N'1/4/2021', N'Broilers', N'Growers Mash', 2, N'test')
INSERT [dbo].[Daily_Feeding_tbl] ([Id], [Flock], [feeding_date], [Type_Of_Bird], [Feed_Type], [Quantity_Fed], [Comment]) VALUES (12, N'PTRfarm2', N'2/4/2021', N'Chicks', N'Kienyeji Layers Mix ', 20, N'test')
INSERT [dbo].[Daily_Feeding_tbl] ([Id], [Flock], [feeding_date], [Type_Of_Bird], [Feed_Type], [Quantity_Fed], [Comment]) VALUES (13, N'PTRfarm1', N'23/5/2021', N'Chicks', N'Growers Mash', 1, N'hgdh
')
SET IDENTITY_INSERT [dbo].[Daily_Feeding_tbl] OFF
SET IDENTITY_INSERT [dbo].[diseases_Master] ON 

INSERT [dbo].[diseases_Master] ([Id], [Diseases]) VALUES (1, N'test')
SET IDENTITY_INSERT [dbo].[diseases_Master] OFF
SET IDENTITY_INSERT [dbo].[diseases_tbl] ON 

INSERT [dbo].[diseases_tbl] ([Id], [Flock], [diseases], [symptoms], [Image], [Notes]) VALUES (1, N'PTRfarm2', N'test', N'test', N'Koala.jpg', N'test')
INSERT [dbo].[diseases_tbl] ([Id], [Flock], [diseases], [symptoms], [Image], [Notes]) VALUES (2, N'PTRfarm1', N'test', N'fdgv', N'Penguins.jpg', N'vfgbf')
SET IDENTITY_INSERT [dbo].[diseases_tbl] OFF
SET IDENTITY_INSERT [dbo].[Egg_Collection_tbl] ON 

INSERT [dbo].[Egg_Collection_tbl] ([Id], [Flock], [Collection_Date], [Collected_Eggs], [Good_Eggs], [Spoilt_Eggs], [Comment]) VALUES (1, N'test', N'2021-03-11', N'200', N'100', N'100', N'test')
INSERT [dbo].[Egg_Collection_tbl] ([Id], [Flock], [Collection_Date], [Collected_Eggs], [Good_Eggs], [Spoilt_Eggs], [Comment]) VALUES (4, N'gg', N'16/3/2021', N'30', N'12', N'35', N'yfd')
INSERT [dbo].[Egg_Collection_tbl] ([Id], [Flock], [Collection_Date], [Collected_Eggs], [Good_Eggs], [Spoilt_Eggs], [Comment]) VALUES (5, N'PTRfarm1', N'27/4/2021', N'30', N'20', N'10', N'test')
SET IDENTITY_INSERT [dbo].[Egg_Collection_tbl] OFF
SET IDENTITY_INSERT [dbo].[Farm_Master] ON 

INSERT [dbo].[Farm_Master] ([Id], [Farm_Name], [Owner_Name], [Contact_person], [Addrees], [Mobile], [Email], [Password], [date]) VALUES (1, N'test', N'test', N'test', N'jdhgfj dfhg', N'06354867978', N'p@gmail.com', N'test06354867978', N'20/03/2021')
INSERT [dbo].[Farm_Master] ([Id], [Farm_Name], [Owner_Name], [Contact_person], [Addrees], [Mobile], [Email], [Password], [date]) VALUES (3, N'PTRfarm', N'poonam', N'hdsfgj', N'dfd', N'6394968728', N'p@gmail.com', N'1234', N'20/03/2021')
SET IDENTITY_INSERT [dbo].[Farm_Master] OFF
SET IDENTITY_INSERT [dbo].[FeedType_Master] ON 

INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (1, N'Chick & Duck Mash', N'Chick & Duck Mash')
INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (2, N'Growers Mash', N'Growers Mash')
INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (3, N'Kienyeji Growers Mix ', N'Kienyeji Growers Mix')
INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (4, N'Kienyeji Layers Mix ', N'Kienyeji Layers Mix ')
INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (5, N'Kienyeji Mash', N'Kienyeji Mash')
INSERT [dbo].[FeedType_Master] ([ID], [Feed_Type], [Feed_Type_Value]) VALUES (6, N'Layers Mash', N'Layers Mash')
SET IDENTITY_INSERT [dbo].[FeedType_Master] OFF
SET IDENTITY_INSERT [dbo].[Flock_Management_tbl] ON 

INSERT [dbo].[Flock_Management_tbl] ([Id], [Acquired_On], [Flock_Name], [Flock_Breed], [Flock_Source], [Total_Chiken], [Chicks], [Hens], [Cocks], [Date], [Description]) VALUES (1, N'2021-03-11', N'test', N'Kienyeji', N'test', N'20', N'2', N'13', N'5', NULL, N'test')
SET IDENTITY_INSERT [dbo].[Flock_Management_tbl] OFF
SET IDENTITY_INSERT [dbo].[Issue_Items_master] ON 

INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (30, N'test', N'test1', N'Feed', N'Growers Mash', 30, N'01/04/2021', N'1', N'Kg', CAST(880 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (31, N'PTRfarm', N'PTRfarm1', N'Bird', N'Broilers', 20, N'01/04/2021', N'1', N'Kg', CAST(220 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (32, N'PTRfarm', N'PTRfarm1', N'Feed', N'Kienyeji Layers Mix ', 50, N'01/04/2021', N'1', N'Kg', CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (33, N'PTRfarm', N'PTRfarm2', N'Bird', N'Chicks', 20, N'01/04/2021', N'2', N'Kg', CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (34, N'PTRfarm', N'PTRfarm3', N'Bird', N'Chicks', 20, N'01/04/2021', N'3', N'Kg', CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (35, N'PTRfarm', N'PTRfarm2', N'Feed', N'Growers Mash', 20, N'02/04/2021', N'2', N'Kg', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Issue_Items_master] ([Id], [Farm_name], [Farm_Id], [Item_Type], [Item_Name], [Quentity], [Issue_Date], [Farm_number], [Unit], [Price]) VALUES (36, N'PTRfarm', N'PTRfarm4', N'Bird', N'Chicks', 20, N'02/04/2021', N'4', N'Kg', CAST(150 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Issue_Items_master] OFF
SET IDENTITY_INSERT [dbo].[Login_Reg_tbl] ON 

INSERT [dbo].[Login_Reg_tbl] ([Id], [Name], [Mobile_number], [Email], [Password]) VALUES (1, N'Poonam Yadav', N'6394945758', N'poonampcc@gmail.com', N'poonam123')
INSERT [dbo].[Login_Reg_tbl] ([Id], [Name], [Mobile_number], [Email], [Password]) VALUES (2, N'Pihu Yadav', N'6394945758', N'pihu mpcc@gmail.com', N'pihu123')
INSERT [dbo].[Login_Reg_tbl] ([Id], [Name], [Mobile_number], [Email], [Password]) VALUES (3, NULL, NULL, N'admin@gmail.com', N'admin123')
SET IDENTITY_INSERT [dbo].[Login_Reg_tbl] OFF
SET IDENTITY_INSERT [dbo].[Medication_Master] ON 

INSERT [dbo].[Medication_Master] ([ID], [Medication], [Medication_value]) VALUES (1, N'ESB3', N'ESB3')
INSERT [dbo].[Medication_Master] ([ID], [Medication], [Medication_value]) VALUES (2, N'Levamisole', N'Levamisole')
INSERT [dbo].[Medication_Master] ([ID], [Medication], [Medication_value]) VALUES (3, N'Piperazine', N'Piperazine')
INSERT [dbo].[Medication_Master] ([ID], [Medication], [Medication_value]) VALUES (4, N'Tylodoxy', N'Tylodoxy')
SET IDENTITY_INSERT [dbo].[Medication_Master] OFF
SET IDENTITY_INSERT [dbo].[Medication_tbl] ON 

INSERT [dbo].[Medication_tbl] ([Id], [Flock], [Medication_Date], [Medication], [Chiks]) VALUES (1, N'test', N'31/3/2021', N'ESB3', N'200')
INSERT [dbo].[Medication_tbl] ([Id], [Flock], [Medication_Date], [Medication], [Chiks]) VALUES (2, N'test', N'31/3/2021', N'Levamisole', N'200')
INSERT [dbo].[Medication_tbl] ([Id], [Flock], [Medication_Date], [Medication], [Chiks]) VALUES (3, N'PTRfarm1', N'31/3/2021', N'Levamisole', N'4')
INSERT [dbo].[Medication_tbl] ([Id], [Flock], [Medication_Date], [Medication], [Chiks]) VALUES (4, N'PTRfarm2', N'1/4/2021', N'Piperazine', N'10')
SET IDENTITY_INSERT [dbo].[Medication_tbl] OFF
SET IDENTITY_INSERT [dbo].[Unit_Master] ON 

INSERT [dbo].[Unit_Master] ([ID], [Unit], [Unit_value]) VALUES (1, N'Kg', NULL)
SET IDENTITY_INSERT [dbo].[Unit_Master] OFF
SET IDENTITY_INSERT [dbo].[Vaccination_tbl] ON 

INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (2, N'test', N'13/3/2021', N'Broilers', N'200')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (3, N'test', N'12/03/2021', N'Fowl Pox', N'20')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (4, N'PTRfarm1', N'26/3/2021', N'Piperazine', N'40')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (5, N'PTRfarm1', N'26/4/2021', N'Fowl Pox', N'2')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (6, N'PTRfarm2', N'1/4/2021', N'Fowl Pox', N'34')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (7, N'PTRfarm1', N'1/4/2021', N'Fowl Pox', N'2')
INSERT [dbo].[Vaccination_tbl] ([Id], [Flock], [Vaccination_Date], [Vaccine], [Chiks]) VALUES (8, N'PTRfarm1', N'1/4/2021', N'Fowl Pox', N'5')
SET IDENTITY_INSERT [dbo].[Vaccination_tbl] OFF
SET IDENTITY_INSERT [dbo].[Vaccine_Master] ON 

INSERT [dbo].[Vaccine_Master] ([Id], [Vaccine]) VALUES (1, N'Fowl Pox')
SET IDENTITY_INSERT [dbo].[Vaccine_Master] OFF
