USE [CPCL_2]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_AcceptingsummaryResponse]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AcceptingsummaryResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cal_year] [varchar](50) NULL,
	[Rev_Prno] [varchar](50) NULL,
	[Emp_prno] [varchar](50) NULL,
	[Emp_name] [varchar](50) NULL,
	[rating_Id] [int] NULL,
	[Rating_name] [varchar](80) NULL,
	[Remark] [varchar](max) NULL,
	[Rev_name] [varchar](50) NULL,
	[Rev_sign] [varchar](50) NULL,
	[Rev_Desg] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Flag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_AcceptingsummaryResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_AdminEmployeeAppeal]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AdminEmployeeAppeal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cal_Year] [varchar](50) NULL,
	[Emp_prno] [varchar](50) NULL,
	[Emp_Name] [varchar](max) NULL,
	[Accept_Prno] [varchar](50) NULL,
	[Accept_Name] [varchar](max) NULL,
	[Accept_Desg] [varchar](50) NULL,
	[Rating] [varchar](max) NULL,
	[Remark] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Disagree_Remark] [varchar](max) NULL,
	[Flag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_AdminEmployeeAppeal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_AppealHistory]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AppealHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cal_Year] [varchar](50) NULL,
	[Accept_PRno] [varchar](50) NULL,
	[Emp_Prno] [varchar](50) NULL,
	[Emp_Name] [varchar](80) NULL,
	[Rating_Id] [varchar](50) NULL,
	[Rating_Name] [varchar](max) NULL,
	[Remark] [varchar](max) NULL,
	[Accept_name] [varchar](100) NULL,
	[Accept_Sign] [varchar](100) NULL,
	[Rev_Desg] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_AppealHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeAppeal]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeAppeal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cal_Year] [varchar](50) NULL,
	[Emp_prno] [varchar](50) NULL,
	[Emp_Name] [varchar](max) NULL,
	[Accept_Prno] [varchar](50) NULL,
	[Accept_Name] [varchar](max) NULL,
	[Accept_Desg] [varchar](50) NULL,
	[Rating] [varchar](max) NULL,
	[Remark] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Disagree_Remark] [varchar](max) NULL,
	[Flag] [varchar](50) NULL,
	[Appeal_Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_EmployeeAppeal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeMaster_Accepting]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeMaster_Accepting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PR_No] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Name] [varchar](max) NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Company_Code] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Dept_Code] [varchar](50) NULL,
	[Dept_Name] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[Grade_Desc] [varchar](max) NULL,
	[DOB] [varchar](50) NULL,
	[Category] [varchar](max) NULL,
	[Con_Officer] [varchar](50) NULL,
	[Flag] [varchar](50) NULL,
	[Mobile_No] [varchar](50) NULL,
	[Con_Officer_Name] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_EmployeeMaster_Accepting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeMaster_Reporting]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeMaster_Reporting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pr_No] [varchar](50) NOT NULL,
	[Title] [varchar](50) NULL,
	[Name] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Company_Code] [varchar](100) NULL,
	[Company_Name] [varchar](100) NULL,
	[Dept_Code] [varchar](50) NULL,
	[Dept_Name] [varchar](100) NULL,
	[Grade] [varchar](50) NULL,
	[Grade_Desc] [varchar](100) NULL,
	[DOB] [date] NULL,
	[Category] [varchar](50) NULL,
	[Con_Officer] [varchar](80) NULL,
	[Flag] [varchar](50) NULL,
	[Mobile_No] [varchar](50) NULL,
	[Con_Officer_Name] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_EmployeeMaster_Reviewing] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeMaster_Reviewing]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeMaster_Reviewing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PR_No] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Name] [varchar](max) NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Company_Code] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Dept_Code] [varchar](50) NULL,
	[Dept_Name] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[Grade_Desc] [varchar](max) NULL,
	[DOB] [varchar](50) NULL,
	[Category] [varchar](max) NULL,
	[Con_Officer] [varchar](50) NULL,
	[Flag] [varchar](50) NULL,
	[Mobile_No] [varchar](50) NULL,
	[Con_Officer_Name] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_EmployeeMaster_Reviewing_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_level]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_level](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Level] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tbl_Label] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Rating]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rep_id] [int] NULL,
	[Rating] [varchar](max) NULL,
	[Code] [int] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReportingQues2]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReportingQues2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ReportingQues2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReportingResponse1]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReportingResponse1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Calendar_Year] [datetime] NULL,
	[Emp_Pr_no] [varchar](50) NULL,
	[Emp_Name] [varchar](50) NULL,
	[Q_id] [int] NULL,
	[Rating] [varchar](max) NULL,
	[Rating_id] [int] NULL,
	[Rep_Pr_no] [varchar](50) NULL,
	[Flag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ReportingResponse1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReportingResponse2]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReportingResponse2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Calendar_Year] [datetime] NULL,
	[Emp_Pr_No] [varchar](50) NULL,
	[Emp_Name] [varchar](max) NULL,
	[R_Id] [int] NULL,
	[Rating] [varchar](max) NULL,
	[Rating_Desc] [varchar](max) NULL,
	[Rep_Pr_No] [varchar](50) NULL,
	[Reporting_Sign] [varchar](max) NULL,
	[Reporting_Name] [varchar](max) NULL,
	[Reporting_Designation] [varchar](max) NULL,
	[Date] [varchar](max) NULL,
	[Flag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ReportingResponse2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReportingResponse3]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReportingResponse3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Calendar_Year] [datetime] NULL,
	[Emp_PR_No] [varchar](50) NULL,
	[Emp_Name] [varchar](max) NULL,
	[Rating_Id] [int] NULL,
	[Rating] [varchar](max) NULL,
	[Recommendation] [varchar](max) NULL,
	[Promotion] [varchar](50) NULL,
	[Recommendation_Promotion] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Rep_PR_No] [varchar](50) NULL,
	[Rep_Name] [varchar](max) NULL,
	[Signature] [varchar](max) NULL,
	[Designation] [varchar](max) NULL,
	[Flag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ReportingResponse3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_reportQues]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_reportQues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order1] [int] NULL,
	[Question] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_reportQues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReviewingResponse]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReviewingResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cal_year] [date] NULL,
	[Emp_prno] [varchar](50) NULL,
	[Emp_Name] [varchar](80) NULL,
	[Rev_prno] [varchar](50) NULL,
	[Rating_id] [int] NULL,
	[Rating_Name] [varchar](50) NULL,
	[Rating_Desc] [varchar](max) NULL,
	[Sign_Appraisee] [varchar](80) NULL,
	[Name_Appraisee] [varchar](80) NULL,
	[Desg_Appraisee] [varchar](50) NULL,
	[Date_Appraissee] [varchar](50) NULL,
	[Sign_Reviewing] [varchar](80) NULL,
	[Name_Reviewing] [varchar](80) NULL,
	[Design_Reviewing] [varchar](50) NULL,
	[Date_Reviewing] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ReviewingResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_reviewQues]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_reviewQues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_reviewQues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_RevsummaryResponse]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_RevsummaryResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cal_year] [datetime] NULL,
	[Rev_Prno] [varchar](50) NULL,
	[Emp_prno] [varchar](50) NULL,
	[Emp_name] [varchar](50) NULL,
	[rating_Id] [int] NULL,
	[Rating_name] [varchar](80) NULL,
	[Note] [varchar](50) NULL,
	[Rev_name] [varchar](50) NULL,
	[Rev_sign] [varchar](50) NULL,
	[Rev_Desg] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_summaryResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_setcalendar]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_setcalendar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[datefrom] [datetime] NULL,
	[dateto] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tbl_setcalendar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_sumaccepting]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_sumaccepting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[signature] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tbl_sumaccepting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_summaryaccepting]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_summaryaccepting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_summaryaccepting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SummaryReporting]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SummaryReporting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_SummaryReporting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SummaryReviewOfficer]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SummaryReviewOfficer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_SummaryReviewOfficer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Level] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Username] [varchar](100) NULL,
	[Role] [varchar](100) NULL,
	[Mobile_No] [varchar](50) NULL,
	[PR_code] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserLogin]    Script Date: 2022-02-14 10:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](80) NULL,
	[password] [varchar](50) NULL,
	[role] [varchar](100) NULL,
	[PR_No] [varchar](100) NULL,
	[Mobile_No] [varchar](100) NULL,
	[Date] [varchar](100) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_UserLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AdminEmployeeAppeal] ON 

INSERT [dbo].[tbl_AdminEmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag]) VALUES (1, N'2020-2021', N'803587', N'KANNAN', N'802706', N'Sheetal', N'DGM', N'Below Satisfactory', N'Poor performance', N'A', N'Bad.', NULL)
INSERT [dbo].[tbl_AdminEmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag]) VALUES (2, N'2020-2021', N'803583', N'SHASHI', N'802706', N'Sheetal', N'DGM', N'Satisfactory', N'', N'A', N'Deserve More', NULL)
INSERT [dbo].[tbl_AdminEmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag]) VALUES (3, N'2020-2021', N'803585', N'RADHA', N'802706', N'Sheetal', N'DGM', N'Above Satisfactory', N'', N'A', N'Deserve More.', NULL)
INSERT [dbo].[tbl_AdminEmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag]) VALUES (4, N'2020-2021', N'803592', N'RAHUL', N'802707', N'Shailja', N'DGM', N'Above Satisfactory', N'', N'A', N'Bad', NULL)
SET IDENTITY_INSERT [dbo].[tbl_AdminEmployeeAppeal] OFF
SET IDENTITY_INSERT [dbo].[tbl_AppealHistory] ON 

INSERT [dbo].[tbl_AppealHistory] ([ID], [Cal_Year], [Accept_PRno], [Emp_Prno], [Emp_Name], [Rating_Id], [Rating_Name], [Remark], [Accept_name], [Accept_Sign], [Rev_Desg], [Status]) VALUES (1, N'2020-2021', N'802706', N'803587', N'KANNAN', N'4', N'Below Satisfactory', N'Poor performance', N'Sheetal', N'Sheetal', N'DGM', N'F')
SET IDENTITY_INSERT [dbo].[tbl_AppealHistory] OFF
SET IDENTITY_INSERT [dbo].[tbl_EmployeeAppeal] ON 

INSERT [dbo].[tbl_EmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag], [Appeal_Status]) VALUES (1, N'2020-2021', N'803587', N'KANNAN', N'802706', N'Sheetal', N'DGM', N'Satisfactory', N'', N'S', N'Bad.', N'U', N'Done')
INSERT [dbo].[tbl_EmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag], [Appeal_Status]) VALUES (2, N'2020-2021', N'803583', N'SHASHI', N'802706', N'Sheetal', N'DGM', N'Satisfactory', N'', N'S', N'Deserve More', NULL, N'Done')
INSERT [dbo].[tbl_EmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag], [Appeal_Status]) VALUES (3, N'2020-2021', N'803585', N'RADHA', N'802706', N'Sheetal', N'DGM', N'Above Satisfactory', N'', N'S', N'Deserve More.', NULL, N'Done')
INSERT [dbo].[tbl_EmployeeAppeal] ([Id], [Cal_Year], [Emp_prno], [Emp_Name], [Accept_Prno], [Accept_Name], [Accept_Desg], [Rating], [Remark], [Status], [Disagree_Remark], [Flag], [Appeal_Status]) VALUES (4, N'2020-2021', N'803592', N'RAHUL', N'802707', N'Shailja', N'DGM', N'Above Satisfactory', N'', N'A', N'Bad', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_EmployeeAppeal] OFF
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Accepting] ON 

INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (1, N'803587', N'Mr', N'KANNAN', N'Male', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802706', N'A', N'9956756110', N'Sheetal')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (2, N'803583', N'Ms', N'SHASHI', N'Female', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802706', N'A', N'9935001900', N'Sheetal')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (3, N'803884', N'Ms', N'SHIVANI', N'Female', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802706', N'A', N'7521850031', N'Sheetal')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (4, N'803585', N'Ms', N'RADHA', N'Female', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802706', N'A', N'9654049338', N'Sheetal')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (5, N'803586', N'Ms', N'KASHISH', N'Female', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549871', N'Shailja')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (6, N'803592', N'Mr', N'RAHUL', N'Male', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549872', N'Shailja')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (7, N'803588', N'Ms', N'NEHA', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549873', N'Shailja')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (8, N'803589', N'Mr', N'SWATI', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549874', N'Shailja')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (9, N'803590', N'Mr', N'RAJ', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549875', N'Shailja')
INSERT [dbo].[tbl_EmployeeMaster_Accepting] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (10, N'803591', N'Ms', N'POONAM', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802707', N'A', N'3216549876', N'Shailja')
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Accepting] OFF
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Reporting] ON 

INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (1, N'803587', N'Mr', N'KANNAN', N'Male', N'Done', N'9910', N'CPCL', N'PU00', N'P&U	', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802702', N'R', N'8878756745', N'Vivek')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (2, N'803583', N'Ms', N'SHASHI', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U	', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward

', N'802702', N'R', N'8878756746', N'Vivek')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (23, N'803884', N'Ms', N'SHIVANI', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U	', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802702', N'R', N'8878756747', N'Vivek')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (25, N'803585', N'Ms', N'RADHA', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U	', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward

', N'802702', N'R', N'8878756746', N'Vivek')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (26, N'803586', N'Ms', N'KASHISH', N'FEMALE', N'Done', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (27, N'803592', N'Mr', N'RAHUL', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (28, N'803588', N'Ms', N'NEHA', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (29, N'803589', N'Ms', N'SWATI', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (30, N'803590', N'Mr', N'RAJ', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
INSERT [dbo].[tbl_EmployeeMaster_Reporting] ([ID], [Pr_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (31, N'803591', N'Mr', N'POONAM', N'FEMALE', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8
', CAST(N'1972-03-13' AS Date), N'Other Backward', N'802703', N'R', N'8878756746', N'Raman')
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Reporting] OFF
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ON 

INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (1, N'803587', N'Mr', N'KANNAN', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802704', N'V', N'8945612304', N'Ajay')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (2, N'803583', N'Ms', N'SHASHI', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802704', N'V', N'7894561230', N'Ajay')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (3, N'803884', N'Ms', N'SHIVANI', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802704', N'V', N'1234567890', N'Ajay')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (4, N'803585', N'Ms', N'RADHA', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802704', N'V', N'3216549870', N'Ajay')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (5, N'803586', N'Ms', N'KASHISH', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549871', N'Prasad')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (6, N'803592', N'Mr', N'RAHUL', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549872', N'Prasad')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (7, N'803588', N'Ms', N'NEHA', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549873', N'Prasad')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (8, N'803589', N'Mr', N'SWATI', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549874', N'Prasad')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (9, N'803590', N'Mr', N'RAJ', N'Male', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549875', N'Prasad')
INSERT [dbo].[tbl_EmployeeMaster_Reviewing] ([ID], [PR_No], [Title], [Name], [Gender], [Status], [Company_Code], [Company_Name], [Dept_Code], [Dept_Name], [Grade], [Grade_Desc], [DOB], [Category], [Con_Officer], [Flag], [Mobile_No], [Con_Officer_Name]) VALUES (10, N'803591', N'Ms', N'POONAM', N'Female', N'Active', N'9910', N'CPCL', N'PU00', N'P&U', N'P8', N'CPCL Non Ofcr Gr 8', N'1972-03-13', N'Other Backward', N'802705', N'V', N'3216549876', N'Prasad')
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster_Reviewing] OFF
SET IDENTITY_INSERT [dbo].[tbl_Rating] ON 

INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (1, 1, N'Excellent', 11, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (2, 1, N'Good', 12, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (3, 1, N'Poor', 13, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (4, 1, N'Very Poor', 14, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (5, 2, N'Know his/her responsibility', 21, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (6, 2, N'Needs Guidance', 22, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (7, 2, N'Knowledge of no responsibility', 23, N'True')
INSERT [dbo].[tbl_Rating] ([Id], [Rep_id], [Rating], [Code], [Status]) VALUES (8, 2, N'Poor knowledge of responsibility', 24, N'True')
SET IDENTITY_INSERT [dbo].[tbl_Rating] OFF
SET IDENTITY_INSERT [dbo].[tbl_ReportingQues2] ON 

INSERT [dbo].[tbl_ReportingQues2] ([Id], [Rating], [Status]) VALUES (1, N'ACHIEVEMENTS', N'True')
INSERT [dbo].[tbl_ReportingQues2] ([Id], [Rating], [Status]) VALUES (2, N'CONTRIBUTIONS', N'True')
SET IDENTITY_INSERT [dbo].[tbl_ReportingQues2] OFF
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse1] ON 

INSERT [dbo].[tbl_ReportingResponse1] ([ID], [Calendar_Year], [Emp_Pr_no], [Emp_Name], [Q_id], [Rating], [Rating_id], [Rep_Pr_no], [Flag]) VALUES (1, CAST(N'2021-11-11 14:28:58.140' AS DateTime), N'803586', N'KASHISH', 1, N'Excellent', 11, N'802703', N'T')
INSERT [dbo].[tbl_ReportingResponse1] ([ID], [Calendar_Year], [Emp_Pr_no], [Emp_Name], [Q_id], [Rating], [Rating_id], [Rep_Pr_no], [Flag]) VALUES (2, CAST(N'2021-11-11 14:28:58.140' AS DateTime), N'803586', N'KASHISH', 2, N'Know his/her responsibility', 21, N'802703', N'T')
INSERT [dbo].[tbl_ReportingResponse1] ([ID], [Calendar_Year], [Emp_Pr_no], [Emp_Name], [Q_id], [Rating], [Rating_id], [Rep_Pr_no], [Flag]) VALUES (3, CAST(N'2021-11-11 14:52:21.207' AS DateTime), N'803587', N'KANNAN', 1, N'Excellent', 11, N'802702', N'T')
INSERT [dbo].[tbl_ReportingResponse1] ([ID], [Calendar_Year], [Emp_Pr_no], [Emp_Name], [Q_id], [Rating], [Rating_id], [Rep_Pr_no], [Flag]) VALUES (4, CAST(N'2021-11-11 14:54:09.843' AS DateTime), N'803587', N'KANNAN', 2, N'Poor knowledge of responsibility', 24, N'802702', N'T')
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse1] OFF
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse2] ON 

INSERT [dbo].[tbl_ReportingResponse2] ([Id], [Calendar_Year], [Emp_Pr_No], [Emp_Name], [R_Id], [Rating], [Rating_Desc], [Rep_Pr_No], [Reporting_Sign], [Reporting_Name], [Reporting_Designation], [Date], [Flag]) VALUES (1, CAST(N'2021-11-11 14:25:48.020' AS DateTime), N'803586', N'KASHISH', 1, N'ACHIEVEMENTS', N'Good', N'802703', N'Ajay', N'Ajay', N'DG', N'11/10/2021', N'T')
INSERT [dbo].[tbl_ReportingResponse2] ([Id], [Calendar_Year], [Emp_Pr_No], [Emp_Name], [R_Id], [Rating], [Rating_Desc], [Rep_Pr_No], [Reporting_Sign], [Reporting_Name], [Reporting_Designation], [Date], [Flag]) VALUES (2, CAST(N'2021-11-11 14:25:48.020' AS DateTime), N'803586', N'KASHISH', 2, N'CONTRIBUTIONS', N'Good', N'802703', N'Ajay', N'Ajay', N'DG', N'11/10/2021', N'T')
INSERT [dbo].[tbl_ReportingResponse2] ([Id], [Calendar_Year], [Emp_Pr_No], [Emp_Name], [R_Id], [Rating], [Rating_Desc], [Rep_Pr_No], [Reporting_Sign], [Reporting_Name], [Reporting_Designation], [Date], [Flag]) VALUES (3, CAST(N'2021-11-11 14:54:53.613' AS DateTime), N'803587', N'KANNAN', 1, N'ACHIEVEMENTS', N'Good', N'802702', N'Ajay', N'Ajay', N'DG', N'11/10/2021', N'T')
INSERT [dbo].[tbl_ReportingResponse2] ([Id], [Calendar_Year], [Emp_Pr_No], [Emp_Name], [R_Id], [Rating], [Rating_Desc], [Rep_Pr_No], [Reporting_Sign], [Reporting_Name], [Reporting_Designation], [Date], [Flag]) VALUES (4, CAST(N'2021-11-11 14:54:53.613' AS DateTime), N'803587', N'KANNAN', 2, N'CONTRIBUTIONS', N'Good', N'802702', N'Ajay', N'Ajay', N'DG', N'11/10/2021', N'T')
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse2] OFF
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse3] ON 

INSERT [dbo].[tbl_ReportingResponse3] ([Id], [Calendar_Year], [Emp_PR_No], [Emp_Name], [Rating_Id], [Rating], [Recommendation], [Promotion], [Recommendation_Promotion], [Note], [Rep_PR_No], [Rep_Name], [Signature], [Designation], [Flag]) VALUES (1, CAST(N'2021-11-11 14:50:36.007' AS DateTime), N'803586', N'KASHISH', 2, N'Above Satisfactory', N'No', N'FIT', N'', N'', N'802703', N'Ajay', N'Ajay', N'DG', N'T')
INSERT [dbo].[tbl_ReportingResponse3] ([Id], [Calendar_Year], [Emp_PR_No], [Emp_Name], [Rating_Id], [Rating], [Recommendation], [Promotion], [Recommendation_Promotion], [Note], [Rep_PR_No], [Rep_Name], [Signature], [Designation], [Flag]) VALUES (2, CAST(N'2021-11-11 14:55:31.213' AS DateTime), N'803587', N'KANNAN', 1, N'Outstanding', N'No', N'NOT FIT', N'Poor', N'Good', N'802702', N'Ajay', N'Ajay', N'DG', N'T')
SET IDENTITY_INSERT [dbo].[tbl_ReportingResponse3] OFF
SET IDENTITY_INSERT [dbo].[tbl_reportQues] ON 

INSERT [dbo].[tbl_reportQues] ([ID], [Order1], [Question], [Description], [status]) VALUES (1, 1, N'Honesty', N'Employee is honest.', N'True')
INSERT [dbo].[tbl_reportQues] ([ID], [Order1], [Question], [Description], [status]) VALUES (2, 2, N'Responsibility', N'Employee is responsible.', N'True')
SET IDENTITY_INSERT [dbo].[tbl_reportQues] OFF
SET IDENTITY_INSERT [dbo].[tbl_reviewQues] ON 

INSERT [dbo].[tbl_reviewQues] ([Id], [Rating], [Status]) VALUES (1, N'STRENGTHS', N'True')
INSERT [dbo].[tbl_reviewQues] ([Id], [Rating], [Status]) VALUES (2, N'AREAS OF IMPROVEMENT', N'True')
INSERT [dbo].[tbl_reviewQues] ([Id], [Rating], [Status]) VALUES (3, N'ANY OTHER OBSERVATION', N'True')
INSERT [dbo].[tbl_reviewQues] ([Id], [Rating], [Status]) VALUES (4, N'APPRAISEE''S RESPONSE', N'True')
INSERT [dbo].[tbl_reviewQues] ([Id], [Rating], [Status]) VALUES (9, N'CONTRIBUTIONS', N'True')
SET IDENTITY_INSERT [dbo].[tbl_reviewQues] OFF
SET IDENTITY_INSERT [dbo].[tbl_summaryaccepting] ON 

INSERT [dbo].[tbl_summaryaccepting] ([Id], [Rating], [Status]) VALUES (1, N'Outstanding', N'True')
INSERT [dbo].[tbl_summaryaccepting] ([Id], [Rating], [Status]) VALUES (2, N'Above Satisfactory', N'True')
INSERT [dbo].[tbl_summaryaccepting] ([Id], [Rating], [Status]) VALUES (3, N'Satisfactory', N'True')
INSERT [dbo].[tbl_summaryaccepting] ([Id], [Rating], [Status]) VALUES (4, N'Below Satisfactory', N'True')
SET IDENTITY_INSERT [dbo].[tbl_summaryaccepting] OFF
SET IDENTITY_INSERT [dbo].[tbl_SummaryReporting] ON 

INSERT [dbo].[tbl_SummaryReporting] ([ID], [Rating], [Status]) VALUES (1, N'Outstanding', N'True')
INSERT [dbo].[tbl_SummaryReporting] ([ID], [Rating], [Status]) VALUES (2, N'Above Satisfactory', N'True')
INSERT [dbo].[tbl_SummaryReporting] ([ID], [Rating], [Status]) VALUES (3, N'Satisfactory', N'True')
INSERT [dbo].[tbl_SummaryReporting] ([ID], [Rating], [Status]) VALUES (4, N'Below Satisfactory', N'True')
SET IDENTITY_INSERT [dbo].[tbl_SummaryReporting] OFF
SET IDENTITY_INSERT [dbo].[tbl_SummaryReviewOfficer] ON 

INSERT [dbo].[tbl_SummaryReviewOfficer] ([Id], [Rating], [Status]) VALUES (1, N'Outstanding', N'True')
INSERT [dbo].[tbl_SummaryReviewOfficer] ([Id], [Rating], [Status]) VALUES (2, N'Above Satisfactory', N'True')
INSERT [dbo].[tbl_SummaryReviewOfficer] ([Id], [Rating], [Status]) VALUES (3, N'Satisfactory', N'True')
INSERT [dbo].[tbl_SummaryReviewOfficer] ([Id], [Rating], [Status]) VALUES (4, N'Below Satisfactory', N'True')
SET IDENTITY_INSERT [dbo].[tbl_SummaryReviewOfficer] OFF
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (1, N'1', N'PN01', N'Reporting@gmail.com', N'Reporting Officer', N'9935001900', N'PR01', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (2, N'2', N'PN02', N'Reviewing@gmail.com', N'Reviewing Officer', N'9956756110', N'PR02', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (3, N'3', N'PN03', N'Accepting@gmail.com', N'Accepting Officer', N'7521850031', N'PR03', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (4, N'Appraisee', N'PN04', N'Appraisee@gmail.com', N'Appraisee', N'9654049338', N'PR04', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (5, N'1', N'PN05', N'Reporting1@gmail.com', N'Reporting Officer', N'9305408430', N'PR05', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (6, N'2', N'PN06', N'Reviewing1@gmail.com', N'Reviewing Officer', N'8707703159', N'PR06', N'True')
INSERT [dbo].[tbl_User] ([ID], [Level], [Department], [Username], [Role], [Mobile_No], [PR_code], [Status]) VALUES (7, N'3', N'PN07', N'Accepting1@gmail.com', N'Accepting Officer', N'6394968728', N'PR07', N'True')
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserLogin] ON 

INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (6, N'Reporting@gmail.com', N'123', N'Reporting Officer', N'802703', N'9935001900', N'22/10/2021 12:25:59 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (7, N'Reviewing@gmail.com', N'123', N'Reviewing Officer', N'802705', N'9956756110', N'22/10/2021 12:26:55 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (8, N'Accepting@gmail.com', N'123', N'Accepting Officer', N'802706', N'7521850031', N'22/10/2021 12:27:22 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (9, N'KANNAN', N'123', N'Appraisee', N'803587', N'9654049338', N'22/10/2021 12:27:48 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (10, N'Admin@gmail.com', N'333', N'Admin', N'PR05', N'8979405469', N'22/10/2021 12:29:25 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (11, N'Admin1@gmail.com', N'123', N'Admin', N'PR06', N'7408363999', N'22/10/2021 12:31:45 PM', N'Inactive')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (12, N'Reporting1@gmail.com', N'123', N'Reporting Officer', N'802702', N'9305408430', N'22/10/2021 1:19:42 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (13, N'Reviewing1@gmail.com', N'222', N'Reviewing Officer', N'802704', N'8707703159', N'25/10/2021 2:08:36 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (15, N'Accepting1@gmail.com', N'123', N'Accepting Officer', N'802707', N'6394968728', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1013, N'SHASHI', N'123', N'Appraisee', N'803583', N'6394968729', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1014, N'SHIVANI', N'123', N'Appraisee', N'803884', N'6394968730', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1015, N'RADHA', N'123', N'Appraisee', N'803585', N'6394968731', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1016, N'KASHISH', N'123', N'Appraisee', N'803586', N'6394968732', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1017, N'RAHUL', N'123', N'Appraisee', N'803592', N'6394968733', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1018, N'NEHA', N'123', N'Appraisee', N'803588', N'6394968734', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1019, N'SWATI', N'123', N'Appraisee', N'803589', N'6394968735', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1020, N'RAJ', N'123', N'Appraisee', N'803590', N'6394968736', N'25/10/2021 3:11:16 PM', N'Active')
INSERT [dbo].[tbl_UserLogin] ([ID], [username], [password], [role], [PR_No], [Mobile_No], [Date], [status]) VALUES (1021, N'POONAM', N'123', N'Appraisee', N'803591', N'6394968737', N'25/10/2021 3:11:16 PM', N'Active')
SET IDENTITY_INSERT [dbo].[tbl_UserLogin] OFF
