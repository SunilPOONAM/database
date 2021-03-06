USE [AttendenceMgmt]
GO
/****** Object:  Table [dbo].[CompanyRegistration_tbl]    Script Date: 2022-02-14 10:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompanyRegistration_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CompanyName] [varchar](100) NULL,
	[MobileNo] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CompanyRegistration_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Daily_Attendence_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Daily_Attendence_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [varchar](50) NULL,
	[TimeIn] [datetime] NULL,
	[TimeInImage] [varchar](max) NULL,
	[TimeOut] [datetime] NULL,
	[TimeOutImage] [varchar](max) NULL,
	[Date] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Daily] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DailyAttendence_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DailyAttendence_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [varchar](50) NULL,
	[TimeIn] [time](7) NULL,
	[TimeInImage] [varchar](max) NULL,
	[TimeOut] [time](7) NULL,
	[TimeOutImage] [varchar](max) NULL,
	[Lat] [varchar](50) NULL,
	[Long] [varchar](50) NULL,
	[Accuracy] [varchar](max) NULL,
	[Date] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_DailyAttendence_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department_Master_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department_Master_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](200) NULL,
	[CompanyName] [varchar](200) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Department_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation_Master_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation_Master_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](200) NULL,
	[CompanyName] [varchar](200) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Designation_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeDetails_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeDetails_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Shift] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Date] [datetime] NULL,
	[Company_Name] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeTrack_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeTrack_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[Lat] [varchar](max) NULL,
	[Long] [varchar](max) NULL,
	[LatLongTime] [varchar](50) NULL,
	[CurrentTimeInMilies] [varchar](50) NULL,
	[CheckInImage] [varchar](max) NULL,
	[CheckOutImage] [varchar](max) NULL,
	[Date] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_EmployeeTrack_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shift_Master_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shift_Master_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Shift] [varchar](200) NULL,
	[CompanyName] [varchar](200) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Shift_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sign_In_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sign_In_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Usertype] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Sign_In_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SignIn_tbl]    Script Date: 2022-02-14 10:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignIn_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Usertype] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SignIn_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyRegistration_tbl] ON 

INSERT [dbo].[CompanyRegistration_tbl] ([Id], [Name], [CompanyName], [MobileNo], [Email], [Password], [Status]) VALUES (1, N'Mr. Rajneesh Nigam', N'Techno Craft Solutions Lucknow', N'9935001900', N'tcs@gmail.com', N'tcs@123', 1)
SET IDENTITY_INSERT [dbo].[CompanyRegistration_tbl] OFF
SET IDENTITY_INSERT [dbo].[Daily_Attendence_tbl] ON 

INSERT [dbo].[Daily_Attendence_tbl] ([Id], [EmployeeId], [TimeIn], [TimeInImage], [TimeOut], [TimeOutImage], [Date], [Status]) VALUES (1, N'1', CAST(N'2021-07-04 10:00:00.000' AS DateTime), NULL, CAST(N'2021-07-04 06:00:00.000' AS DateTime), NULL, CAST(N'2021-07-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Daily_Attendence_tbl] ([Id], [EmployeeId], [TimeIn], [TimeInImage], [TimeOut], [TimeOutImage], [Date], [Status]) VALUES (2, N'2', CAST(N'2021-07-04 10:00:00.000' AS DateTime), NULL, CAST(N'2021-07-04 06:00:00.000' AS DateTime), NULL, CAST(N'2021-07-04 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Daily_Attendence_tbl] OFF
SET IDENTITY_INSERT [dbo].[DailyAttendence_tbl] ON 

INSERT [dbo].[DailyAttendence_tbl] ([Id], [EmployeeId], [TimeIn], [TimeInImage], [TimeOut], [TimeOutImage], [Lat], [Long], [Accuracy], [Date], [Status]) VALUES (1, N'1', CAST(N'03:02:00' AS Time), N'', CAST(N'18:00:00' AS Time), NULL, N'23.56.7', N'234.871.0.2', N'test', CAST(N'2021-07-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DailyAttendence_tbl] ([Id], [EmployeeId], [TimeIn], [TimeInImage], [TimeOut], [TimeOutImage], [Lat], [Long], [Accuracy], [Date], [Status]) VALUES (2, N'2', CAST(N'03:02:00' AS Time), NULL, CAST(N'06:00:00' AS Time), NULL, N'23.56.7', N'234.871.0.2', N'dnfghjd', CAST(N'2021-07-02 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DailyAttendence_tbl] OFF
SET IDENTITY_INSERT [dbo].[Department_Master_tbl] ON 

INSERT [dbo].[Department_Master_tbl] ([Id], [Department], [CompanyName], [Status]) VALUES (1, N'IT', N'Techno Craft Solutions Lucknow', 1)
SET IDENTITY_INSERT [dbo].[Department_Master_tbl] OFF
SET IDENTITY_INSERT [dbo].[Designation_Master_tbl] ON 

INSERT [dbo].[Designation_Master_tbl] ([Id], [Designation], [CompanyName], [Status]) VALUES (1, N'Developer', N'Techno Craft Solutions Lucknow', 1)
INSERT [dbo].[Designation_Master_tbl] ([Id], [Designation], [CompanyName], [Status]) VALUES (2, N'Designer', N'Techno Craft Solutions Lucknow', 1)
SET IDENTITY_INSERT [dbo].[Designation_Master_tbl] OFF
SET IDENTITY_INSERT [dbo].[EmployeeDetails_tbl] ON 

INSERT [dbo].[EmployeeDetails_tbl] ([Id], [Name], [MobileNo], [Email], [Password], [Department], [Designation], [Shift], [Status], [Date], [Company_Name]) VALUES (1, N'Poonam Yadav', N'7458950577', N'poonam@gmail.com', N'Poonam@123', N'IT', N'Developer', N'A', 1, CAST(N'2021-06-25 00:00:00.000' AS DateTime), N'TCS')
INSERT [dbo].[EmployeeDetails_tbl] ([Id], [Name], [MobileNo], [Email], [Password], [Department], [Designation], [Shift], [Status], [Date], [Company_Name]) VALUES (2, N'Sunil kushwaha', N'09795687916', N'Sunil@123gmail.com', N'Sunil@123', N'ITT', N'Developer', N'A', 1, CAST(N'2021-06-25 00:00:00.000' AS DateTime), N'TCS')
INSERT [dbo].[EmployeeDetails_tbl] ([Id], [Name], [MobileNo], [Email], [Password], [Department], [Designation], [Shift], [Status], [Date], [Company_Name]) VALUES (3, N'pihu yadav', N'9384978545', N'p@gmail.com', N'pp123', N'1', N'1', N'1', 1, CAST(N'2021-07-06 00:00:00.000' AS DateTime), N'TCS')
SET IDENTITY_INSERT [dbo].[EmployeeDetails_tbl] OFF
SET IDENTITY_INSERT [dbo].[EmployeeTrack_tbl] ON 

INSERT [dbo].[EmployeeTrack_tbl] ([Id], [UserID], [Lat], [Long], [LatLongTime], [CurrentTimeInMilies], [CheckInImage], [CheckOutImage], [Date], [Status]) VALUES (1, N'1', N'24342.7657.4875.465', N'3454.878.869.84758', NULL, N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EmployeeTrack_tbl] OFF
SET IDENTITY_INSERT [dbo].[Shift_Master_tbl] ON 

INSERT [dbo].[Shift_Master_tbl] ([Id], [Shift], [CompanyName], [Status]) VALUES (1, N'A', N'Techno Craft Solutions Lucknow', 1)
SET IDENTITY_INSERT [dbo].[Shift_Master_tbl] OFF
SET IDENTITY_INSERT [dbo].[Sign_In_tbl] ON 

INSERT [dbo].[Sign_In_tbl] ([Id], [UserName], [Usertype], [Password], [Status]) VALUES (1, N'tcs@gmail.com', N'Admin', N'tcs@123', 1)
INSERT [dbo].[Sign_In_tbl] ([Id], [UserName], [Usertype], [Password], [Status]) VALUES (2, N'Sunil@123gmail.com', N'Employee', N'Sunil@123', 1)
INSERT [dbo].[Sign_In_tbl] ([Id], [UserName], [Usertype], [Password], [Status]) VALUES (3, N'poonam@gmail.com', N'Employee', N'Poonam@123', 1)
SET IDENTITY_INSERT [dbo].[Sign_In_tbl] OFF
SET IDENTITY_INSERT [dbo].[SignIn_tbl] ON 

INSERT [dbo].[SignIn_tbl] ([Id], [UserName], [Usertype], [Department], [Password], [Status]) VALUES (1, N'tcs@gmail.com', N'Admin', N'Admin', N'tcs@123', 1)
INSERT [dbo].[SignIn_tbl] ([Id], [UserName], [Usertype], [Department], [Password], [Status]) VALUES (2, N'Sunil@123gmail.com', N'Employee', N'1', N'Sunil@123', 1)
INSERT [dbo].[SignIn_tbl] ([Id], [UserName], [Usertype], [Department], [Password], [Status]) VALUES (3, N'poonam@gmail.com', N'Head', N'1', N'Poonam@123', 1)
INSERT [dbo].[SignIn_tbl] ([Id], [UserName], [Usertype], [Department], [Password], [Status]) VALUES (4, N'p@gmail.com', N'Employee', N'1', N'pp123', 1)
SET IDENTITY_INSERT [dbo].[SignIn_tbl] OFF
