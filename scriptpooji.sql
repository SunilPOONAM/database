USE [Poonjinew]
GO
/****** Object:  Table [dbo].[Aggregate_Store]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aggregate_Store](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MainSales_Name] [varchar](max) NULL,
	[Store_Code] [nvarchar](max) NULL,
	[Store_Name] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PinCode] [varchar](100) NULL,
	[ManagerName] [varchar](max) NULL,
	[Area] [varchar](100) NULL,
	[Company_id] [nvarchar](50) NULL,
	[Bank] [varchar](max) NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[IFSC_Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Aggregate_Store] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AppDashboardContent]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppDashboardContent](
	[DashboardId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryType] [varchar](50) NULL,
	[ImageLink] [varchar](150) NULL,
	[Title] [varchar](150) NULL,
 CONSTRAINT [PK_AppDashboardContent] PRIMARY KEY CLUSTERED 
(
	[DashboardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [bigint] NULL,
	[Item_Id] [bigint] NULL,
	[Total_Price] [decimal](18, 2) NULL,
	[Item_Image] [varchar](250) NULL,
	[Quantity] [int] NULL,
	[IsSold] [bit] NULL,
 CONSTRAINT [PK_Cart_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City_tbl](
	[City_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[City_Name] [varchar](50) NULL,
	[State_ID] [bigint] NULL,
 CONSTRAINT [PK_City_tbl] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company_tbl](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
	[TIN] [varchar](50) NULL,
	[STNo] [varchar](50) NULL,
	[CIN] [varchar](50) NULL,
 CONSTRAINT [PK_Company_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComponentMaster_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComponentMaster_tbl](
	[ComponentId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NULL,
	[ComponentName] [varchar](50) NULL,
	[Purity] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Tag] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
	[Wt] [decimal](18, 2) NULL,
	[Less] [decimal](18, 2) NULL,
	[ComponetWt] [decimal](18, 2) NULL,
	[NetGoldWt] [decimal](18, 2) NULL,
	[GoldValue] [decimal](18, 2) NULL,
	[MakingCharge] [varchar](250) NULL,
	[LabCahrge] [decimal](18, 2) NULL,
	[LabChrgRupee] [decimal](18, 2) NULL,
	[DimondCost] [decimal](18, 2) NULL,
	[GoldCost] [decimal](18, 2) NULL,
	[LabCost] [decimal](18, 2) NULL,
	[gst] [decimal](18, 2) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ComponentMaster_tbl] PRIMARY KEY CLUSTERED 
(
	[ComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_tbl](
	[Country_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Country_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Country_tbl] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] NOT NULL,
	[CustomerID] [nchar](30) NULL,
	[Name] [nchar](200) NULL,
	[Gender] [nchar](10) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nchar](200) NULL,
	[State] [nchar](150) NULL,
	[ZipCode] [nchar](15) NULL,
	[ContactNo] [nchar](150) NULL,
	[EmailID] [nchar](200) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Photo] [image] NULL,
	[CustomerType] [nchar](30) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoldRate_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoldRate_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Purity] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Rate] [decimal](18, 2) NULL,
	[CreateDate] [varchar](50) NULL,
 CONSTRAINT [PK_GoldRate_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice_Payment]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice_Payment](
	[IP_ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[TotalPaid] [decimal](18, 2) NOT NULL,
	[PaymentMode] [nchar](150) NOT NULL,
 CONSTRAINT [PK_Invoice_Payment] PRIMARY KEY CLUSTERED 
(
	[IP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice_Product]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice_Product](
	[IPo_ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[barCode] [varchar](200) NULL,
	[itemCategory] [varchar](100) NULL,
	[itemName] [varchar](250) NULL,
	[purity] [varchar](50) NULL,
	[grossWt] [decimal](18, 3) NULL,
	[diamondDetail] [decimal](18, 3) NULL,
	[less] [decimal](18, 3) NULL,
	[goldNetWt] [decimal](18, 3) NULL,
	[goldValue] [decimal](18, 3) NULL,
	[diamondCost] [decimal](18, 2) NULL,
	[goldCost] [decimal](18, 2) NULL,
	[labourCharge] [decimal](18, 2) NULL,
	[totalCostWithoutGST] [decimal](18, 2) NULL,
	[gstCost] [decimal](18, 2) NULL,
	[totalCostWithGst] [decimal](18, 2) NULL,
	[description] [varchar](max) NULL,
	[gstRate] [decimal](18, 2) NULL,
	[goldRate] [decimal](18, 2) NULL,
	[storeId] [bigint] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[IsActive] [bit] NULL,
	[displayActive] [bit] NULL,
	[itemCode] [varchar](200) NULL,
 CONSTRAINT [PK_Invoice_Product] PRIMARY KEY CLUSTERED 
(
	[IPo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceInfo]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceInfo](
	[Inv_ID] [int] NOT NULL,
	[InvoiceNo] [nchar](30) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SalesmanID] [int] NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalPaid] [decimal](18, 2) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[state] [nvarchar](50) NULL,
	[Auto] [int] NULL,
 CONSTRAINT [PK_InvoiceInfo] PRIMARY KEY CLUSTERED 
(
	[Inv_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemComponenet_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemComponenet_tbl](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Itemname] [varchar](50) NULL,
	[Component] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Quantity] [bigint] NULL,
	[Price] [decimal](18, 2) NULL,
	[Tag] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
 CONSTRAINT [PK_ItemComponenet_tbl] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemImage_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemImage_tbl](
	[ItemImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[ItemImage] [varchar](150) NULL,
	[Tag] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
 CONSTRAINT [PK_ItemImage_tbl] PRIMARY KEY CLUSTERED 
(
	[ItemImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemMaster_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemMaster_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [varchar](50) NULL,
	[Item_Name] [varchar](50) NULL,
	[Discription] [varchar](100) NULL,
	[Retail_Price] [decimal](18, 0) NULL,
	[Manufacturing_Price] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[Total_Price] [decimal](18, 0) NULL,
	[CategoryId] [bigint] NULL,
	[Sub_categoryId] [bigint] NULL,
	[Status] [varchar](50) NULL,
	[Barcode] [varchar](50) NULL,
	[Quantity] [bigint] NULL,
 CONSTRAINT [PK_ItemMaster_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Labour_Charges]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labour_Charges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Labour_Charges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailId] [varchar](100) NULL,
	[MobileNo] [varchar](50) NULL,
	[Password] [nchar](10) NULL,
	[UserType] [varchar](150) NULL,
 CONSTRAINT [PK_Login_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration_tbl](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Dob] [date] NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[ConfirmPassword] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[EmailId] [varchar](100) NOT NULL,
	[Picture] [varchar](max) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Usertype] [varchar](50) NULL,
 CONSTRAINT [PK_Registration_tbl] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sales_store]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sales_store](
	[SalesStore_M_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Store_Code] [nvarchar](max) NULL,
	[Store_Name] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Country] [bigint] NULL,
	[State] [bigint] NULL,
	[City] [bigint] NULL,
	[PinCode] [varchar](100) NULL,
	[ManagerName] [varchar](max) NULL,
	[Area] [varchar](100) NULL,
	[Company_id] [bigint] NULL,
	[Bank] [varchar](max) NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[IFSC_Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_sales_store] PRIMARY KEY CLUSTERED 
(
	[SalesStore_M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_tbl](
	[State_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](50) NULL,
	[Country_ID] [bigint] NULL,
 CONSTRAINT [PK_State_tbl] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stock_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock_tbl](
	[StockId] [bigint] IDENTITY(1,1) NOT NULL,
	[StoreId] [bigint] NULL,
	[ItemId] [bigint] NULL,
	[Qty] [bigint] NULL,
	[ReorderTable] [varchar](50) NULL,
	[Tag] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
 CONSTRAINT [PK_Stock_tbl] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoneInfo]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoneInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Remark] [varchar](150) NULL,
	[Pcs] [int] NULL,
	[CaratPerPcs] [decimal](18, 2) NULL,
	[TotalCarat] [decimal](18, 2) NULL,
	[WtPerPcs] [decimal](18, 2) NULL,
	[TotalWtPerItem] [decimal](18, 2) NULL,
	[PricePerItem] [decimal](18, 2) NULL,
	[TotalPricePerItem] [decimal](18, 2) NULL,
	[BarCode] [varchar](200) NULL,
	[StoreId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreMaster_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreMaster_tbl](
	[StoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[StoreName] [varchar](max) NULL,
	[StoreAddress] [varchar](max) NULL,
	[Longitute] [varchar](max) NULL,
	[Latitude] [varchar](max) NULL,
	[LandlineNumber] [varchar](max) NULL,
	[MobileNumber] [varchar](max) NULL,
	[MobileNumber2] [varchar](max) NULL,
	[State] [bigint] NULL,
	[City] [bigint] NULL,
	[PinCode] [varchar](max) NULL,
	[GSTNumber] [varchar](max) NULL,
	[PanNumber] [varchar](max) NULL,
	[Tag] [varchar](max) NULL,
	[Remark] [varchar](max) NULL,
 CONSTRAINT [PK_SalesStore_tbl] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory_tbl](
	[SubCategory_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](max) NULL,
	[CategoryId] [bigint] NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_SubCategory_tbl] PRIMARY KEY CLUSTERED 
(
	[SubCategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Submenu_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Submenu_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubMenu] [varchar](50) NULL,
	[Controller] [varchar](100) NULL,
	[Action] [varchar](100) NULL,
	[MainMenuId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Submenu_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ComponentTotalPayment]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ComponentTotalPayment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MakingType] [varchar](150) NULL,
	[LabourCharge] [decimal](18, 2) NULL,
	[LaboureChargeRupee] [decimal](18, 2) NULL,
	[TotalPayment] [decimal](18, 2) NULL,
	[Tag] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ComponentTotalPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Gender]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GenderValue] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_LabourDataSave]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_LabourDataSave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[makingCharge] [varchar](50) NULL,
	[MakingType] [varchar](50) NULL,
	[LabCahrge] [decimal](18, 2) NULL,
	[TotalLabCharge] [decimal](18, 2) NULL,
	[StoreId] [bigint] NULL,
	[ItemBarCode] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_LabourDataSave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Lessdata]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Lessdata](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Remark] [varchar](50) NULL,
	[Pcs] [int] NULL,
	[Wt] [decimal](18, 2) NULL,
	[TotalWt] [decimal](18, 2) NULL,
	[Tag] [varchar](50) NULL,
	[StoreId] [bigint] NULL,
	[ItemBarCode] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_Lessdata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MstrItem]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MstrItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[barCode] [varchar](200) NULL,
	[itemCategory] [varchar](100) NULL,
	[itemName] [varchar](250) NULL,
	[purity] [varchar](50) NULL,
	[grossWt] [decimal](18, 3) NULL,
	[diamondDetail] [decimal](18, 3) NULL,
	[less] [decimal](18, 3) NULL,
	[goldNetWt] [decimal](18, 3) NULL,
	[goldValue] [decimal](18, 3) NULL,
	[diamondCost] [decimal](18, 2) NULL,
	[goldCost] [decimal](18, 2) NULL,
	[labourCharge] [decimal](18, 2) NULL,
	[totalCostWithoutGST] [decimal](18, 2) NULL,
	[gstCost] [decimal](18, 2) NULL,
	[totalCostWithGst] [decimal](18, 2) NULL,
	[description] [varchar](max) NULL,
	[gstRate] [decimal](18, 2) NULL,
	[goldRate] [decimal](18, 2) NULL,
	[storeId] [bigint] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[IsActive] [bit] NULL,
	[displayActive] [bit] NULL,
	[itemCode] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Purity]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Purity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [varchar](150) NULL,
	[Purity] [int] NULL,
	[Tag] [nchar](10) NULL,
	[GoldValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Purity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMainMenu]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMainMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainMenu] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [varchar](50) NULL,
 CONSTRAINT [PK_tblRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitMaster_tbl]    Script Date: 2022-02-14 10:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitMaster_tbl](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [varchar](50) NULL,
 CONSTRAINT [PK_UnitMaster_tbl] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City_tbl] ON 

INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (1, N'Lucknow', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (2, N'Kanpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (3, N'Firozabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (4, N'Agra', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (5, N'Meerut', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (6, N'Varanasi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (7, N'Allahabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (8, N'Amroha', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (9, N'Moradabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (10, N'Aligarh', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (11, N'Saharanpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (12, N'Noida', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (13, N'Loni', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (14, N'Jhansi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (15, N'Shahjahanpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (16, N'Rampur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (17, N'Modinagar', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (18, N'Hapur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (19, N'Etawah', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (20, N'Sambhal', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (21, N'Orai', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (22, N'Bahraich', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (23, N'Unnao', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (24, N'Rae Bareli', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (25, N'Lakhimpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (26, N'Sitapur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (27, N'Lalitpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (28, N'Pilibhit', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (29, N'Chandausi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (30, N'Hardoi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (31, N'Azamgarh', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (32, N'Khair', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (33, N'Sultanpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (34, N'Tanda', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (35, N'Nagina', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (36, N'Shamli', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (37, N'Najibabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (38, N'Shikohabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (39, N'Sikandrabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (40, N'Shahabad, Hardoi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (41, N'Pilkhuwa', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (42, N'Renukoot', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (43, N'Vrindavan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (44, N'Ujhani', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (45, N'Laharpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (46, N'Tilhar', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (47, N'Sahaswan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (48, N'Rath', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (49, N'Sherkot', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (50, N'Kalpi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (51, N'Tundla', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (52, N'Sandila', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (53, N'Nanpara', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (54, N'Sardhana', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (55, N'Nehtaur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (56, N'Seohara', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (57, N'Padrauna', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (58, N'Mathura', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (59, N'Thakurdwara', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (60, N'Nawabganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (61, N'Siana', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (62, N'Noorpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (63, N'Sikandra Rao', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (64, N'Puranpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (65, N'Rudauli', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (66, N'Thana Bhawan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (67, N'Palia Kalan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (68, N'Zaidpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (69, N'Nautanwa', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (70, N'Zamania', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (71, N'Shikarpur, Bulandshahr', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (72, N'Naugawan Sadat', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (73, N'Fatehpur Sikri', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (74, N'Shahabad, Rampur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (75, N'Robertsganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (76, N'Utraula', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (77, N'Sadabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (78, N'Rasra', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (79, N'Lar', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (80, N'Lal Gopalganj Nindaura', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (81, N'Sirsaganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (82, N'Pihani', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (83, N'Shamsabad, Agra', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (84, N'Rudrapur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (85, N'Soron', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (86, N'SUrban Agglomerationr', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (87, N'Samdhan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (88, N'Sahjanwa', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (89, N'Rampur Maniharan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (90, N'Sumerpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (91, N'Shahganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (92, N'Tulsipur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (93, N'Tirwaganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (94, N'PurqUrban Agglomerationzi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (95, N'Shamsabad, Farrukhabad', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (96, N'Warhapur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (97, N'Powayan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (98, N'Sandi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (99, N'Achhnera', 9)
GO
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (100, N'Naraura', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (101, N'Nakur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (102, N'Sahaspur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (103, N'Safipur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (104, N'Reoti', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (105, N'Sikanderpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (106, N'Saidpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (107, N'Sirsi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (108, N'Purwa', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (109, N'Parasi', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (110, N'Lalganj', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (111, N'Phulpur', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (112, N'Shishgarh', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (113, N'Sahawar', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (114, N'Samthar', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (115, N'Pukhrayan', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (116, N'Obra', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (117, N'Niwai', 9)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (118, N'Indore', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (119, N'Bhopal', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (120, N'Jabalpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (121, N'Gwalior', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (122, N'Ujjain', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (123, N'Sagar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (124, N'Ratlam', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (125, N'Satna', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (126, N'Murwara (Katni)', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (127, N'Morena', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (128, N'Singrauli', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (129, N'Rewa', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (130, N'Vidisha', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (131, N'Ganjbasoda', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (132, N'Shivpuri', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (133, N'Mandsaur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (134, N'Neemuch', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (135, N'Nagda', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (136, N'Itarsi', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (137, N'Sarni', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (138, N'Sehore', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (139, N'Mhow Cantonment', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (140, N'Seoni', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (141, N'Balaghat', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (142, N'Ashok Nagar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (143, N'Tikamgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (144, N'Shahdol', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (145, N'Pithampur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (146, N'Alirajpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (147, N'Mandla', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (148, N'Sheopur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (149, N'Shajapur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (150, N'Panna', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (151, N'Raghogarh-Vijaypur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (152, N'Sendhwa', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (153, N'Sidhi', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (154, N'Pipariya', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (155, N'Shujalpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (156, N'Sironj', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (157, N'Pandhurna', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (158, N'Nowgong', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (159, N'Mandideep', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (160, N'Sihora', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (161, N'Raisen', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (162, N'Lahar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (163, N'Maihar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (164, N'Sanawad', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (165, N'Sabalgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (166, N'Umaria', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (167, N'Porsa', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (168, N'Narsinghgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (169, N'Malaj Khand', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (170, N'Sarangpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (171, N'Mundi', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (172, N'Nepanagar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (173, N'Pasan', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (174, N'Mahidpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (175, N'Seoni-Malwa', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (176, N'Rehli', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (177, N'Manawar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (178, N'Rahatgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (179, N'Panagar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (180, N'Wara Seoni', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (181, N'Tarana', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (182, N'Sausar', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (183, N'Rajgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (184, N'Niwari', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (185, N'Mauganj', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (186, N'Manasa', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (187, N'Nainpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (188, N'Prithvipur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (189, N'Sohagpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (190, N'Nowrozabad (Khodargama)', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (191, N'Shamgarh', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (192, N'Maharajpur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (193, N'Multai', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (194, N'Pali', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (195, N'Pachore', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (196, N'Rau', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (197, N'Mhowgaon', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (198, N'Vijaypur', 23)
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (199, N'Narsinghgarh', 23)
GO
INSERT [dbo].[City_tbl] ([City_ID], [City_Name], [State_ID]) VALUES (200, N'Ludhiana', 4)
SET IDENTITY_INSERT [dbo].[City_tbl] OFF
SET IDENTITY_INSERT [dbo].[ComponentMaster_tbl] ON 

INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (1, 0, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(16095.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (2, 0, N'', N'23', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(8.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.13 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(12.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(20933.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (3, 0, N'', NULL, N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (4, 0, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(16095.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (5, 0, N'', N'23', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(8.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.13 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(12.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(20933.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (6, 0, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(18219.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (7, 0, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), N'2', CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(13440.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(18219.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (8, 1, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), N'2', CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(13440.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(18219.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (9, 1, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), N'1', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(13440.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(18219.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (10, 2, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(8.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(0.16 AS Decimal(18, 2)), N'2', CAST(200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(9408.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(24553.44 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (11, 1, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.24 AS Decimal(18, 2)), N'1', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(13440.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(18219.20 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (12, 2, N'', N'24', N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(8.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(0.16 AS Decimal(18, 2)), N'2', CAST(200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(9408.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(24553.44 AS Decimal(18, 2)))
INSERT [dbo].[ComponentMaster_tbl] ([ComponentId], [CategoryId], [ComponentName], [Purity], [Unit], [Rate], [Tag], [Note], [Wt], [Less], [ComponetWt], [NetGoldWt], [GoldValue], [MakingCharge], [LabCahrge], [LabChrgRupee], [DimondCost], [GoldCost], [LabCost], [gst], [TotalCharge]) VALUES (13, 1, N'', NULL, N'gm', CAST(0.00 AS Decimal(18, 2)), N'true', N'', CAST(0.00 AS Decimal(18, 2)), CAST(7.10 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(17.37 AS Decimal(18, 2)), NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(95562.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ComponentMaster_tbl] OFF
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (0, N'                              ', N'dfdfdd jghjghjg                                                                                                                                                                                         ', N'          ', N'fhghfhfhfghfghfg ghfgfghfg', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'80797978                                                                                                                                              ', N'                                                                                                                                                                                                        ', N'', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (1, N'C-0001                        ', N'xfdsfsdgd dfsfsfs                                                                                                                                                                                       ', N'          ', N'dsafdsfs dsfsdfs', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'807979788                                                                                                                                             ', N'                                                                                                                                                                                                        ', N'80797978', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (2, N'C-0002                        ', N'sgdfgdfgh dsggsdg                                                                                                                                                                                       ', N'          ', N'sdgsdghdb dggdfgd', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'80797978                                                                                                                                              ', N'                                                                                                                                                                                                        ', N'80797978', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (3, N'C-0003                        ', N'fdfsdfgsdgsd                                                                                                                                                                                            ', N'          ', N'sdgsdgsdg', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'543463463346                                                                                                                                          ', N'                                                                                                                                                                                                        ', N'346346346', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (4, N'C-0004                        ', N'fdfsdfgsdgsd                                                                                                                                                                                            ', N'          ', N'sdgsdgsdg', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'543463463346                                                                                                                                          ', N'                                                                                                                                                                                                        ', N'346346346', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (5, N'C-0005                        ', N'fdfsdfgsdgsd                                                                                                                                                                                            ', N'          ', N'sdgsdgsdg', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'543463463346                                                                                                                                          ', N'                                                                                                                                                                                                        ', N'346346346', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (6, N'C-0006                        ', N'wrwerwv                                                                                                                                                                                                 ', N'          ', N'rwerwerv', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'342423523523                                                                                                                                          ', N'                                                                                                                                                                                                        ', N'54745747647', 0x, N'Non Regular                   ')
INSERT [dbo].[Customer] ([ID], [CustomerID], [Name], [Gender], [Address], [City], [State], [ZipCode], [ContactNo], [EmailID], [Remarks], [Photo], [CustomerType]) VALUES (7, N'C-0007                        ', N'SFGSDGS DFGFGDFG                                                                                                                                                                                        ', N'          ', N'GDFGDF GDFGHD', N'                                                                                                                                                                                                        ', N'                                                                                                                                                      ', N'               ', N'64645654674                                                                                                                                           ', N'                                                                                                                                                                                                        ', N'5465665465', 0x, N'Non Regular                   ')
SET IDENTITY_INSERT [dbo].[GoldRate_tbl] ON 

INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (1, N'Gold', N'24', N'gm', CAST(56000.00 AS Decimal(18, 2)), N'03/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (2, N'Gold', N'24', N'gm', CAST(56000.00 AS Decimal(18, 2)), N'04/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (3, N'Gold', N'24', N'gm', CAST(56000.00 AS Decimal(18, 2)), N'05/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (4, N'Gold', N'24', N'gm', CAST(5500.00 AS Decimal(18, 2)), N'07/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (5, N'Gold', N'24', N'gm', CAST(5500.00 AS Decimal(18, 2)), N'08/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (6, N'Gold', N'24', N'gm', CAST(5500.00 AS Decimal(18, 2)), N'09/09/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (7, N'Gold', N'18', N'KT', CAST(5500.00 AS Decimal(18, 2)), N'10-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (8, N'Gold', N'14', N'KT', CAST(5500.00 AS Decimal(18, 2)), N'11-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (9, N'Gold', N'14', N'Karat', CAST(5500.00 AS Decimal(18, 2)), N'12-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (10, N'Gold', N'24', N'Karat', CAST(5500.00 AS Decimal(18, 2)), N'17-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (11, N'Gold', N'14', N'Karat', CAST(5500.00 AS Decimal(18, 2)), N'19-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (12, N'Gold', N'14', N'Karat', CAST(50000.00 AS Decimal(18, 2)), N'21-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (13, N'Gold', N'24', N'Carat', CAST(50000.00 AS Decimal(18, 2)), N'22-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (14, N'Gold', N'14', N'Karat', CAST(50000.00 AS Decimal(18, 2)), N'24-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (15, N'Gold', N'24', N'Karat', CAST(55000.00 AS Decimal(18, 2)), N'26-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (16, N'Gold', N'24', N'Karat', CAST(55000.00 AS Decimal(18, 2)), N'27-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (17, N'Gold', N'24', N'Karat', CAST(50000.00 AS Decimal(18, 2)), N'28-09-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (23, N'GOld', N'24', N'Karat', CAST(55000.00 AS Decimal(18, 2)), N'04-10-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (24, N'Gold', N'24', N'Karat', CAST(55000.00 AS Decimal(18, 2)), N'05-10-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (25, N'Gold', N'24', N'Karat', CAST(55000.00 AS Decimal(18, 2)), N'05-10-2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (26, N'Gold', N'24', N'Karat', CAST(20000.00 AS Decimal(18, 2)), N'15/10/2020')
INSERT [dbo].[GoldRate_tbl] ([Id], [Name], [Purity], [Unit], [Rate], [CreateDate]) VALUES (27, N'Gold', N'24', N'Karat', CAST(30000.00 AS Decimal(18, 2)), N'16/10/2020')
SET IDENTITY_INSERT [dbo].[GoldRate_tbl] OFF
SET IDENTITY_INSERT [dbo].[Invoice_Payment] ON 

INSERT [dbo].[Invoice_Payment] ([IP_ID], [InvoiceID], [PaymentDate], [TotalPaid], [PaymentMode]) VALUES (1, 6, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(5000.00 AS Decimal(18, 2)), N'By Cash                                                                                                                                               ')
INSERT [dbo].[Invoice_Payment] ([IP_ID], [InvoiceID], [PaymentDate], [TotalPaid], [PaymentMode]) VALUES (2, 7, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(5000.00 AS Decimal(18, 2)), N'By Cash                                                                                                                                               ')
INSERT [dbo].[Invoice_Payment] ([IP_ID], [InvoiceID], [PaymentDate], [TotalPaid], [PaymentMode]) VALUES (3, 7, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(4000.00 AS Decimal(18, 2)), N'By Cheque                                                                                                                                             ')
SET IDENTITY_INSERT [dbo].[Invoice_Payment] OFF
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (1, N'PB-0001                       ', CAST(N'2020-10-15 00:00:00.000' AS DateTime), 0, NULL, CAST(154000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(154000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (2, N'PB-0002                       ', CAST(N'2020-10-15 00:00:00.000' AS DateTime), 1, NULL, CAST(154000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(154000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (3, N'PB-0003                       ', CAST(N'2020-10-15 00:00:00.000' AS DateTime), 2, NULL, CAST(154000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(154000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (4, N'PB-0004                       ', CAST(N'2020-10-16 00:00:00.000' AS DateTime), 3, NULL, CAST(5000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (5, N'PB-0005                       ', CAST(N'2020-10-16 00:00:00.000' AS DateTime), 5, NULL, CAST(5000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (6, N'PB-0006                       ', CAST(N'2020-10-16 00:00:00.000' AS DateTime), 6, NULL, CAST(5000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'', NULL, NULL)
INSERT [dbo].[InvoiceInfo] ([Inv_ID], [InvoiceNo], [InvoiceDate], [CustomerID], [SalesmanID], [GrandTotal], [TotalPaid], [Balance], [Remarks], [state], [Auto]) VALUES (7, N'PB-0007                       ', CAST(N'2020-10-16 00:00:00.000' AS DateTime), 7, NULL, CAST(9000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ItemComponenet_tbl] ON 

INSERT [dbo].[ItemComponenet_tbl] ([ItemId], [Itemname], [Component], [Unit], [Quantity], [Price], [Tag], [Notes]) VALUES (1, N'30920207', NULL, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'true', NULL)
INSERT [dbo].[ItemComponenet_tbl] ([ItemId], [Itemname], [Component], [Unit], [Quantity], [Price], [Tag], [Notes]) VALUES (2, N'30920207', NULL, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'true', NULL)
INSERT [dbo].[ItemComponenet_tbl] ([ItemId], [Itemname], [Component], [Unit], [Quantity], [Price], [Tag], [Notes]) VALUES (3, N'30920207', NULL, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'true', NULL)
INSERT [dbo].[ItemComponenet_tbl] ([ItemId], [Itemname], [Component], [Unit], [Quantity], [Price], [Tag], [Notes]) VALUES (4, N'30920207', NULL, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'true', NULL)
INSERT [dbo].[ItemComponenet_tbl] ([ItemId], [Itemname], [Component], [Unit], [Quantity], [Price], [Tag], [Notes]) VALUES (5, N'30920207', NULL, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'true', NULL)
SET IDENTITY_INSERT [dbo].[ItemComponenet_tbl] OFF
SET IDENTITY_INSERT [dbo].[ItemImage_tbl] ON 

INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (1, 1, N'11.jpg', N'true', N'dasdasd')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (2, 1, N'/ItemImage/12.jpg', N'true', N'dasdasd')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (3, 4, N'/Item_Images/13.jpg', N'true', N'das')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (4, 4, N'/ItemImage/R7805\R7805_1.jpg', N'true', N'dadas')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (5, 2, N'/ItemImage/N1234\N1234_0.jpg', N'true', N'dfsfd')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (6, 3, N'/ItemImage/R1382\R1382_0.jpg', N'true', N'Ring for Women')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (7, 2, N'/ItemImage/N1234\N1234_0.jpg', N'true', N'For a beautiful women')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (8, 4, N'/ItemImage/R7805\R7805_0.jpg', N'true', N'2')
INSERT [dbo].[ItemImage_tbl] ([ItemImageId], [ItemId], [ItemImage], [Tag], [Notes]) VALUES (9, 5, N'/ItemImage/N3820\N3820_0.jpg', N'true', N's')
SET IDENTITY_INSERT [dbo].[ItemImage_tbl] OFF
SET IDENTITY_INSERT [dbo].[ItemMaster_tbl] ON 

INSERT [dbo].[ItemMaster_tbl] ([Id], [Item_Id], [Item_Name], [Discription], [Retail_Price], [Manufacturing_Price], [Discount], [Total_Price], [CategoryId], [Sub_categoryId], [Status], [Barcode], [Quantity]) VALUES (1, N'030920207', NULL, NULL, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, 0, N'true', NULL, 0)
INSERT [dbo].[ItemMaster_tbl] ([Id], [Item_Id], [Item_Name], [Discription], [Retail_Price], [Manufacturing_Price], [Discount], [Total_Price], [CategoryId], [Sub_categoryId], [Status], [Barcode], [Quantity]) VALUES (2, N'030920207', NULL, NULL, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, 0, N'true', NULL, 0)
SET IDENTITY_INSERT [dbo].[ItemMaster_tbl] OFF
SET IDENTITY_INSERT [dbo].[Labour_Charges] ON 

INSERT [dbo].[Labour_Charges] ([Id], [Name], [Status]) VALUES (1, N'Labour Fix Charge', N'True')
INSERT [dbo].[Labour_Charges] ([Id], [Name], [Status]) VALUES (2, N'Labour per Gm Charge', N'True')
INSERT [dbo].[Labour_Charges] ([Id], [Name], [Status]) VALUES (3, N'Labour % Charge', N'True')
SET IDENTITY_INSERT [dbo].[Labour_Charges] OFF
SET IDENTITY_INSERT [dbo].[Registration_tbl] ON 

INSERT [dbo].[Registration_tbl] ([UserId], [FirstName], [LastName], [MobileNo], [Gender], [Dob], [Password], [ConfirmPassword], [Address], [EmailId], [Picture], [Country], [Usertype]) VALUES (1, N'zxc', N'zsx', N'21212', N'd', CAST(N'0001-01-01' AS Date), N'12', N'12', N'zssa', N'ass', N'System.Web.HttpPostedFileWrapper', N'sad', N'a')
SET IDENTITY_INSERT [dbo].[Registration_tbl] OFF
SET IDENTITY_INSERT [dbo].[State_tbl] ON 

INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (1, N'Jammu & Kashmir', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (2, N'Himachal Pradesh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (3, N'Punjab', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (4, N'Chandigarh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (5, N'Uttarakhand', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (6, N'Haryana', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (7, N'Delhi', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (8, N'Rajasthan', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (9, N'Uttar Pradesh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (10, N'Bihar', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (11, N'Sikkim', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (12, N'Arunachal Pradesh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (13, N'Nagaland', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (14, N'Manipur', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (15, N'Mizoram', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (16, N'Tripura', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (17, N'Meghalaya', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (18, N'Assam', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (19, N'West Bengal', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (20, N'Jharkhand', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (21, N'Orissa', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (22, N'Chhattisgarh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (23, N'Madhya Pradesh', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (24, N'Gujarat', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (25, N'Daman & Diu', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (26, N'Dadra & Nagar Haveli', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (27, N'Maharashtra', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (28, N'Karnataka', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (29, N'Goa', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (30, N'Lakshadweep', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (31, N'Kerala', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (32, N'Tamil Nadu', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (33, N'Pondicherry', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (34, N'Andaman & Nicobar Islands', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (35, N'Telangana', 102)
INSERT [dbo].[State_tbl] ([State_ID], [State_Name], [Country_ID]) VALUES (36, N'Andhra Pradesh', 102)
SET IDENTITY_INSERT [dbo].[State_tbl] OFF
SET IDENTITY_INSERT [dbo].[StoneInfo] ON 

INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (1, N'1', 10, CAST(0.20 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(0.40 AS Decimal(18, 2)), NULL, CAST(2000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), N'8079797874730002517466', 2)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (2, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, CAST(1.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), N'8079797874730002533889', 2)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (3, N'1', 10, CAST(0.20 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), NULL, CAST(0.40 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), N'8079797874730002978053', 2)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8079797874730000258678', 0)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8079797874730000258678', 0)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8079797874730000258678', 0)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (7, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, CAST(1.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'8079797874730003881382', 3)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8079797874730002602508', 2)
INSERT [dbo].[StoneInfo] ([Id], [Remark], [Pcs], [CaratPerPcs], [TotalCarat], [WtPerPcs], [TotalWtPerItem], [PricePerItem], [TotalPricePerItem], [BarCode], [StoreId]) VALUES (9, N'1', 10, CAST(2.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), NULL, CAST(4.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), N'8079797874730002707805', 2)
SET IDENTITY_INSERT [dbo].[StoneInfo] OFF
SET IDENTITY_INSERT [dbo].[StoreMaster_tbl] ON 

INSERT [dbo].[StoreMaster_tbl] ([StoreId], [StoreName], [StoreAddress], [Longitute], [Latitude], [LandlineNumber], [MobileNumber], [MobileNumber2], [State], [City], [PinCode], [GSTNumber], [PanNumber], [Tag], [Remark]) VALUES (2, N'Kalyan Jewellers', N'MohanLalGanj', NULL, NULL, N'0522123456', N'9876543210', N'8765432111', 6, 9, N'226301', N'0987654321', N'123456789', N'true', N'Test')
SET IDENTITY_INSERT [dbo].[StoreMaster_tbl] OFF
SET IDENTITY_INSERT [dbo].[SubCategory_tbl] ON 

INSERT [dbo].[SubCategory_tbl] ([SubCategory_ID], [SubCategoryName], [CategoryId], [Description]) VALUES (1, N'4', 0, NULL)
INSERT [dbo].[SubCategory_tbl] ([SubCategory_ID], [SubCategoryName], [CategoryId], [Description]) VALUES (2, N'3', 0, NULL)
INSERT [dbo].[SubCategory_tbl] ([SubCategory_ID], [SubCategoryName], [CategoryId], [Description]) VALUES (3, N'Male', 0, N'Test')
INSERT [dbo].[SubCategory_tbl] ([SubCategory_ID], [SubCategoryName], [CategoryId], [Description]) VALUES (4, N'Male', 3, N'ada')
SET IDENTITY_INSERT [dbo].[SubCategory_tbl] OFF
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([Id], [Category_Name]) VALUES (1, N'Gold')
INSERT [dbo].[tbl_Category] ([Id], [Category_Name]) VALUES (2, N'Dimond')
INSERT [dbo].[tbl_Category] ([Id], [Category_Name]) VALUES (3, N'Jewellery')
INSERT [dbo].[tbl_Category] ([Id], [Category_Name]) VALUES (4, N'Gold Jewellery')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
SET IDENTITY_INSERT [dbo].[tbl_LabourDataSave] ON 

INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (1, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (2, NULL, NULL, CAST(10.00 AS Decimal(18, 2)), CAST(1005.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (3, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (4, NULL, NULL, CAST(10.00 AS Decimal(18, 2)), CAST(1005.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (5, N'1', N'1', CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (6, N'2', N'2', CAST(10.00 AS Decimal(18, 2)), CAST(1080.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (7, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(7.36 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (8, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5939.99 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (9, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (10, N'3', N'1', CAST(25.00 AS Decimal(18, 2)), CAST(33.13 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (11, N'2', N'2', CAST(300.00 AS Decimal(18, 2)), CAST(42060.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (12, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (13, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5940.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (14, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(40480.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (15, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(40480.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (16, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5940.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (17, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (18, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5940.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (19, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(40480.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (20, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (21, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5940.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (22, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(40480.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (23, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (24, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(20350.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (25, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(108000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (26, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(108000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (27, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(20350.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (28, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (29, N'3', N'2', CAST(20.00 AS Decimal(18, 2)), CAST(108000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (30, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(20350.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (31, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (32, N'3', N'1', CAST(10.00 AS Decimal(18, 2)), CAST(50875.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (33, N'2', N'2', CAST(300.00 AS Decimal(18, 2)), CAST(42060.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (34, N'3', N'1', CAST(25.00 AS Decimal(18, 2)), CAST(170675.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (35, N'1', N'1', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (36, N'1', N'1', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (37, N'1', N'1', CAST(3000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (38, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 3, N'8079797874730003171564')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (39, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 3, N'8079797874730003171564')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (40, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 2, N'8079797874730002533889')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (41, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5660.00 AS Decimal(18, 2)), 2, N'8079797874730002533889')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (42, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 2, N'8079797874730002978053')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (43, N'2', N'1', CAST(200.00 AS Decimal(18, 2)), CAST(5780.00 AS Decimal(18, 2)), 2, N'8079797874730002978053')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (44, N'2', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(154000.00 AS Decimal(18, 2)), 3, N'8079797874730003881382')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (45, N'1', N'1', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 2, N'8079797874730002707805')
INSERT [dbo].[tbl_LabourDataSave] ([Id], [makingCharge], [MakingType], [LabCahrge], [TotalLabCharge], [StoreId], [ItemBarCode]) VALUES (46, N'1', N'1', CAST(4000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), 2, N'8079797874730002653820')
SET IDENTITY_INSERT [dbo].[tbl_LabourDataSave] OFF
SET IDENTITY_INSERT [dbo].[tbl_Lessdata] ON 

INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (1, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (2, N'2', 5, CAST(0.20 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (3, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (4, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (5, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (6, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (7, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (8, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (9, N'1', 10, CAST(0.10 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (10, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (11, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (12, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (13, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (14, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (15, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (16, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (17, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (18, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (19, N'1', 20, CAST(0.20 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (20, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (21, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (22, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (23, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (24, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (25, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (26, N'1', 20, CAST(0.10 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (27, N'2', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (28, N'3', 5, CAST(0.02 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (29, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (30, N'2', 5, CAST(0.25 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (31, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (32, N'2', 5, CAST(0.25 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (33, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (34, N'2', 5, CAST(0.25 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (35, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (36, N'2', 5, CAST(0.25 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (37, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (38, N'2', 5, CAST(0.25 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (39, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (40, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (41, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (42, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (43, N'1', 10, CAST(0.40 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (44, N'1', 10, CAST(0.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (45, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (46, N'1', 5, CAST(0.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)), N'true', NULL, NULL)
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (47, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002866532')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (48, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002186206')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (49, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002819051')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (50, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 3, N'8079797874730003171564')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (51, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002533889')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (52, N'2', 5, CAST(0.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)), N'true', 2, N'8079797874730002533889')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (53, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002978053')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (54, N'2', 5, CAST(0.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)), N'true', 2, N'8079797874730002978053')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (55, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 3, N'8079797874730003881382')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (56, N'1', 10, CAST(0.50 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002707805')
INSERT [dbo].[tbl_Lessdata] ([Id], [Remark], [Pcs], [Wt], [TotalWt], [Tag], [StoreId], [ItemBarCode]) VALUES (57, N'1', 5, CAST(2.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'true', 2, N'8079797874730002653820')
SET IDENTITY_INSERT [dbo].[tbl_Lessdata] OFF
SET IDENTITY_INSERT [dbo].[tbl_MstrItem] ON 

INSERT [dbo].[tbl_MstrItem] ([Id], [barCode], [itemCategory], [itemName], [purity], [grossWt], [diamondDetail], [less], [goldNetWt], [goldValue], [diamondCost], [goldCost], [labourCharge], [totalCostWithoutGST], [gstCost], [totalCostWithGst], [description], [gstRate], [goldRate], [storeId], [createdDate], [createdBy], [IsActive], [displayActive], [itemCode]) VALUES (2, N'8079797874730002978053', N'1', N'Necklace', N'75.00', CAST(36.800 AS Decimal(18, 3)), CAST(0.400 AS Decimal(18, 3)), CAST(7.500 AS Decimal(18, 3)), CAST(28.900 AS Decimal(18, 3)), CAST(21.675 AS Decimal(18, 3)), CAST(2000.00 AS Decimal(18, 2)), CAST(108375.00 AS Decimal(18, 2)), CAST(10780.00 AS Decimal(18, 2)), CAST(121155.00 AS Decimal(18, 2)), CAST(3634.65 AS Decimal(18, 2)), CAST(124789.65 AS Decimal(18, 2)), N'Tetst', CAST(3.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL, N'N1234')
INSERT [dbo].[tbl_MstrItem] ([Id], [barCode], [itemCategory], [itemName], [purity], [grossWt], [diamondDetail], [less], [goldNetWt], [goldValue], [diamondCost], [goldCost], [labourCharge], [totalCostWithoutGST], [gstCost], [totalCostWithGst], [description], [gstRate], [goldRate], [storeId], [createdDate], [createdBy], [IsActive], [displayActive], [itemCode]) VALUES (3, N'8079797874730003881382', N'1', N'RIng', N'58.50', CAST(36.800 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(5.000 AS Decimal(18, 3)), CAST(30.800 AS Decimal(18, 3)), CAST(18.018 AS Decimal(18, 3)), CAST(50000.00 AS Decimal(18, 2)), CAST(99099.00 AS Decimal(18, 2)), CAST(154000.00 AS Decimal(18, 2)), CAST(303099.00 AS Decimal(18, 2)), CAST(9092.97 AS Decimal(18, 2)), CAST(312191.97 AS Decimal(18, 2)), N'Test', CAST(3.00 AS Decimal(18, 2)), CAST(5500.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL, N'R1382')
INSERT [dbo].[tbl_MstrItem] ([Id], [barCode], [itemCategory], [itemName], [purity], [grossWt], [diamondDetail], [less], [goldNetWt], [goldValue], [diamondCost], [goldCost], [labourCharge], [totalCostWithoutGST], [gstCost], [totalCostWithGst], [description], [gstRate], [goldRate], [storeId], [createdDate], [createdBy], [IsActive], [displayActive], [itemCode]) VALUES (4, N'8079797874730002707805', N'1', N'Ring', N'75.00', CAST(36.800 AS Decimal(18, 3)), CAST(4.000 AS Decimal(18, 3)), CAST(5.000 AS Decimal(18, 3)), CAST(27.800 AS Decimal(18, 3)), CAST(20.850 AS Decimal(18, 3)), CAST(200000.00 AS Decimal(18, 2)), CAST(41700.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(246700.00 AS Decimal(18, 2)), CAST(7401.00 AS Decimal(18, 2)), CAST(254101.00 AS Decimal(18, 2)), NULL, CAST(3.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL, N'R7805')
INSERT [dbo].[tbl_MstrItem] ([Id], [barCode], [itemCategory], [itemName], [purity], [grossWt], [diamondDetail], [less], [goldNetWt], [goldValue], [diamondCost], [goldCost], [labourCharge], [totalCostWithoutGST], [gstCost], [totalCostWithGst], [description], [gstRate], [goldRate], [storeId], [createdDate], [createdBy], [IsActive], [displayActive], [itemCode]) VALUES (5, N'8079797874730002653820', N'2', N'Necklace', N'100.00', CAST(108.000 AS Decimal(18, 3)), CAST(4.000 AS Decimal(18, 3)), CAST(10.000 AS Decimal(18, 3)), CAST(94.000 AS Decimal(18, 3)), CAST(94.000 AS Decimal(18, 3)), CAST(200000.00 AS Decimal(18, 2)), CAST(188000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(392000.00 AS Decimal(18, 2)), CAST(11760.00 AS Decimal(18, 2)), CAST(403760.00 AS Decimal(18, 2)), NULL, CAST(3.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL, N'N3820')
SET IDENTITY_INSERT [dbo].[tbl_MstrItem] OFF
SET IDENTITY_INSERT [dbo].[tbl_Purity] ON 

INSERT [dbo].[tbl_Purity] ([ID], [Unit], [Purity], [Tag], [GoldValue]) VALUES (1, N'1', 14, N'true      ', CAST(58.50 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Purity] ([ID], [Unit], [Purity], [Tag], [GoldValue]) VALUES (2, N'1', 18, N'true      ', CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Purity] ([ID], [Unit], [Purity], [Tag], [GoldValue]) VALUES (3, N'1', 22, N'true      ', CAST(91.60 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Purity] ([ID], [Unit], [Purity], [Tag], [GoldValue]) VALUES (4, N'2', 24, N'true      ', CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbl_Purity] OFF
SET IDENTITY_INSERT [dbo].[tblLogin] ON 

INSERT [dbo].[tblLogin] ([Id], [UserName], [Password], [RoleId]) VALUES (1, N'admin', N'123456', 1)
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
SET IDENTITY_INSERT [dbo].[tblRoles] ON 

INSERT [dbo].[tblRoles] ([Id], [Roles]) VALUES (1, N'admin')
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
SET IDENTITY_INSERT [dbo].[UnitMaster_tbl] ON 

INSERT [dbo].[UnitMaster_tbl] ([UnitId], [Unit]) VALUES (1, N'gm')
INSERT [dbo].[UnitMaster_tbl] ([UnitId], [Unit]) VALUES (2, N'carret')
SET IDENTITY_INSERT [dbo].[UnitMaster_tbl] OFF
ALTER TABLE [dbo].[Invoice_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Payment_InvoiceInfo] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[InvoiceInfo] ([Inv_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice_Payment] CHECK CONSTRAINT [FK_Invoice_Payment_InvoiceInfo]
GO
ALTER TABLE [dbo].[InvoiceInfo]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceInfo_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[InvoiceInfo] CHECK CONSTRAINT [FK_InvoiceInfo_Customer]
GO
ALTER TABLE [dbo].[Submenu_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Submenu_tbl_Submenu_tbl] FOREIGN KEY([Id])
REFERENCES [dbo].[Submenu_tbl] ([Id])
GO
ALTER TABLE [dbo].[Submenu_tbl] CHECK CONSTRAINT [FK_Submenu_tbl_Submenu_tbl]
GO
ALTER TABLE [dbo].[tblLogin]  WITH CHECK ADD  CONSTRAINT [FK_tblLogin_tblLogin] FOREIGN KEY([Id])
REFERENCES [dbo].[tblLogin] ([Id])
GO
ALTER TABLE [dbo].[tblLogin] CHECK CONSTRAINT [FK_tblLogin_tblLogin]
GO
/****** Object:  StoredProcedure [dbo].[GetImageByItemId]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetImageByItemId]  
@ItemId bigint=null  
as  
begin  
Select ('http://tcssecurity.in'+REPLACE(ItemImage,'\\','//')) ItemImage from ItemImage_tbl where ItemId=@ItemId  
end

GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetList]
as
begin
Select '1' as Id
end

GO
/****** Object:  StoredProcedure [dbo].[spGetcategory]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetcategory]

-- with encryption    
AS  
BEGIN  

	BEGIN TRY
	
		SET NOCOUNT ON

		SELECT ID,Category_Name
  FROM tbl_Category 
END TRY	
	
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
		--IF @@TRANCOUNT > 1
		--BEGIN			
			--ROLLBACK TRANSACTION
		--END

		-- Use RAISERROR inside the CATCH block to return error
		-- information about the original error that caused
		-- execution to jump to the CATCH block.
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
			
	END CATCH;	
	
END
/****** Object:  StoredProcedure [dbo].[spGetRunningKOTs]    Script Date: 01/16/2019 10:19:16 ******/
SET ANSI_NULLS ON



GO
/****** Object:  StoredProcedure [dbo].[spGetitemDetail]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>


CREATE PROCEDURE [dbo].[spGetitemDetail]
	@ItemID Varchar(50)
	
-- with encryption    
AS  
BEGIN  

	BEGIN TRY
	
		SET NOCOUNT ON

		SELECT tbl_MstrItem.Id ,tbl_MstrItem.barCode ,tbl_MstrItem.itemCategory,tbl_MstrItem.itemName ,tbl_MstrItem.purity  ,tbl_MstrItem.grossWt ,tbl_MstrItem.diamondDetail ,tbl_MstrItem.less
      ,tbl_MstrItem.goldNetWt,tbl_MstrItem.goldValue ,tbl_MstrItem.diamondCost,tbl_MstrItem.goldCost ,tbl_MstrItem.labourCharge,tbl_MstrItem.totalCostWithoutGST ,tbl_MstrItem.gstCost
      ,tbl_MstrItem.totalCostWithGst ,tbl_MstrItem.description ,tbl_MstrItem.gstRate ,tbl_MstrItem.goldRate ,tbl_MstrItem.storeId ,tbl_MstrItem.createdDate ,tbl_MstrItem.createdBy ,tbl_MstrItem.IsActive,tbl_MstrItem.displayActive ,tbl_MstrItem.itemCode
  FROM tbl_MstrItem where ID=@ItemID

	
	END TRY	
	
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
		--IF @@TRANCOUNT > 1
		--BEGIN			
			--ROLLBACK TRANSACTION
		--END

		-- Use RAISERROR inside the CATCH block to return error
		-- information about the original error that caused
		-- execution to jump to the CATCH block.
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
			
	END CATCH;	
	
END
/****** Object:  StoredProcedure [dbo].[spGetRunningKOTs]    Script Date: 01/16/2019 10:19:16 ******/
SET ANSI_NULLS ON



GO
/****** Object:  StoredProcedure [dbo].[spGetProduct]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetProduct]  
  
-- with encryption      
AS    
BEGIN    
  
 BEGIN TRY  
   
  SET NOCOUNT ON  
  
  SELECT tbl_MstrItem.Id ,tbl_MstrItem.barCode ,tbl_MstrItem.itemCategory,tbl_MstrItem.itemName ,tbl_MstrItem.purity  ,tbl_MstrItem.grossWt ,tbl_MstrItem.diamondDetail ,tbl_MstrItem.less  
      ,tbl_MstrItem.goldNetWt,tbl_MstrItem.goldValue ,tbl_MstrItem.diamondCost,tbl_MstrItem.goldCost ,tbl_MstrItem.labourCharge,tbl_MstrItem.totalCostWithoutGST ,tbl_MstrItem.gstCost  
      ,tbl_MstrItem.totalCostWithGst ,tbl_MstrItem.description ,tbl_MstrItem.gstRate ,tbl_MstrItem.goldRate ,tbl_MstrItem.storeId ,tbl_MstrItem.createdDate ,tbl_MstrItem.createdBy ,tbl_MstrItem.IsActive,tbl_MstrItem.displayActive ,tbl_MstrItem.itemCode,  
   (select top 1 'http://tcssecurity.in'+ItemImage from ItemImage_tbl where ItemId =tbl_MstrItem.Id ) ItemImage  
     
  FROM tbl_MstrItem    
    
END TRY   
   
 BEGIN CATCH  
  DECLARE @ErrorMessage NVARCHAR(4000);  
  DECLARE @ErrorSeverity INT;  
  DECLARE @ErrorState INT;  
  
  SELECT   
   @ErrorMessage = ERROR_MESSAGE(),  
   @ErrorSeverity = ERROR_SEVERITY(),  
   @ErrorState = ERROR_STATE();  
  --IF @@TRANCOUNT > 1  
  --BEGIN     
   --ROLLBACK TRANSACTION  
  --END  
  
  -- Use RAISERROR inside the CATCH block to return error  
  -- information about the original error that caused  
  -- execution to jump to the CATCH block.  
  RAISERROR (@ErrorMessage, -- Message text.  
       @ErrorSeverity, -- Severity.  
       @ErrorState -- State.  
       );  
     
 END CATCH;   
   
END  

GO
/****** Object:  StoredProcedure [dbo].[spGetstore]    Script Date: 2022-02-14 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>


CREATE PROCEDURE [dbo].[spGetstore]

-- with encryption    
AS  
BEGIN  

	BEGIN TRY
	
		SET NOCOUNT ON

		SELECT StoreId
      ,StoreName
      ,StoreAddress
      ,Longitute
      ,Latitude
      ,LandlineNumber
      ,MobileNumber
      ,MobileNumber2
      ,State
      ,City
      ,PinCode
      ,GSTNumber
      ,PanNumber
      ,Tag
      ,Remark
  FROM StoreMaster_tbl 
END TRY	
	
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
		--IF @@TRANCOUNT > 1
		--BEGIN			
			--ROLLBACK TRANSACTION
		--END

		-- Use RAISERROR inside the CATCH block to return error
		-- information about the original error that caused
		-- execution to jump to the CATCH block.
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
			
	END CATCH;	
	
END
/****** Object:  StoredProcedure [dbo].[spGetRunningKOTs]    Script Date: 01/16/2019 10:19:16 ******/
SET ANSI_NULLS ON



GO
