USE [master]
GO
/****** Object:  Database [MobileShop]    Script Date: 25/10/2017 14:58:05 ******/
CREATE DATABASE [MobileShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MobileShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MobileShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MobileShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileShop] SET RECOVERY FULL 
GO
ALTER DATABASE [MobileShop] SET  MULTI_USER 
GO
ALTER DATABASE [MobileShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MobileShop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileShop', N'ON'
GO
USE [MobileShop]
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Best_Seller]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Best_Seller](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_tbl_Best_Seller] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Categories]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Deliverer]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Deliverer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phome] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Deliverer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Oder_Detail]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Oder_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tbl_Oder_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[StatusId] [int] NULL,
	[TotalPrice] [money] NULL,
	[CreateDate] [datetime] NULL,
	[Note] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Detail] [ntext] NULL,
	[Quantity] [int] NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Size] [nvarchar](255) NULL,
	[Weight] [nvarchar](255) NULL,
	[Color] [nvarchar](255) NULL,
	[Memory] [nvarchar](255) NULL,
	[Os] [nvarchar](255) NULL,
	[Cpu] [nvarchar](255) NULL,
	[Camera] [nvarchar](255) NULL,
	[Warranty] [nvarchar](255) NOT NULL,
	[Price] [money] NULL,
	[Views] [int] NULL,
	[LastUpdate] [smalldatetime] NULL,
	[IsActive] [bit] NULL,
	[NoiBat] [bit] NULL,
 CONSTRAINT [PK_tbl_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbt_Status]    Script Date: 25/10/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbt_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbt_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Admin] ON 

INSERT [dbo].[tbl_Admin] ([Id], [Username], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tbl_Admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_Best_Seller] ON 

INSERT [dbo].[tbl_Best_Seller] ([Id], [ProductID]) VALUES (1, 1)
INSERT [dbo].[tbl_Best_Seller] ([Id], [ProductID]) VALUES (2, 5)
INSERT [dbo].[tbl_Best_Seller] ([Id], [ProductID]) VALUES (3, 7)
INSERT [dbo].[tbl_Best_Seller] ([Id], [ProductID]) VALUES (4, 10)
SET IDENTITY_INSERT [dbo].[tbl_Best_Seller] OFF
SET IDENTITY_INSERT [dbo].[tbl_Categories] ON 

INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (1, N'Apple')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (3, N'Oppo')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (4, N'Sony')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (5, N'HTC')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (6, N'LG')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (7, N'Xiaomi')
INSERT [dbo].[tbl_Categories] ([Id], [Name]) VALUES (1013, N'Nokia')
SET IDENTITY_INSERT [dbo].[tbl_Categories] OFF
SET IDENTITY_INSERT [dbo].[tbl_Oder_Detail] ON 

INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (11, 3, 5, 13490000.0000, 3)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (12, 4, 7, 9990000.0000, 2)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (13, 4, 10, 10990000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (14, 5, 5, 13490000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (15, 6, 7, 9990000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (16, 7, 1, 8190000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (17, 8, 7, 9990000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (1016, 1007, 1, 8190000.0000, 1)
INSERT [dbo].[tbl_Oder_Detail] ([Id], [OrderId], [ProductID], [Price], [Quantity]) VALUES (1017, 1008, 10, 10990000.0000, 1)
SET IDENTITY_INSERT [dbo].[tbl_Oder_Detail] OFF
SET IDENTITY_INSERT [dbo].[tbl_Order] ON 

INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (3, 6, 4, 40470000.0000, CAST(N'2017-10-16T02:21:33.597' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (4, 6, 1, 30970000.0000, CAST(N'2017-10-16T03:14:38.863' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (5, 6, 1, 13490000.0000, CAST(N'2017-10-16T03:14:50.627' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (6, 6, 2, 9990000.0000, CAST(N'2017-10-16T03:14:58.680' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (7, 6, 1, 8190000.0000, CAST(N'2017-10-19T10:38:54.180' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (8, 6, 1, 9990000.0000, CAST(N'2017-10-20T15:00:33.050' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (1007, 6, 1, 8190000.0000, CAST(N'2017-10-24T23:34:04.490' AS DateTime), NULL)
INSERT [dbo].[tbl_Order] ([Id], [CustomerId], [StatusId], [TotalPrice], [CreateDate], [Note]) VALUES (1008, 6, 1, 10990000.0000, CAST(N'2017-10-25T07:13:51.393' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_Order] OFF
SET IDENTITY_INSERT [dbo].[tbl_Products] ON 

INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1, 1, N'iPhone 6 Plus Hồng Mới Nguyên Seal Chưa Active', N'iPhone-6-Plus-Hong-Moi-Nguyen-Seal-Chua-Active', N'iPhone 6 Plus quốc tế mới 100%, hàng dự trữ đổi bảo hành chính hãng Apple, một số máy có thể tự bị kích hoạt hết bảo hành theo chính sách của hãng có mức giá rẻ hơn ', 10, N'iphone-sample.jpg', N'Màn hình 5.5 inches (158 x 77.8 x 7.1 mm)', NULL, N'Hồng', N'1GB Ram', NULL, N'Apple A8 Dual-core 1.4GHz', N'Camera trước 1.2 MP , Camera sau 8MP', N'12 tháng', 8190000.0000, 7, CAST(N'2017-10-15T21:13:00' AS SmallDateTime), 0, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (5, 2, N'Samsung Galaxy S8 Đen Hàn Quốc', N'samsung-galaxy-s8-den-han-quoc', N'Samsung Galaxy S8 phiên bản Ram 4G thị trường Hàn Quốc, Phiên bản 4G của Hàn Quốc phần cứng tương tự như phiên bản chính hãng tại Việt Nam nhưng sử dụng 1 sim', 10, N'samsung-sample.jpg', N'Màn hình 5.8 inches (148.9 x 68.1 x 8 mm)', NULL, N'Đen', N'4GB Ram', NULL, N'Qualcomm Exynos 8895', N'Camera trước 8MP, Camera sau 12MP', N'12 tháng', 13490000.0000, 3, CAST(N'2017-10-05T00:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (7, 3, N'Oppo F3 Plus Đen Chính Hãng', N'oppo-f3-plus-den-chinh-hang', N'Điện thoại Oppo F3 Plus chính hãng được phân phối bởi Oppo Việt Nam. Bộ Phụ kiện Oppo F3 Flus chuẩn gồm Sạc, cable, tai nghe cao cấp, sách hướng dẫn sử dụng, thẻ bảo hành chính hãng', 10, N'oppo-sample.jpg', N'Màn hình 6 inches (157.5 x 77.6 x 6.9 mm)', NULL, N'Đen', N'4GB Ram', NULL, N'Qualcomm MSM8976 Pro Snapdragon 653', N'Camera trước 8MP, Camera sau 12MP ', N'12 tháng', 9990000.0000, 12, CAST(N'2017-10-05T00:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (10, 4, N'Sony Xperia XZ Xám chính hãng', N'Sony-Xperia-XZ-Xam-chinh-hang', N'Sony Xperia XZ siêu phẩm cao cấp nhất của SONY hiện tại. Sở hữu cấu hình cực khủng với chip Snapdragon 820 cùng Ram lên tới 3GB đi kèm camera 23mpx và khả năng chống nước tiêu chuẩn IP68 cao cấp nhất', 10, N'sony-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', N'112(g)', N'Xám', N'4GB Ram', N'Android 8.0', N'Qualcomm MSM8974AC Snapdragon 801', N'Camera trước 8 MP, Camera sau 13 MP', N'12 tháng', 10990000.0000, 8, CAST(N'2017-10-05T10:40:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (11, 7, N'Xiaomi Mi4 RAM 3G Trắng Châu Âu Chính Hãng', N'Xiaomi-Mi4-RAM-3G-Trang-Chau-Au-Chinh-Hang', N'Xiaomi Mi4, Flagship làm lên tên tuổi Xiaomi. Đặc điểm nổi bật của Mi4: Viền kim loại, pin rất tốt, màn đẹp và được update phần mềm liên tục', 10, N'xiaomi-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', NULL, N'Trắng', N'3GB Ram', NULL, N'Qualcomm MSM8974AC Snapdragon 801', N'Camera trước 8 MP, Camera sau 13 MP', N'12 tháng', 2490000.0000, 7, CAST(N'2017-10-05T10:45:00' AS SmallDateTime), 0, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (12, 5, N'HTC 10 Đen cũ likenew', N'HTC-10-Den-cu-likenew', N'Điện thoại HTC 10 cũ likenew là chiếc smartphone tốt nhất của HTC từ trước đến nay, từ thiết kế, chất lượng hoàn thiện,', 10, N'htc-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', NULL, N'Đen', N'3GB Ram', NULL, N'Qualcomm MSM8974AC Snapdragon 801', N'Camera trước 8 MP, Camera sau 13 MP', N'12 tháng', 5390000.0000, 8, CAST(N'2017-10-05T10:45:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (13, 1, N'iPhone 7 Plus Đen Mới Trần Chưa Active CPO-Đủ bảo hành', N'iPhone-7-Plus-Den-Moi-Tran-Chua-Active-CPO-Du-bao-hanh', N'iPhone 7 Plus Pre-Owned chưa kích hoạt, bản Mỹ, Singapore. Máy mới 100% chưa kích hoạt trên hệ thống Apple', 12, N'iphone-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', NULL, N'Đen', N'3GB Ram', NULL, N'Apple A9', N'Camera trước 8 MP, Camera sau 13 MP', N'12 tháng', 14490000.0000, 5, CAST(N'2017-10-05T00:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (14, 2, N'Samsung Galaxy J7 Pro Chính Hãng', N'Samsung-Galaxy-J7-Pro-Chinh-Hang', N'Samsung Galaxy J7 pro - Camera chinh phuc bóng tối, là sản phẩm mới nhất từ samsung', 15, N'samsung-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', NULL, N'Đen', N'3GB Ram', NULL, N'Qualcomm MSM8974AC Snapdragon 801', N'Camera trước 8 MP, Camera sau 13 MP', N'12 tháng', 6390000.0000, 2, CAST(N'2017-10-05T00:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1002, 1, N'iPhone 5S 64GB Đen', N'iPhone-5S-64GB-Den', N'iPhone 5S và iPhone 5C chính là hai nhân tố tâm điểm khiến thị trường di động náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản iPhone trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của iPhone 5, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.', 12, N'iphone-sample.jpg', N'4.0" inches 123.8 x 58.6 x 7.6 mm', N'112(g)', N'Đen', N'1 GB', N'iOS 7.0', N'Apple A7', N'Camera sau : 8.0 MP Camera trước : 1.2 MP', N'12 tháng', 5699000.0000, 0, CAST(N'2017-10-05T10:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1003, 4, N'Sony Xperia XZ1', N'Sony-Xperia-XZ1', N'Sony Xperia XZ1 là mẫu flagship kế tiếp của Sony tiếp nối sự thành công của chiếc Xperia XZs đã ra mắt trước đó với những nâng cấp nhẹ về mặt cấu hình và thiết kế.', 10, N'sony-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', N'112(g)', N'Đen', N'3GB Ram', N'Android 8.0', N'Qualcomm Snapdragon 835 8 nhân 64-bit', N'Camera sau:19 MP   Camera trước:	13 MP', N'12 tháng', 15999000.0000, 0, CAST(N'2017-10-05T10:12:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1004, 2, N'Điện thoại Samsung Galaxy C9 Pro', N'Dien-thoai-Samsung-Galaxy-C9-Pro', N'Samsung Galaxy C9 Pro gây được sự chú ý cho người dùng bởi nó sở hữu mức RAM lên tới 6 GB, lần đầu tiên có một chiếc Galaxy đến từ Samsung sở hữu mức RAM đó.', 11, N'samsung-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', N'112(g)', N'Hồng', N'3GB Ram', N'Android 8.0', N'Qualcomm MSM8974AC Snapdragon 801', N'Camera sau: 16 MP  Camera trước:	16 MP', N'12 tháng', 11490000.0000, 3, CAST(N'2017-10-05T10:13:00' AS SmallDateTime), 0, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1005, 5, N'Điện thoại HTC U11', N'Dien-thoai-HTC-U11', N'HTC U11 là smartphone cao cấp nhất của HTC trong năm 2017 với nhiều nâng cấp tập trung vào trải nghiệm người dùng thú vị so với model tiền nhiệm.', 22, N'htc-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', N'112(g)', N'Trắng', N'3GB Ram', N'Android 8.0', N'Qualcomm MSM8974AC Snapdragon 801', N'Camera sau : 8.0 MP Camera trước : 1.2 MP', N'12 tháng', 16999000.0000, 2, CAST(N'2017-10-25T07:35:00' AS SmallDateTime), 0, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1006, 3, N'OPPO F3', N'OPPO-F3', N'Cuối cùng thì mẫu "chuyên gia selfie" mới OPPO F3 cũng đã chính thức được trình làng với cụm camera trước kép trang bị nhiều tính năng selfie tuyệt vời hứa hẹn sẽ đem đến trải nghiệm đáng giá cho người dùng.', 11, N'oppo-sample.jpg', N'5.5"', N'112(g)', N'Đen', N'2 GB Ram', N'Android 5.0', N'Qualcomm MSM8974AC Snapdragon 801', N'Camera sau:	13 MP Camera trước:	16 MP và 8 MP', N'12 tháng', 6999000.0000, 4, CAST(N'2017-10-05T10:34:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[tbl_Products] ([Id], [CategoryID], [Name], [Alias], [Detail], [Quantity], [Image], [Size], [Weight], [Color], [Memory], [Os], [Cpu], [Camera], [Warranty], [Price], [Views], [LastUpdate], [IsActive], [NoiBat]) VALUES (1007, 1013, N'Nokia 8', N'Nokia-8', N'Nokia 8 là chiếc flagship cao cấp nhất của Nokia trong năm 2017 mới được giới thiệu vào giữa tháng 8 với thiết kế khá giống với Nokia 6, nhưng đã được trang bị thêm camera kép Carl Zeiss danh tiếng.', 0, N'nokia-sample.jpg', N'5 inch (139.2 x 68.5 x 8.9 mm)', N'112(g)', N'Đen', N'3GB Ram', N'Android 7.1', N'Qualcomm MSM8974AC Snapdragon 801', N'Camera sau:	2 camera 13 MP Camera trước:	13 MP', N'12 tháng', 12999000.0000, 0, CAST(N'2017-10-05T10:21:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[tbl_Products] OFF
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 

INSERT [dbo].[tbl_Users] ([Id], [Username], [Password], [Name], [Phone], [Address], [Email]) VALUES (4, N'btphuc', N'123456159', N'Bui Thien Phuc', N'01887338791', N'1 đươnng 2 phường 3 quận 4 tp hcm', N'btphuc.eznw@gmail.com')
INSERT [dbo].[tbl_Users] ([Id], [Username], [Password], [Name], [Phone], [Address], [Email]) VALUES (5, N'btphuc01', N'123456159', N'Bui Thien Phuc', N'01887338791', N'1 đươnng 2 phường 3 quận 4 tp hcm', N'asdfghjkl@gmai.com')
INSERT [dbo].[tbl_Users] ([Id], [Username], [Password], [Name], [Phone], [Address], [Email]) VALUES (6, N'n0thing123', N'123456159', N'Bui Thien Phuc', N'01887338791', N'1 đươnng 2 phường 3 quận 4 tp hcm', N'btphuc@gmail.com')
INSERT [dbo].[tbl_Users] ([Id], [Username], [Password], [Name], [Phone], [Address], [Email]) VALUES (7, N'kieungocthuy', N'123456159', N'kieu ngoc thuy', N'01887338791', N'1 đươnng 2 phường 3 quận 4 tp hcm', N'kieungocthuy@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
SET IDENTITY_INSERT [dbo].[tbt_Status] ON 

INSERT [dbo].[tbt_Status] ([Id], [Status]) VALUES (1, N'Chưa xác nhận')
INSERT [dbo].[tbt_Status] ([Id], [Status]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[tbt_Status] ([Id], [Status]) VALUES (3, N'Đang giao')
INSERT [dbo].[tbt_Status] ([Id], [Status]) VALUES (4, N'Đã giao')
SET IDENTITY_INSERT [dbo].[tbt_Status] OFF
ALTER TABLE [dbo].[tbl_Products] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_Best_Seller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Best_Seller_tbl_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tbl_Products] ([Id])
GO
ALTER TABLE [dbo].[tbl_Best_Seller] CHECK CONSTRAINT [FK_tbl_Best_Seller_tbl_Products]
GO
ALTER TABLE [dbo].[tbl_Oder_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Oder_Detail_tbl_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tbl_Order] ([Id])
GO
ALTER TABLE [dbo].[tbl_Oder_Detail] CHECK CONSTRAINT [FK_tbl_Oder_Detail_tbl_Order]
GO
ALTER TABLE [dbo].[tbl_Oder_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Oder_Detail_tbl_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tbl_Products] ([Id])
GO
ALTER TABLE [dbo].[tbl_Oder_Detail] CHECK CONSTRAINT [FK_tbl_Oder_Detail_tbl_Products]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Users] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[tbl_Users] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbt_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tbt_Status] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbt_Status]
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Products_tbl_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Categories] ([Id])
GO
ALTER TABLE [dbo].[tbl_Products] CHECK CONSTRAINT [FK_tbl_Products_tbl_Categories]
GO
USE [master]
GO
ALTER DATABASE [MobileShop] SET  READ_WRITE 
GO
