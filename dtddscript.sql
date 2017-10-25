USE [master]
GO
/****** Object:  Database [MobileStore]    Script Date: 25/10/2017 14:35:27 ******/
CREATE DATABASE [MobileStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MobileStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MobileStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MobileStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MobileStore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileStore] SET RECOVERY FULL 
GO
ALTER DATABASE [MobileStore] SET  MULTI_USER 
GO
ALTER DATABASE [MobileStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MobileStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileStore', N'ON'
GO
ALTER DATABASE [MobileStore] SET QUERY_STORE = OFF
GO
USE [MobileStore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MobileStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[CMND] [varchar](9) NOT NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[NgayDangKy] [smalldatetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiBL] [nvarchar](50) NULL,
	[TieuDeBL] [nvarchar](50) NULL,
	[NoiDungBL] [ntext] NULL,
	[NgayBL] [smalldatetime] NULL,
	[MaKH] [int] NULL,
	[MaSP] [int] NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DonHang]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DonHang](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CT_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayMua] [smalldatetime] NULL,
	[NgayGiao] [smalldatetime] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [varchar](11) NULL,
	[HTThanhToan] [bit] NULL,
	[Trigia] [decimal](18, 0) NULL,
	[Dagiao] [bit] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaGH] [nvarchar](max) NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[NgayMua] [smalldatetime] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[CMND] [varchar](9) NOT NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[NgayDangKy] [smalldatetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[Avatar] [nvarchar](255) NULL,
	[TenNguoiGui] [nvarchar](200) NOT NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[NgayGui] [smalldatetime] NULL,
	[LuotGui] [bit] NULL,
	[DaDocKH] [bit] NULL,
	[DaDocAD] [bit] NULL,
	[Anhien] [bit] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[url] [varchar](50) NULL,
	[Thutu] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](255) NOT NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen_Admin]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen_Admin](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[MaAdmin] [int] NULL,
	[PQ_Menu] [bit] NULL,
	[PQ_Slider] [bit] NULL,
	[PQ_NhaSanXuat] [bit] NULL,
	[PQ_SanPham] [bit] NULL,
	[PQ_KhachHang] [bit] NULL,
	[PQ_DonHang] [bit] NULL,
	[PQ_TinTuc] [bit] NULL,
	[PQ_QuangCao] [bit] NULL,
	[PQ_LienHe] [bit] NULL,
	[PQ_GioiThieu] [bit] NULL,
	[PQ_QuanTriAdmin] [bit] NULL,
	[PQ_SiteMap] [bit] NULL,
 CONSTRAINT [PK_PhanQuyen_Admin] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQC] [int] IDENTITY(1,1) NOT NULL,
	[TenQC] [nvarchar](255) NOT NULL,
	[TenCty] [nvarchar](200) NOT NULL,
	[UrlHinh] [varchar](100) NULL,
	[LinkUrl] [varchar](100) NULL,
	[vitri] [varchar](1) NOT NULL,
	[Ngaybatdau] [smalldatetime] NULL,
	[Ngayhethan] [smalldatetime] NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[MaQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[UrlHinh] [nvarchar](255) NULL,
	[Code1] [ntext] NULL,
	[UrlHinh360] [nvarchar](255) NULL,
	[Code2] [ntext] NULL,
	[GiaHienTai] [decimal](18, 0) NOT NULL,
	[GiaCu] [decimal](18, 0) NOT NULL,
	[MoTa] [ntext] NULL,
	[MoTaCT] [ntext] NULL,
	[DanhGiaCT] [ntext] NULL,
	[MaNSX] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[SLDaBan] [int] NOT NULL,
	[KhuyenMai] [float] NOT NULL,
	[LuotXem] [int] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[MaSlider] [int] IDENTITY(1,1) NOT NULL,
	[UrlHinh] [varchar](100) NULL,
	[LinkUrl] [varchar](100) NULL,
	[Thutu] [int] NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[MaSlider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoLuotTruyCap]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuotTruyCap](
	[Dem] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTin]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTin](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[code1] [ntext] NULL,
	[GioiThieu] [ntext] NOT NULL,
	[code2] [ntext] NULL,
	[sitemap] [nvarchar](255) NULL,
 CONSTRAINT [PK_ThongTin] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 25/10/2017 14:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTin] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[TomTat] [nvarchar](255) NOT NULL,
	[UrlHinh] [nvarchar](255) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[LuotXem] [int] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[AnHien] [bit] NOT NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaAdmin], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (1, N'admin', N'1231231', N'admin@Gmail.com', N'Đào Anh Dũng', N'123 Xóm lều', N'01659020020', N'241351483', CAST(N'1993-03-06T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-19T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/Avatar_Admin.jpg', 1)
INSERT [dbo].[Admin] ([MaAdmin], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (2, N'admin1', N'1231231', N'admin1@Gmail.com', N'Nguyễn Tấn Dũng', N'123 Xóm lá', N'01688344585', N'123456789', CAST(N'1985-05-22T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-20T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/Avatar_Admin.jpg', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[CT_DonHang] ON 

INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (1, 1, 1, 1, CAST(22290000 AS Decimal(18, 0)), CAST(22290000 AS Decimal(18, 0)))
INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (2, 1, 15, 1, CAST(2990000 AS Decimal(18, 0)), CAST(2691000 AS Decimal(18, 0)))
INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (3, 1, 33, 2, CAST(2890000 AS Decimal(18, 0)), CAST(5491000 AS Decimal(18, 0)))
INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (4, 2, 11, 1, CAST(4490000 AS Decimal(18, 0)), CAST(4041000 AS Decimal(18, 0)))
INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (5, 3, 22, 1, CAST(5690000 AS Decimal(18, 0)), CAST(5690000 AS Decimal(18, 0)))
INSERT [dbo].[CT_DonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong], [Gia], [Thanhtien]) VALUES (6, 4, 15, 2, CAST(2990000 AS Decimal(18, 0)), CAST(5382000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CT_DonHang] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayMua], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [Trigia], [Dagiao]) VALUES (1, 1, CAST(N'2014-07-19T00:00:00' AS SmallDateTime), CAST(N'2014-07-20T00:00:00' AS SmallDateTime), N'Đào Anh Dũng', N'123 Xóm lều', N'01659020020', 1, CAST(30472000 AS Decimal(18, 0)), 0)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayMua], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [Trigia], [Dagiao]) VALUES (2, 2, CAST(N'2014-03-26T00:00:00' AS SmallDateTime), CAST(N'2014-03-30T00:00:00' AS SmallDateTime), N'Dương Thành Phết', N'123 Xóm lá', N'0918158670', 0, CAST(4041000 AS Decimal(18, 0)), 0)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayMua], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [Trigia], [Dagiao]) VALUES (3, 3, CAST(N'2014-03-25T00:00:00' AS SmallDateTime), CAST(N'2014-03-27T00:00:00' AS SmallDateTime), N'Trần Minh Anh', N'123 Xóm chùa', N'0972000449', 1, CAST(5690000 AS Decimal(18, 0)), 0)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayMua], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [Trigia], [Dagiao]) VALUES (4, 4, CAST(N'2014-03-25T00:00:00' AS SmallDateTime), CAST(N'2014-03-29T00:00:00' AS SmallDateTime), N'Võ Viết Minh', N'123 Xóm Đất', N'01664333222', 0, CAST(5382000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([Id], [MaGH], [MaSP], [SoLuong], [Thanhtien], [NgayMua]) VALUES (4, N'9', 25, 1, CAST(11990000 AS Decimal(18, 0)), CAST(N'2017-10-04T21:25:00' AS SmallDateTime))
INSERT [dbo].[GioHang] ([Id], [MaGH], [MaSP], [SoLuong], [Thanhtien], [NgayMua]) VALUES (5, N'9', 16, 1, CAST(12990000 AS Decimal(18, 0)), CAST(N'2017-10-04T21:26:00' AS SmallDateTime))
INSERT [dbo].[GioHang] ([Id], [MaGH], [MaSP], [SoLuong], [Thanhtien], [NgayMua]) VALUES (6, N'9', 19, 1, CAST(16700000 AS Decimal(18, 0)), CAST(N'2017-10-04T21:28:00' AS SmallDateTime))
INSERT [dbo].[GioHang] ([Id], [MaGH], [MaSP], [SoLuong], [Thanhtien], [NgayMua]) VALUES (7, N'a5dff8fe-4f00-4ab3-aeeb-1b48c989a9dd', 14, 1, CAST(8990000 AS Decimal(18, 0)), CAST(N'2017-10-07T22:15:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (1, N'DungIT', N'123123', N'hacker.handsome.93@gmail.com', N'Đào Anh Dũng', N'123 Xóm lều', N'01659020020', N'241351483', CAST(N'1993-03-06T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-04T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/Dung.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (2, N'PhetIT', N'123123', N'PhetIT@yahoo.com', N'Dương Thành Phết', N'123 Xóm lá', N'0918158670', N'245475951', CAST(N'1978-10-02T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-25T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (3, N'AnhIT', N'123123', N'AnhIT@yahoo.com', N'Trần Minh Anh', N'123 Xóm chùa', N'0972000449', N'245475951', CAST(N'1988-08-05T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-25T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (4, N'MinhIT', N'123123', N'MinhIT@yahoo.com', N'Võ Viết Minh', N'123 Xóm Đất', N'01664333222', N'245475951', CAST(N'1991-06-25T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-25T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (5, N'NgaIT', N'123123', N'NgaIT@yahoo.com', N'Trần Thu Nga', N'123 Xóm mít', N'0975147555', N'254751984', CAST(N'1990-08-20T00:00:00' AS SmallDateTime), 0, CAST(N'2014-03-27T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (6, N'SangIT', N'123123', N'SangIT@yahoo.com', N'Võ Tấn Sang', N'123 Xóm vịt', N'0918158670', N'249564128', CAST(N'1979-10-02T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-27T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (7, N'HienIT', N'123123', N'HienIT@yahoo.com', N'Phạm Thị Hiền', N'123 Xóm cóc', N'0905475135', N'547124987', CAST(N'1985-02-10T00:00:00' AS SmallDateTime), 0, CAST(N'2014-03-27T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (8, N'KhoaIT', N'123123', N'KhoaIT@yahoo.com', N'Phạm Đăng Khoa', N'123 Xóm liều', N'0983547854', N'475135947', CAST(N'1996-01-20T00:00:00' AS SmallDateTime), 1, CAST(N'2014-03-27T00:00:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 0)
INSERT [dbo].[KhachHang] ([MaKH], [Username], [Password], [Email], [HoTen], [DiaChi], [DienThoai], [CMND], [NgaySinh], [GioiTinh], [NgayDangKy], [Avatar], [AnHien]) VALUES (9, N'n0thing123', N'123456159', N'asd@gmail.com', N'phuc', N'ffff', N'01887338791', N'111111111', CAST(N'2011-01-01T00:00:00' AS SmallDateTime), 1, CAST(N'2017-10-04T20:36:00' AS SmallDateTime), N'/Content/Images/Upload/avatar.jpg', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (1, 1, N'/Content/Images/Upload/Dung.jpg', N'Đào Anh Dũng', N'Điện thoại Iphone 4s 16gb còn hàng không Admin', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 1, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (2, 1, N'/Content/Images/Upload/Avatar_Admin.jpg', N'Đào Anh Dũng', N'Điện thoại Iphone 4s 16gb đã hết hàng, chỉ còn 8gb nhé bạn', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 1, 1, 1, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (3, 1, N'/Content/Images/Upload/Dung.jpg', N'Đào Anh Dũng', N'Cấu hình loại 8gb có thua gì loại 16gb không thế admin', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 1, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (4, 1, N'/Content/Images/Upload/Avatar_Admin.jpg', N'Đào Anh Dũng', N'Cấu hình như nhau chỉ dung lượng khác nhau thôi nhé bạn', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 1, 0, 1, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (5, 2, N'/Content/Images/Upload/avatar.jpg', N'Dương Thành Phết', N'Điện thoại Iphone 4s 16gb còn hàng không Admin', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 0, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (6, 3, N'/Content/Images/Upload/avatar.jpg', N'Trần Minh Anh', N'Tôi cần mua lumia 520 số lượng lớn giá sỉ', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 0, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (7, 4, N'/Content/Images/Upload/avatar.jpg', N'Võ Viết Minh', N'Website đẹp thế, cho xin cái source đi admin :))', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 0, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (8, 5, N'/Content/Images/Upload/avatar.jpg', N'Trần Thu Nga', N'Công ty có bán iphone 6 không thế admin', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 0, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (9, 6, N'/Content/Images/Upload/avatar.jpg', N'Võ Tấn Sang', N'Admin check đơn hàng dùm tôi nhé, vừa đặt hàng xong đấy', CAST(N'2014-03-25T00:00:00' AS SmallDateTime), 0, 1, 0, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (10, 9, N'/Content/Images/Upload/avatar.jpg', N'phuc', N'<p>thử</p>
', CAST(N'2017-10-04T20:37:00' AS SmallDateTime), 0, 1, 1, 1)
INSERT [dbo].[LienHe] ([MaLH], [MaKH], [Avatar], [TenNguoiGui], [NoiDung], [NgayGui], [LuotGui], [DaDocKH], [DaDocAD], [Anhien]) VALUES (11, 9, N'/Content/Images/Upload/Avatar_Admin.jpg', N'Đào Anh Dũng', N'<p>111</p>
', CAST(N'2017-10-04T20:37:00' AS SmallDateTime), 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (1, N'Trang chủ', N'/Home', 1)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (2, N'Apple', N'/Home/Producer/1', 2)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (3, N'HTC', N'/Home/Producer/2', 3)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (4, N'Nokia', N'/Home/Producer/3', 4)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (5, N'Samsung', N'/Home/Producer/4', 5)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (6, N'Sony', N'/Home/Producer/5', 6)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (7, N'Hãng khác', N'/Home/Producer/6', 7)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (8, N'Khuyến mãi', N'/Home/Promotions', 8)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (9, N'Tin công nghệ', N'/Home/News', 9)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (10, N'Giới thiệu', N'/Home/About', 10)
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [url], [Thutu]) VALUES (11, N'Liên hệ', N'/Home/Contact', 11)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (1, N'Apple', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (2, N'HTC', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (3, N'Nokia', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (4, N'Samsung', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (5, N'Sony', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (6, N'khác', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (7, N'Hồ Cẩm Đào', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (8, N'HKPhone', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (9, N'LG', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (10, N'OPPO', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (11, N'Gionee', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (12, N'Lenovo', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (13, N'Mobell', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (14, N'Mobiistar', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (15, N'Q-Mobile', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [AnHien]) VALUES (16, N'HiPhone', 0)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[PhanQuyen_Admin] ON 

INSERT [dbo].[PhanQuyen_Admin] ([MaPQ], [MaAdmin], [PQ_Menu], [PQ_Slider], [PQ_NhaSanXuat], [PQ_SanPham], [PQ_KhachHang], [PQ_DonHang], [PQ_TinTuc], [PQ_QuangCao], [PQ_LienHe], [PQ_GioiThieu], [PQ_QuanTriAdmin], [PQ_SiteMap]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen_Admin] ([MaPQ], [MaAdmin], [PQ_Menu], [PQ_Slider], [PQ_NhaSanXuat], [PQ_SanPham], [PQ_KhachHang], [PQ_DonHang], [PQ_TinTuc], [PQ_QuangCao], [PQ_LienHe], [PQ_GioiThieu], [PQ_QuanTriAdmin], [PQ_SiteMap]) VALUES (2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[PhanQuyen_Admin] OFF
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([MaQC], [TenQC], [TenCty], [UrlHinh], [LinkUrl], [vitri], [Ngaybatdau], [Ngayhethan], [AnHien]) VALUES (1, N'Điện thoại Lumia', N'Nokia', N'/Content/Images/QuangCao/Qc1.gif', N'http://www.nokia.com/', N'1', CAST(N'2014-03-22T00:00:00' AS SmallDateTime), CAST(N'2015-03-22T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (1, N'iPhone 5S 64GB', N'/Content/Images/Apple/iphone-5s-64gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone5s/iPhone-5S-360-org-1.jpg', N'" /> </a>', CAST(22290000 AS Decimal(18, 0)), CAST(22500000 AS Decimal(18, 0)), N'Màn hình:	DVGA, 4.0", 640 x 1136 pixels
CPU:	Apple A7, 2 nhân, 1.3 GHz
RAM	1 GB
Hệ điều hành:	iOS 7.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	64 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	1560 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60549/Kit/tinh-nang-iphone-5S.jpg"><table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">iOS 7.0</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa, Tiếng Thái, Tiếng Nhật</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LED-backlit IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">DVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">640 x 1136 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.3 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Apple A7</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR G6430</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">64 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">123.8 x 58.6 x 7.6 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">112</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1560 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Nano SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">USB 2.0</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">iPhone 5</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Dịch vụ lưu trữ đám mây iCloud<br>Mở khoá bằng dấu vân tay<br>Micro chuyên dụng chống ồn<br>Chỉnh sửa hình ảnh, video</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center"><a title="iphone 5s" href="#" target="_blank">iPhone&nbsp;5S</a> – Chuyên nghiệp và mạnh mẽ</h2><p style="text-align: justify;" align=""><strong><br>iPhone&nbsp;5S và iPhone 5C </strong>chính là hai nhân tố tâm điểm khiến thị trường di động náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản iPhone trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của <a title="iPhone" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a> 5, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.</p><p style="text-align: justify;" align=""><br>Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong>iPhone&nbsp;5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p><p align="center"><img title="iPhone 5S bản nâng cấp đáng giá của iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg" alt="iPhone 5S bản nâng cấp đáng giá của iPhone 5"> <br><em>iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>&nbsp;<h3><br>Thiết kế nguyên khối cao cấp</h3><p style="text-align: justify;" align="">Siêu phẩm<strong> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong>iPhone&nbsp;5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm.</p><p style="text-align: justify;" align=""><br>Chiếc <a title="Điện thoại di động" href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p><p align="center"><img title="Thiết kế tổng thể tương tự iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" alt="Thiết kế tổng thể thì tương tự iPhone 5"> <br><em>Thiết kế tổng thể thì tương tự iPhone 5</em></p>&nbsp;<h3><br>Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3><p style="text-align: justify;" align="">Trước thời điểm ra mắt cảm biến Touch ID trên <strong>iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p><p align="center"><img title="Phím Home của Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" alt="Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt"> <br><em>Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p><p style="text-align: justify;" align=""><br>Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong>5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p><p align="center"><img title="Iphone 5S với cảm biến Touch ID dưới nút Home" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" alt="Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home"> <br><em>Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p><p style="text-align: justify;" align=""><br>Nút Home của máy<strong> </strong>sẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào <strong>iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. Apple cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p><p align="center"><img title="Iphone 5S chỉ mỏng 7.6mm" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" alt="Thân máy của Iphone 5S chỉ mỏng 7.6mm"><br><em>Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>&nbsp;<h3><br>Bộ xử lí A7 64-bit mạnh mẽ</h3><p style="text-align: justify;" align="">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong>iPhone 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ RAM tối đa lên 4GB.</p><p align="center"><img title="Chip A7 mới trên Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" alt="Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn"> <br><em>Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p><p style="text-align: justify;" align=""><br>Chip A7 64-bit của <a title="Apple" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a> sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong>IPhone</strong><strong> </strong><strong>5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p><p align="center"><img title="Chip A7 giúp Iphone 5S chạy mượt mà" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" alt="Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà"> <br><em>Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>&nbsp;<h3 align=""><br>Tối ưu thời gian dùng pin</h3><p style="text-align: justify;" align=""><strong>Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong>iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong>Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại 3G, lướt web với kết nối LTE, Wifi với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p><p align="center"><img title="Chất lượng pin của iPhone 5S là khá tốt" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" alt="Chất lượng pin của iPhone 5S là khá tốt"> <br><em>Chất lượng pin của iPhone 5S là khá tốt</em></p>&nbsp;<h3><br>Màn hình IPS 4 inch cực kì sắc nét</h3><p style="text-align: justify;" align="">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong> 5S</strong> màn hình IPS độ phân giải 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong>iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p><p style="text-align: justify;" align=""><br>Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong>5S</strong>.<strong></strong></p><p align="center"><strong><img title="Màn hình Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" alt="Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay"></strong> <br><em>Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>&nbsp;<h3><br>Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3><p style="text-align: justify;" align="">Không chạy đua theo xu thế camera khủng như các thiết bị cao cấp khác như <strong>Samsung Galaxy S4</strong>, <strong>Nokia Lumia 925</strong>, và đặc biệt là <strong>Lumia 1020</strong>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong>iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p><p style="text-align: justify;" align=""><br>Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p><p align="center"><img title="Camera phía sau Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" alt="Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng"> <br><em>Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p><p style="text-align: justify;" align=""><strong><br>iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong>iPhone 5</strong>, smartphone cao cấp này mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5.</p><p align="right"><strong> Trung Hiếu</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế cao cấp, nguyên khối, sang trọng.</li>
	<li>Màn hình 4 inch, độ phân giải cao, chất lượng hình ảnh tự nhiên, sắc nét.</li>
	<li>Camera 8MP vượt trội với cảm biến lớn bắt sáng rất tốt cùng đèn flash kép.</li>
	<li>Bộ xử lý mới nhất A7 của Apple đảm bảo máy chạy mượt mà, tốc độ cao.</li>
	<li>Nút Home có nhận diện dấu vân tay.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Giá thành cao.</li>
	<li>Vỏ máy dễ bị trầy.</li>
</ul></td></tr></tbody></table>', 1, 99, 5, 0, 3, CAST(N'2014-02-25T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (2, N'iPhone 5S 32GB', N'/Content/Images/Apple/iphone-5s-32gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone5s/iPhone-5S-360-org-1.jpg', N'" /> </a>', CAST(19490000 AS Decimal(18, 0)), CAST(19000000 AS Decimal(18, 0)), N'Màn hình:	DVGA, 4.0", 640 x 1136 pixels
CPU:	Apple A7, 2 nhân, 1.3 GHz
RAM	1 GB
Hệ điều hành:	iOS 7.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	1560 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60457/Kit/tinh-nang-iphone-5S.jpg"><table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">iOS 7.0</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa, Tiếng Thái, Tiếng Nhật</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LED-backlit IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">DVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">640 x 1136 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.3 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Apple A7</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR G6430</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">123.8 x 58.6 x 7.6 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">112</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1560 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Nano SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">USB 2.0</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">iPhone 5</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Dịch vụ lưu trữ đám mây iCloud<br>Mở khoá bằng dấu vân tay<br>Micro chuyên dụng chống ồn<br>Chỉnh sửa hình ảnh, video</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center"><a title="iphone 5s" href="#" target="_blank">iPhone&nbsp;5S</a> – Chuyên nghiệp và mạnh mẽ</h2><p align=""><strong><br>iPhone&nbsp;5S và iPhone 5C </strong>chính là hai nhân tố tâm điểm khiến thị trường di động náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản <a title="iphone" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a> trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của iPhone 5, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt. Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong>iPhone&nbsp;5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p><p align="center"><br><img title="iPhone 5S bản nâng cấp đáng giá của iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg" alt="iPhone 5S bản nâng cấp đáng giá của iPhone 5"> <br><em>iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>&nbsp;<h3><br>Thiết kế nguyên khối cao cấp</h3><p align="">Siêu phẩm<strong> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong>iPhone&nbsp;5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm. Chiếc <a href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p><p align="center"><br><img title="Thiết kế tổng thể tương tự iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" alt="Thiết kế tổng thể thì tương tự iPhone 5"> <br><em>Thiết kế tổng thể thì tương tự iPhone 5</em></p>&nbsp;<h3><br>Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3><p align="">Trước thời điểm ra mắt cảm biến Touch ID trên <strong>iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p><p align="center"><br><img title="Phím Home của Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" alt="Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt"> <br><em>Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p><p align=""><br>Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong>5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p><p align="center"><br><img title="Iphone 5S với cảm biến Touch ID dưới nút Home" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" alt="Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home"> <br><em>Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p><p align=""><br>Nút Home của máy<strong> </strong>sẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào <strong>iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. <a title="Apple" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a> cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p><p align="center"><br><img title="Iphone 5S chỉ mỏng 7.6mm" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" alt="Thân máy của Iphone 5S chỉ mỏng 7.6mm"><br><em>Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>&nbsp;<h3><br>Bộ xử lí A7 64-bit mạnh mẽ</h3><p align="">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong><a title="iphone" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a> 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ RAM tối đa lên 4GB.</p><p align="center"><br><img title="Chip A7 mới trên Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" alt="Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn"> <br><em>Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p><p align=""><br>Chip A7 64-bit của Apple sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong>IPhone</strong><strong> </strong><strong>5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p><p align="center"><br><img title="Chip A7 giúp Iphone 5S chạy mượt mà" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" alt="Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà"> <br><em>Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>&nbsp;<h3 align=""><br>Tối ưu thời gian dùng pin</h3><p align=""><strong>Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong>iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong>Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại 3G, lướt web với kết nối LTE, Wifi với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p><p align="center"><br><img title="Chất lượng pin của iPhone 5S là khá tốt" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" alt="Chất lượng pin của iPhone 5S là khá tốt"> <br><em>Chất lượng pin của iPhone 5S là khá tốt</em></p>&nbsp;<h3><br>Màn hình IPS 4 inch cực kì sắc nét</h3><p align="">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong> 5S</strong> màn hình IPS độ phân giải 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong>iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p><p align=""><br>Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong>5S</strong>.<strong></strong></p><p align="center"><strong><br><img title="Màn hình Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" alt="Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay"></strong> <br><em>Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>&nbsp;<h3><br>Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3><p align="">Không chạy đua theo xu thế camera khủng như các thiết bị cao cấp khác như <strong>Samsung Galaxy S4</strong>, <strong>Nokia Lumia 925</strong>, và đặc biệt là <strong>Lumia 1020</strong>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong>iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p><p align=""><br>Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p><p align="center"><br><img title="Camera phía sau Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" alt="Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng"> <br><em>Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p><p align=""><strong><br>iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong>iPhone 5</strong>, smartphone cao cấp này mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5.</p><p align="right"><strong> Trung Hiếu</strong></p><p align="right"><br></p><p align="right"></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế cao cấp, nguyên khối, sang trọng.</li>
	<li>Màn hình 4 inch, độ phân giải cao, chất lượng hình ảnh tự nhiên, sắc nét.</li>
	<li>Camera 8MP vượt trội với cảm biến lớn bắt sáng rất tốt cùng đèn flash kép.</li>
	<li>Bộ xử lý mới nhất A7 của Apple đảm bảo máy chạy mượt mà, tốc độ cao.</li>
	<li>Nút Home có nhận diện dấu vân tay.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Giá thành cao.</li>
	<li>Vỏ máy dễ bị trầy.</li>
</ul></td></tr></tbody></table>', 1, 99, 3, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (3, N'iPhone 5S 16GB', N'/Content/Images/Apple/iphone-5s-16gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone5s/iPhone-5S-360-org-1.jpg', N'" /> </a>', CAST(16990000 AS Decimal(18, 0)), CAST(15500000 AS Decimal(18, 0)), N'Màn hình:	DVGA, 4.0", 640 x 1136 pixels
CPU:	Apple A7, 2 nhân, 1.3 GHz
RAM	1 GB
Hệ điều hành:	iOS 7.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	1560 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60549/Kit/tinh-nang-iphone-5S.jpg"><table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">iOS 7.0</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa, Tiếng Thái, Tiếng Nhật</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LED-backlit IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">DVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">640 x 1136 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.3 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Apple A7</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR G6430</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">123.8 x 58.6 x 7.6 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">112</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1560 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Nano SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">USB 2.0</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">iPhone 5</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Dịch vụ lưu trữ đám mây iCloud<br>Mở khoá bằng dấu vân tay<br>Micro chuyên dụng chống ồn<br>Chỉnh sửa hình ảnh, video</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center"><a title="iphone 5s" href="#" target="_blank">iPhone&nbsp;5S</a> – Chuyên nghiệp và mạnh mẽ</h2><p style="text-align: justify;" align=""><strong><br>iPhone&nbsp;5S và iPhone 5C </strong>chính là hai nhân tố tâm điểm khiến thị trường di động náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản iPhone trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của <a title="iPhone" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a> 5, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.</p><p style="text-align: justify;" align=""><br>Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong>iPhone&nbsp;5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p><p align="center"><img title="iPhone 5S bản nâng cấp đáng giá của iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg" alt="iPhone 5S bản nâng cấp đáng giá của iPhone 5"> <br><em>iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>&nbsp;<h3><br>Thiết kế nguyên khối cao cấp</h3><p style="text-align: justify;" align="">Siêu phẩm<strong> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong>iPhone&nbsp;5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm.</p><p style="text-align: justify;" align=""><br>Chiếc <a title="Điện thoại di động" href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p><p align="center"><img title="Thiết kế tổng thể tương tự iPhone 5" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" alt="Thiết kế tổng thể thì tương tự iPhone 5"> <br><em>Thiết kế tổng thể thì tương tự iPhone 5</em></p>&nbsp;<h3><br>Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3><p style="text-align: justify;" align="">Trước thời điểm ra mắt cảm biến Touch ID trên <strong>iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p><p align="center"><img title="Phím Home của Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" alt="Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt"> <br><em>Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p><p style="text-align: justify;" align=""><br>Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong>5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p><p align="center"><img title="Iphone 5S với cảm biến Touch ID dưới nút Home" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" alt="Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home"> <br><em>Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p><p style="text-align: justify;" align=""><br>Nút Home của máy<strong> </strong>sẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào <strong>iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. Apple cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p><p align="center"><img title="Iphone 5S chỉ mỏng 7.6mm" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" alt="Thân máy của Iphone 5S chỉ mỏng 7.6mm"><br><em>Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>&nbsp;<h3><br>Bộ xử lí A7 64-bit mạnh mẽ</h3><p style="text-align: justify;" align="">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong>iPhone 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ RAM tối đa lên 4GB.</p><p align="center"><img title="Chip A7 mới trên Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" alt="Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn"> <br><em>Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p><p style="text-align: justify;" align=""><br>Chip A7 64-bit của <a title="Apple" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a> sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong>IPhone</strong><strong> </strong><strong>5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p><p align="center"><img title="Chip A7 giúp Iphone 5S chạy mượt mà" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" alt="Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà"> <br><em>Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>&nbsp;<h3 align=""><br>Tối ưu thời gian dùng pin</h3><p style="text-align: justify;" align=""><strong>Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong>iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong>Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại 3G, lướt web với kết nối LTE, Wifi với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p><p align="center"><img title="Chất lượng pin của iPhone 5S là khá tốt" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" alt="Chất lượng pin của iPhone 5S là khá tốt"> <br><em>Chất lượng pin của iPhone 5S là khá tốt</em></p>&nbsp;<h3><br>Màn hình IPS 4 inch cực kì sắc nét</h3><p style="text-align: justify;" align="">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong> 5S</strong> màn hình IPS độ phân giải 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong>iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p><p style="text-align: justify;" align=""><br>Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong>5S</strong>.<strong></strong></p><p align="center"><strong><img title="Màn hình Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" alt="Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay"></strong> <br><em>Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>&nbsp;<h3><br>Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3><p style="text-align: justify;" align="">Không chạy đua theo xu thế camera khủng như các thiết bị cao cấp khác như <strong>Samsung Galaxy S4</strong>, <strong>Nokia Lumia 925</strong>, và đặc biệt là <strong>Lumia 1020</strong>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong>iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p><p style="text-align: justify;" align=""><br>Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p><p align="center"><img title="Camera phía sau Iphone 5S" src="http://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" alt="Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng"> <br><em>Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p><p style="text-align: justify;" align=""><strong><br>iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong>iPhone 5</strong>, smartphone cao cấp này mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5.</p><p align="right"><strong> Trung Hiếu</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế cao cấp, nguyên khối, sang trọng.</li>
	<li>Màn hình 4 inch, độ phân giải cao, chất lượng hình ảnh tự nhiên, sắc nét.</li>
	<li>Camera 8MP vượt trội với cảm biến lớn bắt sáng rất tốt cùng đèn flash kép.</li>
	<li>Bộ xử lý mới nhất A7 của Apple đảm bảo máy chạy mượt mà, tốc độ cao.</li>
	<li>Nút Home có nhận diện dấu vân tay.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Giá thành cao.</li>
	<li>Vỏ máy dễ bị trầy.</li>
</ul></td></tr></tbody></table>', 1, 99, 1, 0, 0, CAST(N'2014-02-25T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (4, N'iPhone 5C 16GB', N'/Content/Images/Apple/iphone-5c-16gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone5s/iPhone-5S-360-org-1.jpg', N'" /> </a>', CAST(12000000 AS Decimal(18, 0)), CAST(11680000 AS Decimal(18, 0)), N'<p>M&agrave;n h&igrave;nh: DVGA, 4.0&quot;, 640 x 1136 pixels CPU: Apple A6, 2 nh&acirc;n, 1.3 GHz RAM 1 GB Hệ điều h&agrave;nh: iOS 7.0 Camera ch&iacute;nh: 8.0 MP, Quay phim FullHD 1080p@30fps Camera phụ: 1.2 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i đến: Kh&ocirc;ng Dung lượng pin: 1560 mAh</p>
', N'<p><img src="http://cdn.tgdd.vn/Products/Images/42/60543/Kit/iPhone-5C-mo-ta-chuc-nang.jpg" /></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td rowspan="2">
			<p>Th&ocirc;ng tin chung</p>
			</td>
			<td>Hệ điều h&agrave;nh</td>
			<td>iOS 7.0</td>
		</tr>
		<tr>
			<td>
			<p>Ng&ocirc;n ngữ</p>
			</td>
			<td>Tiếng Việt, Tiếng Anh, Tiếng Hoa, Tiếng Th&aacute;i, Tiếng Nhật</td>
		</tr>
		<tr>
			<td rowspan="6">
			<p>M&agrave;n h&igrave;nh</p>
			</td>
			<td>Loại m&agrave;n h&igrave;nh</td>
			<td>LED-backlit IPS LCD</td>
		</tr>
		<tr>
			<td>
			<p>M&agrave;u m&agrave;n h&igrave;nh</p>
			</td>
			<td>16 triệu m&agrave;u</td>
		</tr>
		<tr>
			<td>
			<p>Chuẩn m&agrave;n h&igrave;nh</p>
			</td>
			<td>DVGA</td>
		</tr>
		<tr>
			<td>
			<p>Độ ph&acirc;n giải</p>
			</td>
			<td>640 x 1136 pixels</td>
		</tr>
		<tr>
			<td>
			<p>M&agrave;n h&igrave;nh rộng</p>
			</td>
			<td>4.0&quot;</td>
		</tr>
		<tr>
			<td>
			<p>C&ocirc;ng nghệ cảm ứng</p>
			</td>
			<td>Cảm ứng điện dung đa điểm</td>
		</tr>
		<tr>
			<td rowspan="6">
			<p>Chụp h&igrave;nh &amp; Quay phim</p>
			</td>
			<td>Camera sau</td>
			<td>8.0 MP</td>
		</tr>
		<tr>
			<td>
			<p>Camera trước</p>
			</td>
			<td>1.2 MP</td>
		</tr>
		<tr>
			<td>
			<p>Đ&egrave;n Flash</p>
			</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>
			<p>T&iacute;nh năng camera</p>
			</td>
			<td>Tự động lấy n&eacute;t, chạm lấy n&eacute;t<br />
			nhận diện khu&ocirc;n mặt</td>
		</tr>
		<tr>
			<td>
			<p>Quay phim</p>
			</td>
			<td>Quay phim FullHD 1080p@30fps</td>
		</tr>
		<tr>
			<td>
			<p>Videocall</p>
			</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td rowspan="5">
			<p>CPU &amp; RAM</p>
			</td>
			<td>Tốc độ CPU</td>
			<td>1.3 GHz</td>
		</tr>
		<tr>
			<td>
			<p>Số nh&acirc;n</p>
			</td>
			<td>2 nh&acirc;n</td>
		</tr>
		<tr>
			<td>
			<p>Chipset</p>
			</td>
			<td>Apple A6</td>
		</tr>
		<tr>
			<td>
			<p>RAM</p>
			</td>
			<td>1 GB</td>
		</tr>
		<tr>
			<td>
			<p>Chip đồ họa (GPU)</p>
			</td>
			<td>PowerVR SGX 543MP3</td>
		</tr>
		<tr>
			<td rowspan="4">
			<p>Bộ nhớ &amp; Lưu trữ</p>
			</td>
			<td>Danh bạ</td>
			<td>Kh&ocirc;ng giới hạn</td>
		</tr>
		<tr>
			<td>
			<p>Bộ nhớ trong (ROM)</p>
			</td>
			<td>16 GB</td>
		</tr>
		<tr>
			<td>
			<p>Thẻ nhớ ngo&agrave;i</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td>
			<p>Hỗ trợ thẻ tối đa</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td rowspan="3">
			<p>Thiết kế &amp; Trọng lượng</p>
			</td>
			<td>Kiểu d&aacute;ng</td>
			<td>Thanh + Cảm ứng</td>
		</tr>
		<tr>
			<td>
			<p>K&iacute;ch thước</p>
			</td>
			<td>124.4 x 59.2 x 9 mm</td>
		</tr>
		<tr>
			<td>
			<p>Trọng lượng (g)</p>
			</td>
			<td>132</td>
		</tr>
		<tr>
			<td rowspan="3">
			<p>Th&ocirc;ng tin pin</p>
			</td>
			<td>Loại pin</td>
			<td>Pin chuẩn Li-Ion</td>
		</tr>
		<tr>
			<td>
			<p>Dung lượng pin</p>
			</td>
			<td>1510 mAh</td>
		</tr>
		<tr>
			<td>
			<p>Pin c&oacute; thể th&aacute;o rời</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td rowspan="13">
			<p>Kết nối &amp; Cổng giao tiếp</p>
			</td>
			<td>3G</td>
			<td>DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
		</tr>
		<tr>
			<td>
			<p>4G</p>
			</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>
			<p>Loại Sim</p>
			</td>
			<td>Nano SIM</td>
		</tr>
		<tr>
			<td>
			<p>Khe gắn Sim</p>
			</td>
			<td>1 Sim</td>
		</tr>
		<tr>
			<td>
			<p>Wifi</p>
			</td>
			<td>Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot</td>
		</tr>
		<tr>
			<td>
			<p>GPS</p>
			</td>
			<td>A-GPS v&agrave; GLONASS</td>
		</tr>
		<tr>
			<td>
			<p>Bluetooth</p>
			</td>
			<td>V4.0 with A2DP</td>
		</tr>
		<tr>
			<td>
			<p>GPRS/EDGE</p>
			</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>
			<p>Jack tai nghe</p>
			</td>
			<td>3.5 mm</td>
		</tr>
		<tr>
			<td>
			<p>NFC</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td>
			<p>Kết nối USB</p>
			</td>
			<td>USB 2.0</td>
		</tr>
		<tr>
			<td>
			<p>Kết nối kh&aacute;c</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td>
			<p>Cổng sạc</p>
			</td>
			<td>iPhone 5</td>
		</tr>
		<tr>
			<td rowspan="6">
			<p>Giải tr&iacute; &amp; Ứng dụng</p>
			</td>
			<td>Xem phim</td>
			<td>MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
		</tr>
		<tr>
			<td>
			<p>Nghe nhạc</p>
			</td>
			<td>MP3, WAV, WMA, eAAC+</td>
		</tr>
		<tr>
			<td>
			<p>Ghi &acirc;m</p>
			</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>
			<p>Giới hạn cuộc gọi</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td>
			<p>FM radio</p>
			</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td>
			<p>Chức năng kh&aacute;c</p>
			</td>
			<td>Mạng x&atilde; hội ảo<br />
			Dịch vụ lưu trữ đ&aacute;m m&acirc;y iCloud<br />
			Micro chuy&ecirc;n dụng chống ồn<br />
			Chỉnh sửa h&igrave;nh ảnh, video</td>
		</tr>
	</tbody>
</table>
', N'<h2><a href="#" target="_blank">iPhone</a> 5C - Trẻ trung, hiện đại, nhưng vẫn đầy sức mạnh</h2>

<p><br />
Trong c&aacute;c sản phẩm của <a href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a>, ngo&agrave;i chiếc m&aacute;y nghe nhạc iPod Nano th&igrave; <strong>iPhone 5C</strong> c&oacute; lẽ l&agrave; sản phẩm m&agrave;u m&egrave; nhất, từ thiết kế cho đến phụ kiện đi k&egrave;m. Với việc c&oacute; th&ecirc;m nhiều m&agrave;u sắc v&agrave; sử dụng vỏ nhựa, <strong>5C</strong> tr&ocirc;ng trẻ trung hơn nhiều so với đ&agrave;n anh của n&oacute; v&agrave; thổi một luồng gi&oacute; mới cho thị trường di động.</p>

<p>&nbsp;</p>

<h3><br />
Thiết kế đầy m&agrave;u sắc mang lại sức sống tươi trẻ</h3>

<p>Phải c&ocirc;ng nhận rằng, <strong>iPhone 5S </strong>sử dụng vỏ nh&ocirc;m tr&ocirc;ng thật sang trọng nhưng nếu n&oacute;i về độ trẻ trung th&igrave; <strong>Apple iPhone 5C</strong> lại chiến thắng tuyệt đối. M&aacute;y sử dụng bộ vỏ nhựa polycarbonat cao cấp với lớp phủ b&oacute;ng bẩy b&ecirc;n ngo&agrave;i.</p>

<p><br />
Tất cả c&aacute;c g&oacute;c cạnh tr&ecirc;n th&acirc;n m&aacute;y đều được v&aacute;t cong nhẹ nh&agrave;ng, chắc chắn bạn sẽ kh&ocirc;ng t&igrave;m thấy một đường n&eacute;t sắc cạnh n&agrave;o tr&ecirc;n <strong> 5C</strong>. Thiết kế n&agrave;y gi&uacute;p người d&ugrave;ng kh&ocirc;ng bị cấn tay khi cầm m&aacute;y n&ecirc;n sẽ thoải m&aacute;i hơn nhiều so với c&aacute;c <a href="http://www.thegioididong.com/dtdd?f=smartphone" target="_blank">smartphone </a>vu&ocirc;ng vức.</p>

<p><strong><img alt="iPhone 5C – Thanh kẹo đa sắc màu" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image002.jpg" /></strong><br />
<em>iPhone 5C &ndash; Thanh kẹo đa sắc m&agrave;u</em></p>

<p><br />
<strong>iPhone 5C </strong>c&oacute; 5 t&ugrave;y chọn m&agrave;u sắc gồm xanh l&aacute;, xanh dương, hồng, v&agrave;ng, trắng. Mỗi m&agrave;u đại diện cho mỗi c&aacute; t&iacute;nh ri&ecirc;ng biệt. Ngoại trừ ph&iacute;m Home, tất cả c&aacute;c ph&iacute;m vật l&yacute; c&ograve;n lại được thiết kế ton-sur-ton với m&agrave;u m&aacute;y n&ecirc;n tạo một sự đồng nhất tuyệt vời. Nh&igrave;n từ xa, thiết bị tr&ocirc;ng kh&ocirc;ng kh&aacute;c g&igrave; một thanh kẹo sắc m&agrave;u.</p>

<p><br />
<img alt="Các góc cạnh trên iPhone 5C được bo tròn nhẹ nhàng" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image004.jpg" /><br />
<em>C&aacute;c g&oacute;c cạnh tr&ecirc;n 5C được bo tr&ograve;n nhẹ nh&agrave;ng</em></p>

<p>&nbsp;</p>

<h3><br />
Hiệu năng mượt m&agrave; với chip A6 v&agrave; hệ điều h&agrave;nh iOS 7</h3>

<p>C&ugrave;ng ra mắt với <a href="http://www.thegioididong.com/dtdd/iphone-5s-32gb" target="_blank">iPhone 5S</a> nhưng <strong>5C </strong>kh&ocirc;ng được sở hữu chip A7 - 64 bit như người anh của n&oacute;. Tuy vậy, cấu h&igrave;nh của <strong>Apple iPhone 5C </strong>vẫn rất mạnh trong c&aacute;c thế hệ iPhone, tương đương với iPhone 5. M&aacute;y sở hữu chip A6 l&otilde;i k&eacute;p, RAM 1 GB, bộ nhớ trong 16GB. Với cấu h&igrave;nh như vậy, m&aacute;y ho&agrave;n to&agrave;n xử l&yacute; mượt m&agrave; c&aacute;c ứng dụng, kh&ocirc;ng k&eacute;m bất kỳ đối thủ n&agrave;o kh&aacute;c.</p>

<p><strong><img alt="Chip A6 có thể xử lý tốt mọi ứng dụng và game trên iPhone 5C" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image006.jpg" /></strong><br />
<em>Chip A6 c&oacute; thể xử l&yacute; tốt mọi ứng dụng v&agrave; game</em></p>

<p><br />
Quan trọng hơn, <strong>iPhone 5C </strong>được c&agrave;i đặt HĐH iOS 7 ngay khi xuất xưởng. <strong>iOS 7</strong> được thiết kế lại ho&agrave;n to&agrave;n mới, tối ưu giao diện, tăng cường trải nghiệm người d&ugrave;ng v&agrave; vẫn đảm bảo độ mượt như truyền thống của Apple. Chắc chắn, với bộ đ&ocirc;i chip A6 v&agrave; iOS 7, bạn sẽ kh&ocirc;ng thể n&agrave;o ph&agrave;n n&agrave;n về hiệu suất hoạt động của iPhone 5C.</p>

<p><img alt="iPhone 5C được trang bị HĐH iOS 7 với phong cách thiết kế phẳng thời thượng" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image008.jpg" /><br />
<em>HĐH iOS 7 với phong c&aacute;ch thiết kế phẳng thời thượng</em></p>

<p>&nbsp;</p>

<h3><br />
M&agrave;n h&igrave;nh LCD 4 inch Retina sắc n&eacute;t cho khả năng hiển thị kh&ocirc;ng thể tốt hơn</h3>

<p>Đối với c&aacute;c sản phẩm nh&agrave; T&aacute;o, m&agrave;n h&igrave;nh lu&ocirc;n l&agrave; yếu tố được đặt l&ecirc;n h&agrave;ng đầu v&agrave; <strong>5C </strong>cũng kh&ocirc;ng phải ngoại lệ, sở hữu m&agrave;n h&igrave;nh LCD k&iacute;ch thước 4 inch độ ph&acirc;n giải Retina (640 x 1136 px). Mặc d&ugrave; chưa đạt đến độ ph&acirc;n giải HD nhưng c&aacute;c c&ocirc;ng nghệ độc quyền từ Apple lu&ocirc;n khiến mọi thứ hiển thị tr&ecirc;n m&agrave;n h&igrave;nh<strong> </strong>thật sự sống động v&agrave; sắc n&eacute;t, kh&ocirc;ng k&eacute;m g&igrave; c&aacute;c si&ecirc;u phẩm Full HD chạy Android.</p>

<p><br />
Đặc biệt, m&agrave;n h&igrave;nh tr&ecirc;n <strong>iPhone 5C </strong>cũng được phủ lớp k&iacute;nh cường lực Gorilla Glass gi&uacute;p bảo vệ bề mặt m&agrave;n h&igrave;nh an to&agrave;n khỏi c&aacute;c t&aacute;c động vật l&yacute; kh&ocirc;ng mong muốn.</p>

<p><strong><img alt="Màn hình Retina trên iPhone 5C hiển thị tốt ở mọi góc nhìn" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image010.jpg" /></strong><br />
<em>M&agrave;n h&igrave;nh Retina hiển thị tốt ở mọi g&oacute;c nh&igrave;n</em></p>

<p>&nbsp;</p>

<h3><br />
Chất lượng h&igrave;nh ảnh tuyệt vời từ camera iSight độ ph&acirc;n giải 8 MP</h3>

<p><strong>Apple iPhone 5C </strong>sở hữu camera iSight 8 MP c&ugrave;ng đ&egrave;n flash LED kh&ocirc;ng thua k&eacute;m g&igrave; iPhone 5 hay 5S. Linh hồn của camera nằm ở thuật to&aacute;n xử l&yacute; h&igrave;nh ảnh b&ecirc;n trong. Khi chụp ảnh, m&aacute;y sẽ tự động c&acirc;n bằng m&agrave;u sắc, xử l&yacute; đến từng đối tượng như da mặt hay bầu trời, gi&uacute;p từng chi tiết tr&ecirc;n ảnh đều ho&agrave;n hảo ngo&agrave;i mong đợi.</p>

<p><strong><img alt="Ứng dụng camera với nhiều tính năng chụp ảnh sáng tạo trên iPhone 5C" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image012.jpg" /></strong><br />
<em>Ứng dụng camera với nhiều t&iacute;nh năng chụp ảnh s&aacute;ng tạo</em></p>

<p><br />
Ngo&agrave;i ra, ứng dụng camera tr&ecirc;n <strong>iPhone 5C </strong>cũng kh&ocirc;ng thiếu c&aacute;c t&iacute;nh năng chụp ảnh s&aacute;ng tạo như panorama, chụp nhiều ảnh chỉ với 1 lần chạm, &aacute;p dụng bộ lọc thời gian thực khi chụp,&hellip;Về khả năng quay video, thiết bị c&oacute; thể quay video chất lượng Full HD, khả năng zoom 3x v&agrave; nhận diện tối đa 10 khu&ocirc;n mặt khi quay phim. Đồng thời, bạn cũng c&oacute; thể chụp ảnh trong khi quay phim một c&aacute;ch tiện lợi.</p>

<p><img alt="Với iPhone 5C, bạn có thể vừa chụp ảnh vừa quay phim cùng lúc" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image014.jpg" /><br />
<em>Với iPhone 5C, bạn c&oacute; thể vừa chụp ảnh vừa quay phim c&ugrave;ng l&uacute;c</em></p>

<p>&nbsp;</p>

<h3><br />
Phụ kiện cover độc đ&aacute;o</h3>

<p>C&ugrave;ng với <strong> 5C</strong>, Apple cũng giới thiệu bộ phụ kiện cover m&agrave;u m&egrave; kh&ocirc;ng k&eacute;m. Chiếc cover n&agrave;y l&agrave;m từ nhựa dẻo, ngo&agrave;i khả năng chống trầy xước, tăng cường độ bền th&igrave; đ&acirc;y c&ograve;n l&agrave; điểm nhấn thời trang cho c&aacute;c bạn trẻ năng động, th&iacute;ch thể hiện c&aacute; t&iacute;nh của m&igrave;nh.</p>

<p><strong><img alt="Phụ kiện cover đầy màu sắc của iPhone 5C" src="http://cdn.tgdd.vn/Products/Images/42/60543/iphone-5c_clip_image016.jpg" /></strong><br />
<em>Phụ kiện cover đầy m&agrave;u sắc</em></p>

<p>&nbsp;</p>

<h3><br />
Đ&aacute;nh gi&aacute; chung</h3>

<p>Như đ&atilde; n&oacute;i, <strong>iPhone</strong> <strong>5C </strong>k&eacute;m lịch l&atilde;m hơn 5S nhưng trẻ trung hơn nhiều lần. Với cấu h&igrave;nh tốt, thiết kế đẹp c&ugrave;ng nhiều t&iacute;nh năng hữu &iacute;ch v&agrave; kho ứng dụng phong ph&uacute;, chắc chắn <strong> 5C</strong> sẽ l&agrave; lựa chọn số một cho c&aacute;c bạn trẻ hoặc những người d&ugrave;ng muốn trải nghiệm HĐH iOS 7.</p>

<p><strong>Anh Tu&acirc;n</strong></p>

<table>
	<tbody>
		<tr>
			<td>
			<h3>Ưu điểm</h3>

			<ul>
				<li>Thiết kế m&agrave;u sắc, trẻ trung, năng động.</li>
				<li>M&agrave;n h&igrave;nh LCD 4 inch Retina sắc n&eacute;t đến từng chi tiết.</li>
				<li>Hiệu năng mượt m&agrave; với chip A6 l&otilde;i k&eacute;p.</li>
				<li>Camera iSight 8 MP cho chất lượng ảnh chụp tuyệt vời.</li>
				<li>Hỗ trợ nhiều loại phụ kiện tiện &iacute;ch.</li>
			</ul>
			</td>
			<td>
			<h3>Nhược điểm</h3>

			<ul>
				<li>Gi&aacute; th&agrave;nh kh&aacute; cao.</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
', 1, 99, 1, 20, 2, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (5, N'iPhone 4S 16GB', N'/Content/Images/Apple/iphone-4S-16gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone4s/dien-thoai-di-dong-iphone-4s-dienmay.com-1-1.jpg', N'" /> </a>', CAST(12290000 AS Decimal(18, 0)), CAST(12500000 AS Decimal(18, 0)), N'Màn hình:	DVGA, 3.5", 640 x 960 pixels
CPU:	Apple A5, 2 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	iOS 7.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	1510 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60686/Kit/iPhone-4s-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">iOS 7.0</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LED-backlit IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">DVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">640 x 960 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">3.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Apple A5</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR SGX543MP3</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">115.2 x 58.6 x 9.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">140</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1420 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 14.4 Mbps; HSUPA, 5.8 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">USB 2.0</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">iPhone 4</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, AAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Hỗ trợ mạng xã hội<br>Chỉnh sửa hình ảnh và video<br>Loại bỏ tiếng ồn ới micro chuyên dụng<br>Google Maps</td>
        </tr>
    </tbody>
</table>', N'<h2 style="text-align: center;">iPhone 4S – Nhanh hơn – Mạnh hơn – Đẳng cấp hơn</h2><p style="text-align: justify;" align=""><br>Được thiết kế không khác gì mấy so với người anh em tiền nhiệm <a href="http://www.thegioididong.com/dtdd/iphone-4-8gb" target="_blank">iPhone 4</a>, <strong>iPhone 4S</strong> với những nâng cấp đáng giá như CPU A5 mạnh mẽ hơn, camera 8.0 MP sắc nét hơn, hệ thống ăng ten được cải tiến cùng cô nàng trợ lý ảo Siri cực kỳ thông minh và hữu ích.</p><p align="center"><img title="iPhone 4S với thiết kế tương tự iPhone 4" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image002.jpg" alt="<strong>iPhone 4S</strong> với thiết kế tương tự iPhone 4" height="541" width="576"><br><em>iPhone 4S với thiết kế tương tự iPhone 4</em></p>&nbsp;<h3 align=""><br>Thiết kế sang trọng, đẳng cấp</h3><p style="text-align: justify;" align=""><strong>iPhone 4S</strong> với thiết kế phần lưng bằng kính, bộ khung kim loại cứng cáp viền quanh máy cùng các góc bo tròn tương tự iPhone 4 khiến máy trông cực kỳ bóng mượt, sang trọng, cao cấp và cầm rất chắc tay. Không những thế, bộ khung viền kim loại xung quanh còn có tác dụng như một hệ thống giúp bắt sóng thoại và wifi.</p><p align="center"><img title="iphone 4s với thiết kế sang trọng và đẳng cấp" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image004.jpg" alt="Thiết kế sang trọng và đẳng cấp" height="328" width="576"> <br><em>Thiết kế sang trọng và đẳng cấp</em></p>&nbsp;<h3><br>Màn hình Retina rực rỡ</h3><p style="text-align: justify;" align="">Vẫn là màn hình Retina 960x640px rộng 3.5 inch 16 triệu màu, cảm ứng đa điểm nhưng với tông màu đen ít tối hơn và màn hình mang sắc xanh nhiều hơn giúp màn hình iPhone 4S trông rực rỡ hơn.</p><p align="center"><img title="iphone 4s sử dụng màn hình retina rực rỡ" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image006.jpg" alt="Màn hình retina rực rỡ" height="301" width="353"> <br><em>Màn hình retina rực rỡ</em></p>&nbsp;<h3 align=""><br>Chíp xử lý A5 mạnh mẽ</h3><p style="text-align: justify;" align=""><strong>iPhone 4S</strong> được trang bị Chip lõi kép A5 1.0GHz cho tốc độ xử lý nhanh gấp 2 lần chip A4 trên iPhone 4 và khả năng xử lý độ họa mạnh mẽ hơn gấp 7 lần giúp mở ứng dụng nhanh hơn, chơi game mượt mà hơn và thời gian chụp ảnh cũng nhanh hơn đáng kể. Bên cạnh đó, tốc độ kêt nối internet của iPhone 4S cũng cao hơn mặc dù máy vẫn sử dụng kết nối Wi-fi chuẩn n, Bluetooth 4.0, hỗ trợ la bàn, GPS, cảm biến ánh sáng, đo gia tốc, cảm biến độ gần…tương tự như iPhone 4.</p><p align="center"><img title="iPhone 4S cho tốc độ internet nhanh hơn" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image008.jpg" alt="Tốc độ internet của <strong>iPhone 4S</strong> nhanh hơn" height="181" width="222"> <br><em>Tốc độ internet của iPhone 4S nhanh hơn</em></p>&nbsp;<h3><br>Camera 8.0 MP xuất sắc</h3><p style="text-align: justify;" align="">Camera của <strong>iPhone 4S</strong> cũng được nâng cấp lên 8.0 MP thay vì 5.0MP như ở iPhone 4 cùng các thiết lập tiêu cự và khẩu độ mới lên đến 2.4 giúp bắt sáng rất tốt cho chất lượng ảnh tăng lên đáng kể, màu sắc trung thực và cực kỳ rõ nét. Bên cạnh đó, tốc độ khởi động và chụp ảnh trên iPhone 4S cũng được tăng cường, giúp người dùng không bỏ lỡ bất kỳ khoảnh khắc nào.</p><p align="center"><img title="iphone 4s được trang bị camera 8.0 MP" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image010.jpg" alt="Camera 8.0 MP" height="319" width="528"> <br><em>Camera 8.0 MP</em></p><p style="text-align: justify;" align=""><br>Không những thế, khả năng bắt hình trong môi trường thiếu sáng được cải thiện rõ rệt cho những bức ảnh không bị vỡ hạt, nhòe ảnh cùng tông màu sáng tối rất cân bằng.</p><p align="center"><img title="iphone 4s cho chất lượng ảnh tốt hơn" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image011.png" alt="Ảnh chụp trong điều kiện thiếu sáng của iPhone 4 (bên trái) và <strong>iPhone 4S</strong> (bên phải)." height="378" width="540"> <br>Ảnh chụp trong điều kiện thiếu sáng của iPhone 4 (bên trái) và iPhone 4S (bên phải).</p><p style="text-align: justify;" align=""><br>Bên cạnh đó, khả năng quay video trên <strong>iPhone 4S</strong> cũng được nâng cấp đáng kể, có thể quay phim full HD 1080p chống rung ấn tượng. Mặc dù vậy, camera trước vẫn không có gì thay đổi với độ phân giải VGA.</p><p align="center"><img title="iphone 4s cho khả năng quay phim chuẩn HD 1080p" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image013.jpg" alt="Quay phim chuẩn HD 1080p" height="245" width="219"> <br><em>Quay phim chuẩn HD 1080p</em></p>&nbsp;<h3><br>Hệ thống ăng ten mới được cải tiến cho chất lượng cuộc gọi tốt hơn</h3><p align="center"><img title="iPhone 4S được trang bị thêm một hệ thống ăng teng" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image015.jpg" alt="<strong>iPhone 4S</strong> được trang bị thêm một hệ thống ăng teng" height="429" width="576"> <br><em>iPhone 4S được trang bị thêm một hệ thống ăng teng</em></p><p style="text-align: justify;" align=""><br>iPhone 4S được trang bị thêm 1 hệ thống ăng ten bên cạnh hệ thống ăng ten hiện có hỗ trợ cả 02 mạng CDMA và GSM giúp máy bắt sóng tốt hơn, cho chất lượng cuộc gọi tốt hơn.</p>&nbsp;<h3><br>Thời lượng pin ấn tượng</h3><p style="text-align: justify;" align="">Thử nghiệm thực tế cho thấy iPhone 4S vẫn có thể trụ được một ngày hoạt động với 16 giờ đàm thoại, duyệt web, download ứng dụng, đồng bộ hóa dữ liệu, nghe nhạc, chơi game…..</p><p align="center"><img title="iphone 4s hoạt động được 16 giờ khi đàm thoại" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image017.jpg" alt="Pin hoạt động 16 giờ đàm thoai" height="333" width="576"><br><em>Pin hoạt động 16 giờ đàm thoai</em></p>&nbsp;<h3><br>Siri – Ra lệnh trên <strong>iPhone 4S</strong> bằng giọng nói</h3><p style="text-align: justify;" align="">Điểm khác biệt khác so với iPhone 4 là <strong>iPhone 4S</strong> được tích hợp cô nàng trợ lý ảo Siri cực kỳ thông minh. Người dùng có thể dụng Siri nhưng môt trợ lý đích thực để tìm đường, đọc và trả lời tin nhắn, đặt lịch hẹn v.v…. với những gì người dùng cần làm là NÓI. Không những hoạt động theo những gì được lập trình sẵn, Siri còn có thể học thêm những gì người dùng nói.</p><p align="center"><img title="iphone 4s với trợ lý ảo Siri cực kỳ thông minh và hữu ích" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image018.png" alt="Trợ lý ảo Siri cực kỳ thông minh và hữu ích" height="474" width="576"> <br><em>Trợ lý ảo Siri cực kỳ thông minh và hữu ích</em></p><p style="text-align: justify;" align=""><br>Không những thế, <strong>iPhone 4S</strong> người dùng còn có thể <strong>chụp ảnh paranoma một cách dễ dàng</strong> và mượt mà với phần mềm paranoma được tích hợp sẵn mà không cần phải cài thêm ứng dụng từ hãng thứ 3...</p><p align="center"><img title="iphone 4s cho khả năng chụp ảnh paranoma siêu dễ dàng" src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image020.jpg" alt="Chụp ảnh paranoma siêu dễ dàng" height="399" width="536"> <br><em>Chụp ảnh paranoma siêu dễ dàng</em></p><h3><br>Một số hình ảnh chụp từ <strong>iPhone 4S</strong></h3><p align="center"><img src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image022.jpg" alt="hình ảnh chụp từ <strong>iPhone 4S</strong>" height="383" width="576"></p>&nbsp;<p align="center"><img src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image024.jpg" alt="hình ảnh chụp từ <strong>iPhone 4S</strong>" height="392" width="576"></p>&nbsp;<p align="center"><img src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image026.jpg" alt="hình ảnh chụp từ <strong>iPhone 4S</strong>" height="355" width="576"></p>&nbsp;<p align="center"><img src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image028.jpg" alt="hình ảnh chụp từ <strong>iPhone 4S</strong>" height="406" width="576"></p>&nbsp;<p align="center"><img src="http://cdn.thegioididong.com/Products/Images/42/54283/iphone-4s_clip_image030.jpg" alt="hình ảnh chụp từ <strong>iPhone 4S</strong>" height="422" width="576"></p>&nbsp;<p align="right"><strong>Dương Yến Nhi</strong><br><strong>Hình ảnh: sưu tầm</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Máy ảnh iSight 8MP xuất sắc.</li>
	<li>Màn hình Retina ấn tượng và sắc nét.</li>
	<li>Trợ lý ảo Siri rất thú vị và hữu ích.</li>
	<li>iOS 5 với nhiều tính năng đáng kể.</li>
	<li>Tích hợp chụp ảnh paranoma.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Thiết kế kim loại và kính đẹp nhưng rất dễ trầy xước.</li>
	<li>Không có 4G.</li>
</ul></td></tr></tbody></table>', 1, 99, 1, 7, 1, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (6, N'iPhone 4 8GB', N'/Content/Images/Apple/iphone-4-8gb.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Apple/Hinh360-iphone4s/dien-thoai-di-dong-iphone-4s-dienmay.com-1-1.jpg', N'" /> </a>', CAST(7990000 AS Decimal(18, 0)), CAST(8500000 AS Decimal(18, 0)), N'Màn hình:	DVGA, 3.5", 640 x 960 pixels
CPU:	Apple A4, 2 nhân, 1.3 GHz
RAM	512 MB
Hệ điều hành:	iOS 7.0
Camera chính:	5.0 MP, Quay phim HD 720p@30fps
Camera phụ:	có
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	1420 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/52136/Kit/iPhone-4-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">iOS 7.0</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LED-backlit IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">DVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">640 x 960 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">3.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét .chạm lấy nét<br>Led video light</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">1 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Apple A4</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR SGX535</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">115.2 x 58.6 x 9.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">137</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Po</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1420 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V2.1 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">USB 2.0</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">iPhone 4</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4, WMV</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, AAC, AAC+, AAC++</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Hỗ trợ mạng xã hội<br>La bàn số</td>
        </tr>
    </tbody>
</table>', N'<h2 style="text-align: center;" align=""><a title="iPhone" href="#" target="_blank">Iphone</a> 4 – Smartphone tạo nên trào lưu</h2><p align="center"><strong><img title="iphone 4" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image001.jpg" alt="" height="239" width="624"></strong></p><p style="text-align: justify;" align=""><br>Kể từ khi ra đời, iPhone dù thế hệ nào luôn được coi là tiêu chuẩn khi nói smartphone và là tiêu chuẩn để các hãng điện thoại khác cải thiện các sản phẩm của mình. Nếu như iPhone ra đời đã tạo nên định nghĩa của việc trải nghiệm smartphone thì <strong>iPhone 4</strong> ra đời đã tạo nên định nghĩa mới cho đẳng cấp trong thiết kế của smartphone.</p>&nbsp;<h3 align=""><br>Thiết kế tinh tế đến từng đường nét</h3><p style="text-align: justify;" align="">iPhone ngay từ thế hệ đầu tiên đến <a href="http://www.thegioididong.com/dtdd/iphone-3gs" target="_blank">iPhone 3GS</a> đều có chung một đặc điểm thiết kế. Tuy chúng đã rất đẹp nhưng đến khi <strong>iPhone 4</strong> ra đời, cái đẹp đã thật sự được Apple định nghĩa lại. Sử dụng chất liệu gương cường lực cho cả 2 mặt trước và sau của máy khiến cho iPhone 4 trông rất sang trọng ngay từ cái nhìn đầu tiên.</p><p align="center"><img title="iPhone 4 với thiết kế đẹp" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image002.jpg" alt="iPhone 4 được Apple chăm chút đến từng đường nét trong thiết kế" height="492" border="0" width="615"><br><em>iPhone 4 được Apple chăm chút đến từng đường nét trong thiết kế</em></p><p style="text-align: justify;" align=""><br>Thiết kế bo tròn ở mặt lưng ở các thế hệ iPhone trước đã được thay thế bằng các đường nét góc cạnh và nam tính hơn với khung bằng kim loại thép không gỉ. Các chi tiết rất nhỏ từ phím nguồn, phím khóa máy và phím âm lượng trên <a title="iPhone" href="http://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a> 4 đều được Apple chăm chút rất kĩ và tỉ mỉ đến từng chi tiết. Các phím này không chỉ được thiết kế đẹp mà còn tạo cảm giác bấm rất êm và thoải mái khi sử dụng.</p>&nbsp;<h3 align=""><br>Màn hình Retina sắc nét và sống động</h3><p style="text-align: justify;" align=""><strong>iPhone 4</strong> là một bước tiến mới của Apple trong công nghệ màn hình. Với công nghệ màn hình Retina (màn hình võng mạc), Apple đã mang tới cho người dùng một trải nghiệm mới trong việc tận hưởng chất lượng hiển thị trên màn hình smartphone. Với kích cỡ màn hình 3,5inch, cùng độ phân giải 960 x 640, mật độ điểm ảnh lên tới 326 ppi, màn hình iPhone 4 cho hình ảnh hiển thị sắc nét và mịn màng đến mức người dùng sẽ không thể cảm nhận được sự hiện diện của các điểm ảnh trên màn hình.</p><p align="center"><img title="iphone 4 cho hình ảnh sắc nét" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image004.jpg" alt="Hình ảnh hiển thị trên iPhone 4 vô cùng sắc nét" height="370" border="0" width="624"><br><em>Hình ảnh hiển thị trên iPhone 4 vô cùng sắc nét</em></p><p style="text-align: justify;" align=""><br>Không chỉ có hình ảnh được hiển thị sắc nét, công nghệ màn hình Retina còn mang đến khả năng hiển thị màu vô cùng chính xác. Chuyên gia hiển thị Dr Raymond Soneira, người sáng lập ra hãng DisplayMate Technologies cho rằng, màn hình Retina của iPhone 4 có khả năng thể hiện chính xác đến 99% dải màu tiêu chuẩn.</p><p align="center"><img title="iphone 4 cho màu sắc trung thực" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image006.jpg" alt="Hình ảnh không chỉ nét hơn mà màu sắc cũng được hiển thị chuẩn hơn" height="380" border="0" width="624"><br><em>Hình ảnh không chỉ nét hơn mà màu sắc cũng được hiển thị chuẩn hơn</em></p>&nbsp;<h3 align=""><br>Camera 5MP với khả năng quay phim HD</h3><p align="center"><img title="iphone 4 với camera hd" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image007.jpg" alt="iPhone 4 được trang bị Camera HD cùng đèn Flash LED" height="399" border="0" width="549"><br><em>iPhone 4 được trang bị Camera HD cùng đèn Flash LED</em></p><p style="text-align: justify;" align=""><br>Được trang bị Camera 5MP cùng đèn Flash LED, <strong>iPhone 4</strong> cho phép tạo ra những bức ảnh chất lượng với thao tác cực kì đơn giản. Khả năng bắt hình và lấy nét cực nhanh cùng với giao diện chụp hình đơn giản, bạn sẽ không phải lo bỏ lỡ bất kì khoảng khắc nào.</p><p align="center"><img title="iphone 4 với khả năng lấy nét nhanh" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image008.png" alt="Camera iphone 4 có khả năng lấy nét nhanh và giao diện chụp hình đơn giản" height="453" border="0" width="650"><br><em>Camera iphone 4 có khả năng lấy nét nhanh và giao diện chụp hình đơn giản</em></p><p style="text-align: justify;" align=""><br>Camera 5MP của iPhone 4 còn cho phép tạo ra những đoạn phim với độ phân giải HD 720p cực kì sắc nét. Ngoài ra, với Camera phụ, không gian địa lí sẽ không là còn là khoảng cách. Chức năng cuộc gọi hình ảnh Video Call hay Face Time sẽ mang bạn và bạn bè, người thân đến gần với nhau hơn bất kể bạn đang ở đâu.</p><p align="center"><img title="ảnh được chụp bởi iPhone 4" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image010.jpg" alt="Ảnh được chụp bởi iPhone 4" height="466" border="0" width="624"><br><em>Ảnh được chụp bởi iPhone 4</em></p>&nbsp;<h3 align=""><br>Mạnh mẽ và tiết kiệm pin với vi xử lí Cortex A8</h3><p style="text-align: justify;" align="">Được trang bị chip xử lí Cortex A8 với tốc độ xử lí lên đến 1GHZ và bộ nhớ RAM 512MB, <strong>iPhone 4</strong> cho khả năng xử lí ứng dụng mượt mà. Xử lí tác vụ đa nhiệm hay chơi game trên hệ điều hành iOS sẽ không còn là vấn đề.</p><p align="center"><img title="iPhone 4 xử lí các tác vụ một cách trơn tru" src="http://cdn.tgdd.vn/Products/Images/42/52136/iphone-4_clip_image011.jpg" alt="Bộ xử lí Cortex A8 cho phép iPhone 4 xử lí các tác vụ một cách trơn tru" height="314" border="0" width="600"><br><em>Bộ xử lí Cortex A8 cho phép iPhone 4 xử lí các tác vụ một cách trơn tru</em></p><p style="text-align: justify;" align=""><br>Với dung lượng pin lên đến 1420mAh, iPhone 4 cho thời gian sử dụng pin rất ấn tượng. iPhone 4 cho thời gian sử dụng đến 300 giờ ở chế độ chờ, 7 giờ đàm thoại ở chế độ 3G và 14 giờ đàm thoại ở chế độ 2G. Ngoài ra, bạn có thể tha hồ lướt web trên iPhone 4 liên tục suốt 6 giờ bằng 3G hay 10 giờ bằng Wifi.</p><p align="right"><strong>Union.</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp, sang trọng.</li>
	<li>Màn hình Retina sắc nét, sống động.</li>
	<li>Thời lượng pin tốt.</li>
	<li>Camera cho hình ảnh đẹp.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Vị trí đặt angten chưa tốt.</li>
	<li>Không có FM Radio.</li>
</ul></td></tr></tbody></table>', 1, 99, 1, 10, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (7, N'HTC One 32GB', N'/Content/Images/HTC/HTC-one-801n-red.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(13990000 AS Decimal(18, 0)), CAST(14800000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 4.7", 1080 x 1920 pixels
CPU:	Qualcomm APQ8064, 4 nhân, 1.7 GHz
RAM	2 GB
Hệ điều hành:	Android 4.1.2 (Jelly Bean)
Camera chính:	4,0 UltraPixel, Quay phim FullHD 1080p@30fps
Camera phụ:	2.1 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	2300 mAh', N'  <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58094/Kit/HTC-One-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.7"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">4,0 UltraPixel</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.1 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, nhận diện khuôn mặt và nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.7 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm APQ8064</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 320</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">137.4 x 68.2 x 9.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">143</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Po</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2300 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br>Mạng xã hội ảo<br>Công nghệ Beats Audio<br>Micro chuyên dụng chống ồn<br>25GB lưu trữ dữ liệu Drobox</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">HTC One – Thiết kế tuyệt đẹp cùng các thành phần cao cấp</h2><p align=""><br>HTC vừa qua đã ra mắt siêu phầm mang tên <strong>HTC One</strong> tại hai sự kiện xảy ra đồng thời ở London và New York. Chiếc điện thoại được cho là có thiết kế đẹp mắt, mạnh mẽ với các thành phần cao cấp.</p><p align=""><br>Có những thành phần được làm thủ công từ kim loại khiến <strong>HTC One</strong> trở nên vô cùng độc đáo. Chính vì thế không thể phủ nhận công sức của nhà sản xuất Đài loan đã dày công nghiên cứu và cho ra “đứa con cưng” của mình.</p><p align="center"><strong><img title="Siêu phẩm HTC One" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one_clip_image002.jpg" alt="HTC One" height="411" width="550"></strong><br><em>HTC One</em></p>&nbsp;<h3 align=""><br>Thiết kế sang trọng</h3><p align="center"><img style="display: inline;" class="lazy" title="htc-one-1-13" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-1-13.jpg" alt="HTC One có thiết kế sang trọng" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-1-13.jpg"><br><em>HTC One với thiết kế thật sự “sexy”</em></p><p align="center"><strong><br><img title="Mặt sau của HTC One" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one_clip_image005.jpg" alt="Mặt sau của HTC One" height="351" width="550"></strong><br><em>Mặt sau của HTC One</em></p><p align=""><br>Hình chữ nhật, phẳng, cực kỳ mỏng và màn hình gần như bao phủ thân máy. Màn hình LCD 4.7 inch, độ phân giải full HD 1080p, sử dụng công nghệ mà công ty gọi là SoLux nhằm cải thiện chất lượng hình ảnh và tạo ra độ phân giải lên đến 468ppi, cao nhất so với tất cả các dòng điện thoại thông minh hiện nay.</p><p align=""><br>HTC cho biết, điều này sẽ giúp <strong>HTC One</strong> tự hào về chất lượng hình ảnh tốt nhất so với bất kỳ điện thoại nào trên thị trường. Số điểm ảnh của <strong>One</strong> còn lớn hơn so với <a href="http://www.thegioididong.com/dtdd/htc-butterfly" target="_blank">Droid DNA</a> (5 inch, 440ppi).</p><p align="center"><img style="display: inline;" class="lazy" title="Vỏ nhôm nguyên khối khiến HTC One trông sang trọng không kém khi đứng cạnh đối thủ Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-va-xperia-z.jpg" alt="htc-one-va-xperia-z" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-va-xperia-z.jpg"><br><em>Vỏ nhôm nguyên khối khiến HTC One trông sang trọng không kém khi đứng cạnh đối thủ Xperia Z</em></p><p align=""><br>Màn hình của <strong>HTC One</strong> có màu sắc sống động, góc nhìn rộng và độ sáng cao. Các chi tiết hình ảnh nhỏ hay to vẫn sắc nét hoàn hảo.</p><p align="center"><img style="display: inline;" class="lazy" title="Màn hình HTC One cho góc nhìn rộng và sắc nét" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-goc-man-hinh-rong.jpg" alt="HTC One có góc nhìn màn hình rộng" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-goc-man-hinh-rong.jpg"><br><em>Màn hình HTC One cho góc nhìn rộng và sắc nét</em></p><p align=""><br>Đặc biệt, bộ khung vỏ của <strong>HTC One</strong> được làm hoàn toàn bằng nhôm nguyên khối, cho cảm giác hết sức chắc chắn và mạnh mẽ. <strong>One</strong> có sẵn các màu như màu đen và bạc, thiết bị có “làn da” kim loại mịn màng bởi được làm thủ công cao cấp.</p><p align="center"><img style="display: inline;" class="lazy" title="loa-duoi-htc-one-1" src="http://cdn.tgdd.vn/Products/Images/42/58094/loa-duoi-htc-one-1.jpg" alt="Loa dưới của HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/loa-duoi-htc-one-1.jpg"><br><em>Loa dưới của HTC One</em></p><p align="center"><img style="display: inline;" class="lazy" title=" loa-tren-htc-one" src="http://cdn.tgdd.vn/Products/Images/42/58094/loa-tren-htc-one.jpg" alt="Loa trên của HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/loa-tren-htc-one.jpg"><br><em>Loa trên</em> <em>của HTC One</em></p><p align=""><br>Ở một phần khác, <strong>HTC One</strong> sử dụng loa kép phía trên và dưới màn hình, hai loa phối hợp cùng nhau để trải nghiệm âm thanh sống động hơn kể cả khi xem phim hoặc nghe nhạc. Kết hợp với bộ khuếch đại âm thanh và công nghệ Beats Audio, HTC đã cho cả “dàn loa” vào trong <strong>One</strong>.</p><p align="center"><img style="display: inline;" class="lazy" title=" htc-beats-audio" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-beats-audio.jpg" alt="HTC One được trang bị âm thanh Beats Audio" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-beats-audio.jpg"><br><em>Âm thanh HDR và Beats Audio trên HTC One hứa hẹn sẽ mang đến những trải nghiệm âm nhạc thật khác biệt</em></p>&nbsp;<h3 align=""><br>Phần cứng mạnh mẽ</h3><p align="center"><img style="display: inline;" class="lazy" title="htc-nut-nguon" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-nut-nguon.jpg" alt="HTC có cấu hình mạnh trong thiết kế rất mỏng" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-nut-nguon.jpg"><br><em>Phím tăng giảm âm lượng nằm trên thiết kế siêu mỏng của HTC one</em></p><p align=""><br>Một điện thoại thông minh hàng đầu sẽ không có giá trị nếu trong máy không được hỗ trợ các thành phần cao cấp. <strong>HTC One</strong> không làm bạn thất vọng khi bên trong máy là bộ vi xử lý lõi tứ mới nhất của nhà sản xuất Qualcomm – <strong>Snapdragon 600 tốc độ 1.7GHz</strong>&nbsp;đi cùng với 2GB RAM. Vi xử lý được biết có điểm số kiểm tra cao xấp xỉ 12.000 điểm. Bởi vậy, không một ứng dụng nào mà có thể gây khó dễ cho <strong>HTC One</strong>.</p><p align="center"><img style="display: inline;" class="lazy" title="canh-tren-htc-one" src="http://cdn.tgdd.vn/Products/Images/42/58094/canh-tren-htc-one.jpg" alt="jack 3.5mm trên htc one" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/canh-tren-htc-one.jpg"><br><em>Cạnh trên của HTC One với Jack cắm âm thanh 3.5mm</em></p><p align=""><br>Pin liền máy dung lượng khá cao 2.300mAh sẽ cho thời lượng sử dụng máy với thời gian dài. HTC Droid DNA có pin 2.020mAh, trong thử nghiệm xem video liên tục, máy có thời lượng là 8 giờ 43 phút. Vậy đối với <strong>HTC One</strong>, pin 2.300mAh, chắc chắn thời lượng pin sẽ kéo dài hơn.</p>&nbsp;<h3><br>Giao diện Sense 5.0 với nhiều cải tiến</h3><p align="">Để phù hợp với các bộ phận cao cấp, <strong>HTC One</strong> sử dụng hệ điều hành mới nhất của <strong>Android Jelly Bean</strong> cùng giao diện người dùng <strong>HTC Sense 5</strong> đẹp mắt.</p><p align="center"><img style="display: inline;" class="lazy" title="htc-one-giao-dien-sense" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-giao-dien-sense.jpg" alt="Giao diện Sense 5 trên HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-giao-dien-sense.jpg"><br><em>Màn hình khóa trên HTC One cho phép truy cập nhanh các tính năng gọi, danh bạ, web và camera.</em></p><p align=""><br>HTC gọi giao diện Sense mới được cải tiến là <strong>BlinkFeed</strong>, có thể thấy một chút gì đó của giao diện Windows Phone 8 trên BlinkFeed, giao diện chính sẽ hiển thị nội dung các hoạt động như tin tức, blog, các trang web, tin tức tổng hợp.</p><p align="center"><br><img title="Giao diện HTC Sense 5.0 - BlinkFeed trên One" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one_clip_image019.jpg" alt="Giao diện HTC Sense 5.0 - BlinkFeed trên HTC One" height="366" width="550"><br><em>Giao diện HTC Sense 5.0 - BlinkFeed trên One</em></p><p align=""><br>Đồng hồ không phải sẽ chiếm phần lớn giao diện trang chủ nữa mà thay vào đó là các dự báo về thời tiết, hình ảnh, thời trang…</p><p align="center"><img style="display: inline;" class="lazy" title="htc-one-giao-dien-sense-2" src="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-giao-dien-sense-2.jpg" alt="Giao diện Menu của HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/htc-one-giao-dien-sense-2.jpg"><br><em>HTC One có giao diện cải tiến và hữu ích hơn</em></p><p align=""><br>Ranh giới giữa máy tính bảng và điện thoại thông minh ngày càng hẹp dần, <strong>HTC One</strong> cũng hỗ trợ tính năng phát hồng ngoại để có thể điều khiển tivi.</p><p align="center"><img style="display: inline;" class="lazy" title="phim-nguon-htc-one" src="http://cdn.tgdd.vn/Products/Images/42/58094/phim-nguon-htc-one.jpg" alt="Phím nguồn kiêm chức năng cổng hồng ngoại" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/phim-nguon-htc-one.jpg"><br><em>Phím nguồn trên HTC One kiêm chức năng cổng hồng ngoại để điều khiển TV</em></p>&nbsp;<h3><br>Camera Ultrapixels</h3><p align="center"><img style="display: inline;" class="lazy" title="camera-htc-one" src="http://cdn.tgdd.vn/Products/Images/42/58094/camera-htc-one.jpg" alt="Camera HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/camera-htc-one.jpg"><br><em>Camera UltraPixels ở mặt sau của HTC One</em></p><p align=""><br>HTC tiếp tục tập trung khả năng chụp ảnh cao cấp lên dòng điện thoại mới của mình. <strong>One</strong> sẽ có một hệ thống <strong>ImageSense</strong> mới, một phần cứng tốt hơn, cảm biến ánh sáng được cải tiến, được gọi là cảm biến <strong>UltraPixels</strong>.</p><p align=""><strong><br>Ultrapixel</strong>&nbsp;là thuật ngữ HTC dùng &nbsp;để mô tả những "megapixel được tạo từ điểm ảnh lớn". Với&nbsp;ống kính góc rộng 28mm khẩu 2.0 cùng với một cảm biến kích thước 1/3" 4Mp&nbsp;BSI&nbsp;thì các Pixel trên HTC One có kích thước 2µm, lớn hơn so với kích thước thường trên các điện thoại chụp hình cao cấp khác như Lumia 920 là 1,1µm. UltralPixel trên&nbsp;<strong>HTC One</strong>&nbsp;và nó có thể thu được lượng ánh sáng bằng 300%( 3 lần) so với các cảm biến có kích thước Pixel 1,1µm. Cùng với khẩu 2.0 thì Camera của HTC One sẽ giúp chúng ta chụp được ảnh trong điều kiện ánh sáng yếu hay ánh sáng khó tốt hơn rất nhiều. Ngoài ra thì HTC cũng trang bị hệ thống ổn định hình ảnh quang học tương tự như trên Lumia 920.</p><p align=""><br>Với độ phân giải chỉ 4MP,&nbsp;<strong>HTC One</strong>&nbsp;sẽ cho ra những hình ảnh với kích thước không lớn như những đối thủ khác với độ phân giải 12MP hay 13MP nhưng bù lại, ảnh của HTC One vẫn sẽ cho chất lượng tốt dù dung lượng nhỏ. Và vì thế, việc chia sẻ ảnh chụp trên HTC One lên mạng xã hội sẽ dễ dàng hơn. Đây cũng chính là mục đích mà HTC đi ngược lại với xu hướng tăng "chấm" trên smartphone hiện nay.</p><p align="center"><img style="display: inline;" class="lazy" title="Ảnh chụp bởi HTC One" src="http://cdn.tgdd.vn/Products/Images/42/58094/IMAG0184.jpg" alt="Ảnh chụp bởi HTC One" data-original="http://cdn.tgdd.vn/Products/Images/42/58094/IMAG0184.jpg"><br><em>HTC One thể hiện những bức ảnh sáng hơn</em></p><p align=""><br>HTC tuyên bố, máy ảnh của họ có thể nắm bắt ảnh sáng nhiều hơn 300% so với những máy ảnh của điện thoại cạnh tranh khác.</p>&nbsp;<h3><br>Giao diện mang tên BlinkFeed sẽ thú vị hơn, hữu ích hơn</h3><p align="">HTC cho biết, không thể tắt hoàn toàn giao diện mà họ gọi là BlinkFeed, bạn có thể đẩy nó sang một bên và sử dụng màn hình chủ tùy chỉnh, tuy nhiên nó vẫn luôn chạy ở chế độ nền. <strong>HTC One</strong> có hai phiên bản với dung lượng khá lớn 32GB/64GB và sẽ sớm có mặt trên thị trường Việt Nam.</p>&nbsp;<h2><span style="color: #ff9900;">Ưu điểm</span></h2><ul><li>Cấu hình mạnh mẽ, cảm ứng mượt mà.</li><li>Thiết kế kim loại nguyên khối tinh tế, kiểu dáng mạnh mẽ.</li><li>Màn hình sắc nét, cho chất lượng hiển thị trung thực.</li><li>Âm thanh mạnh mẽ, sống động với Loa stereo kép (BoomSound).</li><li>Camera cho chất lượng ảnh tốt, nhờ công nghệ UltraPixel.</li><li>Cập nhật thông tin liên tục trên màn hình chính với&nbsp;BlinkFeed.</li></ul><h2><span style="color: #ff9900;">Nhược điểm</span></h2><ul><li>Vỏ nhôm máy sẽ nóng hơn khi sử dụng lâu.</li><li>Kích thước ảnh chụp nhỏ.</li></ul><p align="right"><strong>Hữu Tình</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Cấu hình mạnh mẽ, cảm ứng mượt mà.</li>
	<li>Thiết kế kim loại nguyên khối tinh tế, kiểu dáng mạnh mẽ.</li>
	<li>Màn hình sắc nét, cho chất lượng hiển thị trung thực.</li>
	<li>Âm thanh mạnh mẽ, sống động với Loa stereo kép (BoomSound).</li>
	<li>Camera cho chất lượng ảnh tốt, nhờ công nghệ UltraPixel.</li>
	<li>Cập nhật thông tin liên tục trên màn hình chính với&nbsp;BlinkFeed.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Vỏ nhôm máy sẽ nóng hơn khi sử dụng lâu.</li>
	<li>Kích thước ảnh chụp nhỏ.</li>
</ul></td></tr></tbody></table>', 2, 99, 4, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (8, N'HTC Desire 700', N'/Content/Images/HTC/HTC-Desire700.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(8880000 AS Decimal(18, 0)), CAST(9150000 AS Decimal(18, 0)), N'Màn hình:	qHD, 5.0", 540 x 960 pixels
CPU:	Qualcomm Snapdragon 200, 4 nhân, 1.2 GHz
RAM	1 GB
Hệ điều hành:	Android 4.1 (Jelly Bean)
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.1 MP
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	2100 mAh', N' <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60874/Kit/HTC-Desire-700-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">qHD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">540 x 960 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.1 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon 200</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 205</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">145.5 x 72 x 10.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">149</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2100 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Google Talk, Picasa<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">HTC Desire 700 – Đẹp như HTC One cùng cấu hình mạnh mẽ</h2><p style="text-align: justify;" align=""><br>Có thể nói <strong>Desire 700</strong> là một phiên bản giá rẻ của <strong>HTC One</strong> bởi thiết kế của 2 máy có rất nhiều nét tương đồng. Nếu như <strong>HTC Desire 700</strong> vẫn có bộ khung vỏ nhôm thì chắc chắn bạn sẽ khó mà nhận ra thiết bị này với HTC One.</p><p align="center"><em><img title="HTC Desire 700 có thiết kế đẹp với khung vỏ nhựa" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image002.jpg" alt="HTC Desire 700 có thiết kế đẹp với khung vỏ nhựa"></em><br><em>HTC Desire 700 có thiết kế đẹp với khung vỏ nhựa</em></p><p style="text-align: justify;" align=""><br>Khi bạn nhìn vào máy, bạn sẽ cảm thấy sự sang trọng và hài hòa trong thiết kế, các chi tiết được bố trí cân đối. Mặt trước phẳng, khỏe khoắn và mạnh mẽ. Trong khi mặt sau hơi cong vòm, tạo cảm giác cầm nắm dễ dàng hơn.</p><p style="text-align: justify;" align=""><strong><br>Desire 700</strong> có trọng lượng 149g, với nhiều tính năng cao cấp như <strong>HTC One</strong>. Đó là bộ loa kép ở mặt trước phía trên và dưới màn hình, một phím Home cảm ứng điện dung tương tự như One. Các màng loa được làm tròn góc và có một chút hẹp hơn so với One. Tuy nhiên, bộ khung vỏ của thiết bị chỉ làm bằng nhựa, một sự “thất vọng” nhẹ cho những ai là Fan của HTC.</p><p align="center"><em><img title="Mặt sau của Desire 700 bóng bẩy" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image004.jpg" alt="Mặt sau của Desire 700 bóng bẩy"></em><br><em>Mặt sau của Desire 700 bóng bẩy</em></p><p style="text-align: justify;" align=""><br>Mặt sau của <strong>HTC Desire 700</strong> có 2 đường sọc ngang tương tự như mặt sau của One, và có vẻ đây là thiết kế yêu thích của HTC cũng như người dùng trong năm 2013. Khi mở nắp lưng ra, bạn sẽ thấy khe cắm SIM cùng khe cắm thẻ nhớ, pin 2100mAh có thể tháo rời.</p>&nbsp;<h3 align=""><br>Màn hình 5 inch rộng rãi</h3><p style="text-align: justify;" align=""><strong>Desire 700</strong><strong> </strong>có màn hình lên đến 5 inch, rộng hơn cả One (4.7 inch) vì vậy việc xem phim, lướt web, đọc sách báo, xem ảnh sẽ cực kỳ tiện lợi và thoải mái. Màn hình rộng cũng giúp bạn xem mọi thứ to, rõ ràng hơn, các phím đánh văn bản cũng lớn hơn, giảm sự nhầm lẫn.</p><p style="text-align: justify;" align=""><br>Tuy nhiên, màn hình chỉ có độ phân giải qHD (540 x 960 pixels) khiến việc xem chi tiết, zoom gần có thể sẽ bị vỡ hình. Tất nhiên, ở chế độ bình thường, bạn vẫn có những hình ảnh sắc nét, góc nhìn rộng và rực rỡ.</p><p align="center"><em><img title="HTC Desire 700 với màn hình 5 inch rộng rãi" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image006.jpg" alt="HTC Desire 700 với màn hình 5 inch rộng rãi"></em><br><em>HTC Desire 700 với màn hình 5 inch rộng rãi</em></p>&nbsp;<h3 align=""><br>Cấu hình cao</h3><p style="text-align: justify;" align="">Các thông số kỹ thuật của <strong>HTC Desire 700</strong> có vẻ như “không tầm trung chút nào” với bộ vi xử lý lõi tứ từ nhà sản xuất nổi tiếng Qualcomm Snapdragon 200 (Cortex-A7 tốc độ 1.2GHz), RAM 1GB cùng 8GB dung lượng lưu trữ nội bộ.</p><p style="text-align: justify;" align=""><br>Với cấu hình đó, người dùng sẽ thoải mái trải nghiệm nhiều tiện ích, lướt web thỏa thích, xem phim trực tuyến nhanh chóng mà không sợ bị giật. Đặc biệt, với sự hỗ trợ của đồ họa Adreno 305, bạn sẽ có thể chơi nhiều game nặng, kể cả những game di động đòi hỏi đồ họa cao.</p><p align="center"><em><img title="Desire 700 với bộ vi xử lý lõi tứ cho trải nghiệm vượt trội" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image008.jpg" alt="Desire 700 với bộ vi xử lý lõi tứ cho trải nghiệm vượt trội"></em><br><em>Desire 700 với bộ vi xử lý lõi tứ cho trải nghiệm vượt trội</em></p>&nbsp;<h3 align=""><br>Máy ảnh 8MP</h3><p style="text-align: justify;" align=""><strong>Desire 700</strong> được trang bị máy ảnh 8MP phía sau cùng máy ảnh 2.1MP phía trước. Máy ảnh sau với nhiều tính năng hấp dẫn như tự động lấy nét, chạm lấy nét, nhận diện khuôn mặt và chống rung vì vậy mà bạn sẽ luôn có được những bức hình đẹp từ camera này. Ngoài ra, camera sau cũng có thể quay video full HD sắc nét và được hỗ trợ đèn flash, giúp bạn vẫn có những hình ảnh rõ nét trong bóng tối.</p><p style="text-align: justify;" align=""><br>Máy ảnh trước 2.1MP giúp người dùng có thể có những hình ảnh rõ ràng khi gọi video qua mạng hoặc giúp bạn có được những hình ảnh chụp chân dung.</p><p align="center"><em><img title="Desire 700 chụp ảnh, quay phim sắc nét" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image010.jpg" alt="Desire 700 có camera 8MP chụp ảnh, quay phim sắc nét"></em><br><em>Máy ảnh 8MP chụp ảnh, quay phim sắc nét </em></p>&nbsp;<h3 align=""><br>Giao diện Sense 5.0</h3><p style="text-align: justify;" align="">Đây chính là giao diện đã được <strong>HTC</strong> tích hợp trên phiên bản cao cấp One. Giao diện Sense 5.0 với tính năng&nbsp;BlinkFeed, có thể thấy một chút gì đó của giao diện Windows Phone 8 trên BlinkFeed, giao diện chính sẽ hiển thị nội dung các hoạt động như tin tức, blog, các trang web, tin tức tổng hợp.</p><p style="text-align: justify;" align=""><br>Giao diện Sense của HTC luôn được đánh giá là có độ cuốn hút cao bởi sự mượt mà cũng như đẹp mắt.</p><p align="center"><em><img title="Giao diện Sense 5.0 trên Desire 700" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image012.jpg" alt="Giao diện Sense 5.0 mượt mà, hữu ích với tính năng BlinkFeed trên Desire 700"></em><br><em>Giao diện Sense 5.0 mượt mà, hữu ích với tính năng BlinkFeed</em></p>&nbsp;<h3 align=""><br>Hỗ trợ 2 SIM và khe cắm thẻ nhớ</h3><p style="text-align: justify;" align="">Không như dòng HTC One, <strong>Desire 700</strong> được bổ sung thêm một khe cắm SIM và khe cắm thẻ nhớ giúp bạn có thể mở rộng thêm bộ nhớ khi cần. Thêm khe cắm SIM giúp bạn quản lý danh bạn một cách tốt hơn cũng như linh hoạt hơn trong các cuộc gọi, dữ liệu mạng.</p><p align="center"><em><img title="Desire 700 hỗ trợ 2 SIM cùng khe gắn thẻ nhớ hữu ích" src="http://cdn.tgdd.vn/Products/Images/42/60874/htc-desire-700_clip_image014.jpg" alt="Desire 700 hỗ trợ 2 SIM cùng khe gắn thẻ nhớ hữu ích"></em><br><em>Hỗ trợ 2 SIM cùng khe gắn thẻ nhớ hữu ích</em></p>&nbsp;<h3 align=""><br>Tóm lại</h3><p style="text-align: justify;" align=""><strong>HTC Desire 700</strong> là một smartphone có thiết kế đẹp cùng cấu hình cao, nhiều tính năng mới hấp dẫn. Đặc biệt, máy còn hỗ trợ 2 SIM tiện lợi cho người dùng. Thiết bị phù hợp cho những ai thích một sản phẩm màn hình rộng, thiết kế sang trọng, tính năng cao cấp trên một mức giá vừa phải.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp mắt.</li>
	<li>Màn hình rộng 5 inch cho trải nghiệm thú vị hơn.</li>
	<li>Hiệu suất xử lý cao với chip lõi tứ.</li>
	<li>Máy ảnh 8MP sắc nét.</li>
	<li>Hỗ trợ 2 SIM và thẻ nhớ ngoài.</li>
	<li>Giao diện Sense 5.0 mượt mà.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Màn hình độ phân giải chưa cao.</li>
</ul></td></tr></tbody></table>', 2, 99, 2, 0, 1, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (9, N'HTC 8S', N'/Content/Images/HTC/HTC-8s.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(3290000 AS Decimal(18, 0)), CAST(3500000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.0", 480 x 800 pixels
CPU:	Qualcomm Snapdragon S4, 2 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	Windows Phone 8
Camera chính:	5.0 MP, Quay phim HD 720p@30fps
Camera phụ:	Không
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1700 mAh', N'  <img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/57296/Kit/HTC-8S-mo-ta-chuc-nang-1.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon S4</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 305</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">120.5 x 63 x 10.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">113</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1700 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.1</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4, WMV</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>7GB lưu trữ của SkyDrive</td>
        </tr>
    </tbody>
</table>', N'<h2 style="text-align: center;">HTC 8S - Dòng điện thoại trung cấp với hệ điều hành Windows Phone 8</h2><p style="text-align: justify;" align=""><br>Cùng với việc cho ra mắt mẫu Smartphone cao cấp HTC 8X, HTC cũng trình làng một mẫu Smartphone tầm trung mang tên <strong>HTC 8S</strong>, cả hai mẫu điện thoại này đều sử dụng hệ điều hành Windows Phone 8. Mặc dù <strong>HTC 8S</strong> là một mẫu điện thoại ở phân khúc tầm trung nhưng máy sở hữu những tính năng không thua kém gì đàn anh HTC 8X của mình.</p><p style="text-align: justify;"></p><h3 align=""><br>Thiết kế trẻ trung năng động</h3><p style="text-align: justify;" align="">Trong thời buổi hiện nay khi mà thiết kế của những mẫu điện thoại cảm ứng màn hình rộng gần như bão hoà thì việc xuất hiện của <strong>HTC 8S</strong> như thổi một làn gió mới vào thị trường Smartphone, với màu sắc sặc sỡ được phối hợp hài hoà cùng với thiết kế nguyên khối sáng bóng khiến cho HTC 8S gây được ấn tượng mạnh cho người dùng ngay từ cái nhìn đầu tiên bởi một phong cách rất trẻ trung và năng động.</p><p style="text-align: justify;" align=""><br>Thông số kích thước máy cũng khá tốt khi máy chỉ dày 10.3 mm và nặng chưa tới 113 gram, cảm giác cầm máy trên tay rất đầm và chắc chắn tương tự như mẫu cao cấp HTC 8X.</p><p align="center"><img title="Cảm giác cầm máy trên tay rất tốt" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image004.jpg" alt="Mặt sau HTC 8S " height="375" width="665"><br></p><p align="center"><em>Cảm giác cầm máy trên tay rất tốt</em></p><p align="center"><img title="Thiết kế nguyên khối tinh tế" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image006.png" alt="HTC 8S có thiết kế nguyên khối" height="401" width="376"><br><em>Thiết kế nguyên khối tinh tế</em></p>&nbsp;<h3 align=""><br>Công nghệ âm thanh tiên tiến</h3><p style="text-align: justify;" align="">Ở mặt sau của máy bạn sẽ bắt gặp ngay logo độc quyền của hãng âm thanh nổi tiếng Beats, điều này đồng nghĩa với việc <strong>HTC 8S</strong> cũng sở hữu công nghệ âm thanh tiên tiến đến từ Beats như những Smartphone cao cấp ra mắt gần đây của HTC.</p><p style="text-align: justify;"><strong>Beats Audio™</strong> mang đến cho người dùng bữa tiệc âm thanh tuyệt vời với chất lượng âm thanh tốt nhất, âm bass cao và có độ lắng đọng cần thiết, bên cạnh đó Beat cũng cung cấp một thư viện thông tin đồ sộ về những đoạn nhạc và âm thanh trong Game, Xbox, Phim, Video với hơn 17 triệu đoạn ghi âm.</p><p align="center"><img title="Tận hưởng bữa tiệc âm nhạc đến từ Beats" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image008.png" alt="HTC 8S tích hợp âm thanh Beats" height="425" width="664"><br><em>Tận hưởng bữa tiệc âm nhạc đến từ Beats</em></p>&nbsp;<h3><br>Công nghệ chụp ảnh chuyên nghiệp</h3><p style="text-align: justify;" align="">Những mẫu điện thoại ra mắt gần đây của HTC luôn được chú trọng đầu tư về camera, tiêu chí của hãng là mang lại trải nghiệm tốt nhất cho người dùng từ những tính năng cơ bản nhất của điện thoại. Được trang bị phím chụp hình vật lý, <strong>HTC 8S</strong> cho phép người dùng chụp ảnh nhanh chóng, camera của 8S chỉ 5MP nhưng chất lượng ảnh rất tốt, sắc nét và màu sắc khá hài hoà. Cùng với 7GB miễn phí trong tài khoản SkyDrive, người dùng sẽ dễ dàng lưu trữ kho ảnh của mình lên hệ thống điện toán đám mây mà không lo mất mát.</p><p align="center"><img title="Chất lượng camera trên HTC 8S rất tốt" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image010.png" alt="giao diện chụp ảnh trên HTC 8S " height="374" width="600"><br><em>Chất lượng camera trên HTC 8S rất tốt</em></p>&nbsp;<h3 align=""><br>Thời lượng sử dụng pin tối ưu</h3><p style="text-align: justify;" align="">Vấn đề gặp phải của đa số người dùng Smartphone hiện nay là thời lượng sử dụng pin ngắn ngủi, tuy nhiên với HTC 8S vấn đề về pin đã được HTC khắc phục khá tốt, nhờ bộ xử lý thế hệ mới cùng viên pin với dung lương khá cao lên tới 1700mAh, <strong>HTC 8S</strong> có thể hoạt động tốt trong khoảng một ngày rưỡi mới cần sạc lại.</p><p align="center"><img title="HTC 8S có thời lượng sử dụng pin rất tốt" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image012.png" alt="điện thoại HTC 8S " height="336" width="590"><br><em>HTC 8S có thời lượng sử dụng pin rất tốt</em></p>&nbsp;<h3 align=""><br>Trải nghiệm tuyệt vời</h3><p style="text-align: justify;" align="">Là một mẫu Smartphone tầm trung nên cấu hình của <strong>HTC 8S</strong> khá khiêm tốn so với người anh em cao cấp HTC 8X của mình, máy trang bị chíp xử lý hai nhân 1 GHz dual core Krait thế hệ mới nhất cùng dung lượng RAM là 512 MB, tuy nhiên nhờ có hệ điều hành Windows Phone 8 - hệ điều hành tối ưu dành cho điện thoại di động, HTC 8S hoạt động mượt mà trong mọi thao tác từ xử lý văn bản đến chơi các đoạn video độ phân giải cao.</p><p style="text-align: justify;" align="">Cũng chính nhờ Chip xử lý thế hệ mới này, <strong>HTC 8S</strong> có thời lượng sử dụng pin rất tốt và không bị nóng máy khi sử dụng lâu.</p><p align="center"><img title="HTC 8S hoạt động mượt mà cùng hệ điều hành Windows Phone 8" src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image014.jpg" alt="HTC 8S chạy Windows Phone 8" height="334" width="524"><br><em>HTC 8S hoạt động mượt mà cùng hệ điều hành Windows Phone 8</em></p>&nbsp;<h3 align=""><br>Giao diện LiveTiles người dùng thân thiện</h3><p style="text-align: justify;" align="">Tuy vừa mới xuất hiện nhưng hệ điều hành Windows Phone 8 nhận được rất nhiều khen ngợi từ giới công nghệ, nguyên nhân chính là do giao diện LiveTiles cực kỳ thân thiện đối với người dùng. Với <strong>HTC 8S,</strong>&nbsp;những ứng dụng trực tuyến như Facebook, Mail, Twitter luôn được cập nhật liên tục trên màn hình chính, việc bố trí các mảng ứng dụng lớn đan xen nhau trên màn hình chính cũng khiến người dùng dễ dàng thao tác với màn hình cảm ứng hơn các hệ điều hành khác.</p><p align="center"><img title="Giao diện WP8 trên HTC 8S " src="http://cdn.tgdd.vn/Products/Images/42/57296/htc-8s_clip_image016.jpg" alt="giao diện WP8 trên HTC 8S " height="353" width="350"><br><em>Giao diện Windows Phone 8 thân thiên với người dùng</em></p><p align="right"><strong>Ngô Quốc Bảo</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế thân thiện với người dùng.</li>
	<li>Màn hình cảm ứng sắc nét.</li>
	<li>Hoạt động mượt mà.</li>
	<li>Thời lượng pin tối ưu.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Camera chưa nét lắm.</li>
</ul></td></tr></tbody></table>', 2, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (10, N'HTC Desire L Dual Sim', N'/Content/Images/HTC/HTC Desire L Dual Sim.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(5990000 AS Decimal(18, 0)), CAST(6200000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.3", 480 x 800 pixels
CPU:	Qualcomm, 2 nhân, 1 GHz
RAM	1 GB
Hệ điều hành:	Android 4.1 (Jelly Bean)
SIM:	2 SIM 2 sóng
Camera:	5.0 MP, Quay phim HD 720p@30fps
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1800 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60693/Kit/HTC-Desire-L-Dual-mo-ta-chuc-nang-1.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.3"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 220</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">128 x 66.9 x 8.9</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">120</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1800 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">HTC Desire L – Trẻ trung, năng động</h2><p align=""><strong><br>HTC Desire L </strong>là sản phẩm định hướng vào thị trường điện thoại tầm trung, thân thiện hơn với túi tiền của đa số người dùng. Phiên bản <strong>Desire L Dual <strong><a title="sim số đẹp" href="http://www.thegioididong.com/sim-so-dep" target="_blank">SIM</a></strong>&nbsp;</strong>mang<strong> </strong>đến những trải nghiệm thú vị trên hệ điều hành Android v4.1.1 (Jelly Bean) cùng giao diện HTC Sense, camera 5MP, công nghệ âm thanh Beats Audio và đặc biệt đây là smartphone hỗ trợ hai sim hai sóng online.</p><p align="center"><img title="Kiểu dáng quyễn rũ hấp dẫn của HTC Desire L" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image002.jpg" alt="Kiểu dáng quyễn rũ hấp dẫn của HTC Desire L"> <br><em>Kiểu dáng quyễn rũ hấp dẫn của HTC Desire L</em></p>&nbsp;<h3 align=""><br>Quyễn rũ và sành điệu</h3><p align=""><strong>HTC Desire L</strong> có thân hình gọn và đẹp với kích thước 128 x 66.9 x 8.9 mm, nhẹ 120g, với màn hình chỉ 4.3 inch cầm nắm dễ dàng, vừa vặn với kích thước túi quần jean, không hề quá khổ như những sản phẩm màn hình cỡ lớn 5 inch khác. Sản phẩm có màu sắc khá trẻ trung, hấp dẫn, đặc biệt thích hợp với các bạn nữ bởi thiết bị có cả phiên bản màu hồng bên cạnh hai màu truyền thống đen và trắng.</p><p align="center"><img title="Hai cạnh trên và dưới được vát về phía sau Desire L" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image004.jpg" alt="Hai cạnh trên và dưới được vát về phía sau Desire L"><br><em>Hai cạnh trên và dưới được vát về phía sau</em> <em>Desire L</em></p><p align=""><br>Mặt trước của <strong>Desire L</strong> trông rộng và thoáng, diện tích xung quanh màn hình được tận dụng tối đa. Phần viền bao quanh máy <a href="http://www.thegioididong.com/dtdd-htc" target="_blank">HTC</a> thiết kế dải màu giả kim loại nhằm tăng thêm tính thẩm mỹ và độ cứng cáp cho sản phẩm. Ngoài ra phần camera được bao quanh bởi một tấm kim loại có vân nổi chạy ngang, tuy nhiên hiệu quả thẩm mỹ của chi tiết này là không cao.</p><p align="center"><img title="Tươi tắn, trẻ trung với bộ vỏ màu hồng của HTC Desire L" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image006.jpg" alt="Tươi tắn, trẻ trung với bộ vỏ màu hồng của HTC Desire L"> <br><em>Tươi tắn, trẻ trung với bộ vỏ màu hồng của Desire L</em></p>&nbsp;<h3 align=""><br>Màn hình 4.3 inch, sử dụng công nghệ Super LCD2</h3><p align="">Dù màn hình chỉ dừng lại ở kích thước 4.3 inch và độ phân giải 480 x 800 pixel nhưng nhờ công nghệ <strong>Super LCD2</strong> do đó chất lượng hình ảnh khá tốt, màu sắc được thể hiện sinh động, độ sáng cao. Tuy không sử dụng công nghệ IPS nhưng vẫn cho góc nhìn khá thoáng không hạn chế như các sản phẩm tầm trung khác. Ngoài ra các thao tác cảm ứng trên màn hình mượt mà, lướt, chạm, phóng to, thỏ nhỏ dễ dàng, thuận tiện.</p><p align="center"><img title="HTC Desire L có độ sáng cao, màu sắc rực rỡ" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image008.jpg" alt="HTC Desire L có độ sáng cao, màu sắc rực rỡ"><br><em>HTC Desire L có độ sáng cao, màu sắc rực rỡ</em></p>&nbsp;<h3 align=""><br>Camera 5MP trang bị chip xử lý HTC ImageChip</h3><p align="">HTC trang bị cho camera một chip xử lý hình ảnh riêng biệt mang tên <strong>HTC </strong><strong>ImageChip</strong>, có khả năng tự động loại bỏ các hiện tượng nhiễu, hạt, nhất là trong điều kiện thiếu sáng. Camera chỉ tốn 0.7 giây để khởi động và chỉ 0.2 giây để lấy nét đối tượng bạn muốn chụp.</p><p align=""><strong><br>HTC</strong> đã tích hợp các tính năng chụp ảnh tiên tiến như HDR, Panorama, cùng các hiệu ứng sáng tạo được tích hợp sẵn. Ngoài ra camera còn cho phép bạn điều chỉnh các thông số như độ tương phản, độ bão hòa, độ sắc nét và chỉnh bằng tay độ nhạy ISO trong khoảng 100 đến 800.</p><p align="center"><img title="Camera phía sau 5MP của Desire L " src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image010.jpg" alt="Camera phía sau 5MP của Desire L "> <br><em>Camera phía sau 5MP của Desire L </em></p>&nbsp;<h3 align=""><br>Hỗ trợ hai sim hai sóng online</h3><p align="">Ngày nay nhu cầu sử dụng hai sim trên thị trường là khá cao và hầu hết các hãng điện thoại đều đã có sản phẩm hỗ trợ tính năng này. <strong>HTC Desire L Dual SIM</strong> mang đến sự tối ưu và tiện dụng đặc biệt với những người bận rộn, có nhiều mối quan hệ trong làm ăn và bạn bè, với khả năng sử dụng hai sim thiết bị giúp bạn quản lý danh bạ tốt hơn, lựa chọn dễ dàng hơn các dịch vụ của nhà mạng.</p><p align="center"><img title="Quản lý danh bạ tốt hơn trên HTC Desire Dual SIM" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image012.jpg" alt="Quản lý danh bạ tốt hơn trên HTC Desire Dual SIM"> <br><em>Quản lý danh bạ tốt hơn trên HTC Desire Dual SIM</em></p>&nbsp;<h3 align=""><br>Hiệu suất ổn định, chạy đa nhiệm tốt</h3><p align="">HTC trang bị cho <strong>Desire L</strong> chip lõi kép với tốc độ 1GHz cùng với RAM 1GB và bộ nhớ trong 4GB trong đó bộ nhớ hệ thống chiếm đến 1.7GB, nếu bạn thích cài đặt nhiều ứng dụng hoặc game thì có lẽ sẽ phải cân chỉnh nhiều.</p><p align=""><br>Tuy nhiên với việc hỗ trợ bộ nhớ ngoài lên đến 32GB bạn có thể dùng ứng dụng hỗ trợ để chuyển lưu lượng data của ứng dụng sang thẻ nhớ để mở rộng thêm bộ nhớ trong. Ngoài ra thiết bị đáp ứng tốt các nhu cầu về lướt web, cập nhật mạng xã hội, duyệt văn bản, đọc sách, phục vụ nhu cầu giải trí nhẹ nhàng.</p><p align="center"><img title="Desire L nhỏ nhưng không hề yếu" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image014.jpg" alt="Desire L nhỏ nhưng không hề yếu"><br><em>Desire L nhỏ nhưng không hề yếu</em></p>&nbsp;<h3 align=""><br>Âm thanh sống động với Beats Audio</h3><p align="">Giống như những người anh đi trước của nó, biểu tượng Beats Audio vẫn là logo quen thuộc ở mặt sau của <strong>HTC Desire L</strong>. Công nghệ tiên tiến này mang đến chất lượng âm thanh khá trung thực, sống động, có treble và bass rõ ràng, tạo nên sự kịch tính hơn trong khi chơi game, giúp bạn có khoảng không gian nghe nhạc, xem phim bổ ích.</p><p align="center"><img title="HTC Desire L với Logo Beats Audio quen thuộc" src="http://cdn.tgdd.vn/Products/Images/42/60693/htc-desire-l-dual-sim_clip_image016.jpg" alt="HTC Desire L với Logo Beats Audio quen thuộc "> <br><em>HTC Desire L với Beats Audio</em></p><p align=""><strong><br>HTC Desire L</strong> là smartphone hỗ trợ nhiều tính năng đáng giá, mang đến những trải nghiệm thú vị và hữu ích, sự tiện dụng trong công việc cũng như cập nhật thông tin và mạng xã hội. Đặc biệt sản phẩm thuộc phân khúc tầm trung nên người dùng có thế tiếp cận dễ dàng.<strong> Desire L </strong>thích hợp với người dùng năng động, người bận rộn muốn sở hữu smartphone hỗ trợ đến hai sim.</p><p align="right"><strong> Trung Hiếu</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế trẻ trung, sang trọng.</li>
	<li>Màn hình Super LCD2 cho chất lượng hình ảnh trung thực, sắc nét.</li>
	<li>Camera 5MP, tốc độ chụp nhanh, khả năng chụp thiếu sáng tốt.</li>
	<li>Hiệu suất vượt trội với 2 nhân tốc độ 1GHz và RAM 1Gb.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Không có camera phía trước trước.</li>
	<li>Pin dung lượng chỉ 1800mAh.</li>
</ul></td></tr></tbody></table>', 2, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (11, N'HTC Desire SV', N'/Content/Images/HTC/HTC Desire SV.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(4490000 AS Decimal(18, 0)), CAST(4990000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.3", 480 x 800 pixels
CPU:	Qualcomm MSM8255, 2 nhân, 1 GHz
RAM	768 MB
Hệ điều hành:	Android 4.0.4 (ICS)
SIM:	2 SIM 2 sóng
Camera:	8.0 MP, Quay phim 480p@30fps
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1620 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/57645/Kit/HTC-Desire-SV-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.0.4 (ICS)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.3"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm để lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim 480p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8255</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">768 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 203</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">129.7 x 67.9 x 10.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">131</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1620 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Google Talk<br>tài khoản Dropbox 25GB</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">HTC DESIRE SV – Smartphone 2 SIM 2 sóng đẳng cấp</h2><p style="text-align: justify;" align=""><br>HTC mang đến cho người dùng một lựa chọn smartphone hoàn toàn mới mẻ - smartphone 2 sim 2 sóng, tiếp nối thành công của chiếc điện thoại 2 sim 2 sóng đầu tiên của hãng <a href="http://www.thegioididong.com/dtdd/htc-desire-v" target="_blank">HTC Desire V,</a> đó là chiếc <strong>HTC Desire SV</strong> với phần cứng được đầu tư tốt hơn sẽ hứa hẹn mang lại những trải nghiệm mới cho người dùng.</p><p align="center"><img title="HTC Desire SV" src="http://cdn.tgdd.vn/Products/Images/42/57645/htc-desire-sv_clip_image001.jpg" alt="HTC Desire SV, smartphone 2 sim 2 sóng" height="414" width="492"><br><em>HTC Desire SV, smartphone 2 sim 2 sóng</em></p><h3><br>HĐH Android với giao diện Sense 4.1</h3><p style="text-align: justify;" align=""><strong>Điện thoại HTC Desire SV</strong> được cài đặt sẵn HĐH Android với giao diện Sense đặc trưng của HTC, phiên bản mới 4.1. Giao diện Sense được HTC tùy biến để có thể tận dụng tối đa phần cứng của máy cũng như phục vụ tốt hơn những tính năng mà HĐH Android mang đến cho người dùng. Với số ứng dụng vượt trội lên đến hàng trăm ngàn tiện ích và trò chơi sẽ phục vụ tối đa nhu cầu sử dụng của người dùng.</p><p align="center"><img title="HTC Desire SV có giao diện Sense" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image002.jpg" alt="HTC Desire SV có giao diện Sense rất đẹp và tiện dụng" height="500" width="549"><br><em>HTC Desire SV có giao diện Sense rất đẹp và tiện dụng</em></p><h3><br>Màn hình 4.3 inch sử dụng công nghệ LCD2 sắc nét</h3><p style="text-align: justify;" align="">Được trang bị màn hình rộng đến 4.3 inch với công nghệ màn hình LCD2. <strong>HTC Desire SV</strong> cho góc nhìn rộng, màn hình lớn hiển thị các ứng dụng cũng như lướt web "rộng rãi", khi xem hình ảnh và video cho màu sắc tươi sáng và rực rỡ hơn. Bộ máy tăng cường màu sắc cung cấp cho màn hình của máy độ tương phản cao, nhiều màu sắc hơn và giảm phản xạ ánh sáng giúp những trải nghiệm trên màn hình tuyệt vời hơn bao giờ hết, đặc biệt là sử dụng ngoài trời.</p><p align="center"><img title="HTC Desire SV với màn hình rộng" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image003.jpg" alt="Vô tư giải trí trên màn hình rộng 4.3 inch" height="349" width="544"><br><em>Vô tư giải trí trên màn hình rộng 4.3 inch</em></p><h3><br>Liên lạc đa chiều với chế độ 2 sim 2 sóng</h3><p style="text-align: justify;" align="">Có thể xem đây là một trong những dòng smartphone 2 sim 2 sóng đầu tiên của HTC với mong muốn mang đến cho người dùng sự thoải mái nhất khi sử dụng điện thoại. Từ bây giờ người dùng sẽ không còn khó chịu khi phải mang theo 2 chiếc điện thoại bên mình vừa bất tiện, vừa tốn kém vì <strong>Desire SV</strong> sẽ cung cấp cho bạn 2 khe cắm sim và 2 sóng online cùng lúc chỉ trên một chiếc điện thoại duy nhất.</p><p align="center"><img title="HTC Desire SV 2 sim 2 sóng" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image004.jpg" alt="Sử dụng điện thoại đơn giản hơn với chức năng 2 sim 2 sóng" height="403" width="628"><br><em>Sử dụng điện thoại đơn giản hơn với chức năng 2 sim 2 sóng</em></p><h3><br>Camera tuyệt vời</h3><p style="text-align: justify;" align="">HTC mang đến cho thiết bị của mình một camera 8 megapixel với đèn Flash LED và cảm biến BSI, có ống kính 28 mm với f/2.2. Camera của <strong>HTC Desire SV</strong> có chế độ tự động lấy nét, cảm biến BSI giúp chụp ảnh tốt hơn trong môi trường thiếu ánh sáng, đèn Flash thông minh với 5 mức chiếu sáng phụ thuộc vào khoảng cách với vật mình muốn chụp. Đồng thời chức năng quay video của máy còn có chế độ chụp lại ảnh trong video, rất thú vị.</p><p align="center"><img title="HTC Desire SV với camera 8Mp" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image005.jpg" alt="Camera 8.0 megapixel lưu lại những khoảnh khắc đáng nhớ một cách đẹp nhất" height="349" width="544"><br><em>Camera 8.0 megapixel lưu lại những khoảnh khắc đáng nhớ một cách đẹp nhất</em></p><h3><br>Trải nghiệm âm thanh tuyệt vời với Beats Audio</h3><p style="text-align: justify;" align="">Được tích hợp sẵn công nghệ Beats Audio như một số dòng điện thoại gần đây của HTC, Desire SV mang đến trải nghiệm âm nhạc, chơi game cũng như xem phim thú vị hơn, hay hơn nhờ được tăng cường âm bass, các âm chi tiết hơn và rất trong trẻo. Với <strong>điện thoại HTC Desire SV</strong>, nghe nhạc không còn được hiểu theo cách thông thường mà phải gọi là thưởng thức âm nhạc.</p><p align="center"><img title="HTC Desire SV cùng tai nghe Beats" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image006.jpg" alt="Thưởng thức từng giai điệu của âm nhạc cùng tai nghe Beats" height="349" width="544"><br><em>Thưởng thức từng giai điệu của âm nhạc cùng tai nghe Beats</em></p><h3><br>Hỗ trợ lưu trữ đám mây với 25GB miễn phí</h3><p style="text-align: justify;" align="">Với bộ nhớ trong 4 GB và khả năng hỗ trợ thẻ nhớ ngoài lên đến 32GB, HTC Desire SV mang đến cho người dùng một không gian lưu trữ khá thoải mái. Người dùng có thể vừa chép phim HD, nhạc vừa cài ứng dụng mà không cần phải lo lắng đến không gian lưu trữ.</p><p style="text-align: justify;" align="">Nắm bắt được yêu cầu sử dụng nhiều bộ nhớ hơn và cũng tiếp bước cùng công nghệ, HTC đã đưa nền tảng đám mây vào chiếc điện thoại với 25GB dung lượng miễn phí từ tài khoản Dropbox trong 2 năm, người dùng sẽ có thể dễ dàng chia sẻ hình ảnh, video cũng như xem lại một cách dễ dàng.</p><p align="center"><img title="HTC Desire SV lưu trữ miễn phí trên Dropbox" src="http://cdn.thegioididong.com/Products/Images/42/57645/htc-desire-sv_clip_image007.jpg" alt="Tài khoản Dropbox cung cấp 25GB dung lượng miễn phí" height="355" width="628"><br><em>Tài khoản Dropbox cung cấp 25GB dung lượng miễn phí</em></p><p align="right"><strong>Trần Thái Sơn</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình lớn, hiển thị hình ảnh trung thực, sắc nét.</li>
	<li>2 sim 2 sóng, tận dụng tối đa lợi ích từ nhà mạng</li>
	<li>HĐH Android 4.0 và giao diện Sense bóng bẩy.</li>
	<li>Camera cùng cảm biến&nbsp;BSI cho hình ảnh đẹp ngay cả trong điều kiện thiếu sáng.</li>
	<li>Âm thanh hay cùng công nghệ Beats Audio độc quyền.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Quay phim chất lượng thấp.</li>
</ul></td></tr></tbody></table>', 2, 99, 0, 10, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (12, N'HTC Desire U', N'/Content/Images/HTC/HTC Desire U.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HTC/Hinh360-HTC/HTC-One-hinh360-1.jpg', N'" /> </a>', CAST(3290000 AS Decimal(18, 0)), CAST(3500000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.0", 480 x 800 pixels
CPU:	Qualcomm MSM7227A, 1 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	Android 4.0.4 (ICS)
SIM:	1 Sim
Camera:	5.0 MP, Quay phim VGA
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1650 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58002/Kit/HTC-Desire-U-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.0.4 (ICS)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim VGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">1 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM7227A</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 200</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">118.5 x 62.3 x 9.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">204</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1650 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">SIM bình thường</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Gmail, Youtube</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">HTC DESIRE U - Smartphone phổ thông màn hình 4 inch mới nhất của HTC</h2><p style="text-align: justify;" align=""><br>HTC đang ngày càng lấn sân sang thị trường điện thoại thông minh giá rẻ khi hãng liên tục cho ra mắt những mẫu smartphone phổ thông. <strong>HTC Desire U</strong> là môt trong những đại diện mới nhất thuộc phân khúc phổ thông trong năm 2013 của HTC, với màn hình 4 inch và thiết kế khá giống <a href="http://www.thegioididong.com/dtdd/htc-desire-x" target="_blank">Desire X</a>, mẫu smartphone mới này hứa hẹn sẽ thu hút được nhiều người dùng trên thị trường.</p><h3 align=""><br>Thiết kế bắt mắt</h3><p style="text-align: justify;" align="">Điểm cộng của HTC so với các hãng điện thoại khác là dù ở phân khúc smartphone nào thì các sản phẩm của họ vẫn luôn được trau chuốt về mặt thiết kế. <strong>Desire U</strong> cũng không phải là một ngoại lệ, chiếc smartphone phổ thông này dù vay mượn khá nhiều chi tiết của đàn anh <strong>Desire X</strong> nhưng vẫn có nét riêng độc đáo.</p><p align="center"><img title="HTC Desire U" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image002.jpg" alt="Thiết kế khá đẹp mắt của Desire U" height="249" width="378"><br><em>Thiết kế khá đẹp mắt của HTC Desire U</em></p><p style="text-align: justify;" align=""><br>Phần mặt trước và các cạnh của <strong>HTC Desire U</strong> giống Desire X một cách đáng kinh ngạc tuy nhiên phần mặt lưng, cụ thể là vị trí camera và đèn flash lại có kiểu dáng riêng với những vòng tròn đồng tâm màu bạc bao quanh.</p><p align="center"><img title="HTC Desire U với phần mặt lưng" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image004.jpg" alt="Phần mặt lưng Desire U mang nét riêng đặc trưng" height="304" width="186"><br><em>Phần mặt lưng HTC Desire U mang nét riêng đặc trưng</em></p><p style="text-align: justify;" align=""><br>Sở hữu màn hình 4 inch và trọng lượng khá nhẹ, cảm giác khi cầm <strong>Desire U</strong> khá tốt, bạn có thể dễ dàng bỏ máy vào túi mà không có cảm giác vướng víu hay cồng kềnh.</p><p align="center"><img title="HTC Desire U cho cảm giác cầm trên tay tốt" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image006.jpg" alt="Cảm giác cầm Desire U trên tay rất tốt" height="247" width="356"><br><em>Cảm giác cầm Desire U trên tay rất tốt</em></p><h3 align=""><br>Cấu hình</h3><p style="text-align: justify;" align="">Là một smartphone thuộc phân khúc phổ thông nên <strong>HTC Desire U</strong> không được trang bị cấu hình khủng như các sản phẩm cao cấp khác của HTC. Máy chỉ dùng chip xử lý đơn nhân 1 GhHz, Ram 512 MB, hỗ trợ 4G bộ nhớ trong và có khe cắm thẻ microSD. Mặc dù so với hiện nay cấu hình của Desire U là khá thấp nhưng nó vẫn đủ khả năng để chạy tốt các chức năng cơ bản của Android như lướt web, check mail hay truy cập Facebook.</p><p align="center"><img title="HTC Desire U vẫn đáp ứng tốt nhu cầu người dùng" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image008.jpg" alt="HTC Desire U vẫn đáp ứng nhu cầu của người dùng" height="289" width="453"><br><em>HTC Desire U vẫn đáp ứng nhu cầu của người dùng</em></p><h3 align=""><br>Màn hình 4 inch</h3><p style="text-align: justify;" align="">Các smartphone phổ thông hiện nay thường có màn hình khá nhỏ và độ phân giải thấp nhưng <strong>Desire U</strong> là một ngoại lệ, máy được trang bị màn hình cảm ứng đa điểm 4 inch tương tự như <a href="http://www.thegioididong.com/dtdd/iphone-5" target="_blank">iPhone 5</a> với viền màn hình khá mỏng. Màn hình của máy có độ phân giải 800 x 480 pixel, hình ảnh hiển thị khá sắc nét và không bị hiện tượng bể hình, màu sắc trung thực.</p><p align="center"><img title="HTC Desire U với màn hình 4 inch" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image010.jpg" alt="Màn hình 4 inch của HTC Desire U cho chất lượng hình ảnh khá tốt" height="279" width="550"><br><em>Màn hình 4 inch của HTC Desire U cho chất lượng hình ảnh khá tốt</em></p><h3 align=""><br>Trang bị âm thanh Beats</h3><p style="text-align: justify;" align="">Một tính năng cao cấp chỉ xuất hiện trên các smartphone tầm trung và cao cấp của HTC là hệ thống âm thanh Beats đã xuất hiện trên <strong>HTC Desire U</strong>. Công nghệ âm thanh Beats giúp cho khả năng chơi nhạc của Desire U được nâng lên tầm cao mới với chất lượng âm sống động và trung thực.</p><p align="center"><img title="HTC Desire U được trang bị công nghệ âm thanh Beats" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image012.jpg" alt="HTC Desire U được trang bị công nghệ âm thanh Beat cao cấp " height="225" width="335"><br><em>HTC Desire U được trang bị công nghệ âm thanh Beats cao cấp</em><strong> </strong></p><h3 align=""><br>Các tính năng đa phương tiện</h3><p style="text-align: justify;" align=""><strong>Desire U</strong> được trang bị camera 5 megapixel với đèn flash trợ sáng được bố trí khá đẹp mắt phía sau máy. Bên cạnh đó smartphone này cũng hỗ trợ kết nối 3G, mạng không dây Wi-Fi b/g/n và Bluetooth chuẩn 3.0. Các tính năng của máy đều hoạt động ổn định trên hệ điều hành Android 4.0 ICS.</p><p align="center"><img title="HTC Desire U sủ dụng Android 4.0" src="http://cdn.tgdd.vn/Products/Images/42/58002/htc-desire-u_clip_image014.jpg" alt="Desire U có đủ các tính năng cơ bản của điện thoại Android" height="274" width="491"><br><em>HTC Desire U có đủ các tính năng cơ bản của điện thoại Android</em></p><p align="right"><strong>Ngô Quốc Bảo</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình 4 inch sắc nét, trung thực.</li>
	<li>Thiết kế đẹp mắt, cầm chắc tay, thoải mái.</li>
	<li>Công nghệ âm thanh Beats cho chất âm tốt, mạnh.</li>
	<li>HĐH Android 4.0 mượt mà, ổn định.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Cấu hình hơi thấp.</li>
</ul></td></tr></tbody></table>', 2, 99, 0, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (13, N'Nokia Lumia 720', N'/Content/Images/Nokia/Nokia Lumia 720.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(6690000 AS Decimal(18, 0)), CAST(6900000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.3", 480 x 800 pixels
CPU:	Qualcomm MSM8227, 2 nhân, 1 GHz
RAM:	512 MB
OS	Windows Phone 8
Camera chính:	6.7 MP, Quay phim HD 720p@30fps
Camera phụ:	1.3 MP
Bộ nhớ trong:	8 GB
Thẻ nhớ tối đa:	64 GB
Pin:	2000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58121/Kit/Nokia-Lumia-720-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.3"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">6.7 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.3 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8227</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 305</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">127.9 x 67.5 x 9 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">128</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BP-4GWA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>7GB lưu trữ SkyDrive<br>Youtube, Gmail<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Lumia 720 – Thiết kế đẹp, chạy Windows Phone 8 với giá phải chăng</h2><p align=""><strong><br>Lumia 720 </strong>sẽ hấp dẫn hơn cho khách hàng khi có cấu vừa phải, cải tiến trong thiết kế, chạy Windows Phone 8 và đặc biệt là giá cả rất phải chăng của dòng <a title="Nokia Lumia" href="http://www.thegioididong.com/nokia-lumia" target="_blank">Lumia</a>.</p>&nbsp;<h3 align=""><br>Thiết kế thân thiện</h3><p style="text-align: center;"><strong><br><img title="Lumia 720 có thiết kế thân thiện" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image001.jpg" alt="Lumia 720 có thiết kế thân thiện" height="367" width="550"></strong><br><em>Lumia 720 có thiết kế thân thiện</em></p><p align=""><br>Nokia đã thay đổi hợp lý các đường cong xung quanh viền mà trước đây chúng ta đã từng thấy trên <a href="http://www.thegioididong.com/dtdd/nokia-lumia-820" target="_blank">Lumia 820</a>. <strong>Nokia Lumia 720</strong> có các viền cong trơn tru, không nở ra như người tiền nhiệm 820. Nokia gọi đó là thiết kế “human” (con người), nó giúp người dùng có cảm giác dễ chịu khi cầm trên tay.</p><p style="text-align: center;"><br><img title="Lumia 720 các góc cạnh" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image002.jpg" alt="Lumia 720 vói các cạnh viền cong ra mặt sau" height="367" width="550"><br><em>Lumia 720 với các cạnh viền cong ra mặt sau</em></p><p align=""><br>Nokia cũng cho biết đây là lần đầu tiên hãng tung ra một chiếc điện thoại thiết kế kiểu unibody (pin liền, nguyên khối) mà cung cấp khe cắm thẻ nhớ microSD. Bạn sẽ thấy một khe cắm thẻ nhớ ở bên cạnh phải, nơi mà Lumia 820 cũng đã đặt khe cắm mở rộng.</p><p align=""><br>Mặc dù không phải là một cải tiến đáng kể so với <strong>Lumia 820</strong> nhưng thiết kế unibody giúp <strong>Lumia 720</strong> vững chắc hơn.</p>&nbsp;<h3 align=""><br>Màn hình đẹp</h3><p style="text-align: center;"><strong><br><img title="Lumia 720 có màn hình sắc nét" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image003.jpg" alt="Lumia 720 có màn hình sắc nét" height="367" width="550"></strong><br><em>Lumia 720 có màn hình sắc nét<br></em></p><p align="">Cũng giống như các phiên bản thuộc dòng Lumia, Nokia trang bị cho máy một màn hình công nghệ ClearBlack, khá ấn tượng và sắc nét.</p><p align=""><strong><br>Nokia Lumia 720</strong> được trang bị màn hình OLED cảm ứng đa điểm, rộng 4.3 inch, độ phân giải 480 x 800 pixels, tương tự như màn hình trong Lumia 820. Các cạnh của mặt kính uốn cong nhẹ, điều này giúp máy dễ dàng cầm trên tay.</p><p align="center"><br><img title="Lumia 720 hiển thị sắc nét" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image004.jpg" alt="Lumia 720 hiển thị sắc nét mặc dù độ phân giải khá thấp" height="367" width="550"><br><em>Lumia 720 hiển thị sắc nét mặc dù độ phân giải khá thấp<br></em></p>&nbsp;<h3 align=""><br>Hệ điều hành Windows Phone 8</h3><p align="">Máy chạy trên hệ điều hành mới nhất Windows Phone 8, được trang bị trên những dòng điện thoại cao cấp như <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">Lumia 920</a> và <strong>820</strong>. Một số tính năng được cập nhật và tốt nhất như Nokia Maps, cho phép bạn tải về và sử dụng offline, hay như tính năng dẫn đường sử dụng công nghệ GPS Nokia Drive.</p><p align="center"><br><img title="Lumia 720 Windows Phone 8" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image005.jpg" alt="Lumia 720 được cài đặt hệ điều hành Windows Phone 8 với nhiều cải tiến mới" height="367" width="550"><br><em>Lumia 720 được cài đặt hệ điều hành Windows Phone 8 với nhiều cải tiến mới</em></p><p align=""><br>Windows Phone 8 cũng tích hợp với các phương tiện giao thông công cộng, tính năng mang tên HERE sẽ giúp chúng ta định vị nơi đang đứng cũng như không gian khung cảnh 3D...</p>&nbsp;<h3 align=""><br>Máy ảnh khá ấn tượng</h3><p style="text-align: center;"><strong><br><img title="Máy ảnh của Lumia 720 có góc chụp khá rộng" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image010.jpg" alt="Máy ảnh của Lumia 720 có góc chụp khá rộng, hỗ trợ đèn flash" height="342" width="600"></strong><br><em>Máy ảnh của Lumia 720 có góc chụp khá rộng, hỗ trợ đèn flash</em></p><p align=""><br>Mặc dù chỉ sở hữu cảm biến 6.7 MP nhưng máy ảnh của<strong> Nokia Lumia 720</strong> là khá ấn tượng với ống kính f/1.9. Một ống kính như thế giúp Lumia 720 chụp tốc độ nhanh, trong điều kiện ánh sáng thấp máy vẫn có khả năng cho hình ảnh đẹp. Nokia cũng đã tăng góc máy ảnh nhằm có thể chụp được những bức ảnh có góc nhìn rộng hơn.</p>&nbsp;<h3 align=""><br>Sạc pin không dây</h3><p style="text-align: center;"><strong><br><img title="Lumia 720 sạc pin không dây" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image007.jpg" alt="Lumia 720 cho phép sạc pin không dây" height="367" width="550"></strong><br><em>Lumia 720 cho phép sạc pin không dây<br></em></p><p align=""><strong><br>Lumia 720</strong> sử dụng pin có dung lượng như trong <strong>Lumia 920</strong> (2.000mAh), pin không thể tháo rời. Lumia 720 cũng được Nokia trang bị công nghệ sạc pin không dây độc quyền, bạn chỉ cần “ném” điện thoại lên tấm sạc thì pin của máy sẽ bắt đầu được sạc.</p><p style="text-align: center;"><strong><br><img title="Lumia 720 với jack 3.5mm" src="http://cdn.tgdd.vn/Products/Images/42/58121/nokia-lumia-720_clip_image008.jpg" alt="Jack cắm tai nghe 3.5mm nẳm phía trên của Lumia 720" height="367" width="550"></strong><br><em>Jack cắm tai nghe 3.5mm nằm phía trên của Lumia 720</em></p><p align="right"><strong>Hữu Tình</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế nguyên khối, gọn nhẹ, bóng bẩy.</li>
	<li>Màn hình cảm ứng nhanh, nhạy, sắc nét.</li>
	<li>Thỏa sức sáng tạo với camera HD ở mặt trước.</li>
	<li>Thông tin cập nhật liên tục trên màn hình chính với Live Tiles.</li>
	<li>Chụp hình cực đẹp ngay cả khi thiếu sáng.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Khung vỏ nhựa.</li>
	<li>Ram chỉ 512MB.</li>
</ul></td></tr></tbody></table>', 3, 99, 3, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (14, N'Nokia Lumia 925', N'/Content/Images/Nokia/Nokia Lumia 925.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(8990000 AS Decimal(18, 0)), CAST(9200000 AS Decimal(18, 0)), N'Màn hình:	HD, 4.5", 768 x 1280 pixels
CPU:	Qualcomm MSM8960, 2 nhân, 1.5 GHz
RAM	1 GB
Hệ điều hành:	Windows Phone 8
Camera chính:	8.7 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.3 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	2000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/59532/Kit/nokia-lumia-925-mo-ta-chuc-nang-2.jpg"><table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">AMOLED</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">768 x 1280 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.7 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.3 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.5 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8960</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 225</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">129 x 70.6 x 8.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">139</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BL-4YW</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Class B</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">NFC</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Gmail, YouTube, Calendar<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Lumia 925 – Máy ảnh cao cấp, thiết kế tinh tế, sang trọng với khung nhôm chắc chắn</h2><p style="text-align: justify;" align=""><strong><br>Nokia Lumia 925 </strong>đã làm nức lòng các tín đồ công nghệ đặc biệt là những tín đồ Windows Phone với có thiết kế nhôm đẹp mắt, máy ảnh rõ nét hơn cùng hệ điều hành vô cùng mượt mà.</p>&nbsp;<h3 align=""><br>Thiết kế đẹp và chắc chắn</h3><p style="text-align: justify;" align="">Dòng <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">Lumia 920</a> đã được nhiều người đánh giá là có thiết kế tuyệt vời, bắt mắt tuy nhiên dòng 925 lại càng đẹp hơn nhờ bộ khung viền bằng nhôm trơn bóng và cao cấp.</p><p align="center"><img title="Thiết kế đẹp, chắc chắn của Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image033.jpg" alt="Nokia Lumia 925 thiết kế đẹp và chắc chắn" height="400" width="600"><br><em>Thiết kế đẹp và chắc chắn của Lumia 925</em></p><p style="text-align: justify;" align=""><br>Khung viền của <strong>Lumia 925</strong> được thiết kế hơi cong, làm bằng kim loại khá dày, cho cảm giác chắc tay. Đây là thiết kế mà người dùng đã mong đợi từ lâu, tuy nhiên nếu mặt sau làm bằng kim loại nữa thì sẽ tuyệt vời hơn. Mặc dù mặt sau được làm bằng chất liệu polycarbonate nhưng nhờ sự kết hợp màu sắc hợp lý nên Lumia 925 vẫn cho cảm giác hết sức sang trọng và lịch lãm.</p><p align="center"><img title="Khung viền nhôm của Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image004.jpg" alt="Lumia 925 khung viền nhôm" height="407" width="610"><br><em>Khung viền nhôm của Lumia 925</em></p><p style="text-align: justify;" align=""><br>Thiết kế của dòng <a title="Nokia Lumia" href="http://www.thegioididong.com/nokia-lumia" target="_blank">Lumia</a> có một sự “cách điệu” so với người tiền nhiệm đó là máy ảnh to hơn và có phần lồi ra, một chút cổ kính và lạ mắt.</p><p style="text-align: justify;" align=""><strong><br>Nokia Lumia 925</strong> mỏng và nhẹ hơn nhiều so với <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">Lumia 920</a>, nó chỉ mỏng 8.5 mm và nặng 139g (920 nặng 185g và dày 10.7 mm). Nhờ vậy mà người dùng sẽ thoải mái sử dụng mà không bị mỏi tay và cũng&nbsp; giúp máy dễ dàng “đút túi quần” hơn.</p>&nbsp;<h3 align=""><br>Máy ảnh cao cấp</h3><p style="text-align: justify;" align="">Dòng Lumia 920 đã được biết đến với tính năng máy ảnh vô cùng sắc nét và có thể chụp những bức ảnh có độ sáng cao trong điều kiện ánh sáng yếu nhờ công nghệ PureView độc quyền của Nokia. <strong>Lumia 925</strong> đã kế thừa và nâng cao hơn nữa ưu điểm đó. Đây là smartphone đầu tiên có camera dùng 6 lớp thấu kính cùng dual-LED flash cho chất lượng ảnh tốt nhất trong mọi điều kiện ánh sáng.</p><p align="center"><img title="Máy ảnh cao cấp của Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image032.jpg" alt="Nokia Lumia 925 công nghệ PureView" height="400" width="600"><br><em> Máy ảnh cao cấp của Lumia 925</em><em> được tích hợp công nghệ PureView</em></p><p style="text-align: justify;" align=""><br>Đặc biệt là tính năng Nokia Smart Camera được tích hợp trong <strong>Nokia Lumia 925</strong> cho phép chụp nhiều khung ảnh riêng biệt, cho phép tùy chỉnh từng khung hình riêng biệt trước khi ghép lại. Lumia 925 còn có tính năng Action Shot&nbsp;cho khả năng ghép nhiều ảnh liên tiếp tạo hiệu ứng chuyển động, Blur Motion&nbsp;làm mờ cảnh nền và làm nổi bật đối tượng chuyển động.</p><p align="center"><img title="Lumia 925 cùng với đèn flash kép" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image006.jpg" alt="Lumia 925 camera với đèn flash kép" height="407" width="610"><br><em>Lumia 925 cho chất lượng ảnh tuyệt đỉnh cùng với đèn flash kép</em></p><p style="text-align: justify;" align=""><br>Chỉ với máy ảnh 8.7MP nhưng những bức ảnh mà <strong>Nokia Lumia 925</strong> “xuất bản” sẽ không thua kém bất kỳ camera trên smartphone nào hiện nay.</p>&nbsp;<h3 align=""><br>Nhiều tính năng cao cấp hỗ trợ người dùng</h3><p style="text-align: justify;" align=""><strong>Lumia 925</strong> còn được trang bị những tính năng như Hipstamatic, Here Map hỗ trợ bản đồ trực tuyến hoàn hảo, Nokia Music, Music+ cùng một số ứng dụng độc quyền khác mà Nokia cung cấp cho dòng Lumia và 145.000 ứng dụng trong kho ứng dụng Windows Phone.</p><p align="center"><img title="Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image010.jpg" alt="Lumia 925 Hipstamatic" height="360" width="610"><br><em>Tính năng Hipstamatic trên Lumia 925</em></p><p style="text-align: justify;" align=""><br>Tính năng&nbsp;Hipstamatic&nbsp;trên <strong>Nokia Lumia 925</strong> tương tự như một mạng xã hội hình ảnh thu nhỏ, cho phép bạn thấy mọi hoạt động liên quan đến hình ảnh của bạn bè theo dạng TimeLine. Nó cũng cung cấp thêm nhiều bộ lọc hình ảnh đặc sắc, ngoài chụp ngoại cảnh, chân dung, ban đêm bạn còn có thể chụp cả… thức ăn. Không những vậy, bạn cũng có thể vào cửa hàng của Hipstamatic để mua thêm các hiệu ứng chỉnh sửa hình ảnh…. ứng dụng này cũng liên kết với 7 mạng xã hội để đăng tải ảnh chụp.</p>&nbsp;<h3 align=""><br>Màn hình sắc nét</h3><p style="text-align: justify;" align=""><strong>Lumia 925</strong> có màn hình 4.5 inch theo công nghệ màn hình OLED, độ phân giải 1280 x 768 pixels, mặc dù chưa được là full HD nhưng với các tính năng được tích hợp thì hình ảnh của máy vẫn hết sức sống động, sắc nét và có độ tương phản cao.</p><p align="center"><img title="Màn hình OLED 4.5 inch của Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image031.jpg" alt="Lumia 925 màn hình OLED 4.5''" height="400" width="600"><br><em>Màn hình OLED 4.5 inch</em></p><p align="center"><em><img title="Độ tương phản cao trên màn hình OLED của Lumia 925" src="http://cdn.tgdd.vn/Products/Images/42/59532/nokia-lumia-925_clip_image030.jpg" alt="Nokia Lumia 925 ClearBlack" height="400" width="600"></em><br><em>Độ tương phản cao trên màn hình OLED của Lumia 925</em></p><p align=""><br>Nokia cũng trang bị <strong>công nghệ ClearBlack</strong> cho màn hình khiến nó trở nên cực kì sáng và đậm nét, đặc biệt là trong điều kiện ánh sáng chiếu trực tiếp vào màn hình vẫn hết sức rõ ràng.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp, chắc chắn với khung viền nhôm.</li>
	<li>Màn hình cảm ứng siêu nhạy, hình ảnh sắc nét với công nghệ Clearblack cùng Amoled.</li>
	<li>Sáng tạo hơn với Smart Cam giúp bạn chụp nhiều bức ảnh cùng lúc để tạo một chuỗi hành động liên tiếp.</li>
	<li>Bạn có thể điều chỉnh tiêu cự, tốc độ màn trập, ISO,... với Pro Cam.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Không hỗ trợ thẻ nhớ.</li>
	<li>Cấu hình chưa cao.</li>
</ul></td></tr></tbody></table>', 3, 99, 4, 0, 1, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (15, N'Nokia Lumia 520', N'/Content/Images/Nokia/Nokia Lumia 520.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(2990000 AS Decimal(18, 0)), CAST(3400000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.0", 480 x 800 pixels
CPU:	Qualcomm MSM8227, 2 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	Windows Phone 8
SIM:	1 Sim
Camera:	5.0 MP, Quay phim HD 720p@30fps
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	1430 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58119/Kit/Nokia-Lumia-520-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8227</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 305</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">119.9 x 64 x 9.9 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">124</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BL-5J</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1430 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>7 GB lưu trữ SkyDrive<br>Youtube, Gmail</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Lumia 520 – Smartphone nokia lumia giá rẻ, thiết kế đẹp chạy Windows Phone 8</h2><p align=""><strong><br>Nokia Lumia 520</strong> là điện thoại thông minh chạy <a href="http://www.thegioididong.com/tin-tuc-dien-dan/nokia-lumia-520--trai-nghiem-windows-phone-8-gia--46135" target="_blank"> <strong>Windows Phone 8</strong> </a>giá&nbsp;rẻ nhất hiện nay mà Nokia dòng <a title="Nokia Lumia" href="http://www.thegioididong.com/nokia-lumia" target="_blank">Lumia</a> tung ra thị trường. Máy có nhiều màu sắc trẻ trung, và có thiết kế khá “dễ thương”.</p>&nbsp;<h3 align=""><strong><br>Thiết kế “quyến rũ”</strong></h3><p align="center"><strong><br><img title="Nokia Lumia 520" src="http://cdn.tgdd.vn/Products/Images/42/58119/nokia-lumia-520_clip_image001.jpg" alt="Nokia Lumia 520" height="477" width="550"></strong><br><em>Nokia Lumia 520</em></p><p align=""><br>Giống như <a href="http://www.thegioididong.com/dtdd/nokia-lumia-620" target="_blank">Lumia 620</a> trước đó, <strong>Lumia 520</strong> có “body quyến rũ”, thân thiện và dễ sử dụng trong lòng bàn tay. Không giống như các điện thoại cao cấp khác của Nokia, máy có pin rời, mặt sau bằng nhựa uốn cong, rất thoải mái khi cầm trong tay.</p><p align="center"><br><img title="Vỏ sau của Nokia Lumia 520 hơi cong" src="http://cdn.tgdd.vn/Products/Images/42/58119/nokia-lumia-520_clip_image003.jpg" alt="Vỏ sau của Nokia Lumia 520 hơi cong" height="372" width="550"><br><em>Vỏ sau của Nokia Lumia 520 hơi cong</em></p><p align=""><strong><br>Nokia Lumia 520</strong> có màn hình ở mức vừa, 4 inch, dễ dàng bỏ túi, có cảm giác là một sản phẩm cao cấp với vật liệu polycarbonate hàng đầu của Nokia.</p>&nbsp;<h3 align=""><br>Màn hình rõ nét</h3><p align="center"><strong><br><img title="Nokia Lumia 520 - Màn hình rõ nét" src="http://cdn.tgdd.vn/Products/Images/42/58119/nokia-lumia-520_clip_image004.jpg" alt="Nokia Lumia 520 - Màn hình rõ nét" height="367" width="550"></strong><br><em>Nokia Lumia 520 - Màn hình rõ nét</em></p><p align=""><br>Nokia đã tự mình nghiên cứu công nghệ màn hình riêng <strong>ClearBlack</strong>, loại màn hình này đã có mặt trên các dòng <a href="http://www.thegioididong.com/tim-kiem?key=LUMIA" target="_blank">điện thoại Lumia</a>. Chiếc <strong>Lumia 520</strong> sử dụng màn hình LCD độ phân giải 480 x 800 pixels, chưa sắc nét như các đàn anh trước (<a href="http://www.thegioididong.com/dtdd/nokia-lumia-820" target="_blank">Lumia 820</a>, <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">920</a>) nhưng sáng và hiển thị tốt dưới điều kiện ánh sáng cao, đặc biệt là màu đen trắng cùng khả năng tiết kiệm điện năng. Ngoài ra, màn hình của 520 cũng được trang bị công nghệ siêu cảm ứng <strong>Sensitive Touch</strong>, bạn có thể thoải mái đeo găng tay mà vẫn thao tác được trên màn hình.</p><p align="center"><br><img title="Nokia Lumia 520 cho màu sắc trung thực" src="http://cdn.tgdd.vn/Products/Images/42/58119/nokia-lumia-520_clip_image005.jpg" alt="Nokia Lumia 520 cho màu sắc trung thực" height="367" width="550"><br><em>Nokia Lumia 520 cho màu sắc trung thực</em></p>&nbsp;<h3 align=""><br>Windows Phone 8</h3><p align="">Mặc dù là điện thoại thông minh giá rẻ nhưng <strong>Nokia Lumia 520 </strong>vẫn chạy trên hệ điều hành mới nhất Windows Phone 8, hệ điều hành trước đó đã chạy trên các phiên bản cao cấp <a href="http://www.thegioididong.com/dtdd/nokia-lumia-820" target="_blank">Lumia 820</a> hay <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">920</a>. Cảm ứng mượt mà, giao diện thân thiện, hỗ trợ đồ họa mạnh mẽ hơn. Giao diện tùy chỉnh tốt, đa sắc màu, các biểu tượng động với công nghệ Live Tiles.</p><p align="center"><br><img title="Giao diện của Nokia Lumia 520 thân thiện hơn" src="http://cdn.tgdd.vn/Products/Images/42/58119/nokia-lumia-520_clip_image007.jpg" alt="Giao diện của Nokia Lumia 520 thân thiện hơn" height="355" width="550"><br><em>Giao diện của Nokia Lumia 520 thân thiện hơn</em></p><p align=""><strong><br>Lumia 520</strong> cũng đi kèm với ứng dụng có tên HERE – tên mới của Nokia cho ứng dụng bản đồ, định vị vệ tinh GPS. Nó cho phép bạn tải bản đồ để sử dụng offline…</p>&nbsp;<h3 align=""><br>Vi xử lý hai nhân</h3><p align="">Với bộ vi xử lý dual-core tốc độ 1GHz, <strong>Nokia Lumia 520</strong> có khả năng xử lý tốt với mọi ứng dụng. Bộ nhớ Ram chỉ 512MB, tuy nhiên nó không phải là một vấn đề lớn đối với hệ điều hành Windows Phone 8 vốn nổi tiếng là hệ điều hành sử dụng rất ít RAM.</p><p align="right"><strong>Hữu Tình</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp,&nbsp;mới lạ.</li>
	<li>Màn hình siêu nhạy, ngay cả với móng tay, găng tay.</li>
	<li>Chụp hình đẹp, tạo ảnh động, chia sẻ dễ dàng.</li>
	<li>Văn phòng di động với các ứng dụng Outlook, Word, Excel và PowerPoint.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Không có camera trước.</li>
	<li>Không có đèn flash.</li>
	<li>Bộ nhớ Ram chỉ 512MB.</li>
</ul></td></tr></tbody></table>', 3, 99, 2, 10, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (16, N'Nokia Lumia 1520', N'/Content/Images/Nokia/Nokia Lumia 1520.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(12990000 AS Decimal(18, 0)), CAST(13500000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 6.0", 1080 x 1920 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.2 GHz
RAM	2 GB
Hệ điều hành:	Windows Phone 8
Camera chính:	20 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	3400 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60606/Kit/Nokia-Lumia-1520-mo-ta-chuc-nang-2.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">6.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">20 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">1.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Ống kính Carl Zeiss<br>Tự động lấy nét<br>Nhận diện khuôn mặt<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon 800</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">162.8 x 85.4 x 8.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">209</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BV-4BW</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3400 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Nano SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Youtube<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Lumia 1520 Chiếc “Big Phone” 6 inch đầu tiên của Nokia</h2><p align=""><strong><br>Nokia Lumia 1520</strong>, chiếc “phablet” 6 inch đầu tiên của Nokia và cũng là thành viên đầu tiên sử dụng hệ điều hành Windows Phone 8 có màn hình full HD. Với xu thế “chuộng” màn hình cỡ lớn như hiện nay thì việc đưa ra thị trường chiếc smartphone “khủng” như Lumia 1520 sẽ đưa Nokia đi theo một hướng mới, hứa hẹn nhiều thành công hơn nữa cho hãng điện thoại đến từ Phần Lan.</p><p align="center"><br><img title="Lumia 1520 - Một siêu phẩm mới 6 inch của Nokia" src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image002.jpg" alt="Lumia 1520 - Một siêu phẩm mới 6 inch ấn tượng của Nokia"><br><em>Một siêu phẩm mới 6 inch ấn tượng của Nokia</em></p>&nbsp;<h3 align=""><br>Đẹp, chắc, bền và khỏe</h3><p align="">Trung thành với thiết kế bằng nhựa Polycacbonat truyền thống mà đã quá quen trên các sản phẩm dòng <a href="http://www.thegioididong.com/nokia-lumia" target="_blank">Lumia</a> trước đó của <a href="http://www.thegioididong.com/dtdd-nokia" target="_blank">Nokia</a>, <strong>Lumia 1520</strong> vẫn mang phong cách thể thao, năng động nhưng vẫn đảm bảo cảm giác chắc chắn và cứng cáp.</p><p align=""><br>Bề mặt chiếc “big phone” này được phủ lớp sơn hơi nhám, không phải trơn bóng như các thiết bị tầm trung, điều đó giúp hạn chế việc bám dấu vân tay và tạo cảm giác thoải mái bởi khi cầm không cần phải dùng lực nắm quá mạnh, nhất là với kích thước lớn đến 6 inch như siêu phẩm này.</p><p align="center"><br><img title="Lumia 1520 được thiết kế khá gọn gàng" src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image004.jpg" alt="Thân hình của Nokia Lumia 1520 được thiết kế khá gọn gàng"><br><em>Thân hình của Lumia 1520 được thiết kế khá gọn gàng</em></p><p align=""><strong><br>Nokia Lumia 1520 </strong>được thiết kế khá gọn gàng, tuy thân hình lớn nhưng người dùng lại có cảm giác không hề khổng lồ, các cạnh xung quanh màn hình cũng được làm rất mỏng, các cạnh được bo tròn mềm mại, ôm tay. Các phím vật lý vẫn được Nokia duy trì bên cạnh phải thiết bị giống như truyền thống thiết kế của dòng Lumia.</p><p align="center"><br><img title="Jack tiêu chuẩn 3.5mm trên đỉnh Lumia 1520 " src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image006.jpg" alt="Jack tiêu chuẩn 3.5mm trên đỉnh Lumia 1520 "><br><em>Jack tiêu chuẩn 3.5mm trên đỉnh Lumia 1520</em></p>&nbsp;<h3 align=""><br>Màn hình 6 inch điểm đáng chú ý nhất</h3><p align=""><strong>Lumia 1520 </strong>là chiếc <a href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> cỡ lớn bậc nhất của Nokia chính vi vậy nó đã được ưu ái với chiếc màn hình lên đến <strong>6 inch</strong> và độ phân giải nó đạt <strong>1080p Full HD, khiến nó trở thành chiếc điện thoại Windows Phone đầu tiên sở hữu màn hình độ phân giải Full HD này</strong>.</p><p align="center"><br><img title="Màn hình của Lumia 1520 có góc nhìn tốt" src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image008.jpg" alt="Màn hình của Nokia Lumia 1520 có góc nhìn khá tốt"> <br><em>Màn hình của Lumia 1520 có góc nhìn khá tốt</em></p><p align=""><br>Với một chiếc màn hình lên đến 6 inch cùng chất lượng hiển thị tốt như vậy có lẽ sẽ khiến bạn nghiền game và mê xem phim hơn, những trải nghiệm sẽ rất ấn tượng, ngoài ra việc duyệt văn bản, chỉnh sửa văn bản cũng thoải mái hơn, nội dung được hiển thị đầy đủ, bao quát dễ dàng hơn.</p>&nbsp;<h3 align=""><br>Cấu hình thuộc “Top” đầu của thị trường smartphone</h3><p align=""><strong>Nokia Lumia 1520</strong> được trang bị cấu hình thuộc hàng “khủng” trên thị trường di động tại thời điểm ra mắt, đó là bộ xử lý <strong>Qualcomm Snapdragon 800</strong> lõi tứ với 2GB RAM và 32GB bộ nhớ trong và hỗ trợ thêm khe cắm thẻ nhớ ngoài. Tuy hệ điều hành Windows 8 không đòi hỏi cấu hình cao như Android nhưng Nokia vẫn trang bị cho “đứa con cưng” của mình “quả tim” khỏe giúp tương thích với hầu hết các ứng dụng hay game khủng hiện nay, khiến mọi thứ trở nên tuyệt vời hơn, mượt mà hơn.</p><p align="center"><em><br><img title="Giao diện ô vuông quen thuộc trên Windows 8" src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image010.jpg" alt="Giao diện ô vuông quen thuộc trên Windows 8 của Nokia Lumia 1520"></em><br><em>Giao diện ô vuông quen thuộc trên Window 8</em></p><p align=""><strong><br>Lumia 1520</strong> còn sở hữu dung lượng pin lên đến 3400mAh, có thể đảm bảo công việc, giải trí, lướt web, nghe nhạc, cập nhật tin tức và tham gia các mạng xã hội một cách thường xuyên, thuận tiện. Với cấu hình khủng, Lumia 1520 có thể cài đặt và chạy bất kì ứng dụng hay game khủng nào.</p>&nbsp;<h3 align=""><br>Ấn tượng với camera sau 20MP, camera trước 1.9MP</h3><p align="">Camera chính là thế mạnh của <strong>Nokia</strong> và chính điều đó đã giúp hãng điện thoại đến từ Phần Lan có thể đứng vững qua nhiều thời kỳ sóng gió trước đây. Luôn đi đầu trong cuộc đua camera và đã khá nổi tiếng với PureView của mình. Tuy không bằng người anh “siêu khủng” <strong>Lumia 1020</strong> của mình nhưng với camera 20MP Lumia 1520 cũng đã khiến nhiều sản phẩm cạnh tranh phải ngước nhìn.</p><p align="center"><br><img title="Camera sau của Lumia 1520" src="http://cdn.tgdd.vn/Products/Images/42/60606/nokia-lumia-1520_clip_image012.jpg" alt="Camera sau Nokia Lumia 1520 được thiết kế nhô cao hơn so với nắp lưng"><br><em>Camera sau được thiết kế nhô cao hơn so với nắp lưng</em></p><p align=""><br>Sản phẩm mới của Nokia có khả năng quay video full HD, tốc độ chụp và lấy nét cực nhanh, khả năng bù sáng rất tốt, đặc biệt hỗ trợ khá nhiều hiệu ứng chỉnh sửa ảnh và video đẹp mắt. Sau khi chụp bạn có thể chia sẻ một cách nhanh chóng lên mạng xã hội hay có thể kết nối mạng và đồng bộ ngay với các kho lưu trữ như SkyDrive.</p><p align="right"><strong>Trung Hiếu</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế gọn gàng, thời trang, chất liệu cao cấp.</li>
	<li>Màn hình 6 inch, chất lượng full HD, góc nhìn rộng.</li>
	<li>Cấu hình thuộc Top "khủng" chip bốn nhân snapdragon 800 cho hiệu suất vượt trội.</li>
	<li>Pin 3400mAh có thời lượng tốt.</li>
	<li>Camera 20MP cho chất lượng hình ảnh tuyệt vời.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Màn hình quá khổ, sẽ khó sử dụng nếu chưa quen.</li>
</ul></td></tr></tbody></table>', 3, 99, 4, 0, 1, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (17, N'Nokia Lumia 620', N'/Content/Images/Nokia/Nokia Lumia 620.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(3690000 AS Decimal(18, 0)), CAST(3900000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 3.8", 480 x 800 pixels
CPU:	Qualcomm Snapdragon S4, 2 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	Windows Phone 8
Camera chính:	5.0 MP, Quay phim HD 720p@30fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	1300 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/57831/Kit/chuc-nang-lumia620.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Windows Phone 8</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">3.8"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon S4</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 305</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">115.4 x 61.1 x 11 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">127</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BL-4J</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1300 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, dual-band</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP, EDR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Class B</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Bộ lưu trữ SkyDrive<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Lumia 620 – Windows phone 8 trong tầm tay bạn</h2><p align=""><br>Vừa qua, Nokia đã bắt đầu giới thiệu <strong>Nokia Lumia 620</strong> một model tầm trung dành cho các thị trường đang phát triển như Việt Nam, máy sẽ được bán ra trong tháng 1/2013. Đây là thành viên mới nhất và nhỏ nhất của công ty Phần Lan chạy trên nền Windows Phone 8. Nokia Lumia 620 sẽ là đối thủ cạnh tranh trực tiếp với bộ 3 điện thoại <a href="http://www.thegioididong.com/dtdd/sony-xperia-u" target="_blank">Xperia U</a>, <a href="http://www.thegioididong.com/dtdd/sony-xperia-j-st26i" target="_blank">Xperia J</a> và <a href="http://www.thegioididong.com/dtdd/sony-xperia-go" target="_blank">Xperia Go</a> của Sony cũng như <a href="http://www.thegioididong.com/dtdd/htc-one-v" target="_blank">HTC One V</a> hay một số dòng Galaxy của Samsung đang được chú ý. Tuy nhiên, Lumia 620 có những điểm mạnh nhất định, hứa hẹn sẽ để lại những dấu ấn riêng trên thị trường smartphone tầm trung tại Việt Nam.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620.jpg" alt="Nokia Lumia 620" height="371" width="500">&nbsp;<br><em>Nokia Lumia 620</em></p>&nbsp;<h3 align="left"><br>Thiết kế ấn tượng với vỏ polycarbonate</h3><p align="">Điểm nhấn lớn nhất của máy chính là bộ vỏ đầy màu sắc. <strong>Lumia 620</strong> sử dụng kỹ thuật màu phủ kép (dual-shot) mới, mang lại những hiệu ứng màu sắc và hoa văn độc đáo. Kỹ thuật phủ kép bổ sung thêm một lớp polycarbonate màu, trong suốt hoặc trong mờ phía trên lớp nền để tạo ra những màu phối và chiều sâu lý thú. Với bảy màu vỏ rời khác nhau, người dùng có thể kết hợp điện thoại Nokia Lumia 620 với sở thích và phong cách riêng của mình.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620 đa sắc màu" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-bo-vo-da-sac-mau.jpg" alt="Nokia Lumia 620 bộ vỏ đa sắc màu với lớp polycarbonate" height="365" width="618">&nbsp;<br><em>Bộ vỏ đa sắc màu với lớp polycarbonate</em></p>&nbsp;<h3 align="left"><br>Màn hình công nghệ ClearBlack Display siêu sáng</h3><p align=""><strong>Nokia Lumia 620</strong> được trang bị màn hình cảm ứng công nghệ ClearBlack LCD giúp máy hiển thị tốt ngay cả trong điều kiện ánh sáng mạnh, kích thước 3.8 inch độ phân giải WVGA (800x480p), mật độ điểm ảnh 246 ppi. Đây là những thông số rất ấn tượng ngang ngửa với màn hình của các dòng smartphone cao cấp.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620 với công nghệ ClearBlack" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-man-hinh-3.8inches.jpg" alt="Lumia 620 có màn hình 3.8 inch với công nghệ ClearBlack" height="450" width="623"><br> <em>Màn hình 3.8 inch với công nghệ ClearBlack</em></p>&nbsp;<h3 align="left"><br>Phần cứng mạnh mẽ</h3><p align=""><strong>Lumia 620</strong> mang trên mình bộ vi xử lý lõi kép Krait tốc độ 1GHz, chip đồ họa Adreno 305 GPU, RAM 512, bộ nhớ trong dung lượng 8GB và có hỗ trợ khe cắm thẻ microSD với dung lượng đến 64 GB. Nếu so với các đối thủ trực tiếp có cùng mức giá hiện nay thì rõ ràng Lumia 620 có dàn “nội thất” toàn diện nhất.</p><p align=""><br>Ngoài ra, Lumia 620 còn thừa hưởng một số tính năng từ <a href="http://www.thegioididong.com/dtdd/nokia-lumia-920" target="_blank">Nokia Lumia 920</a> và <a href="http://www.thegioididong.com/dtdd/nokia-lumia-820" target="_blank">Lumia 820</a> là thấu kính máy ảnh khẩu độ f/2.4 độc quyền với máy ảnh chính 5 MP hỗ trợ quay video HD 720p@30fps và máy ảnh VGA phụ phía trước, cho phép tạo ra những ảnh động thú vị với Nokia Cinemagraph và tự động chọn lựa gương mặt với Smartshoot. Ngoài ra, Nokia Lumia 620 cũng cho phép truy cập vào Nokia Maps, Nokia Drive, Nokia Transport và Nokia City Lens.</p><p align=""><br><strong>Nokia Lumia 620</strong> được trang bị đầy đủ các kết nối phổ biến trên smartphone hiện nay như Bluetooth 3.0 với A2DP và EDR, microUSB 2.0, 3G HSDPA tốc độ 21 Mbps, Wifi chuẩn a/b/g/n hỗ trợ dual-band, định vị GPS và tất nhiên là cả giao tiếp NFC đang rất “hot”.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620 với Camera chính 5 MP" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-camera-5MP.jpg" alt="Lumia 620 camera chính 5 MP với đèn flash" height="320" width="622">&nbsp;<br><em>Camera chính 5 MP với đèn flash</em></p><p align="center"><img title="Nokia Lumia 620 với camera phụ VGA" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-camera-phu.jpg" alt="Lumia 620 camera VGA phụ phía trước" height="301" width="616">&nbsp;<br><em>Camera VGA phụ phía trước</em></p>&nbsp;<h3 align="left"><br>Trải nghiệm Window Phone 8</h3><p align="">Với các tín đồ của Windows Phone, <strong>Lumia 620</strong> cũng là lựa chọn rẻ nhất giúp họ trải nghiệm phiên bản Windows Phone 8 với các ô Live Tiles hấp dẫn. Nền tảng mới của Microsoft hỗ trợ phần cứng mạnh mẽ và cao cấp hơn so với Windows Phone 7 trước đây, như hỗ trợ vi xử lý đa nhân (lõi kép hay lõi tứ), màn hình độ phân giải cao hơn (HD 720p hay Full HD 1080p), hỗ trợ khe cắm thẻ nhớ ngoài dung lượng tới 64 GB hay công nghệ giao tiếp NFC…</p><p align=""><br>Các ô Live Tile trên <strong>Nokia Lumia 620</strong> liên tục cập nhật trạng thái trên màn hình chính, People Hub tập hợp thông tin liên hệ từ nhiều nguồn vào một nơi duy nhất, Me Tile giúp mọi người có thể cập nhật những thông tin cá nhân mới nhất trên khắp các kênh Facebook, LinkedIn và Twitter. Windows Phone 8 cũng bao gồm Xbox Live, Microsoft Office, SkyDrive với dung lượng lưu trữ trực tuyến 7GB và Internet Explorer 10 giúp lướt web nhanh hơn và an toàn hơn.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620 với cổng microUSB" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-micro-USB.jpg" alt="Lumia 620 đuôi máy với cổng microUSB và mic thoại" height="307" width="617">&nbsp;<br><em>Đuôi máy với cổng microUSB và mic thoại</em></p><p style="text-align: center;"><img title="Nokia Lumia 620 với jack 3.5mm" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-jack-3.5mm.jpg" alt="Lumia 620 đỉnh máy với jack 3.5mm và mic lọc thoại" height="313" width="621">&nbsp;<br><em>Đỉnh máy với jack 3.5mm và mic lọc thoại</em></p>&nbsp;<h3 align="left"><br>Thưởng thức âm nhạc đỉnh cao</h3><p align="">Không thuê bao, không cước phí, không giới hạn, đó là những gì Nokia Music cung cấp cho bạn. Những bài hát của các ca sĩ yêu thích sẽ được "streaming" miễn phí trên điện thoại của bạn. Bạn có thể lựa chọn trong hàng trăm kênh nhạc khác nhau hoặc tạo một kênh cho riêng mình. Và đặc biệt nhất là bạn vẫn có thể nghe nhạc ngay cả khi offline. Với sự hỗ trợ của NFC, <strong>Lumia 620</strong> có thể kết hợp với các phụ kiện có tính năng này như loa di động JBL PlayUp cho Nokia.</p><p align=""><br>Ngoài ra <strong>Nokia Lumia 620</strong> còn hỗ trợ jack tai nghe 3.5 mm với công nghệ Dolby khuếch đại âm thanh cho bạn cảm giác như đang ở trong một nhà hát mini.</p><p style="text-align: center;"><br><img title="Nokia Lumia 620 với nắp lưng" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-jack-3.5mm-dinh-lien-voi-nap-lung.jpg" alt="Lumia 620 jack 3.5 mm dính liền với nắp lưng" height="450" width="600">&nbsp;<br><em>Jack 3.5 mm dính liền với nắp lưng</em></p><p style="text-align: center;"><img title="Nokia Lumia 620 các phần bên trong" src="http://cdn.tgdd.vn/Products/Images/42/57831/Nokia-Lumia-620-ben-trong-may.jpg" alt="Lumia 620 bên trong máy" height="368" width="595">&nbsp;<br><em>Bên trong máy</em></p><p align="right"><strong>Nguyễn Trọng Văn</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế thanh lịch, rực rỡ cùng bộ vỏ 2 màu độc đáo.</li>
	<li>Tạo ảnh động và chia sẻ dễ dàng với ứng dụng Cinemagraph.</li>
	<li>Màn hình hiển thị sắc nét.</li>
	<li>Chụp ảnh nhóm hoàn hảo với Smart Shoot.</li>
	<li>Khám phá những địa điểm thú vị xung quanh bạn.</li>
	<li>Làm việc mọi lúc mọi nơi với Outlook, Word, Excel và PowerPoint.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Vỏ bẳng nhựa bóng nên dễ bị trượt khi tay có mồ hôi.</li>
	<li>Nắp lưng khó tháo rời.</li>
</ul></td></tr></tbody></table>', 3, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (18, N'Nokia Asha 503 Dual', N'/Content/Images/Nokia/Nokia Asha 503 Dual.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Nokia/Hinh360-Nokia/Nokia-Lumia-720-hinh360-1.jpg', N'" /> </a>', CAST(1900000 AS Decimal(18, 0)), CAST(2050000 AS Decimal(18, 0)), N'Màn hình:	QVGA, 3.0", 240 x 320 Pixels
SIM:	2 SIM 2 sóng
Camera:	5.0 MP
Danh bạ:	4000 số
Thẻ nhớ ngoài đến:	32 GB
Kết nối Bluetooth	Có, V3.0 với A2DP
Chức năng khác	Mạng xã hội ảo
Youtube
Dung lượng pin	1200 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60678/Kit/nokia-asha-503-dual-sim-mo-ta-chuc-nang-1.jpg">    <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Nokia Asha software platform 1.2</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">262.144 màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">QVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">240 x 320 Pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">3.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim QVGA@15fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">-</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">164 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">4000 số</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">102.6 x 60.6 x 12.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">111.4</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin Nokia BL-4U</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1200 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, AAC, AMR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Youtube</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Nokia Asha 503 – Thiết kế bền bỉ, kết nối nhanh chóng, 2 SIM</h2><p style="text-align: justify;" align=""><strong><br>Nokia Asha 503</strong> có thiết kế hình chữ nhật trông khá góc cạnh. Điều thí vị là máy được bọc lớp vỏ giả kinh độc đáo, trông như chúng được đông lạnh trong đá. Ngoài việc trang trí, lớp vỏ này còn giúp tăng độ bền và thêm cảm giác mạnh mẽ cho máy.</p><p align="center"><em><img title="Thiết kế độc đáo của Nokia Asha 503" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image002.jpg" alt="Nokia Asha 503 thiết kế độc đáo " height="400" width="600"></em><br><em>Thiết kế độc đáo của Nokia Asha 503</em></p><p style="text-align: justify;" align=""><br>Với lõi máy sử dụng màu sắc mạnh mẽ ẩn dưới lớp vỏ trong suốt, <strong>Asha 503</strong> luôn luôn nổi bật với nét thiết kế độc đáo. Và những tính năng cao cấp khác như màn hình Corning Gorilla Glass 2 chống xước giúp trở thành chiếc điện thoại bền bỉ và chắc chắn.</p><p align="center"><em><img title="Asha 503 có nhiều màu sắc rực rỡ" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image004.jpg" alt="Asha 503 có nhiều màu sắc rực rỡ" height="400" width="600"></em><br><em>Asha 503 có nhiều màu sắc rực rỡ</em></p><p style="text-align: justify;" align=""><strong><br>Nokia Asha 503 Dual Sim</strong> có dạng thanh với màn hình 3 inch nhỏ gọn, thiết kế vừa lòng bàn tay người dùng, đặc biệt là người dân Việt Nam. Điểm thu hút các bạn trẻ đó là máy có nhiều màu sắc để bạn chọn lựa sao cho thích hợp với cá tính của mình nhất.</p>&nbsp;<h3 align=""><br>Đầy đủ kết nối với tốc độ cao</h3><p style="text-align: justify;" align="">Mặc dù là điện thoại tính năng tuy nhiên <strong>Asha 503</strong> được Nokia trang bị đầy đủ kết nối như một smartphone cao cấp. Máy hỗ trợ kết nối Wifi, 2G, 3.5G cho tốc độ kết nối tốc độ cao và mọi lúc mọi nơi. Việc chia sẻ với bạn bè, chạy ứng dụng, xem video và tải ảnh lên các mạng xã hội, tất cả đều nhanh hơn với kết nối 3.5G.</p><p align="center"><img title="Asha 503 cho bạn kết nối nhanh chóng mọi lúc mọi nơi" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image006.jpg" alt="Nokia Asha 503 kết nối internet" height="450" width="600"><br><em>Asha 503 cho bạn kết nối nhanh chóng mọi lúc mọi nơi</em></p>&nbsp;<h3 align=""><br>Hỗ trợ 2 SIM tiện lợi</h3><p style="text-align: justify;" align="">Khi sử dụng 2 SIM, bạn sẽ có khả năng tận dụng tốt nhất gói cước của các nhà mạng khác nhau. Một để tải dữ liệu, một để nhắn tin. Sử dụng nhiều SIM khác nhau để tiết kiệm chi phí. <strong>Nokia Asha 503</strong> hỗ trợ ghi nhớ cài đặt lên tới năm SIM khác nhau nên bạn có thể chuyển đổi qua lại thật dễ dàng.</p><p align="center"><em><img title="Hữu ích khi Nokia Asha 503 được trang bị 2 SIM" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image008.jpg" alt="Asha 503 2 SIM tiện lợi" height="400" width="600"></em><br><em>Hữu ích khi Nokia Asha 503 được trang bị 2 SIM tiện lợi</em></p>&nbsp;<h3 align=""><br>Máy ảnh 5MP, hỗ trợ đèn flash, chia sẻ nhanh chóng</h3><p style="text-align: justify;" align="">Với <strong>Asha 503</strong>, bạn có thể tự tin chia sẻ những bức ảnh bạn chụp với camera 5MP và đèn flash gắn sẵn. Nhờ vậy, bạn có thể lưu lại những hình ảnh có độ sáng tốt hơn, đặc biệt là trong bóng tối.</p><p align="center"><em><img title="Nokia Asha 503 với máy ảnh 5MP hỗ trợ đèn flash" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image014.jpg" alt="Nokia Asha 503 máy ảnh 5MP hỗ trợ đèn flash" height="450" width="600"></em><br><em>Máy ảnh 5MP hỗ trợ đèn flash</em></p><p style="text-align: justify;" align=""><br>Tính năng chụp ảnh cũng hết sức tiện dụng, chụp và tải ảnh lên cực nhanh. Chỉ cần vuốt nhẹ từ màn hình khóa vào ứng dụng chụp ảnh và bạn đã sẵn sàng ngay. Chia sẻ cũng trở nên rất dễ dàng – chỉ cần một lần chạm để tải ảnh ngay lên Facebook.</p>&nbsp;<h3 align=""><br>Truy cập nhanh với Fastlane</h3><p style="text-align: justify;" align="">Các smartphone cao cấp có những phím tắt riêng để truy cập nhanh những ứng dụng gần nhất và <strong>Nokia Asha 503 Dual Sim </strong>cũng làm được điều đó. Với Fastlane giúp bạn truy cập nhanh các ứng dụng, số liên lạc, cập nhật Facebook, Twitter gần đây và các sự kiện tiếp theo trong lịch của bạn trên cùng một màn hình. Nó còn hiển thị cả số lượng người thích và bình luận trên các bức ảnh và bài đăng của bạn trên Facebook.</p><p align="center"><img title="Trải nghiệm thú vị với FastLane trên Asha 503" src="http://cdn.tgdd.vn/Products/Images/42/60678/nokia-asha-503-dual-sim_clip_image012.jpg" alt="Trải nghiệm thú vị với FastLane trên Asha 503" height="450" width="600"> <br><em>Trải nghiệm thú vị với FastLane như trên một smartphone đẳng cấp </em></p>&nbsp;<h3 align=""><br>Tóm lại</h3><p style="text-align: justify;" align=""><strong>Nokia Asha 503 </strong>không có những tính năng đình đám như các smartphone cao cấp, nhưng chúng lại rất đầy đủ các tính năng cơ bản, đặc biệt là màn hình được trang bị kính cường lực chống xước cùng đầy đủ kết nối để chia sẻ hình ảnh, trạng thái lên mạng xã hội một cách nhanh chóng. <strong>Asha 503</strong> phù hợp cho các bạn trẻ thích một điện thoại giá cả phải chăng, thiết kế bền bỉ, trẻ trung mà đầy đủ tính năng.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế bền bỉ, trẻ trung và nhiều màu sắc.</li>
	<li>Đầy đủ kết nối 3G, Wifi tốc độ nhanh chóng.</li>
	<li>Hỗ trợ 2 SIM tiện dụng.</li>
	<li>Máy ảnh 5MP, hỗ trợ đèn flash.</li>
	<li>Tính năng truy cập nhanh Fastlane hữu ích.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Bộ nhớ trong thấp, chỉ 150MB.</li>
</ul></td></tr></tbody></table>', 3, 99, 0, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (19, N'Samsung Galaxy S5', N'/Content/Images/Samsung/Samsung Galaxy S5.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(16700000 AS Decimal(18, 0)), CAST(18000000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.1", 1080 x 1920 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.5 GHz
RAM	2 GB
Hệ điều hành:	Android 4.4 (KitKat)
Camera chính:	16 MP, Quay phim FullHD 1080p@60fps
Camera phụ:	2.0 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	2800 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60809/Kit/Samsung-Galaxy-S5.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.4 (KitKat)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super AMOLED</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.1"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">16 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@60fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.5 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon 800</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">142.0 x 72.5 x 8.1 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">145</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2800 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Nano SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+, AMR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Google Talk, Picasa<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Samsung Galaxy S5 - Tính năng mạnh mẽ trong vẻ ngoài chưa đột phá</h2><p style="text-align: justify;" align="">Cuối cùng, sau nhiều đồn đoán và trông đợi, chiếc <strong>Galaxy S5</strong> đã chính thức ra mắt tại MWC 2014, trở thành siêu phẩm điện thoại thông minh mới nhất, mạnh mẽ nhất của hãng điện thoại Hàn Quốc này.</p><h3 align=""><br>Cấu hình với những thông số khủng</h3><p style="text-align: justify;" align="">Khi ra mắt siêu phẩm của mình, <strong>Samsung</strong> công bố những thông số cấu hình khủng của S5. Máy sử dụng CPU <strong>Snapdragon 800</strong>, là dòng chip di động mạnh mẽ nhất của Qualcomn. Tuy nhiên, những chiếc smartphone, tablet cao cấp nhất cũng chỉ được trang bị dòng chip có xung nhịp 2.3 GHz, trong khi S5 được nhà sản xuất nâng cấp lên xung nhịp đến 2.5 GHz.</p><p style="text-align: justify;" align="">Với cấu hình như thế này, cầm chiếc <strong>Galaxy S5</strong> trên tay, bạn không chỉ thoả mãn với tốc độ xử lý tác vụ, chơi game đồ hoạ cao một cách mượt mà, chạy đa nhiệm một cách trơn tru, chiếc điện thoại tiềm ẩn những sức mạnh độc đáo hơn rất nhiều như: xem và quay phim 4K, hỗ trợ camera độ phân giải cực cao, màn hình phân giải cao...</p><p align="center"><img title="Siêu phẩm Galaxy S5 chính thức ra mắt, sở hữu cấu hình mạnh mẽ" src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image001.jpg" alt="Samsung Galaxy S5"><br><em>Siêu phẩm Galaxy S5 chính thức ra mắt, sở hữu cấu hình mạnh mẽ</em></p><p style="text-align: justify;" align="">Máy hoạt động với nguồn pin 2.800 mAh và phiên bản Android 4.4 KitKat mới nhất, khiến bạn hoàn toàn yên tâm khi cài đặt bất cứ ứng dụng nào vào máy và không cần có chút bận tâm về khả năng chạy và xử lý. Dung lượng pin 2.800 mAh được <strong>Samsung</strong> tuyên bố đủ để S5 đàm thoại trong 21 giờ, có thể tháo rời, thay thế khi cần thiết. Pin cũng là một sự cải tiến đáng kể so với chiếc <strong>Galaxy S4</strong> tiền nhiệm, chỉ đạt 2600 mAh.</p><h3><br>Kết nối mạnh mẽ</h3><p style="text-align: justify;" align=""><strong>Samsung Galaxy S5</strong> trang bị một cổng micro USB chuẩn 3.0 giúp việc truyền tải dữ liệu của điện thoại đến máy tính nhanh gấp 10 lần chuẩn 2.0 thông thường. Cổng USB có thêm cổng chống nước, là một điểm khác biệt so với Galaxy S4.</p><p style="text-align: justify;" align="">Đồng thời, máy trang bị chuẩn kết nối internet tốc độ cao 4G LTE, Wifi 802.11ac hay còn gọi là công nghệ Wifi thế hệ thứ 5 mang lại tốc độ kết nối nhanh hơn, Bluetooth và tính năng độc đáo Download Booster cho tốc độ tải lên đến 400 Mbps.</p><p align="center"><img title="Kết nối tốc độ cao với 4G LTE và Wifi chuẩn AC" src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image006.jpg" alt="Galaxy S5 4G LTE và Wifi AC"><br><em>Kết nối tốc độ cao với 4G LTE và Wifi chuẩn AC</em></p><h3 align=""><br>Vẻ ngoài không đột phá</h3><p style="text-align: justify;" align="">Nếu bạn liên tục trầm trồ về những cải tiến phần cứng mạnh mẽ và cao cấp thì bạn sẽ có đôi chút thất vọng về vẻ ngoài chưa tương xứng mà <strong>Galaxy S5</strong> trình diễn trong lần ra mắt này. Vẫn là thiết kế vỏ nhựa quen thuộc, không có bất cứ sự đột phá nào trong chất liệu. Một cảm giác quá quen thuộc không mang đến nhiều sự hứng thú cho những người dùng yêu công nghệ.</p><p align="center"><strong><img title="Mặt sau sản phẩm được thiết kế vỏ nhựa, có chấm bi li ti, kém sang trọng" src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image002.jpg" alt="Galaxy S5 mặt sau"></strong><br><em>Mặt sau sản phẩm được thiết kế vỏ nhựa, có chấm bi li ti, kém sang trọng</em></p><p style="text-align: justify;" align="">Bên cạnh đó, chiếc nắp lưng của <strong> S5</strong> lại nhận nhiều đánh giá của giới công nghệ rằng nó hơi kỳ cục khi được thiết kế bằng lớp nhựa, vỏ bóng, có vân nổi với nhiều chi tiết chấm bi li ti. Đây là điểm khác biệt khá lớn với vỏ giả da của các thế hệ Galaxy Note mới đây, được đánh giá làm mất điểm sang trọng của siêu phẩm mới này.</p><p style="text-align: justify;" align="">Thiết bị gần như giữ nguyên thiết kế so với người anh em S4 đình đám của mình. Tuy nhiên, như núp dưới bóng của một sự thành công, S5 không thoả mãn người dùng khi chỉ có một số chi tiết thay đổi nhẹ như các góc máy, cạnh khung camera được vát vuông vức hơn một chút.</p><p align="center"><img title="Galaxy S5 tích hợp cảm biến dấu vân tay " src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image007.jpg" alt="Samsung Galaxy S5 tích hợp cảm biến dấu vân tay "><br><em>Galaxy S5 tích hợp cảm biến dấu vân tay </em></p><p style="text-align: justify;" align="">Trên nút Home của sản phẩm, Samsung đã tích hợp tính năng bảo mật dấu vân tay như những lời đồn đoán trước đây. Tuy nhiên, để sử dụng tính năng này, người dùng phải quét tay theo chiều dọc chứ không chỉ chạm nhẹ nhàng như Touch ID trên <a href="http://www.thegioididong.com/dtdd/iphone-5s-64gb" target="_blank">iPhone 5s</a>.</p><p style="text-align: justify;" align="">Ngoài ra, cảm biến vân tay trên thiết bị còn cho phép bạn thanh toán trực tuyến thông qua Paypal. Phía sau máy, có cảm biến nhịp tim sẽ là tính năng quan trọng để người dùng theo dõi sức khoẻ của mình.</p><h3 align=""><br>Màn hình chống nước siêu nét, camera khủng</h3><p style="text-align: justify;" align="">Một cải tiến rất đáng giá trên Galaxy S5 chính là sở hữu tiêu chuẩn IP67 chống thấm nước, bụi, chính thức trở thành đối thủ nặng ký với chiếc smartphone "không sợ nước" của <a href="http://www.thegioididong.com/sony-xperia" target="_blank">Sony Xperia</a>. Trên sản phẩm, bạn sẽ không thể tìm thấy bất cứ khe hở nào để bụi bẩn hay nước có thể thấm qua, giúp bạn yên tâm sử dụng thiết bị trong những điều kiện khắc nghiệt.</p><p style="text-align: justify;" align="">Và, theo cam kết của Samsung, bạn có thể ngâm điện thoại trong nước 30 phút mà vẫn không làm điện thoại hư hỏng gì. Màn hình 5.1 inch, nhỉnh hơn đôi chút so với S4 và đạt chuẩn hiển thị Full HD, cho bạn những trải nghiệm xem phim, game,.. đã mắt.</p><p align="center"><strong><img title="Tiêu chuẩn IP67 chống thấm nước và bụi, hiển thị Full HD" src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image005.jpg" alt="Samsung Galaxy S5 IP67 chống thấm nước và bụi"></strong><br><em>Tiêu chuẩn IP67 chống thấm nước và bụi, hiển thị Full HD</em></p><p style="text-align: justify;" align="">Siêu phẩm mới của <strong>Samsung</strong> được trang bị camera khủng lên đến 16 MP, hỗ trợ đèn Flash Led, chế độ HDR tiên tiến. Camera cho bạn những tính năng chụp ảnh xuất sắc, vốn có của Samsung như chọn ảnh đẹp nhất, chụp đồng thời camera trước và sau.</p><p style="text-align: justify;" align="">Đặc biệt nhất trên <strong>S5</strong> chính là khả năng lấy nét siêu nhanh. Samsung khẳng định siêu phẩm của họ có khả năng lấy nét nhanh nhất so với bất kỳ chiếc smartphone nào, chỉ 0,3 giây. Camera trước đạt 2.1 MP cho bạn hình ảnh chất lượng khi chat voice hay "tự sướng".</p><p align="center"><img title="Camera chính 16MP chụp ảnh, quay phim chất lượng cao" src="http://cdn.tgdd.vn/Products/Images/42/60809/samsung-galaxy-s5_clip_image008.jpg" alt="Galaxy S5 Camera 16MP"><br><em>Camera chính 16MP chụp ảnh, quay phim chất lượng cao</em></p><h3 align=""><br>Tóm lại:</h3><p style="text-align: justify;" align="">Sau rất nhiều lời đồn đoán và chờ đợi, người dùng đã chứng kiến sự ra đời của chiếc smartphone cao cấp <strong>Samsung Galaxy S5</strong>. Dù có nhiều tranh cãi trong thiết kế và một số tính năng cuả sản phẩm nhưng đây vẫn là một siêu phẩm hứa hẹn làm hài lòng những người dùng công nghệ cao cấp.</p><p style="text-align: justify;" align="">Những tính năng cao cấp mới tích hợp như cảm biến dấu vân tay, camera khủng, màn hình chống thấm nước cùng bộ xử lý siêu mạnh mẽ sẽ là những điểm cộng khiến bạn muốn thử chạm vào, trải nghiệm cùng siêu phẩm này.</p><p align="right"><strong>Biên Thành</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Chống thấm nước và bụi theo tiêu chuẩn IP 67.</li>
	<li>Mạnh mẽ với Snapdragon 800, xung nhịp 2.5GHz.</li>
	<li>Màn hình Full HD sắc nét, rộng rãi với 5.1inch.</li>
	<li>Camera 16MP&nbsp;lấy nét nhanh, 0.3 giây.</li>
	<li>Hệ điều hành mới Android 4.4 KitKat.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Thiết kế thiếu độc đáo và đột phá.</li>
	<li>Sử dụng vỏ nhựa, chưa thực sự sang trọng.</li>
</ul></td></tr></tbody></table>', 4, 99, 5, 0, 2, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (20, N'Samsung Galaxy S4', N'/Content/Images/Samsung/Samsung Galaxy S4.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(11990000 AS Decimal(18, 0)), CAST(12500000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels
CPU:	Exynos 5410, 8 nhân, 8 nhân (2 lõi 4 nhân: Quad-core 1.6 GHz Cortex-A15 - Quad-core 1.2 GHz Cortex-A7)
RAM	2 GB
Hệ điều hành:	Android 4.2.2 (Jelly Bean)
Camera chính:	13 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.1 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	2600 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58077/Kit/Samsung-Galaxy-S4-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super AMOLED</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">13 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.1 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">8 nhân (2 lõi 4 nhân: Quad-core 1.6 GHz Cortex-A15 - Quad-core 1.2 GHz Cortex-A7)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">8 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Exynos 5410</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR SGX544MP3</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">136.6 x 69.8 x 7.9 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">235</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2600 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V4.0 với A2DP, EDR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, eAAC+, AC3, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk, Picasa<br>Micro chuyên dụng chống ồn<br>50 GB lưu trữ Dropbox</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Samsung Galaxy S4 – Đẳng cấp của điện thoại thông minh</h2><p align=""><br><a title="Điện thoại Samsung" href="http://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a> với dòng điện thoại thông minh <a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Galaxy</a> đang thực sự làm khuấy đảo thị trường smartphone thế giới. Với <a title="Samsung Galaxy S3" href="http://www.thegioididong.com/dtdd/samsung-galaxy-s3-i9300" target="_blank">Galaxy S3</a>, Samsung đã vượt qua cái bóng của Apple và ghi dấu ấn tên mình trở thành nhà sản xuất smartphone lớn nhất thế giới.&nbsp;<strong>Galaxy S4</strong>&nbsp;là smartphone cao cấp nhất của Samsung trong năm 2013. Và đây được hứa hẹn sẽ trở thành một quả bom tấn trong làng công nghệ trong năm nay nhờ một thiết kế đẹp, một cấu hình cực mạnh cùng hàng loạt những tính năng thông minh.</p><p align="center"><br><img title="samsung galaxy S4" src="http://cdn.tgdd.vn/Products/Images/42/58077/GALAXYS4ProductImage4.jpg" alt=" điện thoại samsung galaxy S4" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/GALAXYS4ProductImage4.jpg"><br><em>Smartphone Samsung Galaxy S4</em></p>&nbsp;<h3><br>Thiết kế mỏng và nhẹ đến kinh ngạc</h3><p align="">Với màn hình lên đến 5 inch nhưng Samsung Galaxy S4 vẫn giữ nguyên độ lớn gần như tương tự so với người tiền nhiệm <a title="Galaxy S3" href="http://www.thegioididong.com/dtdd/samsung-galaxy-s3-i9300" target="_blank">Galaxy S3</a>, thậm chí máy còn mỏng và nhẹ hơn so với người tiền nhiệm khi có độ dày chỉ 7,9mm và trọng lượng chỉ 130g. Viền giả kim loại bao quanh thân máy cộng với một vân chìm được phủ ở nắp lưng tạo cho Galaxy S4 có vẻ bề ngoài rất cứng cáp và sang trọng.</p><p align="center"><img style="display: inline;" class="lazy" title="galaxy-s4-gallery" src="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery.jpg" alt="Galaxy S4 vớ viền Bezel" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery.jpg"><br><em>Viền giả kim loại cộng lớp vân chìm nắp lưng tạo điểm nhấn nổi bật cho Galaxy S4</em></p>&nbsp;<h3><br>Bộ vi xử lý 8 nhân mạnh mẽ</h3><p align="">Được trang bị bộ vi xử lí Exynos 5 Octa 8 nhân mạnh mẽ gồm 2 CPU Cortex A15 4 nhân tốc độ 1,6 GHz và Cortex A7 tốc độ 1,2 GHz,<strong>&nbsp;<a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Samsung Galaxy</a> S4</strong>&nbsp; sẽ mang đến cho người dùng một hiệu suất vận hành vô cùng trơn tru và mượt mà nhưng vẫn đảm bảo tiết kiệm điện năng tiêu thụ đến mức tối đa vì bên trong con chip này thực chất là bốn nhân&nbsp;ARM&nbsp;Cortex-A15 dành cho các tác vụ nặng và bốn nhân Cortex-A7 để giải quyết những chuyện nhẹ nhàng hơn, giúp cân bằng giữa thời lượng dùng pin và hiệu năng cho thiết bị.</p><p align=""><br>Hơn nữa&nbsp;Exynos 5 Octa còn có khả năng xử lí hình ảnh 3D nhanh hơn gấp đôi so với các vi xử lí di động đi trước mà điển hình là Exynos 4 Quad trên người tiền nhiệm Galaxy S3. Trải nghiệm chơi game hoặc tận hưởng các tính năng giải trí trên&nbsp;<strong>Galaxy S4</strong>&nbsp;sẽ trở nên tuyệt vời hơn bao giờ hết.</p><p align="center"><br><img title="samsung-galaxy-s4-05" src="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-05.png" alt="samsung-galaxy-s4-05" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-05.png"><br><em>Vi xử lý 8 nhân Exynos 5 Octa với sức mạnh đáng kinh ngạc trên Galaxy S4</em></p>&nbsp;<h3><br>Màn hình Super Amoled Full HD sắc nét</h3><p align="center"><br><img title="super-amoled" src="http://cdn.tgdd.vn/Products/Images/42/58077/super-amoled.jpg" alt="super-amoled" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/super-amoled.jpg"><br><em>Màn hình sắc nét với mật độ điểm ảnh lên đến 441ppi</em></p><p align=""><strong><br>Samsung Galaxy S4</strong>&nbsp;được trang bị màn hình full HD Super AMOLED rộng 5 inch, mật độ điểm ảnh mà màn hình mang lại là 441ppi, cao hơn nhiều so với S3 và cả <a title="iPhone 5" href="http://www.thegioididong.com/dtdd/iphone-5-32gb" target="_blank">iPhone 5</a> và ngang bằng với HTC Droid DNA hay <a title="Xperia Z" href="http://www.thegioididong.com/dtdd/sony-xperia-z" target="_blank">Xperia Z</a> đến từ Sony. Với mật độ điểm ảnh này, khả năng hiển thị hình ảnh chi tiết của Samsung Galaxy S4 đã vượt qua khả năng phân biệt của mắt người. Với đặc điểm tái tạo hình ảnh với màu sắc sống động của màn hình Super AMOLED, hình ảnh hiển thị trên Galaxy S4 sẽ trở nên vô cùng rực rỡ và sắc nét.</p><p align=""><br>Mặc dù sắc nét hơn, góc nhìn rộng hơn, sáng hơn nhưng công nghệ màn hình mới cũng giúp tiết kiệm điện năng 25% so với thế hệ cũ. Ngoài ra, màn hình Super Amoled Full HD của&nbsp;<strong>Galaxy S4</strong>&nbsp;cũng được trang bị công nghệ siêu cảm ứng. Người dùng có thể dễ dàng theo tác chạm và vuốt màn hình với găng tay tương tự như Lumia 920</p>&nbsp;<h3><br>Máy ảnh 13 “chấm”</h3><p align="center"><img style="display: inline;" class="lazy" title="galaxy-s4-gallery-camera" src="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery-camera.jpg" alt="Galaxy S4 có camera 13mp" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery-camera.jpg"><br><em>Máy ảnh 13 “chấm”</em></p><p align=""><br>Với máy ảnh lên đến 13 “chấm”cùng&nbsp;cảm biến BIS (backside illumination), khẩu ống kính F2.2 với đèn flash và Zero Shot Lag,&nbsp;<strong><a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Samsung Galaxy</a> S4&nbsp;</strong>sẽ cho bạn những bức ảnh đẹp như bạn đang chụp bằng một máy ảnh chuyên nghiệp. Đèn flash phía sau cùng chế độ tự động cân bằng sáng, chống rung sẽ giúp máy có thể chụp trong điều kiện ánh sáng thấp. Ngoài ra , Galaxy S4 còn có&nbsp;Camera phía trước 2.0Mp cũng là cảm biến BIS và có khả năng quay phim FullHD 30fps.</p><p align=""><br>Samsung còn trang bị rất nhiều tính năng chụp hình cho&nbsp;<strong>S4</strong>&nbsp;như chụp hình ban đêm, chụp hình có âm thanh (<strong>Sound &amp; Shot</strong>), chụp hình bằng 2 Camera cùng lúc (<strong>Dual Camera</strong>), chụp hình lưu chuyển động (<strong>Drama Shot</strong>)…Ngoài ra,&nbsp;<strong>Galaxy S4</strong>&nbsp;còn có khả năng xóa đối tượng không mong muốn ra khỏi bức ảnh vừa chụp thông qua tính năng <strong>Eraser</strong> (một tính năng tương tự như Smartshoot của Lumia 920).</p><p align="center"><img style="display: inline;" class="lazy aligncenter" title="s4-drama-shot" src="http://cdn.tgdd.vn/Products/Images/42/58077/s4-drama-shot.jpg" alt="s4-drama-shot" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/s4-drama-shot.jpg"><br><em>Drama Shot cho phép tạo ra một bức ảnh từ nhiều bức chụp liên tiếp nhau</em></p><p align="center"><br><img style="display: inline;" class="lazy aligncenter" title="s4-dual-camera" src="http://cdn.tgdd.vn/Products/Images/42/58077/s4-dual-camera.jpg" alt="s4-dual-camera" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/s4-dual-camera.jpg"><br><em>Người chụp ảnh và người được chụp ảnh sẽ cùng xuất hiện với Dual Camera</em></p><p align="center"><br><img style="display: inline;" class="lazy aligncenter" title="s4-eraser" src="http://cdn.tgdd.vn/Products/Images/42/58077/s4-eraser.jpg" alt="s4-eraser" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/s4-eraser.jpg"><br><em>Loại bỏ đi đối tượng không mong muốn trong ảnh chụp với Eraser</em></p><p align="center"><br><img style="display: inline;" class="lazy aligncenter" title="s4-sound-and-shot" src="http://cdn.tgdd.vn/Products/Images/42/58077/s4-sound-and-shot.jpg" alt="s4-sound-and-shot" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/s4-sound-and-shot.jpg"><br><em>Bức ảnh được chụp đi kèm với âm thanh với Sound And Shot</em></p>&nbsp;<h3><br>Pin khỏe</h3><p align="">Dung lượng pin 2600mAh cùng những tinh chỉnh tối ưu năng lượng về phần cứng và phần mềm có thể giúp&nbsp;<strong>Galaxy S4</strong>&nbsp;duy trì thời lượng sử dụng ở mức bình thường khoảng 2 ngày. Ở chế độ xem video, máy có thể đạt được 12 tiếng xem liên tục.</p>&nbsp;<h3><br>Kết nối đa dạng</h3><p align="">Là một smartphone cao cấp,&nbsp;<strong>Galaxy S4</strong>&nbsp;được Samsung trang bị đầy đủ tất cả các công nghệ kết nối mới nhất hiên nay như Wifi, NFC, GPS, GLONASS, Bluetooth và MHL 2.0. Trong đó, nổi bất có chuẩn kết nối Wiifi AC – chuẩn kết nối wifi mới nhất vừa được HTC trang bị cho chiếc <a title="HTC One" href="http://www.thegioididong.com/dtdd/htc-one" target="_blank">HTC One</a> cách đây không lâu. Chuẩn&nbsp;kết nối Wifi ac cho phép truyền nội dung với tốc độ cao hơn 3 lần so với tốc độ hiện tại với tốc độ này thì việc truyền tải phim HD thậm chí là 4K lên tv hay tính năng share qua không dây sẽ nhanh hơn rất nhiều.&nbsp;Ngoài ra S4&nbsp;còn có cổng hồng ngoại cho phép chúng ta dùng smartphone như là một chiếc điều khiển từ xa.</p>&nbsp;<h3><br>Thông minh với các tính năng của SmartScreen</h3><p align="center"><br><img title="galaxy-s4" src="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4.jpg" alt="galaxy-s4" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4.jpg" height="647" width="364"></p><p align=""><br>Ngoài khả năng nhận biết mắt người hoạt động để duy trì độ sáng của màn hình với <strong>Smart Stay</strong>&nbsp;giống Galaxy S3 thì&nbsp;<strong>Galaxy S4</strong>&nbsp;còn được Samsung trang bị thêm hàng loạt những tính năng thông minh khác với sự trợ giúp của camera trước, giúp mang đến cho người dùng những trải nghiệm smartphone đúng nghĩa.</p><p align=""><strong><br>Smart Pause</strong>: Dừng thông minh cho phép dừng bất kỳ một đoạn video nào đó mà bạn đang xem bằng cách quay mắt đi hướng khác.</p><p align="center"><br><img title="samsung-galaxy-s4-smartpause" src="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-smartpause.jpg" alt="samsung-galaxy-s4-smartpause" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-smartpause.jpg" height="647" width="364"></p><p align=""><strong><br>Smart Rotation</strong>:&nbsp;Xoay thông minh sẽ ngăn cho màn hình tự động xoay khi bạn&nbsp;nằm xuống xem màn hình thì màn hình cũng không xoay ngang như hiện nay.</p><p align="center"><br><img title="samsung-galaxy-s4-02-smartrotate" src="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-02-smartrotate.jpg" alt="samsung-galaxy-s4-02-smartrotate" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-02-smartrotate.jpg" height="647" width="364"></p><p align=""><strong><br>Smart Scroll</strong>:&nbsp;Cuộn thông minh sẽ phát hiện đầu của bạn bằng camera trước để màn hình tự động cuộn khi bạn nhìn vào màn hình, hữu dụng trong những trường hợp người dùng đang xem một trang web hay một tập tin văn bản dài.</p><p align="center"><br><img title="samsung-galaxy-s4-03-smartscrol" src="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-03-smartscroll.jpg" alt="samsung-galaxy-s4-03-smartscrol" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-03-smartscroll.jpg" height="647" width="364"></p>&nbsp;<h3><br>Giao diện&nbsp;TouchWiz Nature UX mới</h3><p style="text-align: center;"><br><img style="display: inline;" class="lazy aligncenter" title="galaxy-s4-gallery-1-750x500" src="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery-1-750x500-1.jpg" alt="Giao diện TouchWiz Nature UX của Galaxy S4" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/galaxy-s4-gallery-1-750x500-1.jpg" height="412" width="550"></p><p align=""><br>Đây là giao diện người dùng được <a title="Samsung" href="http://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a> nâng cấp lên từ bộ giao diện TouchWiz truyền thống. Với bộ giao diện này, người dùng sẽ được trải nghiệm nhiều bộ Widget hơn. Thêm vào đó, giao diện này cũng cung cấp cho người dùng nhiều chức năng cực kì mới mẻ như:</p><p align=""><strong><br>- Air View</strong>:&nbsp;Là tính năng cho phép người dùng xem nhanh album ảnh, video, email dưới dạng pop-up, mà không cần phải đi sâu vào nó.</p><p align=""><strong><br>- Air Gesture</strong>:&nbsp;Tính năng cho phép người dùng không cần chạm tay vào màn hình nhưng có thể cuộn trang hay chuyển đổi qua lại nhiều hình ảnh bằng cách vuốt tay qua lại, lên xuống.</p><p align=""><strong><br>- Adapt Display</strong>:&nbsp;Tự động điều chỉnh màn hình của S4 sao cho phù hợp với những gì đang hiển thị, tạo góc nhìn thuận lợi cho người xem.</p><p align=""><strong><br>- S Translate:</strong>&nbsp;Cho phép người dùng chụp hình ảnh, hoặc thu âm giọng nói – từ đó sẽ tự động dịch sang ngôn ngữ được yêu cầu. S Translate hỗ trợ tối đa 8 ngôn ngữ.</p><p align=""><strong><br>- SVoice</strong>&nbsp;được nâng cấp thành&nbsp;<strong>SVoice Drive</strong>&nbsp;với khả năng hướng dẫn đường đi thông qua giọng nói khi đang lái xe.</p><p align=""><strong><br>- ChatOn:&nbsp;</strong>Với New chat, ChatOn cho phép ba người cùng tán gẫu, không còn giới hạn hai người như trước đây. Bên cạnh đó ChatOn giờ đây sẽ hỗ trợ video chat, video call. Điểm đặc biệt là ChatOn sẽ tận dụng tính năng Dual Camera – tức là chúng ta sẽ có thể thực hiện video chat với người thân, bạn bè bằng cả hai camera trước và sau.</p><p align=""><strong><br>- S View Cover</strong>&nbsp;giúp bạn có thể nhìn thấy ID người gọi.</p><p align=""><strong><br>- S Band, Body Scale</strong>&nbsp;là các phụ kiện cho Galaxy S 4 giúp theo dõi nhịp tim.</p><p align=""><strong><br>- S Health</strong>&nbsp;là tính năng kiểm tra tình trạng sức khoẻ của người dùng trên&nbsp;<strong>Galaxy S4&nbsp;</strong>khi đi kèm một số phụ kiện khác.</p><p align=""><strong><br>- Dual Video Call</strong>&nbsp;là tính năng hỗ trợ người dùng vừa chat video bằng camera trước, vừa chia sẻ hình ảnh xung quanh với camera sau.</p><p align=""><strong><br>- Story Album</strong>: Album ảnh được thiết kế dưới dạng Timeline</p><p align=""><strong><br>- Home Sync</strong>&nbsp;giúp người dùng kết nối S IV với các thiết bị gia dụng như TV, tủ lạnh…</p><p align=""><strong><br>- Samsung Knox</strong>&nbsp; là tính năng bảo mật giúp người dùng chia smartphone thành những “khoảng” riêng cho công việc hay giải trí.</p><p align=""><strong><br>- Samsung Group Play</strong>&nbsp;sẽ cho phép các smartphone phát nhạc cùng lúc, đây sẽ là giải pháp hiệu quả với những chuyến đi chơi không mang theo loa ngoài. Bạn có thể ghép 5 chiếc S IV vào thành một chiếc loa cỡ “bự” chẳng hạn.</p>&nbsp;<h3><br>Chiêm ngưỡng quang cảnh đường phố 3D tuyệt vời với Google Earth</h3><p align="">Đây là một ứng dụng được Samsung trang bị độc quyền cho chiếc Galaxy S4. Người dùng sẽ không thể tìm thấy được ứng dụng này trên Google Play hay bất kì kho ứng dụng cho Android nào. Với Google Earth, người dùng sẽ có thể chiêm ngưỡng được quang cảnh đường phố 3D một cách sinh động và chi tiết nhất.</p><p align="center"><br><img title="samsung-galaxy-s4-04" src="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-04.jpg" alt="samsung-galaxy-s4-04" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/samsung-galaxy-s4-04.jpg" height="647" width="364"></p>&nbsp;<h3><br>Kính chịu lực Corning Gorilla Glass 3</h3><p align="center"><br><img title="gorilla glass 3" src="http://cdn.tgdd.vn/Products/Images/42/58077/gorilla-glass-3.jpg" alt="kính cường lực gorilla glass 3" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/gorilla-glass-3.jpg"><br><em>Gorilla Glass 3 giúp chịu va đập, chống xước tốt hơn</em></p><p align=""><br>Kính chịu lực Corning Gorilla Glass đang được trang bị rất nhiều trên <a title="smartphone" href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> hiện nay, tuy nhiên thế hệ kính chịu lực mới ra mắt Glass 3 thật sự làm chúng ta phải ngạc nhiên. Corning cho biết công nghệ mới giúp giảm thiểu 40% sự xuất hiện của những vết trầy có thể nhìn thấy, đồng thời tăng cường độ bền lên 50% ngay cả khi kính đã bị rạn nứt. Bởi vậy, bạn sẽ yên tâm khi máy bị rơi hay để chung với các vật sắc nhọn khác.</p>&nbsp;<h3><br>Hệ điều hành mới nhất</h3><p align="center"><br><img title="Hệ điều hành mới nhất Android Jelly Bean" src="http://cdn.tgdd.vn/Products/Images/42/58077/8android42jellybean11359341081.jpg" alt="Hệ điều hành mới nhất Android Jelly Bean" data-original="http://cdn.tgdd.vn/Products/Images/42/58077/8android42jellybean11359341081.jpg"><br><em>Hệ điều hành mới nhất Android Jelly Bean</em></p><p align=""><br>Ngay khi ra mắt,&nbsp;<strong>Galaxy S4</strong>&nbsp;đã được tích hợp hệ điều hành Android mới nhất phiên bản 4.2.2 Jelly Bean. Hệ điều hành phiên bản mới với nhiều tính năng mới hấp dẫn hơn, giúp người dùng quản lý tài nguyên hiệu quả và bảo mật cao hơn. Ví dụ như có thể sử dụng nhiều tài khoản người dùng, mỗi tài khoản sẽ là một thiết lập hay tài nguyên khác nhau (như người dùng Windows). Hay như tính năng dự đoán từ cho bàn phím ảo, nhập liệu bằng giọng nói cũng chính xác hơn…</p><p align="right"><strong>Công Đoàn</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình sắc nét Full HD.</li>
	<li>Vi xử lý tốc độ cao.</li>
	<li>Quay phim và chụp ảnh từ 2 camera cùng lúc&nbsp;(Dual Shot).</li>
	<li>Hỗ trợ cử chỉ và điều khiển bằng mắt.</li>
	<li>Ngôn ngữ không còn là rào cản với chức năng tự dịch thông minh.</li>
	<li>Tính năng chụp ảnh cùng âm thanh thú vị.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Thiết kế chưa đột phá, ấn tượng như mọi người mong đợi.</li>
</ul></td></tr></tbody></table>', 4, 99, 3, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (21, N'Samsung Galaxy Note 3', N'/Content/Images/Samsung/Samsung Galaxy Note 3.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(16990000 AS Decimal(18, 0)), CAST(17300000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.7", 1080 x 1920 pixels
CPU:	Exynos 5420, 8 nhân, 8 nhân (2 lõi 4 nhân: Quad-core 1.9 GHz Cortex-A15 - quad-core 1.3 GHz Cortex-A7)
RAM	3GB
Hệ điều hành:	Android 4.3 (Jelly Bean)
Camera chính:	13 MP, Quay phim FullHD 1080p@60fps
Camera phụ:	2.0 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	3200 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60383/Kit/Samsung-Galaxy-Note-3-N9000-mo-ta-chuc-nang-1.jpg">   <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.3 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Super AMOLED</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.7"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">13 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@60fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">8 nhân (2 lõi 4 nhân: Quad-core 1.9 GHz Cortex-A15 - quad-core 1.3 GHz Cortex-A7)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">8 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Exynos 5420</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">3GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Mali-T628 MP6</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">151.2 x 79.2 x 8.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">168</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3200 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V4.0 với A2DP, EDR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+, AC3, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Bút S-Pen<br>Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk, Picasa<br>Micro chuyên dụng chống ồn<br>50GB lưu trữ Dropbox</td>
        </tr>
    </tbody>
</table>', N'<h2 style="text-align: center;" align="justify"><strong>Samsung Galaxy Note 3 - Chiếc Phablet hoàn hảo với bút S-Pen</strong></h2><p style="text-align: justify;" align="justify"><br>Sau một loạt thành công với Galaxy Note I và Note II, Samsung tiếp tục tung ra <strong>Galaxy Note 3</strong>, một trong những chiếc phablet hay điện thoại cỡ lớn hàng đầu hiện nay. Samsung Galaxy Note 3 có rất nhiều ưu điểm so với hai phiên bản tiền nhiệm của nó, do đó, chiếc phablet mới này cũng được rất nhiều người quan tâm.</p>&nbsp;<h3><br>Thiết kế cứng cáp, nam tính</h3><p align="center"><img title="Galaxy Note 3" src="http://cdn.tgdd.vn/Products/Images/42/60383/samsung-galaxy-note-iii_clip_image001.jpg" alt="Samsung Galaxy Note 3"><br><em>Galaxy Note 3 sở hữu màn hình lớn cùng viền màn hình siêu mỏng</em></p><p style="text-align: justify;" align="justify"><br>Đầu tiên là về mặt thiết kế, mặc dù vẫn giữ thiết kế truyền thống của dòng <a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Galaxy</a> Note nhưng Samsung đã khéo léo vuốt mỏng viền màn hình của<strong> Note 3</strong> để phù hợp với kích thước màn hình lớn hơn và viền màn hình này mỏng hơn rất nhiều so với Note I và Note II khiến cho người dùng không hề có cảm giác đang cầm trên tay một chiếc điện thoại khổng lồ.</p><p align="center"><img title="Samsung Galaxy Note III" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note-3-mong.jpg" alt="Samsung Galaxy Note III: “Gã khổng lồ” đã sẵn sàng lộ diện 9"></p><p align="center"><img title="Samsung Galaxy Note III" src="http://cdn.tgdd.vn/Products/Images/42/60383/samsung-galaxy-note-iii_clip_image002.jpg" alt="Samsung Galaxy Note III: “Gã khổng lồ” đã sẵn sàng lộ diện 9"><br><em>Thiết kế mới giúp Galaxy Note trông cứng cáp và mạnh mẽ</em></p><p style="text-align: justify;" align="justify"><br>Xét về mặt tổng thể <strong>Note 3</strong> trông cứng cáp hơn các phiên bản trước do Samsung đã giảm bớt độ bo tròn của các cạnh máy, thiết kế máy trở nên hài hoà hơn và cũng phù hợp với sở thích của nhiều đối tượng người dùng hơn. Với việc sử dụng ngôn ngữ thiết kế và chất liệu như một cuốn sổ tay nên một điểm vô cùng đặc biệt ở Galaxy Note 3 là nắp lưng của máy được làm từ<strong> chất liệu giả da</strong> thay vì bằng nhựa đã khiến cho Note 3 trông sang trọng hơn hẳn những người tiền nhiệm.</p><p style="text-align: justify;"><br>Bên cạnh đó, phần viền giả kim loại bao quanh máy cũng được Samsung vát những đường dọc tinh xảo mà theo lời của Samsung là sẽ khiến cho Note 3 thực sự trông giống như một cuốn sổ tay khi được gấp lại. <strong>Galaxy Note 3</strong> cũng được Samsung ưu ái khi đầu tư cho sản phẩm nhiều nắp lưng với nhiều màu sắc khác nhau đi cùng với các phụ kiện thông minh khác như đồng hồ thông minh <strong>Galaxy Gear</strong> và vỏ bảo vệ thông minh<strong> S-View Cover.</strong></p><p align="center"><img title="Samsung Galaxy Note III" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note3-s-view.jpg" alt="Samsung Galaxy Note III: “Gã khổng lồ” đã sẵn sàng lộ diện 9"><br><em>Bộ S-View Cover giúp bạn có thể truy cập một số tính năng quan trọng ngày từ bên ngoài</em></p>&nbsp;<h3><br>Cấu hình mạnh mẽ hàng đầu</h3><p style="text-align: justify;">Màn hình của&nbsp;<strong>Galaxy&nbsp;Note 3</strong>&nbsp;được mở rộng ra đến&nbsp;<strong>5.7 inch</strong>&nbsp;lớn hơn 5.5 inch của Note II và 5.3 inch của Note I, đồng thời màn hình khổng lồ này cũng được trang bị công nghệ màn hình&nbsp;<strong>Super Amoled Full HD 1080p</strong>&nbsp;giúp cho hình ảnh hiển thị sống động và cực kỳ sắc nét. Màu sắc trên màn hình của Note III thiên về các tông màu nóng nên người dùng sẽ nhìn thấy hình ảnh trở nên bắt mắt hơn, lôi cuốn hơn nhất là trên một màn hình lớn.</p><p align="center"><img title="Giao diện Camera trên Galaxy Note 3" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note-3-giaodien-camera.jpg" alt="Giao diện Camera trên Galaxy Note 3"><br><em>Màn hình Super Amoled rộng tới 5,7inch nhưng trông Galaxy Note 3 rất gọn gàng</em></p><p style="text-align: justify;" align="justify"><br>Cấu hình Galaxy Note 3 cũng được nâng cấp mạnh mẽ để xứng danh là chiếc phablet có cấu hình tốt nhất hiện nay, Samsung đã dùng chip xử lý 8 nhân cao cấp <strong>Exynos 5420</strong>&nbsp;(Quad-core 1.9 GHz Cortex-A15 và quad-core 1.3 GHz Cortex-A7) cùng với lượng <strong>RAM khủng lên đến 3GB</strong> giúp cho máy hoạt động mượt mà trong mọi tình huống, có thể chạy nhiều ứng dụng cùng một lúc, chơi các trò chơi có đồ hoạ nặng lẫn xem các bộ phim full HD.</p><p style="text-align: justify;"><strong><br>Samsung Galaxy Note 3</strong>&nbsp;với dung lượng bộ nhớ trong lần lượt là <strong>32 GB </strong>và&nbsp;có thể mở rộng qua khe cắm thẻ microSD lên đến 64 GB. Galaxy Note 3 cũng là chiếc Phablet với dung lượng pin cao nhất hiện nay với 3200mAh.</p><p align="center"><img title="Galaxy Note 3 có pin 3200mAh" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note-3-pin.jpg" alt="Galaxy Note 3 có pin 3200mAh"><br><em>Note 3 là chiếc Phablet có dung lượng pin tốt nhất hiện nay</em></p>&nbsp;<h3><br>Camera 13 chấm cùng công nghệ chống rung</h3><p style="text-align: justify;">Cũng tương tự như Samsung Galaxy S4, camera chính của <strong>Galaxy Note 3</strong> cũng được nâng cấp lên <strong>13 MP</strong> để theo kịp với xu thế, kèm theo đó là các công nghệ tăng cường khả năng chụp ảnh và công nghệ chống rung giúp cho ảnh hay video được tạo ra từ Note 3 có chất lượng cực tốt.</p><br>Phiên bản chạy chip Snapdragon có thể quay video với độ phân giải 4K và phiên bản chạy chip Exynos có thể quay video Full HD 1080p với mức khung hình lên đến 60fps.<p align="center"><img title="Camera 13 chấm ở mặt sau Note 3" src="http://cdn.tgdd.vn/Products/Images/42/60383/samsung-galaxy-note-iii_clip_image006.jpg" alt="Camera 13 chấm cùng đèn Flash ở mặt sau Note 3"><br><em>Camera 13 chấm cùng đèn Flash ở mặt sau Note 3</em></p>&nbsp;<h3><br>Giao diện TouchWiz tùy chỉnh tích hợp nhiều tính năng thông minh</h3><p style="text-align: justify;">Cuối cùng là về phần mềm, các tính năng mới nhất trên dòng điện thoại cao cấp của Samsung đều hội tụ trên Galaxy Note 3 như <strong>Smart Pause</strong> giúp máy theo dõi cử chỉ của người dùng để tự động ngừng video khi người dùng nhìn ra ngoài màn hình, tính năng <strong>Smart Scroll</strong> giúp di chuyển trang web lên và xuống theo ánh mắt của người dùng. Các tính năng như bộ phiên dịch ngôn ngữ thông minh <strong>S-Translate</strong>, công nghệ theo dõi sức khoẻ <strong>S-Health</strong> cũng góp mặt trên Note 3.</p><p align="center"><img title="Samsung Galaxy note 3 cùng bút S pen" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note-3-but-s-pen.jpg" alt="Samsung Galaxy note 3 cùng bút S pen"><br><em>Bút Spen góp phần tạo nên sức mạnh và tính thông minh cho Galaxy Note 3</em></p><p style="text-align: justify;" align="justify"><br>Galaxy Note 3 còn có một số tính năng vô cùng thông minh khác để có thể nâng cao tối đa trải nghiệm người dùng với bút S-pen (vốn được xem là điểm khác biệt giữa dòng Galaxy S và dòng Note) đó là Air Command.</p><p style="text-align: justify;"><br>Tính năng Air Command này cho phép S-Pen kích hoạt một menu phụ khi sử dụng S-Pen, Menu này sẽ chứa những công cụ để các thao tác sử dụng bút trên Note 3 trở nên dễ dàng hơn. Bộ tính năng này bao gồm Action Memo, Scrapbook, S Finder, S Note.</p><p align="center"><img title="Samsung Galaxy note 3 với tính năng Air Command" src="http://cdn.tgdd.vn/Products/Images/42/60383/galaxy-note-3-air-command.jpg" alt="Samsung Galaxy note 3 với tính năng Air Command"><br><em>Air Command hoạt động khi rê và giữ bút Spen trên Galaxy Note 3</em></p><p style="text-align: justify;" align="justify"><br><strong>Action Memo</strong>:&nbsp;khi viết một nội dung nào đó trên màn hình Note 3 bằng S-Pen máy sẽ tự động nhận diện loại nội dung và đưa ta đến những thao tác tương ứng. Ví dụ như khi ta viết lên màn hình một số điện thoại thì Action Memo sẽ tự mở ứng dụng Call để thực hiện cuộc gọi hoặc lưu lại Contact đó, nếu bạn viết vào một địa chỉ thì máy sẽ tự mở bản đồ v.v...</p><p style="text-align: justify;"><br><strong>Scrapbook</strong>:&nbsp;người dùng sẽ có thể lưu lại những nội dung hay đang xem trên web chỉ bằng cách dùng S-Pen khoanh tròn khu vực muốn ghi nhớ, Note 3 sẽ tự động lưu phần nội dung mà bạn đánh dấu có thể là văn bản, hình ảnh hoặc video và tất cả sẽ được đính kém link gốc để tiện tra cứu sau này.</p><p style="text-align: justify;"><br><strong>S Finder</strong>:&nbsp;một công cụ tìm kiếm nâng cao dành cho Note 3, nó sẽ tìm kiếm ở tất cả mọi nơi, tất cả các loại dữ liệu có trên điện thoại.</p><p style="text-align: justify;"><br><strong>S Note</strong>: một trong các ứng dụng ghi chú nổi bật trên các dòng máy Note của Samsung đã được nâng cấp thêm tính năng đồng bộ giữa điện thoại máy tính và máy tính bảng thông qua chương trình quen thuộc Evernote.</p><p style="text-align: justify;"><br>Tóm lại, <strong>Samsung Galaxy Note 3 </strong>là chiếc phablet hội tụ những tinh hoa trong công nghệ của Samsung và cũng là chiếc điện thoại hàng đầu của hãng điện thoại Hàn Quốc, thiết bị này rất thích hợp với người dùng là những doanh nhân thành đạt, những người yêu thích sự hoàn hảo và công nghệ đỉnh cao.</p><p align="right"><strong>Ngô Quốc Bảo, Công Đoàn</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình lớn 5.7 inch độ phân giải full HD siêu sắc nét.</li>
	<li>Cấu hình cực kỳ mạnh mẽ với vi xử lý Octa 8 nhân.</li>
	<li>Thiết kế sang trọng và đẹp mắt với viền giả kim loại và mặt sau được làm từ chất liệu giả da.</li>
	<li>Mọi tác vụ hằng ngày đều trở nên đơn giản với sự kết hợp giữa bút S Pen cùng các tính năng thông minh như Air Command, Action Memo, Scrapbook, S Finder, S Note, new Easy Clip,...</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Màn hình 5.7inch nên hơi bất tiện khi mang bên mình.</li>
</ul></td></tr></tbody></table>', 4, 99, 3, 5, 1, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (22, N'Samsung Galaxy Win', N'/Content/Images/Samsung/Samsung Galaxy Win.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(5690000 AS Decimal(18, 0)), CAST(5900000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.7", 480 x 800 pixels
CPU:	Qualcomm MSM8625, 4 nhân, 1.2 GHz
RAM:	1 GB
OS	Android 4.1.2 (Jelly Bean)
Camera chính:	5.0 MP, Quay phim HD 720p@15fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	8 GB
Thẻ nhớ tối đa:	64 GB
Pin:	2000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58267/Kit/samsung-galaxy-win-I8552-note-chuc-nang-1.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.7"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt và nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@15fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8625</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 203</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">133.3 x 70.7 x 9.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">143.9</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, eAAC+, AC3, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">oogle Search, Maps, Gmail, YouTube, Calendar, Google Talk, Picasa<br>Mạng xã hội ảo<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Samsung Galaxy Win I8552 – Thiết kế đẹp, màn hình lớn, vi xử lý lõi tứ mạnh mẽ</h2><p style="text-align: justify;" align=""><strong><br>Galaxy Win I8552 </strong>là điện thoại thông minh có mức giá phải chăng của dòng <a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Galaxy</a>, màn hình lớn 4.7 inch, kiểu dáng đẹp, hiện đại cùng cấu hình mạnh mẽ với vi xử lý lõi tứ tốc độ 1.2GHz.</p><h3 align=""><br>Thiết kế quyến rũ</h3><p align="center"><strong><img title="Samsung Galaxy Win I8552" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image001.jpg" alt="Thiết kế bắt mắt của Samsung Galaxy Win I8552" height="298" width="530"></strong><br><em>Thiết kế bắt mắt của </em><em>Samsung </em><em>Galaxy</em><em> Win</em><em> I8552</em></p><p style="text-align: justify;" align=""><br>Bạn đã thấy smartphone cao cấp của Samsung mang tên <a href="http://www.thegioididong.com/dtdd/samsung-galaxy-s3-i9300" target="_blank">Galaxy S3</a>? Thì <strong>Samsung Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> chính là một phiên bản thu nhỏ của S3. Máy có thiết kế bo tròn 4 góc đều nhau, phần khung sườn kim loại chống xước cho cảm giác chắc chắn và sang trọng.</p><h3 align=""><br>Màn hình lớn 4.7 inch</h3><p align="center"><strong><img title="Samsung Galaxy Win với màn hình lớn" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image003.jpg" alt="Samsung Galaxy Win với màn hình lớn, xem phim cực đã" height="550" border="0" width="422"></strong><br><em>Samsung </em><em>Galaxy</em><em> Win</em><em> với màn hình lớn, xem phim cực đã</em></p><p style="text-align: justify;" align=""><br>Smartphone màn hình cỡ lớn đang là “mốt” của giới công nghệ hiện nay. Hiểu được “tâm tư” của khách hàng, Samsung đã trang bị cho <strong>Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> một màn hình 4.7 inch cảm ứng đa điểm, công nghệ màn hình TFT, độ phân giải 800 x 480 pixels cho chất lượng hình ảnh ở mức tầm trung. Tất nhiên với màn hình lớn, bạn có thể đọc sách, lướt web, xem video… to rõ hơn.</p>&nbsp;<h3 align=""><br>Vi xử lý lõi tứ mạnh mẽ</h3><p style="text-align: justify;" align="">Hiện nay, vi xử lý lõi tứ cao cấp chủ yếu được trang bị trên những smartphone “đình đám”, tuy nhiên <strong>Samsung Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> cũng được trang bị bộ vi xử lý lõi tứ Qualcomm tốc độ 1.2GHz. Với vi xử lý này, máy có thể xử lý mọi phần mềm, chạy những trò chơi, ứng dụng mà Android hỗ trợ. Vi xử lý mạnh mẽ cũng giúp máy chạy mượt mà, chơi những game nặng mà không bị giật.</p><p align="center"><img title="Samsung Galaxy Win trang bị vi xử lý lõi tứ" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image005.jpg" alt="Samsung Galaxy Win được trang bị vi xử lý lõi tứ mạnh mẽ" height="428" border="0" width="419"><br><em>Samsung </em><em>Galaxy</em><em> Win</em><em> &nbsp;được trang bị </em><em>vi xử lý lõi tứ mạnh mẽ</em></p><h3 align=""><br>2 sim 2 sóng online</h3><p style="text-align: justify;" align="">Ngoài cấu hình mạnh, màn hình lớn, <strong>Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> còn hỗ trợ hai khe cắm sim, nhờ vậy cùng lúc bạn có thể sử dụng 2 sim trên một máy và thể dễ dàng chuyển đổi sử dụng giữa 2 sim, thay đổi nhà mạng kết nối internet. 2 sim, một sim cho công viêc, một sim cho gia đình, thật tiện lợi cho người dùng.</p><p align="center"><img title="Samsung Galaxy Win hỗ trợ 2 sim" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image007.jpg" alt="Samsung Galaxy Win hỗ trợ 2 sim" height="550" border="0" width="355"><br><em>Samsung </em><em>Galaxy </em><em>Win </em><em>hỗ trợ 2 sim</em></p><h3 align=""><br>Hệ điều hành Android Jelly Bean</h3><p style="text-align: justify;" align="">Hệ điều hành Android phiên bản Jelly Bean có giao diện đẹp, hỗ trợ người dùng tốt hơn với nhiều phím tắt tiện ích. Không những vậy, hệ điều hành mới cũng giúp cải thiện thời lượng pin, cho thời gian sử dụng dài hơn. Jelly Bean đã cải thiện khả năng cảm ứng giúp bạn có thể thoải mái “vuốt chạm”.</p><p align="center"><img title="Samsung Galaxy Win có viền kim loại " src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image009.jpg" alt="Samsung Galaxy Win sử dụng HĐH Android Jelly Bean" height="600" border="0" width="317"><br><em>Samsung Galaxy Win có viền kim loại chắc chắn</em></p><h3 align=""><br>Đầy đủ camera</h3><p style="text-align: justify;" align=""><strong>Samsung Galaxy Win I8552</strong> hỗ trợ cả hai camera trước (VGA) cho tính năng gọi video và camera sau. Máy ảnh sau chỉ 5.0MP nhưng đầy đủ các tính năng như chế độ tự động lấy nét, nhận dạng nụ cười, đính kèm vị trí chụp ảnh. Camera cũng hỗ trợ đèn flash để có thể chụp trong điều kiện ánh sáng yếu.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp, tinh tế.</li>
	<li>Màn hình rộng 4.7inch cho hiển thị sống động.</li>
	<li>Mạnh mẽ với chip lõi tứ.</li>
	<li>Chuyển đổi nhanh chóng, linh hoạt giữa 2 sim.</li>
	<li>Giao diện cử chỉ thông minh (lắc để cập nhật ứng dụng, úp để tắt âm thanh).</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy ảnh sau chỉ 5.0MP.</li>
	<li>Màn hình chưa được sắc nét.</li>
</ul></td></tr></tbody></table>', 4, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (23, N'Samsung Galaxy Grand 2', N'/Content/Images/Samsung/Samsung Galaxy Grand 2.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(8490000 AS Decimal(18, 0)), CAST(8650000 AS Decimal(18, 0)), N'Màn hình:	HD, 5.25", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.2 GHz
RAM	1.5 GB
Hệ điều hành:	Android 4.3 (Jelly Bean)
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.9 MP
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	2600 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/58267/Kit/samsung-galaxy-win-I8552-note-chuc-nang-1.jpg">       <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh, Tiếng Hoa</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.7"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt và nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@15fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8625</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 203</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">133.3 x 70.7 x 9.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">143.9</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, eAAC+, AC3, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">oogle Search, Maps, Gmail, YouTube, Calendar, Google Talk, Picasa<br>Mạng xã hội ảo<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Samsung Galaxy Win I8552 – Thiết kế đẹp, màn hình lớn, vi xử lý lõi tứ mạnh mẽ</h2><p style="text-align: justify;" align=""><strong><br>Galaxy Win I8552 </strong>là điện thoại thông minh có mức giá phải chăng của dòng <a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Galaxy</a>, màn hình lớn 4.7 inch, kiểu dáng đẹp, hiện đại cùng cấu hình mạnh mẽ với vi xử lý lõi tứ tốc độ 1.2GHz.</p><h3 align=""><br>Thiết kế quyến rũ</h3><p align="center"><strong><img title="Samsung Galaxy Win I8552" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image001.jpg" alt="Thiết kế bắt mắt của Samsung Galaxy Win I8552" height="298" width="530"></strong><br><em>Thiết kế bắt mắt của </em><em>Samsung </em><em>Galaxy</em><em> Win</em><em> I8552</em></p><p style="text-align: justify;" align=""><br>Bạn đã thấy smartphone cao cấp của Samsung mang tên <a href="http://www.thegioididong.com/dtdd/samsung-galaxy-s3-i9300" target="_blank">Galaxy S3</a>? Thì <strong>Samsung Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> chính là một phiên bản thu nhỏ của S3. Máy có thiết kế bo tròn 4 góc đều nhau, phần khung sườn kim loại chống xước cho cảm giác chắc chắn và sang trọng.</p><h3 align=""><br>Màn hình lớn 4.7 inch</h3><p align="center"><strong><img title="Samsung Galaxy Win với màn hình lớn" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image003.jpg" alt="Samsung Galaxy Win với màn hình lớn, xem phim cực đã" height="550" border="0" width="422"></strong><br><em>Samsung </em><em>Galaxy</em><em> Win</em><em> với màn hình lớn, xem phim cực đã</em></p><p style="text-align: justify;" align=""><br>Smartphone màn hình cỡ lớn đang là “mốt” của giới công nghệ hiện nay. Hiểu được “tâm tư” của khách hàng, Samsung đã trang bị cho <strong>Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> một màn hình 4.7 inch cảm ứng đa điểm, công nghệ màn hình TFT, độ phân giải 800 x 480 pixels cho chất lượng hình ảnh ở mức tầm trung. Tất nhiên với màn hình lớn, bạn có thể đọc sách, lướt web, xem video… to rõ hơn.</p>&nbsp;<h3 align=""><br>Vi xử lý lõi tứ mạnh mẽ</h3><p style="text-align: justify;" align="">Hiện nay, vi xử lý lõi tứ cao cấp chủ yếu được trang bị trên những smartphone “đình đám”, tuy nhiên <strong>Samsung Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> cũng được trang bị bộ vi xử lý lõi tứ Qualcomm tốc độ 1.2GHz. Với vi xử lý này, máy có thể xử lý mọi phần mềm, chạy những trò chơi, ứng dụng mà Android hỗ trợ. Vi xử lý mạnh mẽ cũng giúp máy chạy mượt mà, chơi những game nặng mà không bị giật.</p><p align="center"><img title="Samsung Galaxy Win trang bị vi xử lý lõi tứ" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image005.jpg" alt="Samsung Galaxy Win được trang bị vi xử lý lõi tứ mạnh mẽ" height="428" border="0" width="419"><br><em>Samsung </em><em>Galaxy</em><em> Win</em><em> &nbsp;được trang bị </em><em>vi xử lý lõi tứ mạnh mẽ</em></p><h3 align=""><br>2 sim 2 sóng online</h3><p style="text-align: justify;" align="">Ngoài cấu hình mạnh, màn hình lớn, <strong>Galaxy</strong><strong> </strong><strong>Win</strong><strong> </strong><strong>I8552</strong> còn hỗ trợ hai khe cắm sim, nhờ vậy cùng lúc bạn có thể sử dụng 2 sim trên một máy và thể dễ dàng chuyển đổi sử dụng giữa 2 sim, thay đổi nhà mạng kết nối internet. 2 sim, một sim cho công viêc, một sim cho gia đình, thật tiện lợi cho người dùng.</p><p align="center"><img title="Samsung Galaxy Win hỗ trợ 2 sim" src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image007.jpg" alt="Samsung Galaxy Win hỗ trợ 2 sim" height="550" border="0" width="355"><br><em>Samsung </em><em>Galaxy </em><em>Win </em><em>hỗ trợ 2 sim</em></p><h3 align=""><br>Hệ điều hành Android Jelly Bean</h3><p style="text-align: justify;" align="">Hệ điều hành Android phiên bản Jelly Bean có giao diện đẹp, hỗ trợ người dùng tốt hơn với nhiều phím tắt tiện ích. Không những vậy, hệ điều hành mới cũng giúp cải thiện thời lượng pin, cho thời gian sử dụng dài hơn. Jelly Bean đã cải thiện khả năng cảm ứng giúp bạn có thể thoải mái “vuốt chạm”.</p><p align="center"><img title="Samsung Galaxy Win có viền kim loại " src="http://cdn.tgdd.vn/Products/Images/42/58267/samsung-galaxy-win-i8552_clip_image009.jpg" alt="Samsung Galaxy Win sử dụng HĐH Android Jelly Bean" height="600" border="0" width="317"><br><em>Samsung Galaxy Win có viền kim loại chắc chắn</em></p><h3 align=""><br>Đầy đủ camera</h3><p style="text-align: justify;" align=""><strong>Samsung Galaxy Win I8552</strong> hỗ trợ cả hai camera trước (VGA) cho tính năng gọi video và camera sau. Máy ảnh sau chỉ 5.0MP nhưng đầy đủ các tính năng như chế độ tự động lấy nét, nhận dạng nụ cười, đính kèm vị trí chụp ảnh. Camera cũng hỗ trợ đèn flash để có thể chụp trong điều kiện ánh sáng yếu.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp, tinh tế.</li>
	<li>Màn hình rộng 4.7inch cho hiển thị sống động.</li>
	<li>Mạnh mẽ với chip lõi tứ.</li>
	<li>Chuyển đổi nhanh chóng, linh hoạt giữa 2 sim.</li>
	<li>Giao diện cử chỉ thông minh (lắc để cập nhật ứng dụng, úp để tắt âm thanh).</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy ảnh sau chỉ 5.0MP.</li>
	<li>Màn hình chưa được sắc nét.</li>
</ul></td></tr></tbody></table>', 4, 99, 0, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (24, N'Samsung Galaxy Core Duos', N'/Content/Images/Samsung/Samsung Galaxy Core Duos.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Samsung/Hinh360-Samsung/dien-thoai-di-dong-samsung-galaxy-note-2-n7100-1.jpg', N'" /> </a>', CAST(4990000 AS Decimal(18, 0)), CAST(5100000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.3", 480 x 800 pixels
CPU:	Qualcomm MSM8225, 2 nhân, 1.2 GHz
RAM	1 GB
Hệ điều hành:	Android 4.1.2 (Jelly Bean)
Camera chính:	5.0 MP, Quay phim 480p@30fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	8 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	1800 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/59455/Kit/Samsung-Galaxy-Core-Duos-I8262-mo-ta-chuc-nang.jpg">   <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.3"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim 480p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8225</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 203</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">8 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">129.3 x 67.6 x 9 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">124</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1800 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Samsung Galaxy Core Duos I8262 – Smartphone tầm trung với thiết kế đẹp và đầy đủ tính năng</h2><p align="left"><br><a title="Samsung Galaxy" href="http://www.thegioididong.com/samsung-galaxy" target="_blank">Samsung Galaxy</a> Core Duos I8262 là một điện thoại thông minh có giá phải chăng, màn hình rộng, cấu hình ổn và đầy đủ tính năng như một điện thoại cao cấp khác.</p>&nbsp;<h3 align="left"><br>Phần cứng</h3><p align="left"><strong>Galaxy Core Duos I8262</strong> được trang bị bộ vi xử lý hai nhân tốc độ 1.2GHz, đây là vi xử lý tương tự như trong “siêu phẩm một thời” <a href="http://www.thegioididong.com/dtdd/samsung-galaxy-s-ii-plus-i9105" target="_blank">Galaxy S2</a>. Với bộ vi xử lý này, bạn yên tâm khi chạy các phần mềm, tiện ích và thậm chí là game 3D.</p><p align="center"><br><img title="Samsung Galaxy Core Duos I8262" src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image001.jpg" alt="Samsung Galaxy Core Duos I8262" height="404" width="595"> <br><em>Samsung Galaxy Core Duos I8262 với 2 màu đen và trắng</em></p><p align="left"><br>Màn hình cảm ứng đa điểm rộng 4.3 inch, độ phân giải 800x480 pixels, mặc dù không phải là màn hình AMOLED nhưng <strong>Samsung Galaxy Core Duos I8262 </strong>vẫn khá nét và sáng với mật độ điểm ảnh 217ppi. Bạn sẽ bất ngờ khi xem các bộ phim HD bởi màn hình cho hình ảnh sắc nét, video mượt mà, trung thực, màu sắc sống động.</p><p align="center"><img title="Samsung Galaxy Core Duos I8262 hỗ trợ 2 sim 2 sóng" src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image003.jpg" alt="Samsung Galaxy Core Duos I8262 hỗ trợ 2 sim 2 sóng" height="367" width="536"> <br><em>Samsung Galaxy Core Duos I8262 hỗ trợ 2 sim 2 sóng</em></p><p align="left"><strong><br>Galaxy Core Duos I8262 </strong>có bộ nhớ RAM 1GB, đủ để xử lý nhiều ứng dụng kể cả ứng dụng nặng mà không có dấu hiệu bị giật hoặc chậm trễ. Samsung Galaxy Core Duos I8262 có bộ nhớ trong 8GB, hơi thấp tuy nhiên bạn có thể mở rộng qua khe microSD, thiết bị có thể hỗ trợ thẻ nhớ lên đến 64GB.</p>&nbsp;<h3 align="left"><br>Thiết kế</h3><p align="left"><strong>Samsung Galaxy Core Duos I8262</strong> có thiết kế khá thon gọn, phía sau hơi bầu để dễ dàng cầm nắm. Với kích thước 129.3 x 67.6 x 9 mm, Galaxy Core Duos I8262 có thiết kế thanh mảnh, không dày mà cũng không quá mỏng, vừa vặn trên một bàn tay. Ngoài ra, với trọng lượng chỉ 124g, rất nhẹ nhàng khi sử dụng.</p><p align="center"><br><img title="Thiết kế thanh mảnh, chắc chắn của Samsung Galaxy Core Duos I8262" src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image005.jpg" alt="Thiết kế thanh mảnh, chắc chắn của Samsung Galaxy Core Duos I8262" height="489" width="538"><br><em>Thiết kế thanh mảnh, chắc chắn của Samsung Galaxy Core Duos I8262</em></p><p align="left"><strong><br>Galaxy Core Duos I8262</strong> có mặt sau bằng nhựa mịn, cho cảm giác cao cấp. Viền xung quanh được bao bọc bằng kim loại, khiến máy rất chắc chắn. Mặt sau của máy với logo <a title="Samsung" href="http://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>, loa, máy ảnh, đèn flash về một phía khiến người dùng có cảm giác “sạch sẽ và trơn tru”.</p>&nbsp;<h3 align="left"><br>Phần mềm</h3><p align="left"><strong>Samsung Galaxy Core Duos I8262 </strong>chạy hệ điều hành Android Jelly Bean 4.1, phiên bản với nhiều cải tiến so với các phiên bản trước đó. Máy sẽ chạy mượt mà hơn cũng như tiết kiệm pin hơn.</p><p align="center"><br><img title="Samsung Galaxy Core Duos I8262 chạy trên Android Jelly Bean 4.1 " src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image006.jpg" alt="Samsung Galaxy Core Duos I8262 chạy trên Android Jelly Bean 4.1 " height="273" width="500"> <br><em>Samsung Galaxy Core Duos I8262 chạy trên Android Jelly Bean 4.1</em></p><p align="left">Ngoài ra, phiên bản mới này cũng giúp bạn cài đặt được nhiều các phần mềm, các tiện ích, trò chơi khác nhau.</p>&nbsp;<h3 align="left"><br>Kết nối</h3><p align="left"><strong>Galaxy Core Duos I8262 </strong>hỗ trợ 2 sim 2 sóng, có thể chuyển đổi dễ dàng giữa các sim. Sim 1 hỗ trợ cả mạng 2G, 3G, sim 2 hỗ trợ mạng 2G. Ngoài ra, chiếc <a title="smartphone" href="http://www.thegioididong.com/dtdd?f=smartphone" target="_blank">smartphone</a> này còn hỗ trợ kết nối không dây Bluetooth 3.0 cho kết nối nhanh chóng và hiệu quả. Cổng microUSB làm cả hai nhiệm vụ đó là sạc pin hoặc kết nối với máy tính để truyền tải dữ liệu. Galaxy Core Duos cũng được hỗ trợ cảm biến GPS để định dạng vệ tinh, tìm đường…</p><p align="center"><br><img title="Samsung Galaxy Core Duos I8262 hỗ trợ đầy đủ kết nối" src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image007.jpg" alt="Samsung Galaxy Core Duos I8262 hỗ trợ đầy đủ kết nối" height="194" width="500"> <br><em>Samsung Galaxy Core Duos I8262 hỗ trợ đầy đủ kết nối</em></p><p align="left"><strong><br>Samsung Galaxy Core Duos I8262</strong> còn có kết nối Wifi và tích hợp tính năng Wifi Hotspot để chia sẻ mạng cho nhiều người. Jack cắm tai nghe 3.5mm để kết nối tai nghe, loa ngoài.</p>&nbsp;<h3 align="left"><br>Camera</h3><p align="center"><strong><br><img title="Samsung Galaxy Core Duos I8262 với camera sau 5.0MP" src="http://cdn.tgdd.vn/Products/Images/42/59455/samsung-galaxy-core-duos-i8262_clip_image008.jpg" alt="Samsung Galaxy Core Duos I8262 với camera sau 5.0MP" height="466" width="391"></strong><br><em>Samsung Galaxy Core Duos I8262 với camera sau 5.0MP</em></p><p align="left"><strong><br>Samsung Galaxy Core Duos</strong> hỗ trợ cả hai camera trước và sau. Máy ảnh sau có độ phân giải 5.0MP, được hỗ trơ đèn flash, cho bạn những bức ảnh khá nét. Các tính năng khác như tự động lấy nét, nhận dạng khuôn mặt và nụ cười, gắn thêm nơi chụp cũng được tích hợp vào máy ảnh. Camera trước có độ phân giải 0.3MP, đủ để bạn có thể trải nghiệm tính năng gọi video.</p><p align="right"><strong>Hữu Tình</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Cấu hình mạnh mẽ cho trải nghiệm nhanh, mượt, uyển chuyển.</li>
	<li>Thiết kế đẹp, chắc chắn.</li>
	<li>Chụp liên tiếp 8 bức ảnh, và tự chọn ảnh đẹp nhất.</li>
	<li>Có nhiều chức năng thông minh như S Voice, Voice Unlock, Smart Stay, Smart Alert, Motion UI.</li>
	<li>Tận dụng cước phí, và vùng phủ sóng riêng biệt giữa 2 sim.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy ảnh chưa thật ấn tượng.</li>
</ul></td></tr></tbody></table>', 4, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (25, N'Sony Xperia Z', N'/Content/Images/Sony/Sony Xperia Z.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(11990000 AS Decimal(18, 0)), CAST(12700000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels
CPU:	Qualcomm APQ8064 Snapdragon, 4 nhân, Quad-core 1.5 GHz Krait
RAM:	2 GB
OS	Android 4.1.2 (Jelly Bean)
Camera chính:	13 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ tối đa:	32 GB
Pin:	2330 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/57958/Kit/Sony-Xperia-Z-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">13 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">Quad-core 1.5 GHz Krait</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm APQ8064 Snapdragon</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 320</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">139 x 71 x 7.9 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">146</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2330 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 107 kbps / Up to 296 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Gmail, Youtube<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 style="text-align: center;">Sony Xperia Z - Smartphone tốt nhất của Sony</h2><p style="text-align: justify;" align=""><br>Không phải Sony là công ty duy nhất đang phải vật lột với vấn đề cạnh tranh trong thị trường điện thoại thông minh mà kể cả HTC hay LG cũng đang có tình trạng tương tự. Chiến thắng Apple, Samsung là điều mà nhà sản xuất nào cũng mong muốn, và “siêu phẩm” của Sony mang tên <strong>Xperia Z</strong> đã được tung ra nhằm hi vọng điều đó.</p><p align="center"><strong><img title="Sony Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image002.jpg" alt="Sony Xperia Z" height="499" width="504"></strong><br><em>Sony Xperia Z</em></p><p style="text-align: justify;" align=""><br>Điện thoại thông minh <strong>Sony Xperia Z</strong> đang có những thông số kỹ thuật hàng đầu, đó là một màn hình lớn độ phân giải full HD, một camera 13 “chấm” và đặc biệt máy có khả năng chống thấm nước hiệu quả. Sản phẩm cũng đánh dấu một bước đột phá trong thiết kế của Sony, các góc cạnh vuông vắn, mạnh mẽ, hai mặt trước sau đều được làm bằng kính chống xước khiến <strong>Xperia Z </strong>trở nên hết sức sang trọng.</p><p align="center"><img title="Sony Xperia Z với khả năng chống thấm nước" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image004.jpg" alt="Sony Xperia Z với khả năng chống thấm nước" height="412" width="550"><br><em>Sony Xperia Z với khả năng chống thấm nước</em></p><h3 align=""><br>Phần cứng</h3><p style="text-align: justify;" align="">Bình thường, nếu các bạn muốn có một điện thoại chống thấm nước thì phải tìm đến thị trường Nhật Bản, và có vẻ như lần này Sony đã mang công nghệ của mình ra ngoài. <strong>Sony Xperia Z</strong> là một trong những sản phẩm hiếm hoi có khả năng chống nước mà được chính thức phân phối bên ngoài thị trường Nhật Bản. Ngoài khả năng chống nước, máy cũng có khả năng chịu lực cao, chống bám bụi tốt. <strong>Xperia Z</strong> có kích thước 139 x 71 x 7.9mm, trọng lượng 146g, mỏng manh, nhẹ nhàng nhưng cực kỳ chắc chắn.</p><p align="center"><img title="Màn hình sắc nét của Sony Xperia Z " src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image006.jpg" alt="Màn hình sắc nét của Sony Xperia Z " height="378" width="527"><br><em>Màn hình sắc nét của Sony Xperia Z </em></p><p style="text-align: justify;" align=""><br>Để có cảm giác phẳng, rộng rãi thì màn hình chính là một phần cực kỳ quan trọng, bởi vậy Sony đã trang bị cho <strong>Xperia Z</strong> một màn hình rộng 5 inch, công nghệ màn hình LCD TFT, độ phân giải full HD 1920 x 1080 pixels. Màn hình có độ phân giải full HD hiện vẫn đang là “hàng hiếm” trong thị trường smartphone, mặc dù sắp tới, nó sẽ trở thành xu hướng mới cho các thiết bị di động cao cấp.</p><p align="center"><img title="Sony Xperia Z có màn hình 5 inch full HD" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image008.jpg" alt="Sony Xperia Z có màn hình 5 inch full HD" height="417" width="550"><br><em>Sony Xperia Z có màn hình 5 inch full HD</em></p><p style="text-align: justify;" align=""><br>Tất nhiên chúng ta không thể không nhắc đến màn hình tuyệt đẹp 4.7 inch full HD trong <a href="http://www.thegioididong.com/dtdd/htc-one" target="_blank">HTC One</a> hay <a href="http://www.thegioididong.com/dtdd/htc-butterfly" target="_blank">Droid DNA</a>, tuy nhiên màn hình trong <strong>Sony Xperia Z</strong> lớn hơn. Nếu so sánh về mật độ điểm ảnh, màn hình của <strong>Xperia Z</strong> có mật độ là 441ppi bằng mật độ của màn hình HTC Droid DNA, còn của HTC One là 468ppi. Như vậy, màn hình của Xperia Z có mật độ điểm ảnh đứng thứ hai, vượt qua cả các siêu phẩm đình đám hiện nay như <a href="http://www.thegioididong.com/dtdd/iphone-5" target="_blank">iPhone 5</a>, <a href="http://www.thegioididong.com/dtdd/samsung-galaxy-s3-i9300" target="_blank">Galaxy S3</a>, <a href="http://www.thegioididong.com/dtdd/samsung-note-2" target="_blank">Galaxy Note 2</a>….</p><p align="center"><img title="Có thể ngâm Sony Xperia Z ở độ sâu 1m" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image010.jpg" alt="Có thể ngâm Xperia Z ở độ sâu 1m" height="500" width="538"><br><em>Có thể ngâm Xperia Z ở độ sâu 1m</em></p><p style="text-align: justify;" align=""><br>Màn hình của <strong>Sony Xperia Z</strong> được trang bị công nghệ Mobile Bravia Engine 2, đây là công nghệ tối ưu hóa độ tương phản, tăng độ nét của màn hình, màu sắc trung thực, hình ảnh sắc nét hơn và nó được tối ưu hóa cho mọi hoạt động như xem ảnh, xem video trên máy hay trên YouTube. Tuy nhiên, góc nhìn của loại màn hình này không được rộng, hình ảnh sẽ không còn rõ ràng khi bạn nhìn vào màn hình ở những góc hẹp.</p><p align="center"><img title="Sony Xperia Z sử dụng công nghệ Mobile Bravia Engine 2" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image012.jpg" alt="Xperia Z sử dụng công nghệ Mobile Bravia Engine 2" height="313" width="550"><br><em>Xperia Z sử dụng công nghệ Mobile Bravia Engine 2</em></p><p style="text-align: justify;" align=""><strong><br>Sony Xperia Z</strong> có thiết kế tuyệt đẹp và hiện đại. Việc trang bị mặt kính cho cả mặt trước và sau là hết sức thú vị, mặc dù nó làm cho điện thoại trơn hơn, trong khi đó, bộ khung của máy được làm từ sợ Polyamide, một vật liệu có độ bền, cứng không thua kém gì kim loại, nhưng lại có trọng lượng nhẹ hơn.</p><p align="center"><img title="Hai mặt của Sony Xperia Z đều là mặt kính" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image014.jpg" alt="Hai mặt của Xperia Z đều là mặt kính" height="500" width="374"><br><em>Hai mặt của Xperia Z đều là mặt kính</em></p><p style="text-align: justify;" align=""><br>Nhờ thiết kế độc đáo của mình, <strong>Xperia Z</strong> có khả năng chống nước hiệu quả, đạt tiêu chuẩn IP55 và IP57, có nghĩa là bạn có thể “lặn sâu 1m cùng với máy”, hay vừa tắm vừa xem video. Tuy nhiên, đó là trong điều kiện các cổng kết nối đã được bịt kín. Cổng microSD, microUSB, jack cắm tai nghe, ổ cắm sạc, tất cả đều có “cánh cửa” riêng để đóng kín lại, tránh sự xâm nhập của nước và bụi bẩn. Tất nhiên, nếu bất kỳ một trong những khe cắm bị hở thì việc chống nước sẽ không còn hiệu quả.</p><p align="center"><img title="Sony Xperia Z có nút nguồn nhô ra khỏi cạnh máy" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image015.jpg" alt="Xperia Z có nút nguồn nhô ra khỏi cạnh máy" height="360" width="505"><br><em>Xperia Z có nút nguồn nhô ra khỏi cạnh máy</em></p><p style="text-align: justify;" align=""><br>Các yếu tố thiết kế đáng chú ý khác đó là nút nguồn, Sony đã thiết kế để nút nguồn nằm ở giữa cạnh phải. Là một nút tròn, bằng kim loại sáng bóng, nhô ra khỏi cạnh máy, như một nút nhấn chụp của máy ảnh. Trong thực tế chúng ta rất thường xuyên sử dụng nút nguồn này, tuy vậy nó cũng gây chút cảm giác phiền phức.</p><p align="center"><img title="Sony Xperia Z được trang bị đầy đủ các kết nối " src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image017.jpg" alt="Xperia Z được trang bị đầy đủ các kết nối " height="344" width="550"><br><em>Xperia Z được trang bị đầy đủ các kết nối </em></p><p style="text-align: justify;" align=""><br>Các kết nối không dây cũng được Sony chăm chút chu đáo cho <strong>Xperia Z</strong>. Máy được trang bị công nghệ kết nối không dây 4G/LTE, 3G/HSPA, cùng bốn băng tần GSM/EDGE. Những kết nối khác bao gồm Wifi a/b/g/n, Bluetooth 4.0, định vị vệ tinh toàn cầu aGPS/GLONASS,&nbsp;công nghệ kết nối trường gần NFC, Wifi Miracast, cổng microUSB 2.0, cổng MHL HDMI, khe cắm microSD.</p><p align="center"><img title="Sony Xperia Z với bộ vi xử lí Qualcomm Snapdragon S4 Pro" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image019.jpg" alt="Sony Xperia Z với bộ vi xử lí Qualcomm Snapdragon S4 Pro" height="500" width="305"><br><em>Sony Xperia Z với bộ vi xử lí Qualcomm Snapdragon S4 Pro</em></p><p style="text-align: justify;" align=""><br>Một thành phần hết sức quan trọng đó là “bộ não” của <strong>Xperia Z</strong>, nơi xử lý mọi hoạt động của thiết bị là một bộ vi xử lý lõi tứ Qualcomm S4 Pro vô cùng mạnh mẽ, tốc độ 1.5GHz. Máy còn được trang bị bộ nhớ Ram 2GB cùng bộ nhớ trong 16GB. Máy ảnh 13 “chấm” công nghệ Sony Exmor RS, cho chất lượng hình ảnh tuyệt đẹp. Trong khi đó, máy ảnh trước 2.0MP, công nghệ Exmor R cho các chức năng gọi video hay chụp chính mình.</p><h3 align=""><br>Phần mềm</h3><p style="text-align: justify;" align="">Sony đã tích hợp hệ điều hành Android 4.1.2 Jelly Bean cho <strong>Xperia Z</strong>, mặc dù không phải là phiên bản Android mới nhất 4.2 tuy nhiên chúng ta sẽ thấy sự quen thuộc trong đó. Giao diện trang nhã, thân thiện, một vài vùng không gian để chứa các ứng dụng thường xuyên sử dụng và một phần là nơi chứa các ứng dụng của Sony như Music Unlimited, Video Unlimited (có thể mua, cho thuê) và Sony Select là nơi bạn có thể download trò chơi, ứng dụng như Google Play mà chúng ta thường thấy trong điện thoại Android.</p><p align="center"><img title="Sony Xperia Z chạy Android 4.1.2 Jelly Bean" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image020.jpg" alt="Xperia Z chạy Android 4.1.2 Jelly Bean" height="360" width="477"><br><em>Xperia Z chạy Android 4.1.2 Jelly Bean</em></p><p style="text-align: justify;" align=""><br>Nếu bạn đang sử dụng một chiếc Tivi thông minh của Sony thì bạn có thể cài đặt ứng dụng Media Remote lên <strong>Xperia Z</strong> để từ đó điều khiển Tivi thông qua điện thoại. Và tất nhiên, Xperia Z cũng tích hợp các ứng dụng mạng xã hội như Facebook hay Twitter…</p><p align="center"><img title="Mặt kính chống xước của Sony Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image022.jpg" alt="Mặt kính chống xước của Xperia Z" height="391" width="550"><br><em>Mặt kính chống xước của Xperia Z</em></p><p style="text-align: justify;" align=""><br>Bạn có thể sử dụng camera thông qua một phím tắt từ màn hình khóa, tuy nhiên khi chụp xong, máy sẽ trở lại màn hình khóa ban đầu, có thể đây là chế độ bảo mật của Xperia Z.</p><p style="text-align: justify;" align=""><br>Về hiệu suất, <strong>Xperia Z</strong> có điểm số ngang bằng với <a href="http://www.thegioididong.com/dtdd/lg-nexus-4" target="_blank">LG Nexus 4</a> và HTC Droid DNA, đây là điều không có gì phải ngạc nhiên khi nhìn vào trang bị phần cứng của cả ba thiết bị.</p><p align="center"><img title="Có thể vừa “bơi” vừa sử dụng Sony Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image024.jpg" alt="Có thể vừa “bơi” vừa sử dụng Xperia Z" height="360" width="488"><br><em>Có thể vừa “bơi” vừa sử dụng</em> <em>Xperia Z</em></p><p style="text-align: justify;" align=""><br>Một điều đáng chú ý đó là, bạn có thể sử dụng màn hình cảm ứng ngay cả khi máy đang ngập chìm trong nước, bởi vậy việc vừa chơi game, vừa tắm là điều có thể thực hiện khi sử dụng Xperia Z.</p><h3 align=""><br>Camera</h3><p style="text-align: justify;" align="">Trong khi HTC đã xây dựng một chiến lược “điểm ảnh lớn” cho One thì Sony đi theo con đường truyền thống khi trang bị cảm biến 13.0MP cho <strong>Xperia Z</strong>. Đây là cảm biến Exmor RS, có thể chụp ảnh thời gian thực (real-time) HDR và quay video full HD.</p><p align="center"><img title="Hình ảnh được chụp từ camera Sony Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image026.jpg" alt="Hình ảnh được chụp từ camera Xperia Z" height="309" width="550"><br><em>Hình ảnh được chụp từ camera Xperia Z</em></p><p style="text-align: justify;" align=""><br>Thiết bị cũng đi kèm với một phần mềm mà sẽ thấy quen thuộc với những ai đã sử dụng máy ảnh kỹ thuật số Sony trong vài năm trở lại đây. Có nhiều lựa chọn cài đặt, tính năng, chế độ hình ảnh trong <strong>Xperia Z</strong>. Các chế độ được chọn là hết sức rõ ràng, cho dù là lựa chọn chế độ chụp thể thao, chân dung, phong cảnh… trong tổng số 36 thiết lập thì bạn sẽ thấy sự thay đổi chất lượng hình ảnh trong đó. Các chế độ cũng được kết hợp với tính năng chụp HDR cùng công cụ chống rung hiệu quả.</p><p align="center"><img title="Sony Xperia Z cho chất lượng tốt trong điều kiện ánh sáng thấp" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image028.jpg" alt="Xperia Z cho chất lượng tốt trong điều kiện ánh sáng thấp" height="309" width="550"><br><em>Xperia Z cho chất lượng tốt trong điều kiện ánh sáng thấp</em></p><p style="text-align: justify;" align=""><br>Tất nhiên, bạn có thể tự cài đặt bằng tay, mặc dù bạn sẽ khá bối rối trong lần đầu thiết lập. Có một trình cài đặt, nơi bạn có thể chọn độ phân giải của bức ảnh (lên đến 12MP tỷ lệ 4:3 hay 9MP tỷ lệ 16:09), chế độ video, HDR, toàn cảnh và các tùy chọn cao cấp khác…</p><p align="center"><img title="Sony Xperia Z cho chất lượng ảnh sắc nét đến từng chi tiết" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image030.jpg" alt="Xperia Z cho chất lượng ảnh sắc nét đến từng chi tiết" height="412" width="550"><br><em>Xperia Z cho chất lượng ảnh sắc nét đến từng chi tiết</em></p><p style="text-align: justify;" align=""><br>Điều quan trọng ở đây đó là chất lượng hình ảnh, và <strong>Xperia Z</strong> sẽ làm được gì? Video có chất lượng hình ảnh tốt, giảm tiếng ồn nhờ bộ lọc, đặc biệt khi ở bên ngoài và kể cả khi trong điều kiện ánh sáng yếu.</p><p title="Video quay từ Sony Xperia Z ở chế độ full HD" align="center"><iframe src="http://www.youtube.com/embed/que0p9SWhx4" frameborder="0" height="315" width="560"></iframe><br><em>Video quay từ Xperia Z ở chế độ full HD</em></p><p title="Video quay ở chế độ HDR" align="center"><iframe src="http://www.youtube.com/embed/vx3xeSt3fsw" frameborder="0" height="315" width="560"></iframe><br><em>Video quay ở chế độ HDR</em></p><p style="text-align: justify;" align=""><br>Camera của <strong>Xperia Z</strong> có chế độ cân bằng sáng tốt, chống rung hiệu quả, đặc biệt là trong chế độ quay video HDR, điều mà các máy khác khó làm được. Sony đã không làm như các hãng khác, không tăng màu sắc mà mở rộng độ tương phản để hình ảnh rõ nét hơn.</p><h3 align=""><br>Chức năng nghe gọi và pin</h3><p style="text-align: justify;" align="">Thiết bị hỗ trợ nghe nhạc và xem phim trực tuyến bởi vậy tính năng kết nối mạng là hết sức cần thiết. <strong>Xperia Z</strong> hỗ trợ kết nối không dây băng thông rộng 4G/LTE tuy nhiên nếu ở Việt Nam chưa hỗ trợ 4G thì bạn vẫn yên tâm sử dụng 3G để online thường xuyên.</p><p align="center"><img title="Xperia Z chơi game tuyệt đỉnh " src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image032.jpg" alt="Xperia Z chơi game tuyệt đỉnh " height="345" border="0" width="550"><br><em>Xperia Z chơi game tuyệt đỉnh </em></p><p style="text-align: justify;" align=""><br>Kết nối cuộc gọi cũng nhanh chóng và không bị đứt quãng hay mất sóng, loa nghe to rõ. Hiện tại chúng ta cũng chưa hiểu Sony chống thấm nước qua loa như thế nào?</p><p style="text-align: justify;" align=""><br>Với một màn hình lớn, full HD, bạn sẽ lo lắng về thời lượng pin tuy nhiên Sony tuyên bố<strong> Xperia Z</strong> có thời lượng pin đàm thoại lên đến 11 giờ hoặc 550 giờ ở chế độ chờ, lưu ý là trong điều kiện màn hình đang tắt.</p><p align="center"><img title="Xperia Z và Nexus 4" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image033.jpg" alt="Xperia Z và Nexus 4" height="285" border="0" width="529"><br><em>Xperia Z và Nexus 4</em></p><p style="text-align: justify;" align=""><br>Sony đặc biệt tự hào về chế độ STAMINA của máy, ở chế độ này tất cả các kết nối sẽ được ngưng lại, nhờ vậy mà thời lượng pin ở chế độ này sẽ kéo dài gấp 4 lần so với chế độ thường. Tuy nhiên, thay vì có thể cập nhật email, facebook, hay cập nhật các ứng dụng khác liên tục thì người dùng sẽ nhận được các cập nhật khi mở máy.</p><p style="text-align: justify;" align=""><br>Màn hình, vi xử lý mạnh mẽ sẽ “ngốn” rất nhiều pin của máy và chế độ STAMINA sẽ chỉ hữu dụng khi màn hình tắt. Sau mỗi lần sạc, bạn có thể sử dụng máy trong 24 tiếng, tất nhiên thời lượng dài hơn hay ngắn hơn sẽ còn phụ thuộc vào cách sử dụng của bạn.</p><h3 align=""><br>Tổng kết</h3><p style="text-align: justify;" align=""><strong>Xperia Z</strong> là một điện thoại thông minh hàng đầu hiện nay, có màn hình tốt nhất mà Sony đã từng sử dụng, một máy ảnh cao cấp, khả năng chống thấm, chống bám bụi, kiểu dáng đẹp, mượt mà, sang trọng. Nó không phải kiểu rẻ tiền như trong các thiết kế vỏ nhựa nhưng cũng không phải là mặt nhôm. Nếu bạn là một tín đồ công nghệ, luôn tìm tòi khám phám, đổi mới thì Xperia Z là một điện thoại mà bạn đã chờ đợi.</p><p align="center"><img title="Xperia Z với Galaxy Note II" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image034.jpg" alt="Xperia Z với Galaxy Note II" height="310" border="0" width="550"><br><em>Xperia Z với Galaxy Note II</em></p><p style="text-align: justify;" align=""><br>Mặt khác, trong bối cảnh cạnh tranh khốc liệt hiện nay, Sony dường như cũng khó khăn hơn trong việc tìm đúng hướng đi cho mình. <strong>Xperia Z</strong> có thiết kế theo cả hai phong cách hiện đại và cổ điển. Bóng bẩy bằng hai mặt kính nhưng cũng nguyên sơ bằng một nút nguồn “to tướng”. Nó tốt hơn Galaxy S3, tuy nhiên như các bạn đã thấy, Samsung chuẩn bị tung ra S4, mà dự định nó sẽ giúp hãng lấy lại thế cân bằng về độ phân giải màn hình trong smartphone.</p><p align="center"><img title="Xperia Z và BB Z10" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image036.jpg" alt="Xperia Z và BB Z10" height="323" border="0" width="550"><br><em>Xperia Z và BB Z10</em></p><p style="text-align: justify;" align=""><br>Chế độ STAMINA là một ý tưởng táo bạo, giúp thời lượng pin được bền lâu hơn. Sony đơn giản là giúp <strong>Xperia Z</strong> tránh hết pin quá nhanh, pin sẽ sử dụng hiệu quả hơn khi người dùng thực sự sử dụng thiết bị. Với tính năng chống thấm có nghĩa là pin không thể tháo rời.</p><p style="text-align: justify;" align=""><strong><br>Xperia Z</strong> đánh dấu một sự trưởng thành của Sony khi bước chân vào thị trường smartphone đầy cạnh tranh, là sự đầu tư nghiêm túc cũng như tinh tế vào sản phẩm của mình. Xperia Z xứng đáng để có thể thay thế iPhone, Galaxy hay bất cứ dòng điện thoại thông minh cao cấp khác hiện nay.</p><h3 align=""><br>Một số hình ảnh chụp từ “siêu phẩm” Xperia Z</h3><p align="center"><strong><br><img title="Một số hình ảnh chụp từ “siêu phẩm” Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image038.jpg" alt="Xperia Z với hình ảnh chụp góc cột" height="412" border="0" width="550"></strong><br><strong><img title="Một số hình ảnh chụp từ “siêu phẩm” Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image040.jpg" alt="Xperia Z với hình ảnh chụp cà chua" height="412" border="0" width="550"></strong><br><strong><img title="Một số hình ảnh chụp từ “siêu phẩm” Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image042.jpg" alt="Xperia Z với hình ảnh chụp đồi cỏ" height="309" border="0" width="550"></strong><br><strong><img title="Một số hình ảnh chụp từ “siêu phẩm” Xperia Z" src="http://cdn.tgdd.vn/Products/Images/42/57958/sony-xperia-z_clip_image044.jpg" alt="Xperia Z với hình ảnh chụp siêu thị" height="413" border="0" width="550"></strong></p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế chống thấm nước và bụi, 2 mặt được trang bị kính cường lực, chịu va đập tốt.</li>
	<li>Cảm nhận như thật với màn hình Full HD 5 inch.</li>
	<li>Cấu hình mạnh mẽ, hoạt động siêu nhanh, thời lượng pin lâu.</li>
	<li>Chụp ảnh, quay phim tuyệt đẹp trong mọi điều kiện ánh sáng.</li>
	<li>Giải trí bất tận với tai nghe Sony MH-EX300AP &nbsp;đi kèm.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy được thiết kế vuông vức, nên khó cầm nắm.</li>
</ul></td></tr></tbody></table>', 5, 99, 5, 0, 2, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (26, N'Sony Xperia E', N'/Content/Images/Sony/Sony Xperia E.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(2490000 AS Decimal(18, 0)), CAST(2850000 AS Decimal(18, 0)), N'Màn hình:	HVGA, 3.5", 320 x 480 Pixels
CPU:	Qualcomm MSM7227A, 1 nhân, 1 GHz
RAM	512 MB
Hệ điều hành:	Android 4.1 (Jelly Bean)
SIM:	1 Sim
Camera:	3.2 MP, Quay phim VGA
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1530 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/57853/Kit/Sony-Xperia-E-C1505-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">262.144 màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">HVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">320 x 480 Pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">3.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">3.2 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim VGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">1 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM7227A</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 200</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">113.5 x 61.8 x 11 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">115.7</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1530 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">SIM bình thường</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, DLNA, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 86 kbps / Up to 237 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Gmail, Youtube<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Sony Xperia E C1505 – Thiết chắc chắn, giá phải chăng, kết nối nhanh chóng</h2><p style="text-align: justify;" align=""><strong><br>Xperia E C1505 </strong>là một điện thoại thông minh giá rẻ của Sony, một hãng điện thoại Nhật Bản nổi tiếng với những sản phẩm “ăn chắc mặc bền”.<strong></strong></p>&nbsp;<h3 align=""><br>Thiết kế đẹp, chắc chắn</h3><p style="text-align: justify;" align=""><strong>Sony Xperia E </strong>có thiết kế mặt trước hình chữ nhật, kiểu thanh đứng, các góc bo tròn rất nhẹ, một đường viền kim loại mỏng chạy xung quanh chu vi máy. Bởi thế, mặc dù bộ vỏ bằng nhựa nhưng máy rất chắc chắn.</p><p align="center"><img title="Thiết kế đẹp mắt của Sony Xperia E" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image002.jpg" alt="Thiết kế đẹp mắt của Sony Xperia E" height="400" width="292"> <br><em>Thiết kế đẹp mắt của Sony Xperia E</em></p><p style="text-align: justify;" align=""><br>Mặt sau của máy khá mịn màng và “sạch sẽ” với một logo XPERIA ở giữa và máy ảnh ở phía sát cạnh trên. Bên cạnh phải phía trên của <strong>Xperia E </strong>là nút điều chỉnh âm lượng, sát bên dưới là nút nguồn và ở bên dưới là nút chụp ảnh, rất tiện lợi và dễ sử dụng. Cạnh trái chỉ duy nhất cổng kết nối microUSB làm hai nhiệm vụ, kết nối máy tính để truyền tải dữ liệu và sạc pin.</p><p align="center"><img title="Sony Xperia E với màn hình 3.5 inch" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image004.jpg" alt="Sony Xperia E với màn hình 3.5 inch" height="567" width="550"> <br><em>Sony Xperia E với màn hình 3.5 inch</em></p><p style="text-align: justify;" align=""><br>Đặc biệt, phía sau của <strong>Xperia E C1505 </strong>thiết kế hơi lượn sóng, ở giữa hẹp hơn ở hai bên, đây là thiết kế hướng tới người dùng, cho cảm giác cầm máy một cách tốt nhất và dễ sử dụng nhất.</p><p align="center"><img title="Thiết kế “lượn sóng” của Sony Xperia E" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image006.jpg" alt="Thiết kế “lượn sóng” của Sony Xperia E" height="124" width="600"> <br><em>Thiết kế “lượn sóng” của Sony Xperia E</em></p>&nbsp;<h3 align=""><br>Cấu hình khá</h3><p style="text-align: justify;" align=""><strong>Sony Xperia E C1505</strong> được trang bị một bộ vi xử lý tốc độ 1GHz kết hợp với bộ nhớ RAM 512MB cùng bộ nhớ trong 4GB. Với cấu hình này, máy đủ sức để sử dụng các trò chơi vừa phải hiện nay cũng như cài đặt và sử dụng tốt hầu hết các phần mềm, tiện ích trên Android.</p><p align="center"><img title="Sony Xperia E có cấu hình khá" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image008.jpg" alt="Sony Xperia E có cấu hình khá" height="457" width="559"><br><em>Sony Xperia E có cấu hình khá</em></p><p style="text-align: justify;" align=""><strong><br>Xperia E</strong> được trang bị máy ảnh 3.2MP, mặc dù chưa sắc nét nhưng đủ để bạn có những bức ảnh đẹp để bạn chia sẻ với bạn bè trên mạng xã hội.</p>&nbsp;<h3 align=""><br>Nhiều màu sắc để bạn chọn lựa</h3><p align="center"><strong><img title="Sony Xperia E với tông màu đen lịch lãm" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image010.jpg" alt="Sony Xperia E với tông màu đen lịch lãm" height="500" width="356"></strong><strong> </strong><br><em>Sony Xperia E có tông màu đen lịch lãm</em></p><p style="text-align: justify;" align=""><br>Màu đen sang trọng lịch lãm, màu trắng tinh khôi, màu hồng trẻ trung phù hợp với bạn nữ… <strong>Sony Xperia E C1505</strong> có nhiều màu sắc cho bạn. Bởi vậy, bạn sẽ thoải mái lựa chọn những màu sắc phù hợp với giới tính, sở thích của mình.</p>&nbsp;<h3 align=""><br>Hỗ trợ 3G, Wifi lướt web vi vu</h3><p style="text-align: justify;" align=""><strong>Xperia E </strong>hỗ trợ mạng 2G, Wifi và đặc biệt là mạng 3G để có thể kết nối mọi lúc mọi nơi, nhanh chóng và tiện lợi.</p><p align="center"><img title="Lướt web vi vu cùng Sony Xperia E" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image012.jpg" alt="Lướt web vi vu cùng Sony Xperia E" height="417" width="584"> <br><em>Lướt web vi vu cùng Sony Xperia E</em></p><p style="text-align: justify;" align=""><br>Bạn đang ngồi trên tàu xe, hay chờ đợi một ai đó, bạn có thể dùng mạng 3G để lướt web, vào mạng xã hội, xem phim trực tuyến…</p>&nbsp;<h3 align=""><br>Đầy đủ kết nối</h3><p style="text-align: justify;" align="">Ngoài các kết nối mạng 2G, 3G và Wifi <strong>Sony Xperia E </strong>còn có cảm biến GPS định vị vệ tinh toàn cầu, nhờ nó, bạn có thể biết được mình đang ở đâu hoặc tìm đường qua Google Map.</p><p align="center"><img title="Sony Xperia E hỗ trợ đầy đủ kết nối" src="http://cdn.tgdd.vn/Products/Images/42/57853/sony-xperia-e-c1505_clip_image014.jpg" alt="Sony Xperia E hỗ trợ đầy đủ kết nối" height="129" width="600"> <br><em>Sony Xperia E hỗ trợ đầy đủ kết nối</em></p><p style="text-align: justify;" align=""><br>Máy còn hỗ trợ tính năng Wifi hotspot để có thể chia sẻ&nbsp; mạng với các thiết bị khác, cổng microUSB để truyền tải dữ liệu dễ dàng, hỗ trợ Bluetooth để kết nối tới các thiết bị khác hoặc sử dụng tai nghe Bluetooth. Khe cắm thẻ nhớ để mở rộng bộ nhớ lưu trữ, nó có thể hỗ trợ thẻ nhớ lên đến 32GB.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế chắc chắn, đẹp mắt.</li>
	<li>Trình quản lý pin, dữ liệu hiệu quả.</li>
	<li>Nghe nhạc cực hay với ứng dụng WALKMAN.</li>
	<li>HĐH Android 4.1 mượt mà, ổn định.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Không có máy ảnh trước.</li>
	<li>Bộ nhớ trong hơi thấp.</li>
</ul></td></tr></tbody></table>', 5, 99, 1, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (27, N'Sony Xperia Z Ultra', N'/Content/Images/Sony/Sony Xperia Z Ultra.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(11990000 AS Decimal(18, 0)), CAST(12400000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 6.4", 1080 x 1920 pixels
CPU:	Qualcomm MSM8974, 4 nhân, 2.2 GHz
RAM	2 GB
Hệ điều hành:	Android 4.2.2 (Jelly Bean)
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.0 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	3050 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/59952/Kit/Sony-Xperia-Z-Ultra-C6802-mo-ta-chuc-nang.jpg">    <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">6.4"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8974</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">179.4 x 92.2 x 6.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">212</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3050 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 107 kbps / Up to 296 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Sony Xperia Z Ultra – Smartphone chống thấm nước, màn hình full HD lớn nhất và vi xử lý mạnh nhất thế giới</h2><p style="text-align: justify;" align=""><br>Sony Xperia Z Ultra là một sản phẩm hội tụ gần như tất cả các công nghệ cao cấp của Sony, màn hình full HD 6.4 inch vô cùng sắc nét, vi xử lý di động mạnh nhất hiện nay Snapdragon 800 2.2GHz….</p><h3 align=""><br>Thiết kế tuyệt vời</h3><p style="text-align: justify;" align=""><strong>Sony Xperia Z Ultra</strong> chắc chắn sẽ làm bạn ấn tượng ngay từ cái nhìn đầu tiên. Nó thật sự rất mỏng, rất đẹp và cao cấp. Các bạn có thể ấn tượng với <strong>iPhone</strong> nhưng kỹ năng chế tạo của Z Ultra cũng không hề thua kém. Nó hơn hẳn <a href="http://www.thegioididong.com/dtdd/sony-xperia-z" target="_blank">Xperia Z</a>, cầm hoàn toàn không bị cấn tay do Z Ultra đã sử dụng những cạnh bo tròn, không còn sắc. Lưu ý là Xperia Z Ultra có viền bằng nhựa chứ không phải kim loại.</p><p align="center"><em><img title="Sony Xperia Z Ultra" src="http://cdn.tgdd.vn/Products/Images/42/59952/sony-xperia-z-ultra_clip_image002.jpg" alt="Sony Xperia Z Ultra"></em><br><em>Sony Xperia Z Ultra</em></p><p style="text-align: justify;" align=""><br>Mặc dù lớn nhưng bạn có thể sử dụng bằng một bàn tay, tại sao vậy? Đó là nhờ Sony đã tối ưu hóa phần mềm, các chương trình có thể chạy lệch sang một bên để dễ dàng sử dụng trên một tay chứ không phải là các ngón tay có thể chạm ở mọi nơi trên màn hình thiết bị.</p><h3 align=""><br>Smartphone mạnh nhất thế giới</h3><p style="text-align: justify;" align="">Hiện tại, vi xử lý <strong>Snapdragon 800</strong> được coi là vi xử lý dành cho thiết bị di động mạnh nhất thế giới, <strong>Xperia Z Ultra</strong> đã tích hợp vi xử lý đó nhưng với tốc độ xử lý lên đến 2.2GHz. Nhờ vậy, Xperia Z Ultra trở thành smartphone có tốc độ xử lý nhanh nhất, mạnh nhất, tích hợp đồ họa cao nhất.</p><h3 align=""><br>Chống thấm nước</h3><p align="center"><em><img title="Sony Xperia ZU chống thấm nước hiệu quả theo tiêu chuẩn IP58" src="http://cdn.tgdd.vn/Products/Images/42/59952/sony-xperia-z-ultra_clip_image003.jpg" alt="Sony Xperia ZU chống thấm nước hiệu quả theo tiêu chuẩn IP58"></em><br><em>Sony Xperia ZU chống thấm nước hiệu quả theo tiêu chuẩn IP58</em></p><p style="text-align: justify;" align=""><br>Mặc dù là điện thoại màn hình khủng, lai máy tính bảng nhưng <strong>Sony Xperia ZU</strong> vẫn có khả năng chống nước IP58 tốt hơn cả trên <strong>Xperia Z</strong> (IP57). Điều đó có nghĩa rằng máy có khả năng chống bụi và chịu được 30 phút ở độ sâu 1m. Bởi vậy, nếu bạn đậy kín các cổng kết nối lại thì bạn có thể yên tâm là vừa tắm vừa nghe nhạc hoặc nghe nhạc khi đi giữa trởi mưa to.</p><h3 align=""><br>Màn hình full HD 6.4 inch cực kỳ sắc nét</h3><p style="text-align: justify;" align="">Điểm nhấn của <strong>Xperia Z Ultra</strong> đó là một màn hình cỡ khủng, 6.4 inch, gần bằng một máy tính bảng 7 inch. Đặc biệt đó là màn hình full HD sử dụng <strong>công nghệ Triluminos</strong> và <strong>công nghệ X-Reality</strong> thay vì Bravia Mobile Engine 2 của thế hệ cũ nên chiếc máy này cho chất lượng hiển thị rất cao. Hình ảnh không mờ mờ đục đục như <strong>Xperia Z</strong>, kể cả khi ở ngoài màn hình chủ mà vẫn trong vắt.</p><p align="center"><strong><em><img title="Sony Xperia ZU với màn hình khủng full HD 6.4 inch" src="http://cdn.tgdd.vn/Products/Images/42/59952/sony-xperia-z-ultra_clip_image005.jpg" alt="Sony Xperia ZU với màn hình khủng full HD 6.4 inch"></em></strong><br><em>Sony Xperia ZU với màn hình khủng full HD 6.4 inch - Ảnh từ Sonyviet</em></p><h3 align=""><br>Hỗ trợ cảm ứng cả bút chì</h3><p style="text-align: justify;" align="">Là một chiếc phablet, <strong>Sony Z Ultra</strong> có khả năng hoạt động với bút cảm ứng (stylus). Trong khi bút stylus không được bán kèm máy, màn hình của Z Ultra có thể được sử dụng để ghi chép bằng công cụ nhận dạng chữ viết của máy.</p><p align="center"><em><img title="Sony Xperia ZU hỗ trợ cảm ứng với cả đầu bút chì" src="http://cdn.tgdd.vn/Products/Images/42/59952/sony-xperia-z-ultra_clip_image007.jpg" alt="Sony Xperia ZU hỗ trợ cảm ứng với cả đầu bút chì"></em><br><em>Sony Xperia ZU hỗ trợ cảm ứng với cả đầu bút chì</em></p><p style="text-align: justify;" align=""><br>Điểm thú vị là bên cạnh những chiếc bút stylus thông thường, bạn cũng có thể nhập liệu trên <strong>Xperia ZU</strong> bằng bút chì hoặc bút bi. Rất tiếc máy không thể cảm nhận áp lực của bút để nhận diện độ thanh đậm của nét chữ. Trong ứng dụng vẽ hình, bạn sẽ phải tự chọn mức độ đậm của nét vẽ cho bút stylus.</p><h3 align=""><br>Công nghệ kết nối cao cấp</h3><p align="center"><em><img title="Sony Xperia ZU hỗ trợ đầy đủ các kết nối cao cấp" src="http://cdn.tgdd.vn/Products/Images/42/59952/sony-xperia-z-ultra_clip_image009.jpg" alt="Sony Xperia ZU hỗ trợ đầy đủ các kết nối cao cấp"></em><br><em>Sony Xperia ZU hỗ trợ đầy đủ các kết nối cao cấp</em></p><p style="text-align: justify;" align=""><br>Bên cạnh kết nối 4G LTE, <strong>Sony Xperia Z Ultra</strong> cũng có Bluetooth, NFC và Wi-fi. Máy có 2GB RAM, bộ nhớ trong 16GB hỗ trợ mở rộng qua microSD. Pin có độ lớn 3050mAh hứa hẹn Xperia Z Ultra có thời gian pin ổn định, theo Sony máy có thời lượng 5.5 tiếng cho xem video liên tục và 11 tiếng đàm thoại.</p><p align="right"><strong>Hữu Tình</strong></p>&nbsp;<table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình full HD 6.4 inch.</li>
	<li>Vi xử lý mạnh nhất thế giới Snapdragon 800.</li>
	<li>Cảm ứng ngay cả khi sử dụng bút chì.</li>
	<li>Giải trí, công việc tuyệt vời, trải nghiệm tuyệt vời.</li>
	<li>Siêu bền, siêu mỏng, nhẹ và chống nước.</li>
	<li>Chụp hình tuyệt vời trong mọi điều kiện ánh sáng.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Khó nhét vào túi quần.</li>
	<li>Máy ảnh chỉ 8.0MP.</li>
</ul></td></tr></tbody></table>', 5, 99, 3, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (28, N'Sony Xperia M', N'/Content/Images/Sony/Sony Xperia M.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(4990000 AS Decimal(18, 0)), CAST(5200000 AS Decimal(18, 0)), N'Màn hình:	FWVGA, 4.0", 480 x 854 Pixels
CPU:	Qualcomm MSM8227, 2 nhân, 1 GHz
RAM	1 GB
Hệ điều hành:	Android 4.1.2 (Jelly Bean)
Camera chính:	5.0 MP, Quay phim HD 720p@30fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1700 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/59849/Kit/Sony-Xperia-M-mo-ta-chuc-nang.jpg">   <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.1.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">FWVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 854 Pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8227</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 305</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">124 x 62 x 9.3 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">115</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1700 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 86 kbps / Up to 237 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">NFC</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Sony Xperia M – Thiết kế bắt mắt, vừa tay và đầy đủ tính năng</h2><p style="text-align: justify;" align=""><br>Sony Xperia M là một trong những điện thoại thông minh tầm trung có cấu hình tốt, giá phải chăng và đặc biệt thiết kế rất trẻ trung.</p>&nbsp;<h3 align=""><br>Thiết kế cuốn hút</h3><p style="text-align: justify;" align=""><strong>Sony Xperia M</strong> có thiết kế khá giống với siêu phẩm <a href="http://www.thegioididong.com/dtdd/sony-xperia-zl" target="_blank">Xperia Z</a>, nó là một chút “lai” giữa <strong>Xperia Z </strong>và những dòng Xperia cũ hơn như <a href="http://www.thegioididong.com/dtdd/sony-xperia-zl" target="_blank">Xperia ZL</a>.</p><p align="center"><em><img title="Thiết kế cuốn hút của Sony Xperia M" src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image002.jpg" alt="Thiết kế cuốn hút của Sony Xperia M" height="500" border="0" width="488"></em><br><em>Thiết kế cuốn hút của Sony Xperia M</em></p><p style="text-align: justify;" align=""><br>Đặc biệt, cạnh trái có thiết kế rất giống với <strong>Xperia Z</strong>, một nút nguồn “to tướng” cách điệu, tiếp theo là nút điều chỉnh âm lượng, sau đó là nút chuyên biệt cho máy ảnh. Mặt sau <strong>Sony Xperia M</strong> không phẳng mà được thiết kế hơi cong, khiến ai cầm máy trên tay cũng cho cảm giác an toàn và chắc chắn. Với kích thước 124 x 62x 9.3 mm và nặng chỉ 115g, máy rất gọn và nhẹ nhàng, sử dụng trên một tay hết sức đơn giản.</p><p align="center"><em><img title="Các nút cách điệu trên Sony Xperia M " src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image004.jpg" alt="Các nút cách điệu trên Sony Xperia M " height="500" border="0" width="372"></em><br><em>Các nút cách điệu trên Sony Xperia M</em></p>&nbsp;<h3 align=""><br>Cấu hình tốt</h3><p style="text-align: justify;" align=""><strong>Xperia M</strong> sử dụng bộ vi xử lý dual-core tốc độ 1GHz, bộ nhớ RAM 1GB, với cấu hình đó, máy sẽ chạy rất mượt mà không bị giật. Cảm giác vuốt chạm, lướt web thực sự nhanh chóng. Nếu bạn sử dụng cùng lúc nhiều phần mềm, máy vẫn có thể đáp ứng tốt.</p><p align="center"><em><img title="Sony Xperia M cho hiệu năng hoạt động tốt trên bộ vi xử lý 2 nhân" src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image006.jpg" alt="Sony Xperia M cho hiệu năng hoạt động tốt trên bộ vi xử lý 2 nhân " height="390" border="0" width="634"></em><br><em>Sony Xperia M cho hiệu năng hoạt động tốt trên bộ vi xử lý 2 nhân</em></p><p style="text-align: justify;" align=""><strong><br>Sony Xperia M</strong> có bộ nhớ trong 4GB, khá thấp nhưng có hỗ trợ thẻ microSD lên đến 32GB, bởi vậy bạn có thể thoải mái lưu trữ trên thẻ nhớ.</p>&nbsp;<h3 align=""><br>Kết nối cao cấp</h3><p align="center"><em><img title="Sony Xperia M hỗ trợ cả NFC" src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image007.jpg" alt="Sony Xperia M hỗ trợ cả NFC" height="386" border="0" width="660"></em><br><em>Sony Xperia M hỗ trợ cả NFC</em></p><p style="text-align: justify;" align=""><br>Ngoài kết nối Wifi, mạng băng thông rộng 3G, định vị vệ tinh GPS thì <strong>Xperia M</strong> còn hỗ trợ kết nối trường gần NFC, đây là một tính năng chủ yếu có trên những điện thoại cao cấp. Với tính năng này, bạn có thể chạm vào một điện thoại hỗ trợ NFC và cả hai có thể kết nối, chia sẻ hình ảnh, video…</p>&nbsp;<h3 align=""><br>Hỗ trợ 2 camera</h3><p style="text-align: justify;" align="">Máy ảnh sau có độ phân giải 5.0MP hỗ trợ đèn flash, tự động lấy nét vì vậy nó cũng cho ra các bức ảnh khá nét và sáng. Máy ảnh sau của <strong>Sony Xperia M</strong> cũng có thể quay video HD 720p ở tốc độ 30fps với khả năng chống rung, lọc tiếng tốt. Camera trước 0.3MP để gọi video, chụp ảnh chân dung.</p><p align="center"><img title="Sony Xperia M có đầy đủ 2 camera trước và sau" src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image005.jpg" alt="Sony Xperia M có đầy đủ 2 camera trước và sau" height="500" width="528"><br><em>Sony Xperia M có đầy đủ 2 camera trước và sau</em></p>&nbsp;<h3 align=""><br>Hệ điều hành Android Jelly Bean</h3><p style="text-align: justify;" align=""><strong>Xperia M</strong> chạy hệ điều hành Android 4.1.2 Jelly Bean khá mới mẻ, nhiều tính năng hấp dẫn và cải thiện thời lượng pin tốt.</p><p align="center"><em><img title="Sony Xperia M sử dụng hđh Android Jelly Bean" src="http://cdn.tgdd.vn/Products/Images/42/59849/sony-xperia-m_clip_image008.jpg" alt="Sony Xperia M sử dụng hđh Android Jelly Bean" height="386" border="0" width="580"></em><br><em>Sony Xperia M sử dụng hđh Android Jelly Bean</em></p><p style="text-align: justify;" align=""><br>Bạn có thể cài đặt nhiều phần mềm, tiện ích, game mà bạn mong muốn thông qua Google Play. Các tiện ích đã được cài sẵn trên <strong>Sony Xperia M</strong> như mạng xã hội Facebook, hộp thư điện tử Gmail, Google Maps để xem bản đồ trực tuyến, YouTube xem video online…</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế bắt mắt, cầm nắm dễ dàng.</li>
	<li>Đầy đủ các kết nối, đặc biệt là NFC.</li>
	<li>Hỗ trợ 2 camera trước và sau.</li>
	<li>Hiệu năng hoạt động ổn định, mạnh.</li>
	<li>Hệ điều hành Android Jelly Bean 4.1.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Bộ nhớ trong thấp.</li>
</ul></td></tr></tbody></table>', 5, 99, 0, 10, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (29, N'Sony Xperia C', N'/Content/Images/Sony/Sony Xperia C.jpeg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(6990000 AS Decimal(18, 0)), CAST(7200000 AS Decimal(18, 0)), N'Màn hình:	qHD, 5.0", 540 x 960 pixels
CPU:	MTK 6589, 4 nhân, 1.2 GHz
RAM	1 GB
Hệ điều hành:	Android 4.2.2 (Jelly Bean)
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	2390 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/59978/Kit/Sony-Xperia-C-C2305-mo-ta-chuc-nang.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">qHD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">540 x 960 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">MTK 6589</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">PowerVR SGX544</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">141.5 x 74.2 x 8.9</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">153</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2390 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 85.6 kbps / Up to 237 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Sony Xperia C – Smartphone giá rẻ, màn hình lớn, thiết kế đẹp và chạy chip lõi tứ</h2><p align=""><br>Sony Xperia C là một smartphone có giá phải chăng, chạy chip lõi tứ, màn hình rộng 5 inch đáp ứng đầy đủ nhu cầu của người dùng.</p>&nbsp;<h3 align=""><br>Thiết kế đẹp</h3><p align=""><strong>Sony Xperia C</strong> kế thừa được nhiều nét thiết kế bóng bẩy trên các dòng smartphone <a title="Sony Xperia" href="http://www.thegioididong.com/sony-xperia" target="_blank">Xperia 2013</a> của Sony, như bên dưới màn hình có đèn LED thông báo nhiều màu sắc giống <a href="http://www.thegioididong.com/dtdd/sony-xperia-l" target="_blank">Xperia L</a>, lưng máy giống <a href="http://www.thegioididong.com/dtdd/sony-xperia-sp" target="_blank">Xperia SP </a>với đường cong quyến rũ.</p><p align=""><br>Trong khi mặt trước cùng màu sắc gồm tím, trắng và đen tương tự như <a href="http://www.thegioididong.com/dtdd/sony-xperia-z" target="_blank">Xperia Z</a>. Nhờ vậy, máy khá dễ dàng cầm nắm và sử dụng mặc dù có màn hình rộng lên đến 5 inch.</p><p align="center"><strong><em><img title="Thiết kế đẹp cùng 3 màu chủ đạo của Sony Xperia C" src="http://cdn.tgdd.vn/Products/Images/42/59978/sony-xperia-c_clip_image001.jpg" alt="Thiết kế đẹp cùng 3 màu chủ đạo của Sony Xperia C"></em></strong><br><em>Thiết kế đẹp cùng 3 màu chủ đạo của Sony Xperia C</em></p>&nbsp;<h3 align=""><br>Cấu hình ổn với vi xử lý lõi tứ</h3><p align=""><strong>Xperia C</strong> có màn hình rộng nhưng giá bán hứa hẹn sẽ nằm ở phân khúc tầm trung do sử dụng chipset tới từ nhà sản xuất Đài Loan, MediaTek, thường thấy trên các smartphone có tầm trung và bình dân trên thị trường. Chipset sử dụng trên model này có tên mã MT6589 với tốc độ xung nhịp 1.2 GHz, đi kèm RAM 1 GB.&nbsp;Với cấu hình đó, máy có thể chạy tốt hầu hết các ứng dụng thường xuyên như lướt web, mạng xã hội, đọc sách báo, chơi game bình thường.</p><p align="center"><br><img title="Sony Xperia C sử dụng bộ vi xử lý của MediaTek" src="http://cdn.tgdd.vn/Products/Images/42/59978/sony-xperia-c_clip_image005.jpg" alt="Sony Xperia C sử dụng bộ vi xử lý của MediaTek"><br><em>Sony Xperia C sử dụng bộ vi xử lý của MediaTek</em></p>&nbsp;<h3 align=""><br>Màn hình rộng 5 inch</h3><p align="">Để đáp ứng xu thế mới, smartphone màn hình rộng. Máy cũng có một màn hình rộng 5 inch, độ phân giải qHD 960 x 540 pixels và mật độ điểm ảnh 220ppi. Với màn hình đó, <strong><a title="điện thoại smartphone" href="http://www.thegioididong.com/dtdd" target="_blank">smartphone</a> Xperia C</strong> có thể chơi game, giải trí, đọc sách báo, xem video một cách thoải mái. Màn hình cũng có độ phân giải vừa đủ, sắc nét và sáng sủa.</p><p align="center"><strong><img title="Sony Xperia C có màn hình 5 inch" src="http://cdn.tgdd.vn/Products/Images/42/59978/sony-xperia-c_clip_image002.jpg" alt="Sony Xperia C có màn hình 5 inch"></strong><br><em>Sony Xperia C có màn hình 5 inch</em></p>&nbsp;<h3 align=""><br>Máy ảnh 8 “chấm” có thể chụp bằng giọng nói</h3><p align="">Hãng điện thoại Nhật cũng trang bị cho <strong>Sony Xperia C</strong> những tính năng tốt như camera 8 megapixel sử dụng cảm biến Exmor R, cho phép chụp ảnh bằng giọng nói, hỗ trợ đèn flash, lấy nét tự động…Với cảm biến đó, máy có thể chụp được những bức ảnh sáng nét. Bạn sẽ không bỏ lỡ bất kỳ khoảnh khắc nào trong cuộc sống, đặc biệt là khi đi du lịch…</p><p align="center"><img title="Sony Xperia C trang bị máy ảnh 8.0MP với đèn flash" src="http://cdn.tgdd.vn/Products/Images/42/59978/sony-xperia-c_clip_image003.jpg" alt="Sony Xperia C trang bị máy ảnh 8.0MP với đèn flash"><br><em>Sony Xperia C trang bị máy ảnh 8.0MP với đèn flash</em></p>&nbsp;<h3 align=""><br>Hỗ trợ 2 sim</h3><p align=""><strong>Xperia C </strong>được <a title="điện thoại Sony" href="http://www.thegioididong.com/dtdd-sony" target="_blank">Sony</a> hỗ trợ 2 sim 2 sóng online, các sim chuyển đổi dễ dàng, nhờ vậy, bạn có thể linh động giữa các sim, rất thuận tiện.</p><p align="center"><em><img title="Sony Xperia C hỗ trợ 2 sim" src="http://cdn.tgdd.vn/Products/Images/42/59978/sony-xperia-c_clip_image004.jpg" alt="Sony Xperia C hỗ trợ 2 sim"></em><br><em>Sony Xperia C hỗ trợ 2 sim</em></p>&nbsp;<p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế sang trọng, đẹp mắt.</li>
	<li>Màn hình lớn 5 inch cho trải nghiệm tối ưu.</li>
	<li>Cấu hình tốt với vi xử lý lõi tứ 1.2GHz.</li>
	<li>Chụp ảnh HDR với camera 8.0MP sử dụng cảm biến Exmor R.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Độ phân giải màn hình chỉ 960 x 540px.</li>
</ul></td></tr></tbody></table>', 5, 99, 2, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (30, N'Sony Xperia Z1', N'/Content/Images/Sony/Sony Xperia Z1.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/Sony/Hinh360-Sony/Sony-Xperia-Z-hinh360-1.jpg', N'" /> </a>', CAST(14490000 AS Decimal(18, 0)), CAST(15300000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels
CPU:	Qualcomm MSM8974, 4 nhân, 2.2 GHz
RAM	2 GB
Hệ điều hành:	Android 4.2.2 (Jelly Bean)
Camera chính:	20.7 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.0 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	64 GB
Dung lượng pin:	3000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60103/Kit/Sony-Xperia-Z1-C6902-mo-ta-chuc-nang-1.jpg"> <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">TFT</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">20.7 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận diện khuôn mặt, nụ cười<br>Chống rung</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm MSM8974</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">64 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">144 x 74 x 8.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">170</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Up to 107 kbps / Up to 296 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Xperia Z1 – Smartphone cao cấp với camera cực khủng 20.7MP</h2><p align=""><strong>Sony Xperia Z1</strong> chính là siêu phẩm smartphone Android đến từ Sony Mobile tiếp nối siêu phẩm <strong>Xperia Z</strong>, nó được công bố trước sự trầm trồ, khen ngợi của người xem trong triển lãm công nghệ IFA 2013 diễn ra tại Đức.</p><p align=""><br>Sản phẩm được trang bị khá nhiều tính năng tiên tiến mà đàn anh Z không thể có được, nổi bật nhất phải nói đến đó là chiếc camera trang bị ống kính Sony G, độ phân giải đến 20.7MP. Ngoài ra <strong>Z1</strong> còn gây chú ý hơn nữa với màn hình 5inch full HD, bộ xử lý Qualcomm Snapdragon 800 và thiết kế quá đẹp mắt, chắc chắn của nó.</p><p align="center"><br><img style="display: inline;" class="lazy" title="Sony Xperia Z1 được coi là bản nâng cấp đáng giá của Z" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image002.jpg" alt="Sony Xperia Z1 được coi là bản nâng cấp đáng giá của Z" data-original="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image002.jpg">&nbsp;<br><em>Sony Xperia Z1 được coi là bản nâng cấp đáng giá của Z</em></p>&nbsp;<h3 align=""><br>Thiết kế nguyên khối, sang trọng, cứng cáp</h3><p align=""><strong>Xperia Z1 </strong>được cho là bản nâng cấp hoàn thiện hơn so với đàn anh Z của nó, những nhược điểm từ thiết kế của Xperia Z như loa, phím cứng chụp ảnh… đều được Sony hoàn thiện trên Xperia Z1, do đó ngoài những điểm riêng biệt nó vẫn mang trong mình những điểm thiết kế như mọi người đã thấy. Điểm đáng giá về mặt thiết kế đó là chiếc khung nguyên khối của nó, bên ngoài được bọc với khung kim loại, giúp cho nó chắc chắn và cứng cáp hơn cũng như cầm nắm dễ dàng hơn. Sản phẩm có kích thước khá mỏng chỉ với 8.5mm tuy nhiên do thiết kế bằng kim loại nên nó đưa khối lượng máy lên 170g.</p><p align="center"><br><img title="Sony Xperia Z1 có thiết kế nguyên khối" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image004.jpg" alt="Sony Xperia Z1 có thiết kế nguyên khối nên thân máy có độ bền cao"><br><em>Sony Xperia Z1 có thiết kế nguyên khối nên thân máy có độ bền cao</em></p><p align=""><br>Giống với người anh <strong>Xperia Z</strong>, <strong>Z1</strong> cũng có khả năng “ngụp lặn” rất chuyên nghiệp (đạt tiêu chuẩn quốc tế IP55 và IP58), nhờ thiết kế rất kín đáo nên sản phẩm có thể “tắm” sâu khoảng 1.5m trong vòng 30 phút, nếu bạn thích đi chơi sông nước, hay chơi biển thì việc mang theo chiếc smartphone này hoàn toàn là không đáng ngại. Hơn nữa <strong>Sony&nbsp;Xperia Z1</strong> đã loại bỏ việc thiết kế nắp đậy cho jack 3.5mm giống như Z, thay vào đó bản thân jack đã có khả năng chống nước rồi.</p><p align="center"><br><img title="Nếu Z1 có khả năng lặn ngụp" src="http://cdn.tgdd.vn/Files/2013/09/13/521429/ImageAttach/khong-so-nuoc-201391312520.jpg" alt="Nếu Z1 bẩn bạn có thể nhúng xuống nước và “tắm” cho nó một cách dễ dàng"> <br><em>Nếu Z1 bẩn bạn có thể nhúng xuống nước và “tắm” cho nó một cách dễ dàng</em></p>&nbsp;<h3 align=""><br>Màn hình 5 inch, sử dụng công nghệ cao cấp cho hình ảnh siêu nét</h3><p align="">Chễm chệ ở mặt trước của <strong>Xperia Z1 </strong>đó là chiếc màn hình 5 inch, phía trước được phủ tấm kính rộng khi tắt màn hình mặt trước thiết bị có màu đen tuyền bao trùm, rất đẹp. Chiếc màn hình này nổi bật với độ phân giải full HD, sử dụng công nghệ X-Reality Mobile và Triluminos giống như trên các dòng TV cao cấp của hãng, điều này sẽ đảm bảo cho chất lượng hình ảnh sắc nét, trung thực, màu sắc ấn tượng. Nếu so với Z, Xperia Z1 đảm bảo sẽ không làm bạn thất vọng về chất lượng hiển thị của màn hình.</p><p align="center"><br><img title="Màn hình Z1" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image008.jpg" alt="Màn hình Z1 có độ phân giải cao, công nghệ tiên tiến cho chất lượng vượt trội"> <br><em>Màn hình Z1 có độ phân giải cao, công nghệ tiên tiến cho chất lượng vượt trội</em></p>&nbsp;<h3 align=""><br>Bộ xử lý “khủng” với chip Snapdragon 800</h3><p align="">Bên trong tấm gương lớn và bộ khung kim loại là bộ xử lý lõi tứ với chip mới nhất Snapdragon 800 của Qualcomm nó cho tốc độ đáng ngạc nhiên 2.2GHz, so với <strong>Galaxy S4</strong> thì có vẻ điện thoại của Samsung hơi lép vế với tốc độ 1.9GHz. Sony sử dụng bộ nhớ RAM 2GB, bộ nhớ trong khá rộng với 16GB và có thể nâng cấp bộ nhớ ngoài lên đến 64GB.</p><p align="center"><br><img title="Galaxy S4 không phải là đối thủ về tốc độ xử lý của Z1" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image010.jpg" alt="Galaxy S4 không phải là đối thủ về tốc độ xử lý của Z1"><br><em>Galaxy S4 không phải là đối thủ về tốc độ xử lý của Z1</em></p><p align=""><br>Tuy không phải hệ điều hành mới nhất phiên bản 4.3 nhưng Android 4.2.2 Jelly Bean vẫn chưa hề nguôi “độ nóng” và vẫn khá hấp dẫn người dùng. Giao diện bên trong đã được Sony chỉnh sửa khá nhiều và đôi nét giống với Xperia Z, nó cho phép người dùng tùy biến thuận tiện, dễ dàng.</p><p align="center"><br><img title="Z1 hỗ trợ người dùng tùy biến dễ dàng" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image012.jpg" alt="Bên trong là Android 4.2.2, Z1 hỗ trợ người dùng tùy biến dễ dàng"> <br><em>Bên trong là Android 4.2.2, Z1 hỗ trợ người dùng tùy biến dễ dàng</em></p>&nbsp;<h3 align=""><br>Camera “vô đối” với 20.7MP</h3><p align="">Camera chính là điều không thể bỏ qua được trên thiết bị này, cũng chính nhờ chi tiết này mà nó trở nên nổi tiếng một cách nhanh chóng. Sony đã khá “chịu chơi” khi trang bị cho <strong>Xperia Z1</strong> bộ cảm biến Exmor RS 1/2.3 lên đến 20.7MP và nó đã trở thành thiết bị Android có độ phân giải camera lớn nhất. Ngoài ra chiếc camera này còn có ống kính G của Sony và bộ xử lý ảnh Bionz, đây là những chi tiết ta thường thấy trên các sản phẩm máy ảnh của Sony.</p><p align="center"><br><img title="Mặt sau Z1" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image014.jpg" alt="Mặt sau Z1 là chiếc camera không thể nổi bật hơn"> <br><em>Mặt sau Z1 là chiếc camera không thể nổi bật hơn</em></p><p align=""><br>Chế độ Time Shift Burst cho bạn đến 60 bức ảnh trong 1 lần ấn nút chụp và đưa ra cho bạn sự lựa chọn tốt nhất với bức ảnh đẹp nhất. AR Effect là nơi tích hợp nhiều hiệu ứng ấn tượng, đẹp mắt, hơn nữa video hay ảnh của bạn có thể trực tiếp đưa lên Facebook nhờ Social live và ứng dụng của camera, từ đây bạn có thể theo dõi các comment của bạn bè, người thân trên hình ảnh hay video của mình.</p><p align="center"><br><img title="Khá nhiều ứng dụng tích hợp trong camera của Xperia Z1" src="http://cdn.tgdd.vn/Products/Images/42/60103/xperia-z1_clip_image016.jpg" alt="Khá nhiều ứng dụng tích hợp trong camera của Xperia Z1"> <br><em>Khá nhiều ứng dụng tích hợp trong camera của Xperia Z1</em></p>&nbsp;<p align=""><strong><br>Sony </strong><strong>Xperia Z1</strong><strong> </strong>là một siêu phẩm Android mang đến những trải nghiệm cao cấp mà ít sản phẩm hãng khác có thể vượt mặt được. Z1 cũng giống như các sản phẩm khác của Sony nó được chăm chút một cách kỹ lưỡng về mặt thiết kế, khi đến tay người dùng thì mọi người đều phải khen ngợi. Sức mạnh phần cứng của thiết bị quả thực rất đáng trải nghiệm, đáng chú ý dĩ nhiên là chiếc camera lên đến 20.7MP và bộ xử lý mới nhất Snapdragon 800 của Qualcomm. <strong>Xperia Z1</strong><strong> </strong>xứng đáng là smartphone hàng đầu trên thị trường.</p><p align="right"><strong>Trung Hiếu</strong></p><br><br><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình lớn 5inch chất lượng cực nét nhờ công nghệ sản xuất màn hình cao cấp.</li>
	<li>Camera độ phân giải cao nhất trên thị trường smartphone Android với 20.7MP.</li>
	<li>Thiết kế nguyên khối, sang trọng, đẹp mắt.</li>
	<li>Bộ xử lý khủng Qualcomm Snapdragon 800 cho tốc độ lên đến 2.2GHz.</li>
	<li>Chống nước, chống bụi hiệu quả theo tiêu chuẩn IP55/IP58.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Màn hình sử dụng ngoài trời vẫn có hiện tượng lóa.</li>
	<li>Nhiều tính năng cao cấp nên giá của thiết bị khá cao.</li>
</ul></td></tr></tbody></table>', 5, 99, 1, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (31, N'LG G2 16GB', N'/Content/Images/HangKhac/LG G2 16GB.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(12490000 AS Decimal(18, 0)), CAST(12600000 AS Decimal(18, 0)), N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.26 GHz
RAM	2 GB
Hệ điều hành:	Android 4.2.2 (Jelly Bean)
Camera chính:	13 MP, Quay phim FullHD 1080p@60fps
Camera phụ:	2.1 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	3000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60830/Kit/LG-G2-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">True HD-IPS + LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">Full HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">1080 x 1920 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.2"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">13 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.1 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét<br>Nhận dạng khuôn mặt<br>Chống rung quang học</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@60fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.26 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon 800</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">16 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">138.5 x 70.9 x 8.9mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">143</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Gmail, Youtube, Google Map, Google Search, Google Talk<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">LG G2 – Độc đáo trong thiết kế, mạnh mẽ trong cấu hình</h2><p align=""><br>Tạo được ấn tượng khá tốt với Optimus G, một thiết bị sỡ hữu cấu hình tốt cùng một thiết kế có thể nói là đẹp nhất trong số các smartphone cao cấp của LG, hãng điện tử Hàn Quốc đang ấp ủ một kế hoạch trở lại hoành tráng hơn nữa với <strong>LG G2</strong>.</p>&nbsp;<h3><br>Thiết kế độc đáo</h3><p align="">LG đã quyết định phải tạo ra một nét gì đó thật khác lạ cho <strong>LG G2</strong> để nó có thể thật sự nổi bật khi đứng giữa loạt smartphone cao cấp khác. Điểm khác lạ này đó chính là vị trí của các phím cứng âm lượng và phím nguồn. Hai phím này đã được LG chuyển ra mặt lưng của máy, đặt ngay phía dưới Camera thay vì được bố trí ở các cạnh bên như truyền thống.</p><p align="center"><br><img title="LG G2 sở hữu thiết kế sang trọng" src="http://cdn.tgdd.vn/Products/Images/42/60197/lgg2.jpg" alt="LG G2 sở hữu thiết kế sang trọng"></p><p align="center"><em>LG G2 sang trọng với thiết kế không phím cứng ở mặt trước và cạnh bên</em></p><p align="center"><img title="Cạnh bên LG G2" src="http://cdn.tgdd.vn/Products/Images/42/60197/LG-G2-official-images1.jpg" alt="Cạnh bên LG G2"></p><p align="center"><em>LG G2 có đường viền kim loại chạy dọc theo thân máy</em></p><p align="center"><img title="Mặt sau LG G2" src="http://cdn.tgdd.vn/Products/Images/42/60197/LG-G2-official-images111.jpg" alt="Mặt sau LG G2"></p><p align="center"><em>Mặt sau với Camera 13MP được phủ kính sapphire chống trầy, phím âm lượng và phím nguồn</em></p><p align=""><br>Mặt trước của LG G2 nổi bật với màn hình cảm ứng rộng 5,2 inch được phủ bởi lớp kính cường lực Gorila Glass 3 và không có bất kì một phím cứng nào. 3 phím cảm ứng cơ bản của hệ điều hành Android được đưa vào phần diện tích của màn hình tương tự như Xperia Z. <strong>LG G2</strong> sở hữu phần viền màn hình rất mỏng, có cảm giác như màn hình của máy sắp tràn ra tới mép ngoài của cạnh bên, trông rất đẹp và sang trọng.</p>&nbsp;<h3><br>Cấu hình vô cùng mạnh mẽ với chip lõi tứ Snapdragon 800 và 2GB RAM</h3><p align="center"><br><img title="chip snapdragon 800" src="http://cdn.tgdd.vn/Products/Images/42/60197/qualcomm-snapdragon.jpg" alt="chip snapdragon 800"></p><p align="center"><em>LG G2 sử dụng chip Snapdragon 800 mạnh mẽ</em></p><p align=""><br>Xác định <strong>LG G2</strong> sẽ trực tiếp đối đầu với loạt smartphone cao cấp đình đám khác như HTC One, Galaxy S4 nên LG đã trang bị cho con cưng của mình một cấu hình vô cùng mạnh mẽ. Máy được trang bị bộ <strong>vi xử lí lõi tứ Snapdragon 800 tốc độ 2,3Ghz, đồ họa Adreno 330 cùng 2GB RAM.</strong>&nbsp;Thử nghiệm Benchmark cho thấy LG G2 đạt số điểm lên đến gần 30.000, bỏ xa “quái vật” Galaxy S4 đến từ Samsung với chỉ 25.000 điểm. Với cấu hình này, <strong>LG G2</strong> có thể tự tin vận hành mọi ứng dụng và mọi tác vụ một cách mượt mà nhất. Chơi Game 3D, game giả lập không phải là vấn đề đối với LG G2.</p><p align=""><br>LG G2 được trang bị hầu hết các kết nối cao cấp nhất hiện nay bao gồm LTE, LTE-A, 3G, GSM, NFC, định vị A-GPS, GLONASS, micro USB, wifi ac, bluetooth 4.0. Đặc biệt,<strong> LG G2 sử dụng pin có dung lượng lên đến 3000mAh</strong>, cao nhất trong dàn smartphone cao cấp hiện nay.</p><p align="center"><br>&nbsp;<img title="LG G2 đạt điểm Benchmark gần 30000" src="http://cdn.tgdd.vn/Products/Images/42/60197/635072.jpg" alt="LG G2 đạt điểm Benchmark gần 30000"></p><p align="center"><em>LG G2 thể hiện sức mạnh vượt trội với điểm BenchMark đạt gần 30.000</em></p>&nbsp;<h3><br>Màn hình siêu mỏng và siêu sáng</h3><p align="center"><br><img title="LG G2 có màn hình siêu nét, siêu sáng" src="http://cdn.tgdd.vn/Products/Images/42/60197/LG-G2-hands-on-071.jpg" alt="LG G2 có màn hình siêu nét, siêu sáng"></p><p align="center"><em>LG G2 được trang bị màn hình cảm ứng siêu nét và siêu sáng</em></p><p align=""><br>Màn hình LCD trên các smartphone cao cấp của LG luôn được giới công nghệ đánh giá rất cao. Optimus G ngay từ khi ra mắt luôn nằm trong top đầu những thiết bị có màn hình hiển thị đẹp nhất. Màn hình IPS 5,2 inch trên <strong>LG G2</strong> có độ phân giải Full HD 1080p và có độ sáng lên tới 450 nit.&nbsp;<strong>LG G2</strong> sẽ mang đến cho bạn một trải nghiệm hiển thị mới với hình ảnh sống động, màu sắc trung thực ngay cả trong điều kiện môi trường có ánh sáng mạnh như ngoài trời.</p>&nbsp;<h3><br>Camera 13 chấm cùng khả năng ổn định hình ảnh quang học</h3><p align="center"><br><img title="Giao diện chụp ảnh LG G2" src="http://cdn.tgdd.vn/Products/Images/42/60197/LG-G2-hands-on-051.jpg" alt="Giao diện chụp ảnh LG G2"></p><p align="center"><em>Giao diện chụp ảnh của LG G2</em></p><p align="center"><br><img title="Camera LG G2 được trang bị hệ thống ổn định hình ảnh quang học" src="http://cdn.tgdd.vn/Files/2013/08/08/519982/ImageAttach/g2-ois-20138802841.jpg" alt="Camera LG G2 được trang bị hệ thống ổn định hình ảnh quang học"></p><p align="center"><em>Camera LG G2 được trang bị hệ thống ổn định hình ảnh quang học</em></p><p align=""><br>Nếu như Optimus G không được giới chuyên môn đánh giá cao ở Camera thì trong cuộc chạy đua về chất lượng của Camera như hiện nay, LG cũng không hề đứng ngoài cuộc. Camera 13MP trên <strong>LG G2</strong> được trang bị tính năng ổn định quang học mới giúp máy có thể bắt nét nhanh hơn, chống rung tốt hơn, màu sác thể hiện chính xác hơn, chụp tốt hơn trong điều kiện thiếu sáng. Camera của máy có thể quay phim với độ phân giải Full HD và chụp ảnh ở chế độ HDR. Ngoài ra,&nbsp;LG cũng quyết định sử dụng <strong>kính sapphire chống trầy</strong>, chống bám vân tay cho camera của <strong>G2</strong>.</p><p align="center"><iframe src="//www.youtube.com/embed/2yYB8RZukKU" frameborder="0" height="315" width="560"></iframe></p><p align="center"><em>Video quảng cáo thể hiện khả năng lấy nét và chống rung hoàn hảo của LG G2</em></p>&nbsp;<h3><br>Âm thanh Stereo chất lượng cao</h3><p align=""><strong>LG G2</strong> là chiếc smartphone đầu tiên cho âm thanh ra&nbsp;ở dải tần Hi-Fi 24bit, 192KHz, cao hơn chuẩn âm thanh thông thường của đĩa CD là 16bit, 44.1KHz. Không giống như iPhone 5 hay đa số các smartphone cao cấp khác chỉ phát ra âm thanh mono với loa ngoài, thiết bị này hỗ trợ &nbsp;loa ngoài có khả năng phát âm thanh Stereo.</p><p align="center"><img title="Jack 3.5, loa kép và cổng Micro USB LG G2" src="http://cdn.tgdd.vn/Products/Images/42/60197/LG-G2-official-images21.jpg" alt="Jack 3.5, loa kép và cổng Micro USB LG G2"></p><p align="center"><em>Hệ thống loa Stereo trên LG G2</em></p>&nbsp;<h3><br>Phụ kiện QuickWindows</h3><p align="">Vỏ QuickWindow sẽ có một "cửa sổ" cho phép người dùng xem lướt các thông tin hiển thị trên màn hình mà không cần mở tấm vỏ ốp. Chỉ với một cái vuốt tay nhẹ, giao diện của QuickWindow sẽ xuất hiện cho phép người dùng xem thông tin hiển thị trên màn hình nhanh chóng. Các thông tin có thể xem qua QuickWindows gồm đồng hồ, thời tiết, báo thức, ứng dụng nhạc, chi tiết cuộc gọi đến và tin nhắn đến. Vỏ ốp QuickWindow cho <strong>LG G2</strong> sẽ có 7 màu gồm: đen, trắng, hồng, tía, xanh, vàng và màu xanh bạc hà.</p><p align="center"><br>&nbsp;<img title="Vỏ QuickWindows cho LG G2" src="http://cdn.tgdd.vn/Products/Images/42/60197/642486.jpg" alt="Vỏ QuickWindows cho LG G2"></p><p align="center"><em>Vỏ QuickWindows là một phụ kiện giúp LG G2 trở nên thông minh hơn</em></p><p align="center"><iframe src="//www.youtube.com/embed/6-5DrKdyM8c?list=PLShKiWbiCfxa2gSwsLGa21HwqxoG5CmkI" frameborder="0" height="315" width="560"></iframe></p><p align="center"><em>Video thể hiện các tính năng thông minh của vỏ QuickWindows</em></p>&nbsp;<p align="right"><strong>Công Đoàn</strong></p><p align="right">Ảnh: LG, sưu tầm</p><p align=""><br></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế độc đáo, sang trọng với cụm phím duy nhất ở mặt lưng.</li>
	<li>Cấu hình mạnh mẽ với chip lõi tứ Snapdragon 800, 2GB RAM.</li>
	<li>Màn hình cảm ứng Full HD IPS 5.2inch sắc nét, độ sáng cao, viền màn hình siêu mỏng.</li>
	<li>Máy ảnh 13MP chống rung quang học.</li>
	<li>Âm thanh Hi-Fi.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Thiết kế mới khiến người dùng phải mất thời gian làm quen.</li>
	<li>Sử dụng chất liệu vỏ nhựa.</li>
</ul></td></tr></tbody></table>', 6, 99, 2, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (32, N'LG G Flex', N'/Content/Images/HangKhac/LG G Flex.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(15990000 AS Decimal(18, 0)), CAST(16200000 AS Decimal(18, 0)), N'Màn hình:	HD, 6.0", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.26 GHz
RAM	2 GB
Camera chính:	13 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	2.1 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài đến:	Không
Dung lượng pin:	3500 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60717/Kit/LG-G-Flex-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">Curved P-OLED</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">HD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">720 x 1280 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">6.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">13 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.1 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét<br>Nhận diện khuôn mặt, nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim FullHD 1080p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">2.26 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Qualcomm Snapdragon 800</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">2 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Adreno 330</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">32 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">160.5 x 81.6 x 8.7 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">177</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">3500 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">1 Sim</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS và GLONASS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">V4.0 with A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">NFC</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+, AC3, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Google Talk, Picasa<br>Micro chuyên dụng chống ồn</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">LG G Flex - Màn hình cong, pin cong, tự chữa lành vết xước độc nhất TG</h2><p style="text-align: justify;" align="">Với những nỗ lực của mình, <a href="http://www.thegioididong.com/dtdd-lg" target="_blank">LG</a> đã mang lại cho người dùng rất nhiều sự ngạc nhiên và những trải nghiệm thú vị trong loạt sản phẩm của năm 2013. Trong đó, <strong>G Flex</strong> là chiếc <a href="http://www.thegioididong.com/dtdd?f=smartphone" target="_blank">smartphone</a> gây được chú ý hơn cả khi máy sở hữu màn hình cong độc đáo cùng cấu hình mạnh mẽ, với thiết kế tuyệt đẹp và đẳng cấp.</p>&nbsp;<h3 align=""><br>Màn hình cong P-OLED 6 inch cho trải nghiệm thú vị</h3><p style="text-align: justify;" align=""><strong>LG G Flex</strong> sở hữu màn hình P-OLED 6 inch cho hình ảnh chân thật và màu sắc sống động hơn các màn hình LCD thông thường. Điều đặc biệt là màn hình được thiết kế cong theo chiều ngang tạo nên một sự đột phá mới trong thiết kế. Màn hình cong trên <strong>G Flex</strong> sẽ giúp máy ôm vào mặt người một cách tự nhiên, tạo cảm giác thoải mái khi thực hiện cuội gọi.</p><p align="center"><img title="LG G Flex sắc nét đến từng chi tiết" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image002.jpg" alt="LG G Flex với màn hình cong OLED 6 inch sắc nét đến từng chi tiết"> <br><em>Màn hình cong OLED 6 inch sắc nét đến từng chi tiết</em></p><p style="text-align: justify;" align="">Đặc biệt hơn, với màn hình cong này, khi đặt máy nằm ngang để xem video sẽ có cảm giác vô cùng thú vị bởi người dùng như được ngồi trước một rạp chiếu và hòa mình vào bộ phim.</p><p align="center"><img title="G Flex - Khác biệt với màn hình cong" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image004.jpg" alt="Độ cong của màn hình không lớn lắm nhưng đủ để G Flex tạo sự khác biệt"> <br><em>Độ cong của màn hình không lớn lắm nhưng đủ để tạo sự khác biệt</em></p>&nbsp;<h3 align=""><br>Bộ vi xử lí khủng với chip lõi tứ Snapdragon 800</h3><p style="text-align: justify;" align=""><strong>LG G Flex</strong> được trang bị vi xử lí Snapdragon 800 bốn nhân 2.26 GHz, RAM 2 GB, bộ nhớ trong 32 GB, giúp máy có thể xử lý mượt mà bất kì ứng dụng hay game đồ họa nào. Ngoài ra, máy được cài đặt sẵn hệ điều hành Android 4.2.2 Jelly Bean ngay khi xuất xưởng với tùy biến giao diện đẹp hơn và tối ưu cho smartphone màn hình lớn.</p><p align="center"><img title="LG G Flex sở hữu CPU lõi tứ Snapdragon 800 mạnh mẽ" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image006.jpg" alt="LG G Flex sở hữu CPU lõi tứ Snapdragon 800 mạnh mẽ"> <br><em>LG G Flex sở hữu CPU lõi tứ Snapdragon 800 mạnh mẽ</em></p><p style="text-align: justify;" align="">Ngoài ra, <strong>LG</strong> còn bổ sung vào HĐH Android những tính năng độc quyền của hãng như <strong>Knock On</strong> cho phép gõ vào màn hình 2 lần để mở/khóa máy, hay tính năng <strong>Plug and Pop</strong> giúp nhanh chóng làm việc với các thiết bị ngoại vi ngay khi kết nối vào máy,...</p><p align="center"><img title="G Flex chạy HĐH Android 4.2.2 cùng nhiều tùy biến hữu ích" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image008.jpg" alt="G Flex chạy HĐH Android 4.2.2 cùng nhiều tùy biến hữu ích"> <br><em> G Flex chạy HĐH Android 4.2.2 cùng nhiều tùy biến hữu ích</em></p>&nbsp;<h3 align=""><br>Camera 13 MP cho những bức hình tuyệt đẹp</h3><p style="text-align: justify;" align="">Với xu hướng chung của thị trường di động, chất lượng camera luôn là yếu tố được quan tâm hàng đầu trong việc lựa chọn smartphone của người dùng. Nắm bắt xu thế đó, LG đã trang bị cho <strong>G Flex</strong> camera độ phân giải 13 MP nhờ đó&nbsp;<strong>LG G Flex</strong> có khả năng ghi lại những bức hình trung thực, màu sắc ấn tượng ngay cả trong điều kiện thiếu sáng.</p><p align="center"><img title="Camera 13 MP với OIS trên G Flex" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image010.jpg" alt="Camera 13 MP cùng tính năng chống rung quang học trên LG G Flex cho những bức hình tuyệt đẹp"> <br><em>Camera 13 MP cùng tính năng chống rung quang học cho những bức hình tuyệt đẹp</em></p><p style="text-align: justify;" align="">Camera này còn có khả năng quay video Full HD, chụp ảnh ở chế độ HDR. Ngoài ra, các tính năng như nhận diện nụ cười, tăng cường chất lượng âm thanh khi quay video, chụp liên tiếp nhiều tấm ảnh chỉ với một lần chạm,…cũng có mặt đầy đủ trên ứng dụng chụp hình.</p>&nbsp;<h3 align=""><br>Công nghệ tự phục hồi vết xước “độc nhất vô nhị”</h3><p style="text-align: justify;" align="">Việc tự phục hồi vết xước nghe giống như “phim viễn tưởng” nhưng thật bất ngờ khi <strong>LG</strong> đã nghiên cứu thành công và áp dụng trên<strong> G Flex</strong>. Mặt sau của chiếc smartphone này<strong> </strong>được phủ một lớp phim đặc biệt để phục hồi những vết xước chỉ trong thời gian ngắn. Đây là công nghệ hoàn toàn mới chưa xuất hiện trên bất kì chiếc điện thoại nào. Giờ đây bạn có thể thoải mái đặt máy lên các bề mặt thô ráp mà không còn băn khoăn đến việc trầy xước mặt sau của máy.</p><p align="center"><img title="LG G Flex là chiếc smartphone duy nhất trên thế giới có khả năng phục hồi vết xước" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image012.jpg" alt="LG G Flex là chiếc smartphone duy nhất trên thế giới có khả năng phục hồi vết xước"> <br><em>LG G Flex là chiếc smartphone duy nhất trên thế giới có khả năng phục hồi vết xước</em></p>&nbsp;<h3 align=""><br>Pin 3500 mAh cho thời lượng sử dụng vượt trội</h3><p style="text-align: justify;" align="">Ngoài công nghệ tự phục hồi vết xước “độc nhất vô nhị” thì <strong>LG G Flex</strong> còn sở hữu viên pin cong đầu tiên trên thế giới nhờ công nghệ Stack and Folding cho chính LG phát triển. Hình dạng pin cong theo chiều cong của máy giúp viên pin đảm bảo được sức bền vật lý và độ ổn định trong quá trình hoạt động trong khi vẫn giữ được dáng vẻ thanh mảnh tuyệt đẹp.</p><p style="text-align: justify;" align="">Ngoài hình dáng, dung lượng pin 3500 mAh cũng là một điểm cộng lớn. Thậm chí dung lượng này còn cao hơn nhiều so với <strong>Galaxy Note 3</strong> (3200 mAh), <strong>HTC One Max</strong> (3300 mAh) hay chính “người anh em” của nó là <strong>LG G2</strong> (3000 mAh). Dung lượng pin lớn giúp máy có thể hoạt động liên tục đến 1 ngày rưỡi nếu sử dụng tiết kiệm.</p><p align="center"><img title="G Flex cho bạn thời gian sử dụng tốt hơn" src="http://cdn.tgdd.vn/Products/Images/42/60717/lg-g-flex_clip_image014.jpg" alt="Pin 3500 mAh cho thời gian sử dụng LG G Flex lâu hơn"> <br><em>Pin 3500 mAh cho thời gian sử dụng lâu hơn</em></p>&nbsp;<h3 align=""><br>Tóm lại:</h3><p style="text-align: justify;" align=""><strong>LG G Flex</strong> hứa hẹn sẽ tạo nên một sự bùng nổ trong phân khúc phablet nói chung và phân khúc smartphone màn hình cong nói riêng. Với việc được tích hợp nhiều công nghệ cao cấp, cấu hình mạnh mẽ và đặc biệt là màn hình cong độc đáo, <strong>G Flex</strong> chắc chắn sẽ mang đến những trải nghiệm mới lạ và thú vị cho người dùng.</p><p align="right"><strong>Anh Tuân</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Độc đáo với màn hình cong và phím vật lý ở mặt sau.</li>
	<li>Cấu hình cao với CPU Snapdragon lõi tứ 2.26 GHz, RAM 2 GB.</li>
	<li>Camera độ phân giải 13 MP, chống rung quang học.</li>
	<li>Công nghệ tự động phục hồi vết xước ở mặt sau.</li>
	<li>Pin dung lượng 3500 mAh cho thời gian sử dụng lâu hơn.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Độ phân giải màn hình chỉ đạt 720p.</li>
	<li>Không hỗ trợ thẻ nhớ microSD.</li>
</ul></td></tr></tbody></table>', 6, 99, 1, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (33, N'Mobell Nova F', N'/Content/Images/HangKhac/Mobell Nova F.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(2890000 AS Decimal(18, 0)), CAST(3050000 AS Decimal(18, 0)), N'Màn hình:	FWVGA, 5.0", 480 x 854 Pixels
CPU:	MTK 6572, 2 nhân, 1.2 GHz
RAM	512 MB
Camera chính:	8.0 MP, Quay phim HD 720p@30fps
Camera phụ:	VGA (0.3 Mpx)
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	2000 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60286/Kit/Mobell-Nova-F-mo-ta-chuc-nang.jpg">   <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">FWVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 854 Pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">8.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">MTK 6572</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Mali-400MP</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">143.9 x 75.3 x 10.55 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">189</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2000 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">SIM bình thường</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Play, Google Search, Google Now, Maps, Gmail, YouTube, Lịch</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Mobell Nova F – Smartphone màn hình rộng, máy ảnh cao với giá bình dân</h2><p style="text-align: justify;" align=""><strong><br>Nova F</strong> có thiết kế thanh mảnh, khỏe khoắn và nam tính với độ mỏng hơn 10.5 mm cùng nhiều màu sắc trẻ trung và bắt mắt để bạn lựa chọn.</p><p align="center"><em><img title="Thiết kế của Nova F" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image002.jpg" alt="Thiết kế trẻ trung, chắc chắn của Nova F"></em><br><em>Thiết kế trẻ trung, chắc chắn của Nova F</em></p><p style="text-align: justify;" align=""><br>Mặc dù <strong>Mobell Nova F</strong> có màn hình lớn nhưng thiết kế sau hơi cong vòm nên bạn sẽ yên tâm là có thể cầm chắc trong một tay. Bộ khung vỏ nhựa chắc chắn và nhẹ nhàng. Xu thế hiện nay đó là smartphone màn hình rộng, với màn hình lớn bạn có thể dễ dàng chơi trò chơi, xem video, đọc sách báo.</p><p align="center"><em><img title="Mobell Nova F với màn hình rộng 5 inch" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image004.jpg" alt="Mobell Nova F với màn hình rộng 5 inch cho trải nghiệm tối ưu"></em><br><em>Mobell Nova F với màn hình rộng 5 inch cho trải nghiệm tối ưu</em></p><p style="text-align: justify;" align=""><strong><br>Nova F</strong> được trang bị màn hình LCD rộng 5.0 inch, độ phân giải FWVGA 480 x 854 pixel, hiển thị sắc nét 16 triệu màu, cảm ứng điện dung đa điểm.</p>&nbsp;<h3 align=""><br>Vi xử lý hai nhân</h3><p style="text-align: justify;" align="">Tuy là một smartphone giá rẻ nhưng Mobell Nova F lại được trang bị bộ vi xử lý hai nhân tốc độ 1.2GHz. Nhờ vậy máy luôn mượt mà và xử lý các tác vụ một cách nhanh chóng.</p><p align="center"><img title="Mobell Nova F sử dụng bộ VXL lõi kép" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image005.jpg" alt="Mobell Nova F sử dụng bộ VXL lõi kép"><br><em>Mobell Nova F sử dụng bộ VXL lõi kép</em></p>&nbsp;<h3 align=""><br>Máy ảnh 8.0MP</h3><p style="text-align: justify;" align=""><strong>Mobell Nova F</strong> được tích hợp máy ảnh cao, lên đến 8MP, nhờ vậy bạn sẽ luôn có những bức ảnh sắc nét khi đi du lịch hoặc luôn ghi lại được những khoảnh khắc vui tươi trong cuộc sống.</p><p align="center"><em><img title="Mobell Nova F với máy ảnh 8.0MP" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image006.jpg" alt="Mobell Nova F với máy ảnh 8.0MP, tự động lấy nét"></em><br><em>Mobell Nova F với máy ảnh 8.0MP, tự động lấy nét</em></p><p style="text-align: justify;" align=""><br>Ngoài ra, máy ảnh còn có chế độ tự động lấy nét autofocus, hỗ trợ đèn flash, tự động nhận diện khuôn mặt. Nhờ thế, máy có thể chụp trong bóng đêm và cho ra những hình ảnh đẹp. Ở tính năng camera quay phim, máy có thể cho ra định dạng video HD 720p, hoàn toàn sắc nét khi xem trên cả máy tính.</p>&nbsp;<h3 align=""><br>Hỗ trợ 2 SIM</h3><p style="text-align: justify;" align="">Thật tiện lợi khi trên một máy gắn cả 2 sim, nhờ vậy bạn có thể linh động, tiết kiệm chi phí gọi ngoại mạng. 2 SIM hai nhà mạng, tích hợp được nhiều số hơn và hữu ích hơn khi một sim dành cho công việc, một sim dành cho gia đình và bạn bè.</p>&nbsp;<h3 align=""><br>Hệ điều hành phiên bản mới Android 4.2</h3><p style="text-align: justify;" align="">Mặc dù là smartphone giá rẻ nhưng máy lại chạy trên hệ điều hành mà nhiều smartphone cao cấp cũng phải mơ ước. Phiên bản mà máy đang sử dụng là 4.2.2 Jelly Bean, một phiên bản mới. Nhờ vậy, bạn có thể tải miễn phí nhiều trò chơi, phần mềm, tiện ích trên cửa hàng trực tuyến.</p><p align="center"><em><img title="HĐH Android 4.2.2. Jelly Bean trên Mobell Nova F" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image008.jpg" alt="HĐH Android phiên bản mới 4.2.2. Jelly Bean trên Mobell Nova F"></em><br><em>HĐH Android phiên bản mới 4.2.2. Jelly Bean trên Mobell Nova F</em></p>&nbsp;<h3 align=""><br>Một số nhược điểm tồn tại của máy</h3><p style="text-align: justify;" align=""><strong>Mobell Nova F</strong> chỉ có bộ nhớ RAM 512MB, khá thấp. Bởi vậy, khi chạy đa nhiệm, máy sẽ đáp ứng chậm. Ngoài ra, ở các ứng dụng hoặc game nặng, máy có thể sẽ bị giật khi chạy. Vì vậy, lời khuyên là chỉ sử dụng các tính năng đơn giản, nhẹ nhàng như đọc sách báo, lướt web, mạng xã hội cùng các trò chơi nhẹ nhàng, đòi hỏi đồ họa vừa phải.</p><p align="center"><img title="Mobell Nova F chỉ 512MB" src="http://cdn.tgdd.vn/Products/Images/42/60286/mobell-nova-f_clip_image009.jpg" alt="Bộ nhớ trong của Mobell Nova F chỉ 512MB"><br><em>Bộ nhớ RAM của Mobell Nova F chỉ 512MB</em></p><p style="text-align: justify;" align=""><br>Ngoài ra, máy cũng có bộ nhớ trong thấp, chỉ 4GB vì vậy chắc chắn bạn sẽ phải mở rộng bộ nhớ qua khe cắm microSD để có thể lưu trữ được nhiều hơn phim ảnh, tài liệu, trò chơi...</p>&nbsp;<h3 align=""><br>Tóm lại</h3><p style="text-align: justify;" align=""><strong>Mobell Nova F</strong> là một smartphone giá rẻ với màn hình lớn cùng máy ảnh cao cấp. Thiết bị thích hợp cho những ai có số tiền vừa phải nhưng muốn có một smartphone màn hình lớn, kết nối 3G để lướt web, mạng xã hội, giải trí xem video.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế trẻ trung, màn hình rộng lên đến 5 inch.</li>
	<li>Vi xử lý lõi kép 1.2GHz hoạt động ổn định, mượt.</li>
	<li>Máy ảnh 8.0MP, lấy nét tự động.</li>
	<li>Hỗ trợ 2 SIM 2 sóng tiện ích.</li>
	<li>Hệ điều hành Android 4.2.2 Jelly Bean mới.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>RAM hơi yếu, chỉ 512MB.</li>
	<li>Bộ nhớ trong thấp, chỉ 4GB.</li>
</ul></td></tr></tbody></table>', 6, 99, 0, 5, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (34, N'Lenovo A850', N'/Content/Images/HangKhac/Lenovo A850.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(3790000 AS Decimal(18, 0)), CAST(3950000 AS Decimal(18, 0)), N'Màn hình:	qHD, 5.5", 540 x 960 pixels
CPU:	MTK 6582M, 4 nhân, 1.3 GHz
RAM	1 GB
SIM:	2 SIM 2 sóng
Camera:	5.0 MP, Quay phim HD 720p@30fps
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	2250 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/60663/Kit/Lenovo-A850-mo-ta-chuc-nang.jpg">  <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">qHD</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">540 x 960 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">5.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Tự động lấy nét, chạm lấy nét</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.3 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">4 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">MTK 6582M</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">1 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Mali-400MP</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">153.5 x 79.3 x 9.45 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">184</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">2250 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">SIM bình thường</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">A-GPS</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">MP4, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, eAAC+</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Lenovo A850 – Phablet với thiết kế chắc chắn, màn hình rộng cùng hiệu suất xử lý tốt</h2><p style="text-align: justify;" align=""><br>Thiết kế của máy khá cân đối và giống với những <a href="http://www.thegioididong.com/dtdd?f=smartphone" target="_blank">smartphone</a> trước đây của <strong>Lenovo</strong>. Các cạnh được bo tròn nhẹ nhàng, viền máy được mạ crom sáng bóng, toàn bộ máy được phủ một lớp sơn bóng cho cảm giác khá sang trọng. <strong>Lenovo A850</strong> có 2 màu trắng và xám đen để bạn lựa chọn. Màu đen nam tính và máu trắng tinh khôi cho các bạn nữ.</p><p align="center"><img title="Thiết kế chắc chắn, bóng bẩy của Lenovo A850" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image001.jpg" alt="Thiết kế chắc chắn, bóng bẩy của Lenovo A850"> <br><em>Thiết kế chắc chắn, bóng bẩy</em></p><p style="text-align: justify;" align=""><br>Mặt sau của máy là camera 5MP cùng đèn flash được đặt chính giữa. Camera khá to và lồi ra ngoài trông rất “hầm hố”. Phía dưới là logo <strong>Lenovo</strong>, và cuối mặt sau là loa ngoài hơi lệch về phía bên phải một chút.</p><p align="center"><em><img title="Viền xung quanh A850 mạ crom sáng bóng" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image003.jpg" alt="Viền xung quanh A850 mạ crom sáng bóng"></em><br><em>Viền xung quanh mạ crom sáng bóng</em></p><p style="text-align: justify;" align=""><br>Mặt trước của máy là những nút bấm quen thuộc, phía dưới là 3 nút cảm ứng bao gồm Menu, Home và Quay lại. Phía cạnh trên là loa thoại cùng các cảm biến. Về tổng thể, máy có thiết kế hơi cong vòm ở các cạnh, giúp bạn dễ dàng cầm nắm. Thiết bị có kích thước 153.5 x 79.3 x 9.45 mm, khá mỏng tuy nhiên trọng lượng lại lên tới 184g, vì vậy lời khuyên là bạn nên dùng 2 tay khi sử dụng để tránh bị rơi.</p>&nbsp;<h3 align=""><br>Cấu hình tốt</h3><p style="text-align: justify;" align="">Mặc dù là một phablet giá rẻ tuy nhiên <strong>Lenovo A850</strong> vẫn được trang bị cấu hình tốt, thiết bị chạy trên bộ vi xử lý lõi tứ tốc độ 1.3GHz kết hợp cùng bộ nhớ RAM 1GB giúp máy có thể thực hiện tốt mọi tác vụ như lướt web, up ảnh lên mạng xã hội facebook, xem phim trực tuyến cũng như các trò chơi, kể cả những trò hơi đòi hỏi cần khả năng đồ họa cao.</p><p align="center"><img title="Lenovo A850 có cấu hình tốt so với mức giá" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image005.jpg" alt="Lenovo A850 có cấu hình tốt so với mức giá"><br><em>Lenovo A850 có cấu hình tốt so với mức giá</em></p><p style="text-align: justify;" align=""><br>Máy cũng có chế độ khởi động nhanh, giúp giảm thiểu thời gian chờ đợi mỗi lần khởi động, đưa người dùng đến ngay với giao diện sử dụng tức thời. Tuy vậy, bộ nhớ trong của máy chỉ 4GB nên người dùng sẽ phải bổ sung bộ nhớ bằng khe cắm microSD, đặc biệt là với những ai thích xem phim trên điện thoại màn hình rộng.</p>&nbsp;<h3 align=""><br>Màn hình rộng 5.5 inch</h3><p style="text-align: justify;" align="">Ưu điểm lớn nhất của <strong>Lenovo A850</strong> đó chính là màn hình. Thiết bị sở hữu màn hình 5.5 inch, ngang ngửa với dòng <strong>Galaxy Note 2</strong> đình đám hiện nay. Màn hình rộng giúp người dùng thoải mái xem phim, chơi game giải trí hoặc dễ dàng trong các tác vụ như đánh phím trả lời mail, xem ảnh trên facebook…</p><p align="center"><em><img title="Lenovo A850 có màn hình rộng lên đến 5.5 inch" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image007.jpg" alt="Lenovo A850 có màn hình rộng lên đến 5.5 inch"></em><br><em>Màn hình rộng lên đến 5.5 inch</em></p><p style="text-align: justify;" align=""><br>Màn hình 5.5 inch của máy sử dụng công nghệ&nbsp;IPS&nbsp;cho màu sắc trung thực, góc nhìn rộng đến 178 độ. Độ sáng của màn hình thuộc dạng khá, hiển thị tương đối tốt dưới ánh nắng mặt trời. Tuy nhiên màn hình chỉ có độ phân giải qHD&nbsp;960 x 540 pixels, đây là một điều dễ hiểu với những smartphone giá rẻ.</p>&nbsp;<h3 align=""><br>Hệ điều hành Android 4.2 Jelly Bean</h3><p style="text-align: justify;" align=""><strong>Lenovo A850</strong> được tích hợp sẵn hệ điều hành Android 4.2 Jelly Bean khá mới mẻ với giao diện người dùng thân thiện hơn, nhiều tính năng mới cũng như nhiều cải tiến có lợi cho người dùng. Android 4.2 được biết đến là hệ điều hành ổn định, tiết kiệm pin hơn cũng như mượt mà hơn trong các tác vụ xử lý.</p><p align="center"><em><img title="Hệ điều hành Android 4.2 Jelly Bean trên Lenovo A850" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image009.jpg" alt="Hệ điều hành Android 4.2 Jelly Bean trên Lenovo A850"></em><br><em>Hệ điều hành Android 4.2 Jelly Bean</em></p>&nbsp;<h3 align=""><br>Kết nối mọi lúc mọi nơi</h3><p style="text-align: justify;" align="">Thiết bị được tích hợp những kết nối không dây như Wifi chuẩn 802.11 b/g/n quen thuộc cho kết nối mạng bằng sóng Wifi khi ở nhà hoặc ở cơ quan, quán cafe, kết nối 3G cho tốc độ truyền tải nhanh chóng và mọi lúc mọi nơi. Nhờ vậy, ở bất cứ nơi đâu bạn cũng có thể lướt web, cập nhật trạng thái cũng như xem phim…</p><p align="center"><em><img title="Lenovo A850 hỗ trợ 2 SIM 2 sóng" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image011.jpg" alt="Lenovo A850 hỗ trợ 2 SIM 2 sóng"></em><br><em>Lenovo A850 hỗ trợ 2 SIM 2 sóng</em></p><p style="text-align: justify;" align=""><br>Ngoài ra, <strong>Lenovo A850</strong> còn hỗ trợ kết nối qua cổng microUSB để truyền tải dữ liệu qua máy tính, kết nối Bluetooth khi trao đổi dữ liệu với thiết bị di động khác, tính năng Wifi hotspot để chia sẻ mạng với những điện thoại hoặc laptop khác...</p><p style="text-align: justify;" align=""><br>Thiết bị còn hỗ trợ cả hai máy ảnh trước sau, mặc dù máy ảnh sau chỉ 5MP nhưng vẫn hỗ trợ đèn flash và tự động lấy nét. Nếu được tích hợp máy ảnh 8MP thì thiết bị có vẻ sẽ hoàn chỉnh hơn.</p><p align="center"><img title="Máy ảnh sau của Lenovo A850 chỉ có 5MP" src="http://cdn.tgdd.vn/Products/Images/42/60663/lenovo-a850_clip_image013.jpg" alt="Máy ảnh sau của Lenovo A850 chỉ có 5MP"> <br><em>Máy ảnh sau của Lenovo A850 chỉ có 5MP</em></p>&nbsp;<h3 align=""><br>Tóm lại</h3><p style="text-align: justify;" align=""><strong>Lenovo A850</strong> là một thiết bị có màn hình rộng, cấu hình tốt, đầy đủ kết nối và giá cả phải chăng. Thiết bị hướng tới những người dùng bình dân, những bạn trẻ thích một smartphone màn hình lớn, đầy đủ tính năng nhưng có túi tiền vừa phải.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Màn hình rộng lên đến 5.5 inch.</li>
	<li>Hiệu suất cao với vi xử lý lõi tứ.</li>
	<li>Thiết kế chắc chắn.</li>
	<li>Hỗ trợ 2 SIM.</li>
	<li>Chạy Android 4.2 Jelly Bean mới mẻ.</li>
	<li>Kết nối mọi lúc mọi nơi.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy ảnh sau chỉ 5MP.</li>
</ul></td></tr></tbody></table>', 6, 99, 1, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (35, N'Oppo Neo R831', N'/Content/Images/HangKhac/Oppo Neo R831.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(3690000 AS Decimal(18, 0)), CAST(3800000 AS Decimal(18, 0)), N'Màn hình:	FWVGA, 4.5", 480 x 854 Pixels
CPU:	Cortex-A7, 2 nhân, 1.3 GHz
RAM	512 MB
SIM:	2 SIM 2 sóng
Camera:	5.0 MP, Quay phim HD 720p@30fps
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1900 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/61142/Kit/OPPO-Neo-mo-ta-chuc-nang-new.jpg">   <table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">FWVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 854 Pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.5"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">2.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Panorama, HDR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim HD 720p@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Hỗ trợ VideoCall qua Skype</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.3 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">Cortex-A7</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Mali-400MP</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">132 x 65.8 x 9.2 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">130</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1900 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">1 SIM thường &amp; 1 Micro SIM</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có, V3.0 với A2DP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4, AVI, WMV, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, WMA, AAC, eAAC+, AMR, FLAC</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">FM radio với RDS</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Play, Google Search, Google Now, Maps, Gmail, YouTube, Lịch</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Oppo Neo R831 – Smartphone giá rẻ, thiết kế đẹp cùng màn hình rộng</h2><p style="text-align: justify;" align=""><strong><br>Oppo Neo R831</strong> có thiết kế khá đẹp với hai màu đen và trắng, kiểu dáng vuông vắn với nắp lưng làm bằng chất liệu Polycarbonate có thể tháo rời. Thoạt nhìn bạn sẽ có cảm giác giống với dòng máy Xperia Arc của Sony.</p><p align="center"><img title="Thiết kế đẹp mắt" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image002.jpg" alt="Oppo Neo thiết kế"> <br><em>Thiết kế đẹp mắt</em></p><p style="text-align: justify;" align=""><br>Cạnh phía trên và phía dưới tạo điểm nhấn với các viền sần có màu khác với màu tổng thể. Máy có trọng lượng khá nhẹ, chỉ 130 gram với kích thước 132 x 65.8 x 9.2mm. Thiết bị có dạng hơi cong vòm, khá giống với kiểu cong vòm của siêu phẩm HTC One, giúp bạn dễ dàng cầm nắm trên một bàn tay.</p><p align="center"><img title="Mặt sau hơi cong vòm, dễ dàng cầm nắm bằng 1 tay" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image004.jpg" alt="Oppo Neo R831 mặt sau"> <br><em>Mặt sau hơi cong vòm, dễ dàng cầm nắm bằng 1 tay</em></p><p style="text-align: justify;" align=""><br>Bên dưới màn hình của <strong>Oppo Neo</strong> có ba phím cảm ứng đặc trưng của hệ điều hành Android, phía trên là camera phụ với độ phân giải 2 MP.</p><p align="center"></p>&nbsp;<h3 align=""><br>Màn hình rộng, cảm ứng siêu nhạy</h3><p style="text-align: justify;" align="">Màn hình của máy sử dụng công nghệ LCD, kích thước 4.5 inch với độ phân giải 480 x 854 pixel cho chất lượng hiển thị khá tốt.</p><p align="center"><em><img title="Màn hình IPS LCD rộng 4.5 inch cảm ứng siêu nhạy" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image008.jpg" alt="Oppo Neo R831 màn hình IPS LCD"></em><br><em>Màn hình IPS LCD rộng 4.5 inch cảm ứng siêu nhạy</em></p><p style="text-align: justify;" align=""><br>Điểm thú vị là màn hình cảm ứng điện dung hỗ trợ cả việc sử dụng khi đeo găng tay, giống dòng <a href="http://www.thegioididong.com/nokia-lumia" target="_blank">Lumia</a> của <strong>Nokia</strong>. Màn hình rộng 4.5 inch cho phép người dùng trải nghiệm thoải mái hơn, đặc biệt là trong việc giải trí như xem phim, chơi game, đọc sách báo, cập nhật ảnh mạng xã hội.</p>&nbsp;<h3 align=""><br>Hệ điều hành ColorOS - Android 4.2 Jelly Bean</h3><p style="text-align: justify;" align="">Mặc dù là một smartphone giá rẻ nhưng <strong>Oppo</strong> vẫn trang bị cho <strong>Neo R831</strong> hệ điều hành phiên bản mới mẻ, Android 4.2 Jelly Bean. Nhờ vậy, máy sẽ có nhiều tính năng hữu ích hơn, các phần mềm cài đặt cũng có khả năng tương thích cao hơn.</p><p align="center"><em><img title="Hệ điều hành mới mẻ mang tên ColorOS trên nền Android 4.2" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image010.jpg" alt="Oppo Neo ColorOS trên nền Android 4.2"></em><br><em>Hệ điều hành mới mẻ mang tên ColorOS trên nền Android 4.2</em></p><p style="text-align: justify;" align=""><br>Dựa trên nền tảng Android 4.2, <strong>ColorOS</strong> mang trong mình những ưu thế của sự mượt mà, ổn định, nhưng vẫn có sự khác biệt hoàn toàn về giao diện, so với các phiên bản 4.2 khác.</p>&nbsp;<h3 align=""><br>Hỗ trợ 2 SIM</h3><p style="text-align: justify;" align="">Điện thoại 2 SIM ngày càng trở nên phổ biến bởi sự tiện lợi và tiết kiệm của nó. Bạn có thể quản lý cuộc gọi, danh bạ dễ dàng hơn, có thể lựa chọn cuộc gọi nội mạng cho từng SIM nhằm tiết kiệm chi phí.</p><p align="center"><em><img title="Tiết kiệm chi phí hơn với 2 SIM" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image012.jpg" alt="Oppo Neo R831 2 SIM"></em><br><em>Tiết kiệm chi phí hơn với 2 SIM</em></p>&nbsp;<h3 align=""><br>Cấu hình</h3><p style="text-align: justify;" align=""><strong>Oppo Neo R831</strong> có cấu hình khá ổn trong tầm giá với chip lõi kép tốc độ 1.3 GHz, RAM 512 MB đủ dùng để lướt web nhiều tab, chơi game không đòi hỏi yêu cầu đồ họa cao,...</p><p align="center"><em><img title="Cấu hình ổn so với mức giá" src="http://cdn.tgdd.vn/Products/Images/42/61142/oppo-neo-r831_clip_image014.jpg" alt="Oppo Neo hiệu năng"></em><br><em>Cấu hình ổn so với mức giá</em></p><p style="text-align: justify;" align=""><br>Ngoài ra, máy cũng được tích hợp camera chính có độ phân giải 5MPl, đi kèm camera phụ độ phân giải 2MP với một số chế độ chụp hình mở rộng. Tuy nhiên, camera lại không được gắn đèn flash nên bạn sẽ khó khăn khi chụp ảnh trong bóng tối.</p>&nbsp;<h3 align=""><br>Tóm lại</h3><p style="text-align: justify;" align=""><strong>Oppo Neo</strong> là mẫu smartphone phổ thông hướng đến người dùng trẻ như học sinh, sinh viên. Máy có cấu hình ổn, tích hợp đầy đủ máy ảnh, và đặc biệt là có màn hình rộng và cảm ứng siêu nhạy.</p><p align="right"><strong>Hữu Tình</strong></p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế đẹp, thao tác bằng 1 tay dễ dàng.</li>
	<li>Màn hình rộng 4.5'' , cảm ứng siêu nhạy.</li>
	<li>Hỗ trợ 2 SIM.</li>
	<li>HĐH ColorOS dựa trên nền tảng Android 4.2.</li>
	<li>Vi xử lý lõi kép 1.3GHz cho hiệu năng nhanh chóng.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Máy ảnh sau không có Flash.</li>
</ul></td></tr></tbody></table>', 6, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [UrlHinh], [Code1], [UrlHinh360], [Code2], [GiaHienTai], [GiaCu], [MoTa], [MoTaCT], [DanhGiaCT], [MaNSX], [SoLuongTon], [SLDaBan], [KhuyenMai], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (36, N'Q-Smart S19', N'/Content/Images/HangKhac/Q-Smart S19.jpg', N'<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="', N'/Content/Images/HangKhac/Hinh360-HangKhac/LG-G2-hinh360-1.jpg', N'" /> </a>', CAST(1590000 AS Decimal(18, 0)), CAST(1650000 AS Decimal(18, 0)), N'Màn hình:	WVGA, 4.0", 480 x 800 pixels
CPU:	MTK 6572, 2 nhân, 1.2 GHz
RAM	512 MB
SIM:	2 SIM 2 sóng
Camera:	5.0 MP, Quay phim WVGA@30fps
Bộ nhớ trong:	4 GB
Thẻ nhớ ngoài đến:	32 GB
Dung lượng pin:	1400 mAh', N'<img class="lazy" src="http://cdn.tgdd.vn/Products/Images/42/61229/Kit/Q-Smart-S19-mo-ta-chuc-nang.jpg"><table style="width: 100%;" class="product-compare" border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr class="r">
            <td rowspan="2" class="g" valign="top">
            <div class="gh">Thông tin chung</div>
            </td>
            <td id="prop_72" class="p f eph" onclick="ShowHelp(72, 2);">Hệ điều hành</td>
            <td id="c72_1" class="v f">Android 4.2 (Jelly Bean)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_75" class="ph eph" onclick="ShowHelp(75, 2);">Ngôn ngữ</div>
            </td>
            <td id="c75_1" class="v">Tiếng Việt, Tiếng Anh</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Màn hình</div>
            </td>
            <td class="p f">Loại màn hình</td>
            <td id="c6459_1" class="v f">IPS LCD</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Màu màn hình</div>
            </td>
            <td id="c6239_1" class="v">16 triệu màu</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_77" class="ph eph" onclick="ShowHelp(77, 2);">Chuẩn màn hình</div>
            </td>
            <td id="c77_1" class="v">WVGA</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_78" class="ph eph" onclick="ShowHelp(78, 2);">Độ phân giải</div>
            </td>
            <td id="c78_1" class="v">480 x 800 pixels</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_79" class="ph eph" onclick="ShowHelp(79, 2);">Màn hình rộng</div>
            </td>
            <td id="c79_1" class="v">4.0"</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_80" class="ph eph" onclick="ShowHelp(80, 2);">Công nghệ cảm ứng</div>
            </td>
            <td id="c80_1" class="v">Cảm ứng điện dung đa điểm</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Chụp hình &amp; Quay phim</div>
            </td>
            <td id="prop_27" class="p f eph" onclick="ShowHelp(27, 2);">Camera sau</td>
            <td id="c27_1" class="v f">5.0 MP</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_29" class="ph eph" onclick="ShowHelp(29, 2);">Camera trước</div>
            </td>
            <td id="c29_1" class="v">VGA (0.3 Mpx)</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Đèn Flash</div>
            </td>
            <td id="c6460_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_28" class="ph eph" onclick="ShowHelp(28, 2);">Tính năng camera</div>
            </td>
            <td id="c28_1" class="v">Nhận diện nụ cười</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_31" class="ph eph" onclick="ShowHelp(31, 2);">Quay phim</div>
            </td>
            <td id="c31_1" class="v">Quay phim WVGA@30fps</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_30" class="ph eph" onclick="ShowHelp(30, 2);">Videocall</div>
            </td>
            <td id="c30_1" class="v">Không</td>
        </tr>
        <tr class="r">
            <td rowspan="5" class="g" valign="top">
            <div class="gh">CPU &amp; RAM</div>
            </td>
            <td id="prop_51" class="p f eph" onclick="ShowHelp(51, 2);">Tốc độ CPU</td>
            <td id="c51_1" class="v f">1.2 GHz</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Số nhân</div>
            </td>
            <td id="c6461_1" class="v">2 nhân</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6059" class="ph eph" onclick="ShowHelp(6059, 2);">Chipset</div>
            </td>
            <td id="c6059_1" class="v">MTK 6572</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">RAM</div>
            </td>
            <td id="c50_1" class="v">512 MB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6079" class="ph eph" onclick="ShowHelp(6079, 2);">Chip đồ họa (GPU)</div>
            </td>
            <td id="c6079_1" class="v">Mali-400MP</td>
        </tr>
        <tr class="r">
            <td rowspan="4" class="g" valign="top">
            <div class="gh">Bộ nhớ &amp; Lưu trữ</div>
            </td>
            <td id="prop_54" class="p f eph" onclick="ShowHelp(54, 2);">Danh bạ</td>
            <td id="c54_1" class="v f">Không giới hạn</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_49" class="ph eph" onclick="ShowHelp(49, 2);">Bộ nhớ trong (ROM)</div>
            </td>
            <td id="c49_1" class="v">4 GB</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_52" class="ph eph" onclick="ShowHelp(52, 2);">Thẻ nhớ ngoài</div>
            </td>
            <td id="c52_1" class="v">MicroSD (T-Flash)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_53" class="ph eph" onclick="ShowHelp(53, 2);">Hỗ trợ thẻ tối đa</div>
            </td>
            <td id="c53_1" class="v">32 GB</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thiết kế &amp; Trọng lượng</div>
            </td>
            <td id="prop_73" class="p f eph" onclick="ShowHelp(73, 2);">Kiểu dáng</td>
            <td id="c73_1" class="v f">Thanh + Cảm ứng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_88" class="ph eph" onclick="ShowHelp(88, 2);">Kích thước</div>
            </td>
            <td id="c88_1" class="v">128.2 x 63 x 9.8mm</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_100" class="ph eph" onclick="ShowHelp(100, 2);">Trọng lượng (g)</div>
            </td>
            <td id="c100_1" class="v">125</td>
        </tr>
        <tr class="r">
            <td rowspan="3" class="g" valign="top">
            <div class="gh">Thông tin pin</div>
            </td>
            <td class="p f">Loại pin</td>
            <td id="c83_1" class="v f">Pin chuẩn Li-Ion</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_84" class="ph eph" onclick="ShowHelp(84, 2);">Dung lượng pin</div>
            </td>
            <td id="c84_1" class="v">1400 mAh</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Pin có thể tháo rời</div>
            </td>
            <td id="c6462_1" class="v">Có</td>
        </tr>
        <tr class="r">
            <td rowspan="13" class="g" valign="top">
            <div class="gh">Kết nối &amp; Cổng giao tiếp</div>
            </td>
            <td id="prop_65" class="p f eph" onclick="ShowHelp(65, 2);">3G</td>
            <td id="c65_1" class="v f">HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">4G</div>
            </td>
            <td id="c6463_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Loại Sim</div>
            </td>
            <td id="c6339_1" class="v">SIM bình thường</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_60" class="ph eph" onclick="ShowHelp(60, 2);">Khe gắn Sim</div>
            </td>
            <td id="c60_1" class="v">2 SIM 2 sóng</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_66" class="ph eph" onclick="ShowHelp(66, 2);">Wifi</div>
            </td>
            <td id="c66_1" class="v">Wi-Fi 802.11 b/g/n, Wi-Fi hotspot</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_68" class="ph eph" onclick="ShowHelp(68, 2);">GPS</div>
            </td>
            <td id="c68_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_69" class="ph eph" onclick="ShowHelp(69, 2);">Bluetooth</div>
            </td>
            <td id="c69_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_61" class="ph eph" onclick="ShowHelp(61, 2);">GPRS/EDGE</div>
            </td>
            <td id="c61_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_48" class="ph eph" onclick="ShowHelp(48, 2);">Jack tai nghe</div>
            </td>
            <td id="c48_1" class="v">3.5 mm</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">NFC</div>
            </td>
            <td id="c6464_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_71" class="ph eph" onclick="ShowHelp(71, 2);">Kết nối USB</div>
            </td>
            <td id="c71_1" class="v">Micro USB</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Kết nối khác</div>
            </td>
            <td id="c5199_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Cổng sạc</div>
            </td>
            <td id="c85_1" class="v">Micro USB</td>
        </tr>
        <tr class="r">
            <td rowspan="6" class="g" valign="top">
            <div class="gh">Giải trí &amp; Ứng dụng</div>
            </td>
            <td id="prop_32" class="p f eph" onclick="ShowHelp(32, 2);">Xem phim</td>
            <td id="c32_1" class="v f">3GP, MP4, WMV, H.263, H.264(MPEG4-AVC)</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_33" class="ph eph" onclick="ShowHelp(33, 2);">Nghe nhạc</div>
            </td>
            <td id="c33_1" class="v">MP3, WAV, AAC, AMR</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_36" class="ph eph" onclick="ShowHelp(36, 2);">Ghi âm</div>
            </td>
            <td id="c36_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_6039" class="ph eph" onclick="ShowHelp(6039, 2);">Giới hạn cuộc gọi</div>
            </td>
            <td id="c6039_1" class="v">Không</td>
        </tr>
        <tr>
            <td class="p">
            <div id="prop_34" class="ph eph" onclick="ShowHelp(34, 2);">FM radio</div>
            </td>
            <td id="c34_1" class="v">Có</td>
        </tr>
        <tr>
            <td class="p">
            <div class="ph">Chức năng khác</div>
            </td>
            <td id="c43_1" class="v">Mạng xã hội ảo<br>Google Play, Google Search, Google Now, Maps, Gmail, YouTube, Lịch</td>
        </tr>
    </tbody>
</table>', N'<h2 align="center">Q-Smart S19: Smartphone giá rẻ - mạnh mẽ - trẻ trung</h2><p style="text-align: justify;" align=""><br>Sản phẩm có 3 phiên bản màu trắng, xanh, đỏ, tạo nên sự đa dạng trong phóng cách cá tính của người sử dụng. Bạn trẻ, năng động, yêu công nghệ và muốn chạm – lướt trên một chiếc smartphone màn hình cảm ứng, mức giá cực rẻ thì <strong>Q-Smart S19</strong> là một lựa chọn hợp lý.</p>&nbsp;<h3><br>Thiết kế đơn giản, tinh tế</h3><p style="text-align: justify;" align="">Q-Smart có màn hình 4 inch, nhỏ nhắn với kích thước 128.2 x 63 x 9.8mm nhưng nặng khoảng 125 g. Vì thế dù là một sản phẩm phổ thông, mức giá rẻ, <strong>Q-smart S19</strong> vẫn mang lại cảm giác đầm, chắc tay cho người dùng. Đây là một yếu tố quan trọng để chiếc máy trở nên chắc chắn, đẹp mắt hơn, tránh được lối mòn của một số mẫu sản phẩm phổ thông: quá nhẹ và ọp ẹp.</p><p style="text-align: justify;" align=""><br>Nhìn trực diện sản phẩm, <strong>S19</strong> có một dáng bầu, bo tròn 4 góc. Thiết kế này làm người dùng liên tưởng đến một chiếc Samsung. Tuy nhiên, mặt sau hãng sản xuất đã ghi dấu ấn của mình bằng dòng chữ Q-Smart – một dòng <a href="http://www.thegioididong.com/dtdd?f=smartphone" target="_blank">smartphone</a> giá rẻ mang lại nhiều doanh thu cho hãng này.</p><p align="center"><img title="Màn hình 4 inch, nhỏ gọn nhưng vẫn tạo cảm giác đầm tay, chắc chắn" src="http://cdn.tgdd.vn/Products/Images/42/61229/q-smart-19_clip_image002.jpg" alt="Q-smart S19 màn hình 4 inch"><br><em>Màn hình 4 inch, nhỏ gọn nhưng vẫn tạo cảm giác đầm tay, chắc chắn</em></p><p style="text-align: justify;" align=""><br>Máy có vỏ nhựa, nắp lưng tháo rời được và có dáng bầu giúp máy có thể nằm gọn trong tay bạn, thao tác bằng một tay hết sức dễ dàng. Thiết kế đơn giản phù hợp với một chiếc smartphone cơ bản, khỏe khoắn và dễ sử dụng.</p><p align="center"><img title="Máy có nhiều màu tươi tắn, phù hợp với giới trẻ" src="http://cdn.tgdd.vn/Products/Images/42/61229/q-smart-19_clip_image003.jpg" alt="S19 Design"><br><em>Máy có nhiều màu tươi tắn, phù hợp với giới trẻ</em></p><h3 align=""><br>Phần cứng khá – hoạt động bền bỉ</h3><p style="text-align: justify;" align=""><strong>Q-Smart S19</strong> lên kệ, gia nhập vào dòng điện thoại cảm ứng giá rẻ với phần cứng không thực sự mạnh mẽ nhưng đủ sức chạy các ứng dụng ổn định. Máy chạy CPU lõi kép, tốc độ 1.2 GHz, RAM 512 MB, hoạt động trên nền tảng hệ điều hành Android 4.2. Những thông số này giúp máy hoạt động tối ưu khi bạn chạy những ứng dụng cơ bản, không cùng lúc chạy đa nhiệm quá nhiều chương trình.</p><p align="center"><img title="Máy giá rẻ nhưng hỗ trợ camera lên đến 5.0 MP" src="http://cdn.tgdd.vn/Products/Images/42/61229/q-smart-19_clip_image005.jpg" alt="Q-smart S19 camera 5.0 MP"><br><em>Máy giá rẻ nhưng hỗ trợ camera lên đến 5.0 MP</em></p><p style="text-align: justify;" align=""><br>Chiếc máy có mức giá rất mềm nhưng vẫn tích hợp camera 5.0MP, hỗ trợ đèn flash để chụp ảnh trong điều kiện thiếu sáng. Người dùng không thể có được một bức ảnh lung linh với độ cảm biến, xử lý hình ảnh xuất sắc trong chiếc điện thoại giá rẻ này.</p><p style="text-align: justify;" align=""><br>Một số hình ảnh chụp trong điều kiện ánh sáng yếu màu sắc hiển thị trong ảnh sẽ dễ bị sai, phóng to ảnh sẽ thấy đường viền trên chủ thể tấm ảnh không thực sự sắc nét. Tuy nhiên, 5.0 MP vẫn đáp ứng được nhu cầu lưu giữ những khoảnh khắc đáng nhớ của người dùng. Ảnh có dung lượng cao, đủ chất lượng để in ảnh. <strong>S19</strong> còn tích hợp camera trước, độ phân giải VGA giúp bạn chat voice thuận tiện.</p>&nbsp;<h3><br>Luôn luôn kết nối – giải trí nhẹ nhàng</h3><p style="text-align: justify;" align="">Với mức giá khoảng 1,5 triệu đồng, bạn đã có thể sở hữu một chiếc điện thoại thông minh 2 sim 2 sóng có đầy đủ các kết nối Wifi đạt chuẩn 802.11 b/g/n; 3G HSDPA, 7.2 Mbps cho kết nối chất lượng cao. Nhờ kết nối internet tốc độ cao, bạn có thể sử dụng các ứng dụng nhắn tin, điện thoại miễn phí như Zalo, Viber, Yahoo, Skype… Đây sẽ là những hỗ trợ đáng giá giúp bạn tiết kiệm được đáng kể chi phí điện thoại.</p><p style="text-align: justify;" align=""><br>Bên cạnh đó, chiếc <strong>Q-Smart S19 </strong>còn thực sự thông minh khi có thể trở thành một thiết bị phát wifi từ nguyên liệu 3G, nhờ tính năng Wifi Hotspot. Một sinh viên phải đối mặt với những deadline nộp bài, những bài thuyết trình quan trọng, bạn sẽ thực sự yên tâm khi chiếc smartphone của bạn sẽ trở thành nguồn phát wifi mọi lúc mọi nơi, nếu chẳng may đường truyền internet của bạn bị hỏng.</p><p style="text-align: justify;" align=""><br>Bên cạnh đó, chiếc máy giá rẻ nhưng vẫn đảm nhận được rất tốt các nhiệm vụ giải trí được tích hợp trên smartphone hiện nay như nghe nhạc, truy cập web, xem phim trực tuyến…</p><p style="text-align: justify;" align=""><br>Máy cũng tích hợp đầy đủ những tính năng thông dụng của người dùng smartphone hiện đại: nghe nhạc với các chuẩn 3GP, MP4, WMV, H.263, H.264 (MPEG4-AVC) cho độ tương thích với các file âm thanh cao; kết nối mail, Facebook, có khả năng chơi những game nhẹ ít tốn dữ liệu bộ nhớ…</p><p style="text-align: justify;" align=""><br>Dung lượng pin 1400 mAh đủ để chiếc máy của bạn hoạt động liên tục trong suốt 1 ngày. Vì vậy, bạn sẽ không bỏ lỡ bất cứ cập nhật nào trên Facebook, email hay có thể lập tức tra cứu thông tin trên google. Đây cũng chính là ưu điểm lớn nhất của sản phẩm: mức giá cực rẻ, cấu hình ổn, tích hợp những tính năng cần thiết, hữu ích nhất trên một chiếc điện thoại thông minh.</p>&nbsp;<h3 align=""><br>Kết luận:</h3><p style="text-align: justify;" align="">Bạn không cần đầu tư hàng chục triệu đồng để tận hưởng những tính năng tiện ích của một chiếc smartphone. Giá rẻ, thiết kế ổn, kết nối internet liên tục, nhiều màu sắc cá tính độc đáo là những ưu điểm của sản phẩm. Do hạn chế về phần cứng, chiếc máy sẽ không cho những ảnh chụp xuất sắc, không chạy được game đồ họa cao tuy nhiên với mức giá rẻ, bạn sẽ hài lòng với chất lượng của chiếc smartphone đơn giản, dễ sử dụng.</p><table class="advantage"><tbody><tr><td><h3>Ưu điểm</h3><ul>
	<li>Thiết kế nhiều màu sắc cá tính.</li>
	<li>Cấu hình khá tốt.</li>
	<li>Kết nối internet tốc độ cao.</li>
</ul></td><td><h3>Nhược điểm</h3><ul>
	<li>Ảnh chụp không xuất sắc.</li>
</ul></td></tr></tbody></table>', 6, 99, 0, 0, 0, CAST(N'2014-03-21T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (2, N'/Content/Images/Slide/2.jpg', N'/Home', 2, 1)
INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (3, N'/Content/Images/Slide/3.jpg', N'/Home', 3, 1)
INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (4, N'/Content/Images/Slide/4.jpg', N'/Home', 4, 1)
INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (5, N'/Content/Images/Slide/5.jpg', N'/Home', 5, 1)
INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (6, N'/Content/Images/Slide/6.jpg', N'/Home', 6, 1)
INSERT [dbo].[Slider] ([MaSlider], [UrlHinh], [LinkUrl], [Thutu], [AnHien]) VALUES (7, N'/Content/Images/Slide/7.jpg', N'/Home', 7, 1)
SET IDENTITY_INSERT [dbo].[Slider] OFF
INSERT [dbo].[SoLuotTruyCap] ([Dem]) VALUES (0)
SET IDENTITY_INSERT [dbo].[ThongTin] ON 

INSERT [dbo].[ThongTin] ([MaTT], [code1], [GioiThieu], [code2], [sitemap]) VALUES (1, N'<p id="slide-client" class="text"><strong></strong><span></span></p><script type="text/javascript">if(!window.slider) var slider={};slider.data=[{"id":"slide-img-1","client":"', N'<p>Được thành lập từ năm 2014, chúng tôi là một trong những nhà phân phối ĐTDĐ đầu tiên tại TP.Hồ Chí Minh và kể từ tháng 3/2014, chúng tôi chính thức trở thành nhà phân phối các mặt hàng công nghệ.</p><p>Với bề dày gần 1 tháng kinh nghiệm và uy tín đã tạo được trong những năm vừa qua, chúng tôi luôn đem lại cho khách hàng sự hài lòng và thỏa mãn với tất cả các sản phẩm của mình.</p><p>Bên cạnh đó là đội ngũ nhân viên nhiệt tình chu đáo và đầy kinh nghiệm của chúng tôi luôn đưa được ra cho khách hàng những thông tin có giá trị và giúp khách hàng lựa chọn được những sản phẩm phù hợp nhất.</p><p>Để nâng cao thương hiệu của mình, mục tiêu của chúng tôi trong thời gian tới là cung cấp đến tận tay khách hàng những sản phẩm chính hãng với chất lượng đảm bảo và uy tín cũng như giá cả hợp lý nhất.</p><p>Chúng tôi mong muốn sự đóng góp của khách hàng sẽ giúp chúng tôi ngày một phát triển để từ đó củng cố thêm lòng tin của khách hàng với chúng tôi. Chúng tôi rất biết ơn sự tin tưởng của khách hàng trong suốt gần 10 năm qua và chúng tôi luôn tâm niệm rằng cần phải cố gắng hơn nữa để xứng đáng với phương châm đề ra “Nếu những gì chúng tôi không có, nghĩa là bạn không cần” .</p><p>Chúng tôi xin chân thành cảm ơn tất cả các khách hàng đã, đang và sẽ ủng hộ chúng tôi.(Nguồn: wWw.DungMobile.com)</p>', N'","desc":""}];</script>', N'<iframe src="https://mapsengine.google.com/map/embed?mid=zmjDizZJBasM.k1WCrrLSNu10" width="100%" height="480" style="border:none"></iframe>')
SET IDENTITY_INSERT [dbo].[ThongTin] OFF
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (1, N'Nokia X tại Việt Nam rẻ hơn ở Ấn Độ', N'Theo đó, giá bán của Nokia X tại Ấn Độ lên đến 8.599 IRN (khoảng 2,97 triệu đồng) cao hơn gần 200,000 đồng so với thị trường Việt Nam.', N'/Content/Images/TinTuc/1.jpg', N'<p style="text-align: center;"><strong><img src="http://cdn.tgdd.vn/Files/2014/03/11/537030/ImageAttach/Nokia-X1-201431191622.jpg" alt="Nokia X tại Việt Nam rẻ hơn ở Ấn Độ"></strong></p><p style="text-align: justify;">Nokia vừa chính thức giới thiệu mẫu <a title="Chi tiết Nokia X" href="http://www.thegioididong.com/dtdd/nokia-x" target="_blank">Nokia X</a> tại Ấn Độ, đây được xem là thị trường cuồng sản phẩm Nokia nhất trên thế giới. Theo đó, giá bán được công bố tại Ấn Độ cho Nokia X bản 2 SIM gần 8.500 IRN (khoảng 140 USD, tức 2,97 triệu đồng). Trong khi đó tại Việt Nam, nhiều cửa hàng đã cho niêm yết giá bán của Nokia X ở mức 2,8 triệu đồng, tức là thấp hơn gần 200.000 đồng so với thị trường Ấn Độ.</p><p style="text-align: center;"><img style="width: 580px; height: 315px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537030/ImageAttach/Nokia-X2-201431191634.jpg" alt="Nokia X tại Việt Nam rẻ hơn ở Ấn Độ"></p><p style="text-align: justify;">Trao đổi với nhân viên bán hàng tại thegioididong.com, <a title="Mở hộp Nokia X chạy Android giá rẻ tại thegioididong.com" href="http://www.thegioididong.com/tin-tuc/mo-hop-nokia-x-chay-android-gia-re-tai-thegioidido-536764" target="_blank">hiện sản phẩm đã về một vài cửa hàng</a> trong chuỗi hệ thống bán lẻ của công ty, tuy nhiên chưa có giá bán chính thức từ Nokia nên chưa thể bán ra. Một vài đại lý ở Việt Nam cũng cho biết, họ sẽ có hàng bán ra ngay trong ngày 11/3 hoặc 12/3, dự kiến đây là ngày Nokia chính thức giới thiệu mẫu Nokia X tại thị trường Việt Nam.</p><p style="text-align: justify;">Khi chính thức bán ra, Nokia X sẽ có đủ 6 màu bao gồm trắng, đen, vàng, cam, xanh dương và xanh lá cây. Trong khi đó, 2 model còn lại là Nokia X Plus và XL sẽ có mặt trên thị trường trong khoảng 2 tháng tới.</p>', 0, CAST(N'2014-03-11T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (2, N'Tháo tung tablet mỏng nhất thế giới', N'Huawei tự tin cho rằng MediaPad X1 là chiếc tablet mỏng nhất trên thế giới, tính cho đến thời điểm hiện tại. Vậy thì nội thất phần cứng bên trong của máy có và đã loại bỏ những gì để có thể mảnh mai kinh ngạc đến thế.', N'/Content/Images/TinTuc/2.jpg', N'Trong số các sản phẩm mà Huawei công bố tại MWC 2014 vào tháng trước, ấn tượng nhất chính là MediaPad X1, chiếc máy tính bảng 7 inch có độ dày chỉ 7,18 mm mà thôi, vượt mặt các đối thủ sừng sỏ khác hiện nay như: <a title="Chi tiết Nexus 7 2013" href="http://www.thegioididong.com/may-tinh-bang/asus-google-nexus-7-2" target="_blank">Nexus 7 2013</a> (8,4 mm) và <a title="Chi tiết iPad mini 2" href="http://www.thegioididong.com/may-tinh-bang/ipad-mini-2-retina-16g-wifi" target="_blank">iPad Mini 2</a> (7,5 mm). Chưa ngừng lại tại đó, máy còn có viền màn hình siêu hẹp, cùng trọng lượng chỉ 239 gram.</p><p style="text-align: center;" dir="ltr"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Huawei-mediaad-X1-201431110459.jpg" alt="Trên tay Huawei MediaPad X1 tại MWC 2014"></p><p style="text-align: center;" dir="ltr"><a title="Huawei trình làng tablet siêu mỏng cùng vòng đeo thông minh" href="http://www.thegioididong.com/tin-tuc/huawei-trinh-lang-tablet-sieu-mong-cung-vong-deo-t-534626" target="_blank"><em>Trên tay Huawei MediaPad X1 tại MWC 2014</em></a></p><p style="text-align: justify;" dir="ltr"><strong>MediaPad X1 được trang bị màn hình IPS LCD 7 inch, độ phân giải Full HD (1200 x 1920 pixels)</strong>, mật độ điểm ảnh 323 ppi. Theo đó, máy sử dụng SoC “cây nhà lá vườn” Huawei Hass V9R1 (sản xuất trên quy trình 28nm), bộ xử lý này được hãng cam đoan là tốt hơn nhiều so với hiệu suất của Huawei K3V2.</p><p style="text-align: justify;" dir="ltr">Ngoài ra, máy còn có khả năng đàm thoại như điện thoại thông thường (2G/3G/4G), cùng dung lượng RAM 2GB kết hợp với bộ nhớ trong 16GB, cung cấp camera trước 5MP và camera phía sau lên đến 13MP. Cuối cùng, máy được tích hợp thỏi pin lên đến 5000 mAh.</p><p style="text-align: justify;">Dự kiến, <a title="Máy tính bảng Huawei" href="http://www.thegioididong.com/may-tinh-bang-huawei" target="_blank">Huawei</a> MediaPad X1 sẽ được bán ra với hai phiên bản: 3G có giá 1.799 nhân dân tệ (khoảng 293 USD) và phiên bản 4G có giá 1.999 nhân dân tệ (khoảng 325 USD). Sau đây, mời các bạn cùng xem qua quá trình rã máy MediaPad X1 bên dưới.</p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaad-X1-2014311105034.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaad-X1-1-2014311105127.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 450px; height: 480px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-2-2014311105314.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-3-2014311105412.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-4-2014311105440.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 350px; height: 703px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-5-2014311105519.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-6-2014311105652.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-7-2014311105738.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-8-2014311105819.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-9-2014311105854.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-10-2014311105923.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-11-2014311105956.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-12-201431111028.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-13-20143111119.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-14-201431111157.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="height: 409px; width: 380px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-15-201431111316.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-16-20143111146.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-17-201431111448.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-18-201431111521.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-19-201431111546.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-20-201431111612.jpg" alt="Tháo tung Huawei MediaPad X1"></p><p style="text-align: center;"><img style="width: 640px; height: 426px;" src="http://cdn.tgdd.vn/Files/2014/03/11/537052/ImageAttach/Thao-tung-Huawei-mediaPad-X1-21-201431111634.jpg" alt="Tháo tung Huawei MediaPad X1">', 0, CAST(N'2014-03-11T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (3, N'Sony ra mắt bộ theme cực đẹp dành cho smartphone Xperia', N'Thêm một tin vui cho những ai là fan của dòng Xperia đó là Sony vừa giới thiệu bộ theme đẹp mắt dành cho mọi dòng smartphone Xperia chạy Android 4.3 hoặc mới hơn.', N'/Content/Images/TinTuc/3.jpg', N'<img src="http://cdn.tgdd.vn/Files/2014/03/11/537040/ImageAttach/themes-xperia-1-2014311101138.jpg" alt="Themes Xperia"></p><p style="text-align: center;"><em>Theme mới cho dòng Xperia</em></p><p style="text-align: justify;">Theo <a title="Sony" href="http://www.thegioididong.com/dtdd-sony" target="_blank">Sony</a>, bộ theme có đến 280 skin để bạn trang trí cho thiết bị của mình bao gồm cả màn hình khóa, thanh điều hướng, các biểu tượng, thư mục, thanh trượt và thậm chí cả các checkboxes (ô vuông, hình tròn để đánh dấu check). Dự kiến, số lượng các skin tùy biến sẽ còn được bổ sung nhiều hơn trong tương lai.</p><p style="text-align: center;"><iframe title="YouTube video player" src="http://www.youtube.com/v/it0WEuVUp7o?rel=0" frameborder="0" height="480" scrolling="no" width="640"></iframe></p><p style="text-align: center;"><em>Video Sony giới thiệu bộ theme mới</em></p><p style="text-align: justify;">Xperia Themes hiện đã có sẵn trên Google Play. Để tim và cài đặt các theme mới, hãy vào menu <a title="Điện thoại di động" href="http://www.thegioididong.com/dtdd" target="_blank">điện thoại</a> Xperia của bạn và nhất nút “dấu cộng” ở phía trên góc phải. Sau đó bạn sẽ thấy tất cả bộ theme và tải chúng về. Rất nhiều themes để bạn trang trí và hi vọng nó sẽ làm bạn thích thú.</p>', 0, CAST(N'2014-03-11T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (4, N'Nokia sắp ra "hàng mới" vào ngày 2/4?', N'Hội nghị những nhà phát triển BUILD 2014 đang đến rất gần và dưới đây là những gì mà bạn đang moang đợi?', N'/Content/Images/TinTuc/4.jpg', N'<p style="text-align: justify;">Trang web của Nokia đã gửi thông báo tới các fan hâm mộ của mình: “Điều gì đã làm cho năm 2014 trở nên đặc biệt? Đó là sự hợp tác thú vị giữa Microsoft và Nokia, chúng tôi sẽ có những sản phẩm mới dành cho bạn”.</p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/28/539402/ImageAttach/Nokia-Lumia-930-630-1-20143289495.jpg" alt="BUILD 2014"></p><p style="text-align: center;"><em>BUILD 2014</em></p><p style="text-align: justify;">Vậy, những gì mà bạn có thể mong đợi? Đầu tiên, các bạn có thể nghĩ tới việc thông báo phiên bản Windows Phone 8.1 tại BUILD 2014, bản cập nhật lớn nhất dành cho smartphone Windows Phone. Và ngay đây là những thiết bị mà bạn đang mong ngóng.</p><p style="text-align: justify;"><strong>Nokia Lumia 930 (tên mã Martini) </strong></p><p style="text-align: justify;"><a title="Chi tiết Nokia Icon" href="http://www.thegioididong.com/dtdd/nokia-lumia-icon" target="_blank">Nokia Icon</a> đã gây ấn tượng với chất lượng xây dựng xuất sắc, máy ảnh 20MP nhưng nó độc quyền cho nhà mạng Verizon (Mỹ). May mắn thay là Nokia đã chuẩn bị cho bạn một sản phẩm tương tự, đó chính là <strong>Nokia Lumia 930</strong>.</p><p style="text-align: center;"><img style="width: 600px; height: 340px;" src="http://cdn.tgdd.vn/Files/2014/03/28/539402/ImageAttach/Nokia-Lumia-930-630-4-201432894937.jpg" alt="Nokia Lumia 930"></p><p style="text-align: center;"><em>Nokia Lumia 930 sẽ tương tự như Lumia Icon</em></p><p style="text-align: justify;">Trong tháng 2, Nextleaks đã cho rằng <a title="Nokia vừa quảng cáo Lumia 930 vừa đá đểu HTC One M8" href="http://www.thegioididong.com/tin-tuc/nokia-vua-quang-cao-lumia-930-vua-da-deu-htc-one-m-538440" target="_blank">Lumia 930 sẽ sở hữu bộ vi xử lý lõi tứ Snapdragon 800 tốc độ 2.2GHz</a>, RAM 2GB, bộ nhớ trong 16GB, hỗ trợ thẻ nhớ microSD, pin 2700mAh, máy ảnh 20MP và màn hình 4.5 inch độ phân giải full HD. Dự kiến, Lumia 930 cũng sẽ kế thừa thiết kế của Icon, hình hộp đẹp mắt. Không những vây, tin đồn còn cho biết máy sẽ có giá phải chăng để nhiều người có thể sở hữu.</p><p style="text-align: justify;"><strong>Lumia 630</strong></p><p style="text-align: justify;"><a title="Lumia 630 bằng xương bằng thịt xuất hiện" href="http://www.thegioididong.com/tin-tuc/lumia-630-bang-xuong-bang-thit-lo-dien-539314" target="_blank">Lumia Nokia 630 (tên mã Moneypenny)</a> là thiết bị thứ hai mà chúng tôi hy vọng Nokia sẽ công bố vào ngày 2/4 tới. <a title="Lumia 630 lộ mức giá siê rẻ" href="http://www.thegioididong.com/tin-tuc/nokia-lumia-630-lo-gia-ban-cuc-re-538434" target="_blank">Lumia 630 được coi là smartphone giá rẻ</a>, khoảng 150 USD.</p><p style="text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/28/539402/ImageAttach/Nokia-Lumia-930-630-2-201432895039.jpg" alt="Lumia 630"></p><p style="text-align: center;"><em>Lumia 630</em></p><p style="text-align: justify;">Dự kiến, máy sẽ có màn hình 4.5 inch độ phân giải 854 x 480 pixels, chip dual-core Snapdragon 400, RAM 1GB, hỗ trợ 2 SIM, các nút điều hướng ảo trên màn hình, camera 5MP không đèn flash và chạy trên phiên bản Windows Phone 8.1.</p><p style="text-align: justify;"><strong>Không có smartphone hàng đầu?</strong></p><p style="text-align: center;"><strong><img src="http://cdn.tgdd.vn/Files/2014/03/28/539402/ImageAttach/Nokia-Lumia-930-630-3-201432895051.jpg" alt="Lumia 630"></strong></p><p style="text-align: center;"><em>Sẽ có những smartphone mới?</em></p><p style="text-align: justify;">Có vẻ như lần này các tin đồn về một thiết bị mới, hàng đầu là không có, tuy nhiên các bạn vẫn có thể ngạc nhiên nếu như Nokia tung ra dòng smartphone sử dụng máy ảnh công nghệ PureView của mình. Tất cả vẫn còn phải chờ đợi cho tới phút chót. Chỉ còn vài ngày nữa thôi là mọi thứ sẽ sáng tỏ.</p>', 0, CAST(N'2014-03-28T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (5, N'iPhone 6 sẽ giúp Apple "hốt bạc" nhiều hơn từ người dùng', N'Đã từ lâu iPhone được xem là dòng thiết bị đẳng cấp và nó luôn được nhiều người dùng tìm mua dù có thể có mức giá bán cao hơn thực tế. Nhiều người thậm chí còn sẵn sàng bỏ thêm tiền nếu Apple chịu làm iPhone có màn hình lớn hơn.', N'/Content/Images/TinTuc/6.jpg', N'<p style="margin-bottom: 0in; text-align: justify;">CEO Apple, Tim Cook có thể sẽ rất vui khi ông nhìn thấy số liệu điều tra mới được công bố bởi nhà phân tích Raymond James của Tavis McCourt.</p><p style="margin-bottom: 0in; text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/27/538487/ImageAttach/iPhone-6-man-hinh-201432765617.jpg" alt="iPhone 6"></p><p style="margin-bottom: 0in; text-align: center;"><strong><em>iPhone 6</em></strong></p><p style="margin-bottom: 0in; text-align: justify;">Cuộc khảo sát của Raymond James được thực hiện với sự giúp đỡ của trang SurveyMonkey đã phát hiện ra rằng một phần ba số chủ sở hữu iPhone Mỹ sẽ sẵn sàng trả thêm 100 USD (~2 triệu VND) cho một chiếc iPhone 6 nếu nó có một màn hình lớn hơn <a title="Điện thoại iPhone 5s" href="http://www.thegioididong.com/iphone-5s" target="_blank">iPhone 5s</a>.</p><p style="margin-bottom: 0in; text-align: justify;">Điều này có nghĩa là 33% chủ sở hữu iPhone Mỹ có thể sẵn sàng trả tiền nhiều hơn mức giá bán của iPhone 5s 100 USD để iPhone 6 có một màn hình hiển thị từ 4.7 inch đến 5.5 inch. Cuộc khảo sát mới nhất của Raymond James cũng nhận thấy rằng 52.3% của tất cả các chủ sở hữu điện thoại thông minh ở Mỹ đều sử dụng iPhone. Và có vẻ như Apple đang đứng trước cơ hội ngàn năm có một để hốt bạc và thúc đẩy người dùng cũ nâng cấp lên phiên bản mới nếu chịu ra mắt thiết bị có màn hình lớn.</p><p style="margin-bottom: 0in; text-align: center;"><img src="http://cdn.tgdd.vn/Files/2014/03/27/538487/ImageAttach/iphone-6-moi-201432765650.jpg" alt="Màn hình lớn hơn và sẽ có giá cao hơn"></p><p style="margin-bottom: 0in; text-align: center;"><em>Màn hình lớn hơn và sẽ có giá cao hơn</em></p><p style="margin-bottom: 0in; text-align: justify;">Thực tế thì việc <a title="Điện thoại iPhone 6" href="http://www.thegioididong.com/dtdd/iphone-6" target="_blank">iPhone 6</a> có màn hình lớn hơn sẽ có giá cao hơn đã được nhiều người dự đoán từ trước, nhưng Apple vẫn im lặng trước những tin đồn này vì hãng muốn tạo bất ngờ ở phút cuối.</p>', 0, CAST(N'2014-03-28T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TinTuc] ([MaTin], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [LuotXem], [NgayCapNhat], [AnHien]) VALUES (6, N'Jiayu S2 "siêu mẫu" 8 nhân có giá thành cực rẻ', N'Jiayu S2 không những “siêu gầy” mà còn sở hữu những linh kiện phần cứng thuộc hàng cấp cao hiện nay, nhưng giá thành thì lại đối nghịch đến bất ngờ.', N'/Content/Images/TinTuc/5.jpg', N'<img alt="Jiayu S2 sẽ được thương mại hóa rộng khắp vào ngày mai, nhưng hiện tại bạn đã có thể đặt mua" src="http://cdn.tgdd.vn/Files/2014/03/28/539476/ImageAttach/Jiayu-S2-201432820135.jpg" style="width: 640px; height: 426px;"></strong></p><p dir="ltr" style="text-align: center;"><em>Jiayu S2 sẽ được thương mại hóa rộng khắp vào ngày mai...</em></p><p dir="ltr" style="text-align: justify;"><a href="http://www.thegioididong.com/tin-tuc/xuat-hien-ban-sao-hoan-hao-cua-iphone-5-537193" target="_blank" title="Xuất hiện bản sao hoàn hảo của iPhone 5">Được xem là bản sao vô cùng hoản hảo của iPhone 5</a>, Jiayu S2 tự tin có thể vượt mặt dàn sao đình đám nhất hiện nay. Cụ thể hơn, máy có số đo 3 vòng lần lượt như sau: 139 x 67.5 x 6mm, rất mảnh mai khi đọ dáng cùng...</p><p dir="ltr" style="text-align: justify;"><em>- Apple iPhone 5/ 5S (7.6 mm)</em></p><p dir="ltr" style="text-align: justify;"><em>- Samsung Galaxy S5 (8.1 mm)</em></p><p dir="ltr" style="text-align: justify;"><em>- Sony Xperia Z2 (8.2 mm)</em></p><p dir="ltr" style="text-align: justify;"><em>- LG G Pro 2 (8.3 mm)</em></p><p dir="ltr" style="text-align: justify;"><em>- HTC One M8 (9.4 mm)</em></p><p dir="ltr" style="text-align: center;"><em><img alt="Nhưng hiện tại bạn đã có thể đặt mua với giá 320 USD" src="http://cdn.tgdd.vn/Files/2014/03/28/539476/ImageAttach/jiayu-S2-man-hinh-20143282077.jpg" style="width: 640px; height: 426px;"></em></p><p dir="ltr" style="text-align: center;"><em>...&nbsp;</em><em>nhưng hiện tại bạn đã có thể đặt mua với giá 320 USD/ khoảng 6,7 triệu đồng (trên&nbsp;jiayu store</em>)</p><p dir="ltr" style="text-align: justify;">Đó là về phần ngoại hình, còn khả năng hiển thị nội dung số chất lượng ra sao và điểm ảnh đạt tới ngưỡng nào? Theo đó, Jiayu S2 được trang bị màn hình Retina Full HD 1080p kích thước 5 inch (viền mỏng chỉ 1.7mm), kết hợp cùng mật độ điểm ảnh chạm mức 440 ppi và được phủ lớp kính cường lực Gorilla Glass thế hệ 2.</p><p dir="ltr" style="text-align: justify;"><em>- <a href="http://www.thegioididong.com/dtdd/iphone-5s-16gb" target="_blank" title="Chi tiết Apple iPhone 5S">Apple iPhone 5S </a>(640 x 1136 pixels,326 ppi)</em></p><p dir="ltr" style="text-align: justify;"><em>- <a href="http://www.thegioididong.com/dtdd/samsung-galaxy-s5" target="_blank" title="Chi tiết Samsung Galaxy S5">Samsung Galaxy S5 </a>(1080 x 1920 pixels, 432 ppi)</em></p><p dir="ltr" style="text-align: justify;"><em>- <a href="http://www.thegioididong.com/dtdd/sony-xperia-z2" target="_blank" title="Chi tiết Sony Xperia Z2">Sony Xperia Z2</a> (1080 x 1920 pixels, 424 ppi)</em></p><p dir="ltr" style="text-align: justify;"><em>- <a href="http://www.thegioididong.com/dtdd/lg-g-pro-2-d837" target="_blank" title="Chi tiết LG G Pro 2">LG G Pro 2 </a>(1080 x 1920 pixels, 373 ppi)</em></p><p dir="ltr" style="text-align: justify;"><em>- <a href="http://www.thegioididong.com/dtdd/htc-one-m8" target="_blank" title="Chi tiết HTC One M8">HTC One M8</a> (1080 x 1920 pixels, 441 ppi)</em></p><p dir="ltr" style="text-align: center;"><em><img alt="Jiayu S2 có ngoại hình lớn hơn, nhưng lại mỏng hơn iPhone 5" src="http://cdn.tgdd.vn/Files/2014/03/28/539476/ImageAttach/jiayu-S2-mat-sau-201432820841.jpg" style="width: 640px; height: 426px;"></em></p><p dir="ltr" style="text-align: center;"><em>Jiayu S2 có ngoại hình lớn hơn, nhưng lại mỏng hơn iPhone 5</em></p><p dir="ltr" style="text-align: justify;">Thông số cấu hình còn lại của Jiayu S2 bao gồm: SoC MediaTek MT6592 8 nhân xung nhịp 1.7GHz, tích hợp dung lượng RAM 2GB và bộ nhớ trong 32GB (không hỗ trợ microSD). Ngoài ra, máy còn sở hữu bộ đôi camera cực chất: camera phụ 8MP và camera chính 13MP. Cuối cùng, máy sẽ được bán ra với phiên bản Android Jelly Bean và thòi pin dung lượng 2000 mAh.</p><p dir="ltr" style="text-align: center;"><img alt="Giao diện trên Jiayu S2" src="http://cdn.tgdd.vn/Files/2014/03/28/539476/ImageAttach/Jiayu-S2-giao-dien-201432820128.jpg" style="width: 640px; height: 480px;"></p><p dir="ltr" style="text-align: center;"><em>Giao diện trên Jiayu S2</em></p><p dir="ltr" style="text-align: center;"><em><img alt="Thông tin cấu hình của Jiayu S2" src="http://cdn.tgdd.vn/Files/2014/03/28/539476/ImageAttach/Jiayu-S2-Antutu-benchmark-2014328201224.jpg" style="width: 640px; height: 480px;"></em></p><p dir="ltr" style="text-align: center;"><em>Thông tin cấu hình của Jiayu S2</em>', 1, CAST(N'2014-03-29T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ('/Content/Images/Upload/Avatar_Admin.jpg') FOR [Avatar]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT ((0)) FOR [HTThanhToan]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT ((0)) FOR [Dagiao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ('/Content/Images/Upload/avatar.jpg') FOR [Avatar]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('<a class="tgdd360"  data-tgdd360-options="autospin: infinite; autospin-direction: anticlockwise; autospin-start: load,click;columns:36"><img src="') FOR [Code1]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('" /> </a>') FOR [Code2]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [GiaHienTai]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [GiaCu]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((1)) FOR [SoLuongTon]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [SLDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [KhuyenMai]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ThongTin] ADD  DEFAULT ('<p id="slide-client" class="text"><strong></strong><span></span></p><script type="text/javascript">if(!window.slider) var slider={};slider.data=[{"id":"slide-img-1","client":"') FOR [code1]
GO
ALTER TABLE [dbo].[ThongTin] ADD  DEFAULT ('","desc":""}];</script>') FOR [code2]
GO
ALTER TABLE [dbo].[TinTuc] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BL_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BL_KH]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BL_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BL_SP]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_DonHang]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_SP]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[LienHe]  WITH CHECK ADD  CONSTRAINT [FK_LH_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[LienHe] CHECK CONSTRAINT [FK_LH_KH]
GO
ALTER TABLE [dbo].[PhanQuyen_Admin]  WITH CHECK ADD  CONSTRAINT [FK_PQAdmin_Admin] FOREIGN KEY([MaAdmin])
REFERENCES [dbo].[Admin] ([MaAdmin])
GO
ALTER TABLE [dbo].[PhanQuyen_Admin] CHECK CONSTRAINT [FK_PQAdmin_Admin]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SP_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SP_NSX]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD CHECK  (([Thanhtien]>=(0)))
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD CHECK  (([Trigia]>(0)))
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD CHECK  (([Thanhtien]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [MobileStore] SET  READ_WRITE 
GO
