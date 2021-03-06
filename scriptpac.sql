USE [PAC SCHOOL]
GO
/****** Object:  Table [dbo].[AcademicDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicDetail](
	[AcademicId] [int] IDENTITY(1,1) NOT NULL,
	[StartYear] [nvarchar](50) NULL,
	[StartMonth] [nvarchar](50) NULL,
	[EndYear] [nvarchar](50) NULL,
	[EndMonth] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AcademicDetail] PRIMARY KEY CLUSTERED 
(
	[AcademicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[academicsetting]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academicsetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[SessionId] [int] NULL,
	[Startdate] [nvarchar](50) NULL,
	[Sessionenddate] [nvarchar](50) NULL,
 CONSTRAINT [PK_academicsetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccountGroup]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroup](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[GorupUnder] [nvarchar](50) NULL,
	[Opening] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccountGroup] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddDestination&Fees]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddDestination&Fees](
	[DestinationId] [int] IDENTITY(1,1) NOT NULL,
	[RouteCode] [nvarchar](max) NULL,
	[PickupDrop] [nvarchar](max) NULL,
	[StopTime] [nvarchar](max) NULL,
	[Amount] [nvarchar](max) NULL,
	[FeeType] [nvarchar](max) NULL,
	[SchoolId] [nvarchar](max) NULL,
	[IsDelete] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddDestination&Fees] PRIMARY KEY CLUSTERED 
(
	[DestinationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddDriver]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddDriver](
	[DriverId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleNo] [nvarchar](max) NULL,
	[DriverName] [nvarchar](max) NULL,
	[PresentAddress] [nvarchar](max) NULL,
	[PermanentAddress] [nvarchar](max) NULL,
	[DateofBirth] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
	[LicenseNumber] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddDriver] PRIMARY KEY CLUSTERED 
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddHostalRoom]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddHostalRoom](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[HostalType] [nvarchar](max) NULL,
	[HostalName] [nvarchar](max) NULL,
	[HostalfloorName] [nvarchar](50) NULL,
	[RoomNo] [nvarchar](50) NULL,
	[NoOfBed] [nvarchar](50) NULL,
	[FeeType] [nvarchar](50) NULL,
	[BedNo] [nvarchar](50) NULL,
	[RoomRent] [nvarchar](max) NULL,
	[Amount] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddHostalRoom] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddLeaveApplication]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddLeaveApplication](
	[ApplicatId] [int] IDENTITY(1,1) NOT NULL,
	[FormDate] [nvarchar](50) NULL,
	[ToDate] [nvarchar](50) NULL,
	[LeaveType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[ISDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[UaserName] [nvarchar](50) NULL,
	[Reason] [nvarchar](50) NULL,
	[appduty] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[Noofdays] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[ClassId] [nvarchar](50) NULL,
	[Section] [nvarchar](50) NULL,
	[DocImage] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddLeaveApplication] PRIMARY KEY CLUSTERED 
(
	[ApplicatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddRoute]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddRoute](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleNo] [nvarchar](max) NULL,
	[RouteCode] [nvarchar](max) NULL,
	[RouteStartPlace] [nvarchar](max) NULL,
	[RouteStopPlace] [nvarchar](max) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddRoute] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddTransport]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddTransport](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleNo] [nvarchar](max) NULL,
	[NoofSeats] [nvarchar](max) NULL,
	[MaximumAllowed] [nvarchar](max) NULL,
	[VehicleType] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[InsuranceRenewalDate] [nvarchar](max) NULL,
	[RenewalDate] [nvarchar](max) NULL,
	[TrackID] [nvarchar](max) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nchar](10) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AddTransport] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssignTeacher]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignTeacher](
	[AssignTeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NULL,
	[SchoolId] [int] NULL,
	[CourseId] [int] NULL,
	[BatchId] [int] NULL,
	[ClassId] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[IsClassTeacher] [nvarchar](50) NULL,
	[SubjectId] [int] NULL,
	[SectionID] [int] NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AssignTeacher] PRIMARY KEY CLUSTERED 
(
	[AssignTeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolID] [int] NULL,
	[ClassID] [int] NULL,
	[SectionId] [int] NULL,
	[TeacherID] [int] NULL,
	[CourseID] [int] NULL,
	[Date] [nvarchar](20) NULL,
	[SessionID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceDetail](
	[AttDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolID] [int] NOT NULL,
	[StudentID] [int] NULL,
	[Date] [nvarchar](20) NULL,
	[Status] [nvarchar](5) NULL,
	[AttendanceID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_AttendanceDetail] PRIMARY KEY CLUSTERED 
(
	[AttDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Batch]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[BatchId] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[SchoolID] [int] NULL,
	[SessionId] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[StartDate] [nvarchar](50) NULL,
	[EndDate] [nvarchar](50) NULL,
	[MaximumStudents] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseDate] [nvarchar](max) NULL,
	[BillNo] [nvarchar](max) NULL,
	[BookISBNNo] [nvarchar](max) NULL,
	[BookNo] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Edition] [nvarchar](max) NULL,
	[BookCategory] [nvarchar](max) NULL,
	[Publisher] [nvarchar](max) NULL,
	[NoofCopies] [nvarchar](50) NULL,
	[ShelfNo] [nvarchar](50) NULL,
	[BookPosition] [nvarchar](50) NULL,
	[BookCost] [nvarchar](max) NULL,
	[Language] [nvarchar](50) NULL,
	[BookCondition] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookCategory]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCategory](
	[BookCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NULL,
	[SectionCode] [nvarchar](max) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_BookCategory] PRIMARY KEY CLUSTERED 
(
	[BookCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Budget]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Budget](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolID] [int] NULL,
	[SchoolName] [nvarchar](250) NULL,
	[Budget] [nvarchar](50) NULL,
	[SessionID] [int] NULL,
 CONSTRAINT [PK_Budget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calender]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calender](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Start] [datetime] NULL,
	[Enddate] [datetime] NULL,
	[ThemeColor] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[SchoolId] [int] NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Calender] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](6) NULL,
	[SectionID] [int] NOT NULL,
	[SchoolID] [int] NOT NULL,
	[ClassTeacherID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[DepartmentId] [nvarchar](max) NULL,
	[Session] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[SubId] [nvarchar](5) NULL,
	[ClassId] [nvarchar](5) NULL,
	[SessionId] [nvarchar](5) NULL,
	[SchoolId] [nvarchar](5) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Code] [nvarchar](50) NULL,
	[MinAttendance] [nvarchar](50) NULL,
	[Attendancetype] [nvarchar](50) NULL,
	[Totalworkingdays] [nvarchar](50) NULL,
	[SyllabusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Create Exam]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Create Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](50) NULL,
	[TermName] [nvarchar](50) NULL,
	[ExamName] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[ClassName] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Create Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreateVoucher]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreateVoucher](
	[CreateVoucherId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherNumber] [nvarchar](50) NULL,
	[TransactionDate] [nvarchar](50) NULL,
	[VoucherMaster] [nvarchar](50) NULL,
	[VoucherHead] [nvarchar](50) NULL,
	[CreditLedgerdAccount] [nvarchar](50) NULL,
	[DebitLedgerAccount] [nvarchar](50) NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[Amount] [nvarchar](50) NULL,
	[Narration] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[VoucherDate] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_CreateVoucher] PRIMARY KEY CLUSTERED 
(
	[CreateVoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[SchoolId] [int] NULL,
	[IsDelete] [nvarchar](10) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeSerialNo] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[DeptId] [int] NULL,
	[SchoolId] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Joiningdate] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Salary] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[AdhaarCardNo] [nvarchar](max) NULL,
	[PanCardNo] [nvarchar](50) NULL,
	[DateofBirth] [nvarchar](50) NULL,
	[HRA] [nvarchar](50) NULL,
	[DA] [nvarchar](50) NULL,
	[TA] [nvarchar](50) NULL,
	[PaidLeaves] [nvarchar](50) NULL,
	[Leavestaken] [nvarchar](50) NULL,
	[Employeetype] [nvarchar](50) NULL,
	[Employeecategory] [nvarchar](50) NULL,
	[EmployeeID] [int] NULL,
	[Qualification] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[PFNumber] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSalary]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalary](
	[EmpSalaryId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[StartDate] [nvarchar](50) NULL,
	[EndDate] [nvarchar](50) NULL,
	[PayHead] [nvarchar](50) NULL,
	[Amount] [nvarchar](50) NULL,
	[AmountPer] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Basic] [int] NULL,
	[DA] [int] NULL,
	[EPF] [int] NULL,
	[IR] [int] NULL,
	[DeductionIfAny] [int] NULL,
	[Arrearifany] [int] NULL,
	[PayableAmount] [int] NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_EmployeeSalary] PRIMARY KEY CLUSTERED 
(
	[EmpSalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventDetail](
	[EventDetID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](50) NULL,
	[HolydayStatus] [nvarchar](50) NULL,
	[EventType] [nvarchar](50) NULL,
	[Discription] [nvarchar](max) NULL,
	[StartDate] [nvarchar](50) NULL,
	[EndDate] [nvarchar](50) NULL,
	[OrganigerName] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[EventFor] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_EventDetail] PRIMARY KEY CLUSTERED 
(
	[EventDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NULL,
	[ThemeColor] [nvarchar](10) NULL,
	[IsFullDay] [bit] NOT NULL,
	[Session] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventType]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamInfoDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamInfoDetail](
	[ExamInfoId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[StudentId] [nvarchar](50) NULL,
	[ClassName] [nvarchar](50) NULL,
	[RollNo] [nvarchar](50) NULL,
	[ExamType] [nvarchar](50) NULL,
	[ExamName] [nvarchar](50) NULL,
	[TeacherId] [nvarchar](50) NULL,
	[TeacherName] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolName] [nvarchar](50) NULL,
	[SectionID] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[TotalMarks] [int] NULL,
	[StuObtainMarks] [float] NULL,
	[TotalPersent] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_ExamInfoDetail] PRIMARY KEY CLUSTERED 
(
	[ExamInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamMarksDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamMarksDetail](
	[MarksId] [int] IDENTITY(1,1) NOT NULL,
	[ExamInfoId] [int] NULL,
	[SubjectId] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](50) NULL,
	[TotalMarks] [float] NULL,
	[ObtainMarks] [float] NULL,
	[Percentage] [float] NULL,
	[AllTotalMarks] [float] NULL,
	[AllTotalObtainMarks] [float] NULL,
	[Grade] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_ExamMarksDetail] PRIMARY KEY CLUSTERED 
(
	[MarksId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeedID] [int] IDENTITY(1,1) NOT NULL,
	[FeedBack] [nvarchar](max) NULL,
	[Discription] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[StudentId] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[ClassId] [nvarchar](50) NULL,
	[SectionId] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[UserType] [nvarchar](max) NULL,
	[Rating] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SubjectID] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeesAllocation]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeesAllocation](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [nvarchar](50) NULL,
	[StudentId] [nvarchar](max) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IdDelete] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[Tuitionfees] [nvarchar](max) NULL,
	[Activity] [nvarchar](50) NULL,
	[Library] [nvarchar](50) NULL,
	[Medical] [nvarchar](50) NULL,
	[Examination] [nvarchar](50) NULL,
	[StudentCharges] [nvarchar](50) NULL,
	[Computer] [nvarchar](50) NULL,
	[Laboratory] [nvarchar](50) NULL,
	[Total] [nvarchar](50) NULL,
	[Session] [nvarchar](50) NULL,
	[RegistrationFees] [nvarchar](50) NULL,
	[AdmissionFees] [nvarchar](50) NULL,
	[SecurityFees] [nvarchar](50) NULL,
 CONSTRAINT [PK_FeesAllocation] PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grievance]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grievance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[SchoolName] [nvarchar](250) NULL,
	[UserID] [int] NULL,
	[UserName] [nvarchar](250) NULL,
	[Grievance] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[UserType] [nvarchar](50) NULL,
	[ImageName] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Grievance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostalDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostalDetail](
	[HostalId] [int] IDENTITY(1,1) NOT NULL,
	[HostalName] [nvarchar](50) NULL,
	[HostalType] [nvarchar](50) NULL,
	[HostalAddress] [nvarchar](max) NOT NULL,
	[HostalContact] [nvarchar](50) NULL,
	[WardenName] [nvarchar](50) NULL,
	[WardenPhoneNo] [nvarchar](50) NULL,
	[WardanAddress] [nvarchar](max) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostalDetail] PRIMARY KEY CLUSTERED 
(
	[HostalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostalType]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostalType](
	[HostalTypeID] [int] IDENTITY(1,1) NOT NULL,
	[HostalType] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostalType] PRIMARY KEY CLUSTERED 
(
	[HostalTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelAllocation]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelAllocation](
	[HostelAllocatedId] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](50) NULL,
	[UsarName] [nvarchar](50) NULL,
	[HostelName] [nvarchar](50) NULL,
	[HostalType] [nvarchar](50) NULL,
	[HostelRoom] [nvarchar](max) NULL,
	[HostelRegdate] [nvarchar](50) NULL,
	[VacatingDate] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostelAllocation] PRIMARY KEY CLUSTERED 
(
	[HostelAllocatedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelFeesCollection]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelFeesCollection](
	[FeesId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[RoomNo] [nvarchar](50) NULL,
	[HostelType] [nvarchar](50) NULL,
	[HostelName] [nvarchar](50) NULL,
	[FeeType] [nvarchar](50) NULL,
	[ModeOfPay] [nvarchar](50) NULL,
	[Amount] [nvarchar](50) NULL,
	[Fine] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
	[TotalAmount] [nvarchar](50) NULL,
	[Recipt] [nvarchar](50) NULL,
	[ReciptNo] [nvarchar](50) NULL,
	[BankAccountNo] [nvarchar](50) NULL,
	[BankName] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[CheaqueDate] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostelFeesCollection] PRIMARY KEY CLUSTERED 
(
	[FeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelRegister]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelRegister](
	[HostelRegID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](max) NULL,
	[UserName] [nvarchar](50) NULL,
	[UStatus] [nvarchar](50) NULL,
	[HosDate] [nvarchar](50) NULL,
	[HosTime] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](max) NULL,
	[HostelType] [nvarchar](50) NULL,
	[HostelName] [nvarchar](50) NULL,
	[RoomNo] [nvarchar](50) NULL,
	[FloorName] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostelRegister] PRIMARY KEY CLUSTERED 
(
	[HostelRegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelTransfer]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelTransfer](
	[TransferId] [int] IDENTITY(1,1) NOT NULL,
	[UsesType] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[HostelType] [nvarchar](50) NULL,
	[HostelName] [nvarchar](50) NULL,
	[HostelRoom] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostelTransfer] PRIMARY KEY CLUSTERED 
(
	[TransferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelVisitor]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelVisitor](
	[VisitorId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserType] [nvarchar](max) NULL,
	[VisitDate] [nvarchar](max) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[VisitorName] [nvarchar](50) NULL,
	[VisitTime] [nvarchar](50) NULL,
	[Relation] [nvarchar](max) NULL,
	[HostelName] [nvarchar](50) NULL,
	[Hosteltype] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HostelVisitor] PRIMARY KEY CLUSTERED 
(
	[VisitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[House]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[HouseID] [int] IDENTITY(1,1) NOT NULL,
	[HouseName] [nvarchar](50) NULL,
	[HouseColor] [nvarchar](50) NULL,
	[SchoolID] [int] NOT NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[HouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HQMenu]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HQMenu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](50) NOT NULL,
	[MenuClass] [varchar](50) NULL,
	[Link] [varchar](max) NOT NULL,
	[ParentId] [int] NULL,
	[TokenKey] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HQMenu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HQUser]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HQUser](
	[HQUserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserID] [int] NULL,
	[UserType] [int] NULL,
	[UserImage] [nvarchar](max) NULL,
	[Contact] [nvarchar](15) NULL,
	[Gender] [nvarchar](2) NULL,
	[Address] [nvarchar](max) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_HQUser] PRIMARY KEY CLUSTERED 
(
	[HQUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryIssueDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryIssueDetail](
	[IssuesId] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[ItemID] [nvarchar](50) NULL,
	[ItemName] [nvarchar](50) NULL,
	[AvailableQuantity] [nvarchar](50) NULL,
	[MRP] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[TotalAmount] [nvarchar](50) NULL,
	[ReceiptNo] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_InventoryIssueDetail] PRIMARY KEY CLUSTERED 
(
	[IssuesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryIssuedItemdetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryIssuedItemdetail](
	[IssueddetID] [int] IDENTITY(1,1) NOT NULL,
	[IssuedId] [nvarchar](50) NULL,
	[Item] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[MRP] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
	[TotalAmount] [float] NULL,
	[GrandTotal] [nvarchar](50) NULL,
	[SubTotal] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_InventoryIssuedItemdetail] PRIMARY KEY CLUSTERED 
(
	[IssueddetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryItem](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[VenderID] [nvarchar](50) NULL,
	[Vender] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[InventoryItem] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[ReOrderLevel] [nvarchar](50) NULL,
	[FreeDiscount] [nvarchar](50) NULL,
	[MRP] [nvarchar](50) NULL,
	[Rate] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_InventoryItem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventryId]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventryId](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CateGoryName] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_InventryId] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssueBook]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueBook](
	[BookIssuedID] [int] IDENTITY(1,1) NOT NULL,
	[IssuedDate] [nvarchar](50) NULL,
	[DueDate] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserCourse] [nvarchar](max) NULL,
	[BookName] [nvarchar](max) NULL,
	[BookNo] [nvarchar](50) NULL,
	[BooKTitle] [nvarchar](50) NULL,
	[UserSection] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[UserID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_IssueBook] PRIMARY KEY CLUSTERED 
(
	[BookIssuedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveCarryForwardDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveCarryForwardDetail](
	[LeaveCarryForwordId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveCategory] [nvarchar](50) NULL,
	[Desitnation] [nvarchar](50) NULL,
	[Employee] [nvarchar](50) NULL,
	[LeaveCount] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_LeaveCarryForwardDetail] PRIMARY KEY CLUSTERED 
(
	[LeaveCarryForwordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveCategory]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveCategory](
	[LeaveCatId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CarryStatus] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_LeaveCategory] PRIMARY KEY CLUSTERED 
(
	[LeaveCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveDetail](
	[LeaveDetailId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveCategory] [nvarchar](50) NULL,
	[Degitnation] [nvarchar](50) NULL,
	[LeaveCount] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_LeaveDetail] PRIMARY KEY CLUSTERED 
(
	[LeaveDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[MenuClass] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
	[ParentId] [int] NULL,
	[TokenKey] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PayableType]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayableType](
	[PaybaleId] [int] IDENTITY(1,1) NOT NULL,
	[PayType] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_PayableType] PRIMARY KEY CLUSTERED 
(
	[PaybaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PayHeadType]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayHeadType](
	[PayheadID] [int] IDENTITY(1,1) NOT NULL,
	[PayHeadName] [nvarchar](50) NULL,
	[Discription] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[status] [nchar](10) NULL,
	[PayStatus] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_PayHeadType] PRIMARY KEY CLUSTERED 
(
	[PayheadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Principal]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Principal](
	[PrincipalID] [int] IDENTITY(1,1) NOT NULL,
	[PrincipalName] [nvarchar](20) NULL,
	[SchoolID] [int] NULL,
	[PrincipalImage] [nvarchar](max) NULL,
	[Session] [int] NULL,
	[Contact] [nvarchar](15) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Principal] PRIMARY KEY CLUSTERED 
(
	[PrincipalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Request]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Request] [nvarchar](1000) NULL,
	[Requestedfrom] [nvarchar](150) NULL,
	[UserId] [int] NULL,
	[SchoolID] [int] NULL,
	[SchoolName] [nvarchar](300) NULL,
	[Requestedto] [nvarchar](150) NULL,
	[ToId] [int] NULL,
	[Requesteddate] [date] NULL,
	[Status] [nvarchar](50) NULL,
	[Resolveddate] [nvarchar](50) NULL,
	[Comment] [nvarchar](500) NULL,
	[IsActive] [int] NULL,
	[ImageName] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requestbudget]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requestbudget](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolID] [int] NULL,
	[Amount] [nvarchar](50) NULL,
	[Reason] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Imagename] [nvarchar](max) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Requestbudget] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Returnbook]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returnbook](
	[ReturnBookID] [int] IDENTITY(1,1) NOT NULL,
	[BookNo] [nvarchar](max) NULL,
	[BookName] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[Remark] [nvarchar](max) NULL,
	[ReturnDate] [nvarchar](50) NULL,
	[FineAmount] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[UserClass] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Section] [nvarchar](50) NULL,
	[BookofId] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Returnbook] PRIMARY KEY CLUSTERED 
(
	[ReturnBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalarySetting]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalarySetting](
	[SalsettingId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](50) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[PayheadMaster] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[Arrearifany] [nvarchar](50) NULL,
	[PayableAmount] [nvarchar](50) NULL,
	[Basic] [nvarchar](50) NULL,
	[DA] [nvarchar](50) NULL,
	[EPF] [nvarchar](50) NULL,
	[IR] [nvarchar](50) NULL,
	[DeductionIfAny] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_SalarySetting] PRIMARY KEY CLUSTERED 
(
	[SalsettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[School]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[SchoolID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[PinCode] [nvarchar](10) NULL,
	[ContactNo] [nvarchar](15) NULL,
	[Logo] [nvarchar](50) NULL,
	[SchoolCode] [nvarchar](20) NULL,
	[SessionID] [int] NULL,
	[City] [nvarchar](20) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[NoOfEmployee] [int] NULL,
	[NoofStudent] [int] NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolDetail](
	[SchoolDetID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Contactperson] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[InstitutionCode] [nvarchar](50) NULL,
	[Openedon] [nvarchar](20) NULL,
	[Landtype] [nvarchar](50) NULL,
	[Landdoc] [nvarchar](max) NULL,
 CONSTRAINT [PK_SchoolDetail] PRIMARY KEY CLUSTERED 
(
	[SchoolDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolFeesTargettbl]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolFeesTargettbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SessionId] [int] NULL,
	[ClassId] [int] NULL,
	[TotalCollection] [float] NULL,
	[TotalAllocation] [float] NULL,
	[NoOFStudent] [int] NULL,
	[SchoolId] [int] NULL,
	[Isdelete] [nvarchar](50) NULL,
 CONSTRAINT [PK_SchoolFeesTargettbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolMenu]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolMenu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[MenuClass] [nvarchar](50) NULL,
	[Link] [nvarchar](max) NOT NULL,
	[ParentId] [int] NULL,
	[TokenKey] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
 CONSTRAINT [PK_SchoolMenu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolRole]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Schoolid] [int] NULL,
	[IsDelete] [nvarchar](10) NULL,
 CONSTRAINT [PK_SchoolRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolUser]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolUser](
	[SchoolUserID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FName] [nvarchar](50) NOT NULL,
	[LName] [nvarchar](50) NULL,
	[UserImage] [nvarchar](50) NULL,
	[AdhaarImage] [nvarchar](50) NULL,
	[UserType] [nvarchar](20) NULL,
	[SchoolID] [int] NOT NULL,
	[IsDelete] [nvarchar](50) NULL,
	[UserName] [nvarchar](max) NULL,
	[PassWord] [nvarchar](max) NULL,
 CONSTRAINT [PK_SchoolUser] PRIMARY KEY CLUSTERED 
(
	[SchoolUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](5) NULL,
	[SchoolID] [int] NOT NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Session]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[Session] [nvarchar](10) NOT NULL,
	[SchoolID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SetExamTerm]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetExamTerm](
	[TermId] [int] IDENTITY(1,1) NOT NULL,
	[SetTerm] [nvarchar](50) NULL,
	[StartDate] [nvarchar](50) NULL,
	[EndDate] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_SetExamTerm] PRIMARY KEY CLUSTERED 
(
	[TermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[RegdNo] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[ClassID] [int] NULL,
	[Section] [int] NULL,
	[Session] [int] NULL,
	[SchoolID] [int] NOT NULL,
	[SudentImage] [nvarchar](max) NULL,
	[Attendance] [nvarchar](10) NULL,
	[Grade] [nvarchar](10) NULL,
	[Marksobtained] [nvarchar](10) NULL,
	[UserID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[StudentCode] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[PoliceorCivilian] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[DateofAdmission] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentAdmission]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAdmission](
	[AddmissionID] [int] IDENTITY(1,1) NOT NULL,
	[RegdNo] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[DateofBirth] [nvarchar](20) NULL,
	[Class] [int] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](15) NULL,
	[AppliedDate] [nvarchar](20) NULL,
	[SchoolID] [int] NOT NULL,
	[Status] [nvarchar](20) NULL,
	[SessionId] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Caste] [nvarchar](50) NULL,
	[SubCaste] [nvarchar](50) NULL,
	[PreviousSchool] [nvarchar](max) NULL,
	[Image] [nvarchar](50) NULL,
	[MothersName] [nvarchar](50) NULL,
	[ParentesIncome] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentAdmission] PRIMARY KEY CLUSTERED 
(
	[AddmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentDocument]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDocument](
	[DocID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [nvarchar](50) NULL,
	[SchoolName] [nvarchar](50) NULL,
	[StudentId] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_StudentDocument] PRIMARY KEY CLUSTERED 
(
	[DocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentHomeWork]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHomeWork](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[SessionId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[teacherID] [int] NULL,
	[Date] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [int] NULL,
	[FileName] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_StudentHomeWork] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StuFeesCollection]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StuFeesCollection](
	[StuFeesCollectionID] [int] IDENTITY(1,1) NOT NULL,
	[FeeType] [nvarchar](max) NULL,
	[ActualAmount] [nvarchar](50) NULL,
	[AmountTobePaid] [nvarchar](50) NULL,
	[Fine] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
	[ModeOfPay] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[TotalAmount] [nvarchar](max) NULL,
	[ReciptNo] [nvarchar](max) NULL,
	[BankName] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Totalfees] [float] NULL,
	[Totfees] [int] NULL,
	[SubmitDate] [date] NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_StuFeesCollection] PRIMARY KEY CLUSTERED 
(
	[StuFeesCollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NULL,
	[TeacherID] [nvarchar](50) NULL,
	[ClassID] [nvarchar](50) NULL,
	[SectionID] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[subjectnew]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectnew](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NULL,
	[TeacherID] [int] NULL,
	[ClassID] [int] NULL,
	[SectionID] [int] NULL,
	[SchoolID] [int] NULL,
	[IsDelete] [nvarchar](10) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_subjectnew] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskDetail]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDetail](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[Discription] [nvarchar](50) NULL,
	[Priority] [nvarchar](50) NULL,
	[TaskDate] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[ClassName] [nvarchar](50) NULL,
	[Section] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[Task] [nvarchar](50) NULL,
	[UserID] [nvarchar](50) NULL,
	[Subject] [nvarchar](50) NULL,
	[Course] [nvarchar](50) NULL,
	[ImageName] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_TaskDetail] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[TimeTableID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[Section] [int] NULL,
	[Session] [int] NULL,
	[SchoolID] [int] NOT NULL,
	[Day] [nvarchar](50) NULL,
	[SubjectID] [int] NULL,
	[Time] [nvarchar](20) NULL,
	[TeacherID] [int] NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Period] [nvarchar](50) NULL,
	[FromDate] [nvarchar](max) NULL,
	[ToDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[TimeTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransportAllocation]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportAllocation](
	[AllocationId] [int] IDENTITY(1,1) NOT NULL,
	[Route] [nvarchar](max) NULL,
	[Destination] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[StartFrequency] [nvarchar](max) NULL,
	[EndFrequency] [nvarchar](max) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[Course] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_TransportAllocation] PRIMARY KEY CLUSTERED 
(
	[AllocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransPortFeesCollection]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransPortFeesCollection](
	[TransPortFeeCollId] [int] IDENTITY(1,1) NOT NULL,
	[FeeType] [nvarchar](max) NULL,
	[ActualAmount] [nvarchar](max) NULL,
	[AmountTobePaid] [nvarchar](max) NULL,
	[Fine] [nvarchar](max) NULL,
	[Discount] [nvarchar](max) NULL,
	[ModeOfPay] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[TotalAmount] [nvarchar](max) NULL,
	[ReciptNo] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[ChequeNo] [nvarchar](max) NULL,
	[ChequeDate] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](max) NOT NULL,
	[IsDelete] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_TransPortFeesCollection] PRIMARY KEY CLUSTERED 
(
	[TransPortFeeCollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransprotFees]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransprotFees](
	[TransPortFeeCollId] [int] IDENTITY(1,1) NOT NULL,
	[FeeType] [nvarchar](50) NULL,
	[ActualAmount] [nvarchar](50) NULL,
	[AmountTobePaid] [nvarchar](max) NULL,
	[Fine] [nvarchar](max) NULL,
	[Discount] [nvarchar](max) NULL,
	[ModeOfPay] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[TotalAmount] [nvarchar](max) NULL,
	[ReciptNo] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[ChequeNo] [nvarchar](max) NULL,
	[ChequeDate] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[UserType] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_TransprotFees] PRIMARY KEY CLUSTERED 
(
	[TransPortFeeCollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UploadSyllabus]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadSyllabus](
	[SybID] [int] IDENTITY(1,1) NOT NULL,
	[Syllabus] [nvarchar](max) NULL,
	[ClassId] [nvarchar](50) NULL,
	[SectionId] [nvarchar](50) NULL,
	[SessionID] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Subject] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[SchoolId] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_UploadSyllabus] PRIMARY KEY CLUSTERED 
(
	[SybID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[UserType] [nvarchar](15) NOT NULL,
	[TokenId] [nvarchar](50) NULL,
	[UserRights] [nvarchar](max) NULL,
	[SchoolName] [nvarchar](50) NULL,
	[SchoolID] [int] NULL,
	[Session] [nvarchar](10) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[IsConfirm] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
	[IsDelete] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Visitor]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[SessionId] [int] NULL,
	[TokenNo] [nvarchar](10) NULL,
	[Category] [nvarchar](10) NULL,
	[Name] [nvarchar](20) NULL,
	[Purpose] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_Visitor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoucherHead]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherHead](
	[VoucherHeadID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherMaster] [nvarchar](50) NULL,
	[AccountGroup] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[VoucherHead] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_VoucherHead] PRIMARY KEY CLUSTERED 
(
	[VoucherHeadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoucherMaster]    Script Date: 2022-02-14 10:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherMaster](
	[VoucherID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherName] [nvarchar](50) NULL,
	[VoucherType] [nvarchar](50) NULL,
	[SchoolID] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Session] [int] NULL,
 CONSTRAINT [PK_VoucherMaster] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
