USE [ECommerce]
GO
/****** Object:  Table [dbo].[Category_tbl]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category_tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login_tbl]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](50) NULL,
	[UserType] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_Details]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [nvarchar](50) NULL,
	[Item_Name] [varchar](50) NULL,
	[Item_Image] [varchar](max) NULL,
	[Discription] [varchar](100) NULL,
	[Retail_Price] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[Total_Price] [decimal](18, 0) NULL,
	[CategoryId] [bigint] NULL,
	[Sub_categoryId] [bigint] NULL,
	[Barcode] [varchar](50) NULL,
	[Quantity] [bigint] NULL,
 CONSTRAINT [PK_Product_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration_tbl]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MobileNo] [varchar](80) NULL,
	[Email] [varchar](100) NULL,
	[Address] [varchar](max) NULL,
	[Pincode] [varchar](50) NULL,
	[Landmark] [varchar](200) NULL,
	[Area] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Password] [nvarchar](80) NULL,
	[ConfirmPassword] [nvarchar](80) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_Registration_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory_tbl]    Script Date: 2022-02-14 10:04:59 PM ******/
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
 CONSTRAINT [PK_SubCategory_tbl] PRIMARY KEY CLUSTERED 
(
	[SubCategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_AddProduct]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AddProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](100) NULL,
	[Title_Tag] [varchar](100) NULL,
	[Manufacturer_Name] [varchar](50) NULL,
	[MRP] [bigint] NULL,
	[DiscountPercentage] [bigint] NULL,
	[DiscountMrp] [bigint] NULL,
	[Selling_Price] [bigint] NULL,
	[MainImage] [varchar](max) NULL,
	[MainImagePath] [varchar](max) NULL,
	[Multiplepic] [varchar](max) NULL,
	[MultiplepicPath] [varchar](max) NULL,
	[AddedOn] [datetime] NULL,
	[IsAddProductActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Category]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[maincat_id] [bigint] NULL,
	[catname] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createby] [varchar](50) NULL,
	[image] [varchar](max) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK__Tbl_Cate__DD5DDDBD09DE7BCC] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_MainCategory]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_MainCategory](
	[maincat_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createby] [varchar](50) NULL,
	[image] [varchar](100) NULL,
	[isactive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[maincat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Manufacture]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Manufacture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[creataedate] [datetime] NULL,
	[createby] [varchar](50) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ProductInfo]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_ProductInfo](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](100) NULL,
	[Title_Tag] [varchar](50) NULL,
	[Manufacturer_Name] [varchar](100) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category_tbl] ON 

INSERT [dbo].[Category_tbl] ([Id], [Category_Name]) VALUES (1, N'Chair')
SET IDENTITY_INSERT [dbo].[Category_tbl] OFF
SET IDENTITY_INSERT [dbo].[Login_tbl] ON 

INSERT [dbo].[Login_tbl] ([Id], [Email], [Mobile], [UserType], [Password]) VALUES (1, N'poonam@gmail.com', N'775668976', N'User', N'Poonam@123')
INSERT [dbo].[Login_tbl] ([Id], [Email], [Mobile], [UserType], [Password]) VALUES (2, N'r@gmail.com', N'98897887676', N'User', N'Radha@123')
INSERT [dbo].[Login_tbl] ([Id], [Email], [Mobile], [UserType], [Password]) VALUES (3, N'admin@gmail.com', N'9876543210', N'admin', N'admin@123')
INSERT [dbo].[Login_tbl] ([Id], [Email], [Mobile], [UserType], [Password]) VALUES (4, N'sunil@gmail.com', N'9876543278', N'User', N'Sunil@123')
SET IDENTITY_INSERT [dbo].[Login_tbl] OFF
SET IDENTITY_INSERT [dbo].[Registration_tbl] ON 

INSERT [dbo].[Registration_tbl] ([Id], [FirstName], [LastName], [MobileNo], [Email], [Address], [Pincode], [Landmark], [Area], [City], [State], [Password], [ConfirmPassword], [Date]) VALUES (1, N'Poonam', N'Yadav', N'775668976', N'poonam@gmail.com', N'Sonebhadra', N'226016', N'new petrol pump', N'wyndhamganj', N'Sonebhadra', N'Up', N'Poonam@123', N'Poonam@123', N'29/01/2022')
INSERT [dbo].[Registration_tbl] ([Id], [FirstName], [LastName], [MobileNo], [Email], [Address], [Pincode], [Landmark], [Area], [City], [State], [Password], [ConfirmPassword], [Date]) VALUES (2, N'Radha', N'Verma', N'98897887676', N'r@gmail.com', N'lko', N'234455', N'dharma kt', N'kalyanpur', N'lko', N'up', N'Radha@123', N'Radha@123', N'29-01-2022')
INSERT [dbo].[Registration_tbl] ([Id], [FirstName], [LastName], [MobileNo], [Email], [Address], [Pincode], [Landmark], [Area], [City], [State], [Password], [ConfirmPassword], [Date]) VALUES (3, N'Sunil', N'Kushwaha', N'9876543278', N'sunil@gmail.com', N'jhanshi', N'2233321', N'12ffg', N'jhansi', N'jhansi', N'up', N'Sunil@123', N'Sunil@123', N'29-01-2022')
SET IDENTITY_INSERT [dbo].[Registration_tbl] OFF
SET IDENTITY_INSERT [dbo].[tbl_AddProduct] ON 

INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (1, N'test1', N'test1', N'test', 1200, 0, 100, 1000, N'face5.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face5.jpg', N'face5.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face5.jpg', CAST(N'2021-12-18 12:09:19.410' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (2, N'test', N'test', N'test', 3000, 0, 500, 2500, N'face26.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face26.jpg', N'face26.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face26.jpg', CAST(N'2021-12-18 15:07:03.020' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (3, N'Study Chair', N'Chair', N'Study Chair', 3000, 0, 100, 2900, N'face5.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face5.jpg', N'face5.jpg', N'C:\Users\hp\Desktop\Pihu Yadav\shopezone\shopezone\MainImage\face5.jpg', CAST(N'2021-12-18 15:08:24.907' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (4, N'Sofa', N'Sofa', N'chair', 10000, 0, 1200, 1200, N'p7.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\p7.jpg', N'p7.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\p7.jpg', CAST(N'2022-01-27 18:20:32.550' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (5, N'chair', N'chair', N'chair', 10000, 0, 1200, 1200, N's3.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\s3.jpg', N's3.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\s3.jpg', CAST(N'2022-01-27 18:21:32.930' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (6, N'Bed', N'Bed', N'Bed', 11324, 0, 132, 43252, N'p3.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\p3.jpg', N'p3.jpg', N'C:\Users\hp\Downloads\shopezone\shopezone\MainImage\p3.jpg', CAST(N'2022-01-27 18:22:41.557' AS DateTime), 1)
INSERT [dbo].[tbl_AddProduct] ([ProductId], [Product_Name], [Title_Tag], [Manufacturer_Name], [MRP], [DiscountPercentage], [DiscountMrp], [Selling_Price], [MainImage], [MainImagePath], [Multiplepic], [MultiplepicPath], [AddedOn], [IsAddProductActive]) VALUES (7, N'Table', N'Table', N'test', 500, 0, 12, 512, N'', N'', N'', N'', CAST(N'2022-02-01 19:16:03.203' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_AddProduct] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Category] ON 

INSERT [dbo].[Tbl_Category] ([cat_id], [maincat_id], [catname], [createdate], [createby], [image], [isactive]) VALUES (1, 1, N'small', CAST(N'2021-12-18 17:15:35.160' AS DateTime), N'Admin', N'/CatImage/Screenshot (5).png', 1)
INSERT [dbo].[Tbl_Category] ([cat_id], [maincat_id], [catname], [createdate], [createby], [image], [isactive]) VALUES (2, 2, N'chair', CAST(N'2022-01-13 21:08:55.617' AS DateTime), N'Admin', N'/CatImage/face5.jpg', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Category] OFF
SET IDENTITY_INSERT [dbo].[Tbl_MainCategory] ON 

INSERT [dbo].[Tbl_MainCategory] ([maincat_id], [name], [createdate], [createby], [image], [isactive]) VALUES (1, N'Chair', CAST(N'2021-12-18 17:14:06.977' AS DateTime), N'Admin', N'/CatImage/Screenshot (5).png', 1)
INSERT [dbo].[Tbl_MainCategory] ([maincat_id], [name], [createdate], [createby], [image], [isactive]) VALUES (2, N'wood', CAST(N'2022-01-13 21:08:12.517' AS DateTime), N'Admin', N'/CatImage/face5.jpg', 1)
SET IDENTITY_INSERT [dbo].[Tbl_MainCategory] OFF
/****** Object:  StoredProcedure [dbo].[proc_Category]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Database ECM02102021
--use ECM02102021
--exec [proc_Category] 4,'adfadsfgseg','Admin','/CatImage/61Dw5Z8LzJL._SL1000_.jpg',1


CREATE  proc [dbo].[proc_Category]
(
@maincat_id int =null,
@catname varchar(50)=null,
@createby varchar(50)=null,
@image varchar(max)=null,
@Action int
)
as begin  
if @Action='1'
begin
if not exists (select * from Tbl_Category where catname=@catname and maincat_id = @maincat_id)
begin
insert into Tbl_Category(maincat_id,catname,createdate,createby,image,isactive)
values (@maincat_id,@catname,GETDATE(),'Admin',@image,1)
select 1 as maincat_id ,'Category add successfully' as msg
end
else
begin
select 0 as maincat_id,'This category is already exists' as msg

end
end
if @Action='2'
begin
select * from Tbl_Category where  isactive=1

end
if @Action='3'
begin
select * from Tbl_Category where  isactive=1
end
if @Action ='4'
begin
update Tbl_Category set
catname=isnull(@catname,catname),
createdate=GETDATE(),
createby=isnull(@createby,createby)
where  isactive=1
select 1 as id ,'Category update successfully' msg
end
if @Action='5'
begin
update Tbl_Category set isactive=case when isactive=1 then 0 else 1 end where  isactive=1
select 1 as cat_id ,'Category Action update successfully' msg
end
end

GO
/****** Object:  StoredProcedure [dbo].[proc_MainCategory]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Database ECM02102021
--use ECM02102021
CREATE  proc [dbo].[proc_MainCategory]
(
@maincat_id int =null,
@name varchar(50)=null,
@createby varchar(50)=null,
@image varchar(max)=null,
@Action int
)
as begin  
if @Action='1'
begin
if not exists (select * from Tbl_MainCategory where name=@name)
begin
insert into Tbl_MainCategory(name,createdate,createby,isactive,image)
values (@Name,GETDATE(),'Admin',1,@image)
select 1 as maincat_id ,'Main category add successfully' as msg
end
else
begin
select 0 as maincat_id,'this Main category is already exists' as msg

end
end
if @Action='2'
begin
select * from Tbl_MainCategory where  isactive=1

end
if @Action='3'
begin
select * from Tbl_MainCategory where maincat_id=@maincat_id and isactive=1
end
if @Action ='4'
begin
update Tbl_MainCategory set
name=isnull(@Name,name),
createdate=GETDATE(),
createby=isnull(@createby,createby)
where maincat_id=@maincat_id and isactive=1
select 1 as id ,'MainCategory update successfully' msg
end
if @Action='5'
begin
update Tbl_MainCategory set isactive=case when isactive=1 then 0 else 1 end where maincat_id=@maincat_id and isactive=1
select 1 as maincat_id ,'MainCategory Action update successfully' msg
end
end

GO
/****** Object:  StoredProcedure [dbo].[proc_Manufacture]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Database ECM02102021
--use ECM02102021
CREATE proc [dbo].[proc_Manufacture]
(
@Id int =null,
@Name varchar(50)=null,
@createby varchar(50),
@Action int
)
as begin  
if @Action='1'
begin
if not exists (select * from Tbl_Manufacture where name=@Name)
begin
insert into Tbl_Manufacture(name,creataedate,createby,isactive)
values (@Name,GETDATE(),@createby,1)
select 1 as id ,'Manufacturer add successfully' as msg
end
else
begin
select 0 as id,'this manufacturer is already exists' as msg

end
end
if @Action='2'
begin
select * from Tbl_Manufacture where  isactive=1

end
if @Action=3
begin
select * from Tbl_Manufacture where id=@Id and isactive=1
end
if @Action =4
begin
update Tbl_Manufacture set
name=isnull(@Name,name),
creataedate=GETDATE(),
createby=isnull(@createby,createby)
where ID=@Id and isactive=1
select 1 as id ,'manufacturer update successfully' msg
end
if @Action=5
begin
update Tbl_Manufacture set isactive=case when isactive=1 then 0 else 1 end where id=@Id and isactive=1
select 1 as id ,'manufacturer Actin update successfully' msg
end
end




select * from Tbl_Manufacture

GO
/****** Object:  StoredProcedure [dbo].[SelectAllProduct]    Script Date: 2022-02-14 10:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[proc_Category]    Script Date: 12/18/2021 17:53:58 ******/
CREATE PROCEDURE [dbo].[SelectAllProduct]
(
@Action int
)
as begin  
if @Action='2'
begin
SELECT * FROM tbl_AddProduct
end
end

GO
