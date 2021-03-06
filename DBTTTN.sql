USE [master]
GO
/****** Object:  Database [DBTTTN]    Script Date: 26-Jul-18 8:13:57 PM ******/
CREATE DATABASE [DBTTTN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBTTTN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBTTTN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBTTTN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBTTTN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBTTTN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBTTTN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBTTTN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBTTTN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBTTTN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBTTTN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBTTTN] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBTTTN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBTTTN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBTTTN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBTTTN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBTTTN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBTTTN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBTTTN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBTTTN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBTTTN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBTTTN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBTTTN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBTTTN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBTTTN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBTTTN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBTTTN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBTTTN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBTTTN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBTTTN] SET RECOVERY FULL 
GO
ALTER DATABASE [DBTTTN] SET  MULTI_USER 
GO
ALTER DATABASE [DBTTTN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBTTTN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBTTTN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBTTTN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBTTTN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBTTTN', N'ON'
GO
ALTER DATABASE [DBTTTN] SET QUERY_STORE = OFF
GO
USE [DBTTTN]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [DBTTTN]
GO
/****** Object:  Table [dbo].[BANNER]    Script Date: 26-Jul-18 8:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANNER](
	[ID_BANNER] [char](10) NOT NULL,
	[HINH_BANNER] [nchar](100) NULL,
 CONSTRAINT [PK_SanPhamNoiBat] PRIMARY KEY CLUSTERED 
(
	[ID_BANNER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[ID_BL] [int] NOT NULL,
	[MADT_BL] [nvarchar](50) NOT NULL,
	[EMAIL_SDT_BL] [nvarchar](50) NULL,
	[TENKH_BL] [nvarchar](50) NULL,
	[CMT_BL] [ntext] NULL,
	[KQEXTRACT_BL] [int] NULL,
 CONSTRAINT [PK_BINHLUAN] PRIMARY KEY CLUSTERED 
(
	[ID_BL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIENTHOAI]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIENTHOAI](
	[MA_DT] [nvarchar](50) NOT NULL,
	[TEN_DT] [char](20) NULL,
	[HANG_DT] [char](10) NULL,
	[HINHSP_DT] [char](100) NULL,
 CONSTRAINT [PK_DIENTHOAI] PRIMARY KEY CLUSTERED 
(
	[MA_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONGIA]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONGIA](
	[MADT_DG] [nvarchar](50) NOT NULL,
	[GIABAN_DG] [money] NULL,
	[TUNGAY_DG] [datetime] NOT NULL,
	[DENNGAY_DG] [datetime] NOT NULL,
 CONSTRAINT [PK_DONGIA] PRIMARY KEY CLUSTERED 
(
	[MADT_DG] ASC,
	[TUNGAY_DG] ASC,
	[DENNGAY_DG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGDT]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGDT](
	[MA_HDT] [char](10) NOT NULL,
	[TEN_HDT] [char](20) NULL,
 CONSTRAINT [PK_HANGDT] PRIMARY KEY CLUSTERED 
(
	[MA_HDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGSOKYTHUAT]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGSOKYTHUAT](
	[MADT_TSKT] [nvarchar](50) NOT NULL,
	[MANHINH_TSKT] [nvarchar](50) NULL,
	[HDH_TSKT] [nvarchar](50) NULL,
	[CAMERA_TSKT] [nvarchar](100) NULL,
	[CPU_TSKT] [nvarchar](50) NULL,
	[RAM_TSKT] [nvarchar](50) NULL,
	[ROM_TSKT] [nvarchar](50) NULL,
	[SIM_TSKT] [nvarchar](50) NULL,
	[PIN_TSKT] [nvarchar](50) NULL,
	[TINHNANGNOIBAT_TSKT] [nvarchar](300) NULL,
	[HINHCT1_TSKT] [nchar](100) NULL,
	[HINHCT2_TSKT] [nchar](100) NULL,
	[HINHCT3_TSKT] [nchar](100) NULL,
 CONSTRAINT [PK_THONGSOKYTHUAT] PRIMARY KEY CLUSTERED 
(
	[MADT_TSKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANNER] ([ID_BANNER], [HINH_BANNER]) VALUES (N'BN1       ', N'bn1.jpg                                                                                             ')
INSERT [dbo].[BANNER] ([ID_BANNER], [HINH_BANNER]) VALUES (N'BN2       ', N'bn2.jpg                                                                                             ')
INSERT [dbo].[BANNER] ([ID_BANNER], [HINH_BANNER]) VALUES (N'BN3       ', N'bn3.jpg                                                                                             ')
INSERT [dbo].[BANNER] ([ID_BANNER], [HINH_BANNER]) VALUES (N'BN4       ', N'bn4.jpg                                                                                             ')
INSERT [dbo].[BANNER] ([ID_BANNER], [HINH_BANNER]) VALUES (N'BN5       ', N'bn5.jpg                                                                                             ')
INSERT [dbo].[BINHLUAN] ([ID_BL], [MADT_BL], [EMAIL_SDT_BL], [TENKH_BL], [CMT_BL], [KQEXTRACT_BL]) VALUES (1, N'IPX', N'dttthuy123@gmail.com', N'Đào Thị Thanh Thúy', N'pin dòng này cực kì yếu còn màn hình thì rất mượt đặc biệt cực kì nét .', 1)
INSERT [dbo].[BINHLUAN] ([ID_BL], [MADT_BL], [EMAIL_SDT_BL], [TENKH_BL], [CMT_BL], [KQEXTRACT_BL]) VALUES (2, N'IPX', N'dttthuy123@gmail.com', N'Đào Thị Thanh Thúy', N'pin cực kì khủng và màn hình thì rất đẹp đặc biệt cực kì mượt', 1)
INSERT [dbo].[BINHLUAN] ([ID_BL], [MADT_BL], [EMAIL_SDT_BL], [TENKH_BL], [CMT_BL], [KQEXTRACT_BL]) VALUES (3, N'IPX', N'anv123@gmail.com', N'Nguyễn An Vy', N'màn hình cực kì xấu cũng như pin cực kì yếu .', -1)
INSERT [dbo].[BINHLUAN] ([ID_BL], [MADT_BL], [EMAIL_SDT_BL], [TENKH_BL], [CMT_BL], [KQEXTRACT_BL]) VALUES (4, N'IPX', N'dttthuy123@gmail.com', N'Đào Thị Thanh Thúy', N'màn hình cực kì đẹp và rất mượt . nhưng pin không ổn cho lắm', 1)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'HTCuUtral ', N'HTC U Utral         ', N'H007      ', N'HTCuutral.png                                                                                       ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IP7       ', N'Iphone 7            ', N'H001      ', N'ip7.png                                                                                             ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IP7Plus   ', N'Iphone 7Plus        ', N'H001      ', N'ip7plus.png                                                                                         ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IPX       ', N'Iphone X            ', N'H001      ', N'ipX.png                                                                                             ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'LGv20     ', N'LG V20              ', N'H005      ', N'lgv20.png                                                                                           ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'No2       ', N'Nokia 2             ', N'H004      ', N'nokia2.png                                                                                          ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'No5       ', N'Nokia 5             ', N'H004      ', N'nokia5.png                                                                                          ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'No6       ', N'Nokia 6             ', N'H004      ', N'nokia6.png                                                                                          ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SonyM4    ', N'Sony M4             ', N'H008      ', N'sonym4.png                                                                                          ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SonyZ5    ', N'Sony Z5             ', N'H008      ', N'sonyz5.png                                                                                          ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SSNote8   ', N'Samsung Note 8      ', N'H003      ', N'ssnote8.png                                                                                         ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SSS8      ', N'Samsung S8          ', N'H003      ', N'sss8.png                                                                                            ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SSS9      ', N'Samsung S9          ', N'H003      ', N'sss9.png                                                                                            ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'SSS9Plus  ', N'Samsung S9plus      ', N'H003      ', N'sss9plus.png                                                                                        ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'XiNote3   ', N'Xiaomi Note 3       ', N'H006      ', N'xiaomiminote3.png                                                                                   ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'Zen5lite  ', N'Asus Zenfone 5 lite ', N'H002      ', N'zen5lite.png                                                                                        ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'Zen5z     ', N'Asus Zenfone 5z     ', N'H002      ', N'zen5z.png                                                                                           ')
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'HTCuUtral ', 6490000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7       ', 15990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7Plus   ', 29900000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7Plus   ', 19900000.0000, CAST(N'2018-02-01T00:00:00.000' AS DateTime), CAST(N'2019-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IPX       ', 32790000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'LGv20     ', 9990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-08-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No2       ', 2190000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No5       ', 3860000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No6       ', 5990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SonyZ5    ', 6500000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSNote8   ', 22490000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS8      ', 16990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS9      ', 19990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS9Plus  ', 23590000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'XiNote3   ', 7490000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'Zen5lite  ', 5990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'Zen5z     ', 9990000.0000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H001      ', N'Apple               ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H002      ', N'Asus                ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H003      ', N'Samsung             ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H004      ', N'Nokia               ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H005      ', N'LG                  ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H006      ', N'Xiaomi              ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H007      ', N'HTC                 ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H008      ', N'Sony                ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'HTCuUtral', N'Super LCD, Chính: 5.7", phụ: 2.05", Quad HD (2K)', N'Android 7.0 (Nougat)', N'Camera sau : 12 MP ; Camera trước : 16 MP', N'Qualcomm Snapdragon 821 4 nhân 64-bit', N'	4 GB', N'64 GB', N'2 Nano SIM, Hỗ trợ 4G', N'3000 mAh, có sạc nhanh', N'USB Type C , thẻ nhớ MicroSD - hỗ trợ tối đa 2 TB , Mở khóa bằng vân tay , HTC BoomSound™
Mặt kính 2.5D , Có, microphone chuyên dụng chống ồn', N'htcuCT1.jpg                                                                                         ', N'htcuCT2.jpg                                                                                         ', N'htcuCT3.jpg                                                                                         ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'IP7       ', N'LED-backlit IPS LCD, 4.7", Retina HD', N'	iOS 11', N'Camera sau:	12 MP
Camera trước:	7 MP', N'Apple A10 Fusion 4 nhân 64-bit', N'	2 GB', N'32 GB', N'
1 Nano SIM, Hỗ trợ 4G', N'	1960 mAh', N'Mở khóa bằng vân tay ; 	Kháng nước, kháng bụi
3D Touch ; microphone chuyên dụng chống ồn', N'ip7CT1.jpg                                                                                          ', N'ip7CT2.jpg                                                                                          ', N'ip7CT3.jpg                                                                                          ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'IP7Plus   ', N'LED-backlit IPS LCD, 5.5", Retina HD', N'iOS 11', N'Camera sau:	2 camera 12 MP
Camera trước:	7 MP', N'Apple A10 Fusion 4 nhân 64-bit', N'3 GB', N'32 GB', N'1 Nano SIM, Hỗ trợ 4G', N'2900 mAh', N'Mở khóa bằng vân tay ; 	Kháng nước, kháng bụi
3D Touch ; microphone chuyên dụng chống ồn ', N'ip7PCT1.jpg                                                                                         ', N'ip7PCT2.jpg                                                                                         ', N'ip7PCT3.jpg                                                                                         ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'IPX       ', N'OLED, 5.8", Super Retina', N'	iOS 11', N'Camera sau:	2 camera 12 MP
Camera trước:	7 MP', N'Apple A11 Bionic 6 nhân', N'3 GB', N'	256 GB', N'1 Nano SIM, Hỗ trợ 4G', N'2716 mAh, có sạc nhanh', N'Sạc pin nhanh, Sạc pin không dây, Tiết kiệm pin
 ; Nhận diện khuôn mặt Face ID ; Kháng nước, kháng bụi
3D Touch ; ', N'ipxCT1.jpg                                                                                          ', N'ipxCT2.jpg                                                                                          ', N'ipxCT3.jpg                                                                                          ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'LGv20 ', N'IPS LCD, Chính: 5.7", phụ: 2.1", Quad HD (2K)', N'Android 7.0', N'Camera sau : 16 MP và 8 MP (2 camera) ; Camera trước : 5 MP', N'Snapdragon 820 4 nhân 64-bit', N'4 GB', N'64 GB', N'1 Nano SIM, Hỗ trợ 4G', N'3200 mAh', N'USB Type-C ; Mở khóa nhanh bằng vân tay ; Sạc pin nhanh ; microphone chuyên dụng chống ồn', N'lgv20CT1.jpg                                                                                        ', N'lgv20CT2.jpg                                                                                        ', N'lgv20CT3.jpg                                                                                        ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'No2 ', N'LTPS LCD, 5", HD', N'Android 7.1 (Nougat)', N'Camera sau : 8 MP ; Camera trước : 5 MP', N'Qualcomm Snapdragon 212 4 nhân 32-bit', N'1 GB', N'8 GB', N'	2 Nano SIM, Hỗ trợ 4G', N'	4100 mAh', N'MicroSD - hỗ trợ tối đa 128 GB ; Kháng nước, kháng bụi ', N'nokia2CT1.jpg                                                                                       ', N'nokia2CT2.jpg                                                                                       ', N'nokia2CT3.jpg                                                                                       ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'No5', N'	IPS LCD, 5.2", HD', N'Android 7.1 (Nougat)', N'Camera sau : 13 MP ; Camera trước : 8 MP
', N'Qualcomm Snapdragon 430 8 nhân 64 bit', N'2 GB', N'16 GB', N'2 Nano SIM, Hỗ trợ 4G', N'3000 mAh', N'MicroSD - hỗ trợ tối đa 128 GB ; Mở khóa bằng vân tay ', N'no5CT1.jpg                                                                                          ', N'no5CT2.jpg                                                                                          ', N'no5CT3.jpg                                                                                          ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'No6       ', N'IPS LCD, 5.5", Full HD', N'Android 7.0 (Nougat)', N'Camera sau:	16 MP
Camera trước : 8 MP', N'Qualcomm Snapdragon 430 8 nhân 64 bit', N'3 GB', N'32 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'3000 mAh', N'MicroSD - hỗ trợ tối đa 128 GB ; Mở khóa bằng vân tay  ', N'no6CT1.jpg                                                                                          ', N'no6CT2.jpg                                                                                          ', N'no6CT3.jpg                                                                                          ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'SonyZ5    ', N'	IPS LCD, 5.5", Ultra HD (4K)', N'	Android 6.0 (Marshmallow)', N'Camera sau:	23 MP
Camera trước:	5 MP', N'	Snapdragon 810 8 nhân 64-bit', N'3 GB', N'32 GB', N'1 Nano SIM', N'3430 mAh', N'Sạc pin nhanh ; Tiết kiệm PIN Ultra Stamina ; Mở khóa nhanh bằng vân tay ; Chống nước, chống bụi ; microphone chuyên dụng chống ồn', N'sonyz5CT1.jpg                                                                                       ', N'sonyz5CT2.jpg                                                                                       ', N'sonyz5CT3.jpg                                                                                       ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'SSNote8   ', N'Super AMOLED, 6.3", Quad HD+ (2K+)', N'Android 7.1 (Nougat)', N'Camera sau:	2 camera 12 MP
Camera trước:	8 MP
', N'Exynos 8895 8 nhân 64-bit', N'6 GB', N'64 GB', N'	2 Nano SIM, Hỗ trợ 4G', N'3300 mAh, có sạc nhanh', N'USB Type-C ; MicroSD, hỗ trợ tối đa 256 GB ; Sạc pin nhanh, Sạc pin không dây, Siêu tiết kiệm pin ; Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt ; Kháng nước, kháng bụi ; microphone chuyên dụng chống ồn', N'ssnote8CT1.jpg                                                                                      ', N'ssnote8CT2.jpg                                                                                      ', N'ssnote8CT3.jpg                                                                                      ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'SSS8      ', N'Super AMOLED, 5.8", Quad HD+ (2K+)', N'Android 7.0 (Nougat)', N'Camera sau:	12 MP
Camera trước:	8 MP', N'Exynos 8895 8 nhân 64-bit', N'4 GB', N'64 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	3000 mAh, có sạc nhanh', N'USB Type-C ; MicroSD, hỗ trợ tối đa 256 GB ; 	Sạc pin nhanh, Tiết kiệm pin ; Mở khóa bằng vân tay, Quét mống mắt ; Kháng nước, kháng bụi
Mặt kính 2.5D ; microphone chuyên dụng chống ồn', N'sss8CT1.jpg                                                                                         ', N'sss8CT2.jpg                                                                                         ', N'sss8CT3.jpg                                                                                         ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'SSS9      ', N'Super AMOLED, 5.8", Quad HD+ (2K+)', N'Android 8.0 (Oreo)', N'Camera sau:	12 MP
Camera trước:	8 MP', N'	Exynos 9810 8 nhân 64 bit', N'4 GB', N'64 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'3000 mAh, có sạc nhanh', N'USB Type-C ; 	MicroSD, hỗ trợ tối đa 400 GB ; 	Sạc pin nhanh, Sạc pin không dây, Siêu tiết kiệm pin ; Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt ; Kháng nước, kháng bụi ; Samsung Pay ; 
Màn hình luôn hiển thị AOD', N'sss9CT1.jpg                                                                                         ', N'sss9CT2.jpg                                                                                         ', N'sss9CT3.jpg                                                                                         ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'SSS9Plus  ', N'Super AMOLED, 6.2", Quad HD+ (2K+)', N'Android 8.0 (Oreo)', N'Camera sau:	2 camera 12 MP
Camera trước:	8 MP', N'Exynos 9810 8 nhân 64 bit', N'6 GB', N'64 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'3500 mAh, có sạc nhanh', N'USB Type-C ; MicroSD, hỗ trợ tối đa 400 GB ; Sạc pin nhanh, Sạc pin không dây, Siêu tiết kiệm pin ; Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt ; Kháng nước, kháng bụi ; 3D Touch; Samsung Pay ; Màn hình luôn hiển thị AOD', N'sss9PlusCT1.jpg                                                                                     ', N'sss9PlusCT2.jpg                                                                                     ', N'sss9PlusCT3.jpg                                                                                     ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'XiNote3   ', N'IPS LCD, 5.5", Full HD', N'	Android 7.1 (Nougat)', N'Camera sau:	2 camera 12 MP
Camera trước:	16 MP', N'Qualcomm Snapdragon 660 8 nhân', N'	6 GB', N'64 GB', N'2 Nano SIM', N'	3500 mAh', N'USB Type-C ; MicroSD - hỗ trợ tối đa 256 GB ; Mở khóa bằng vân tay ; Chạm 2 lần sáng màn hình ; microphone chuyên dụng chống ồn ', N'minote3CT1.jpg                                                                                      ', N'minote3CT2.jpg                                                                                      ', N'minote3CT3.jpg                                                                                      ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'Zen5lite  ', N'IPS LCD, 6", Full HD+', N'Android 8.0', N'Camera sau:	16 MP và 8 MP (2 camera)
Camera trước:	20 MP + 8 MP (2 camera)', N'Qualcomm Snapdragon 630 8 nhân', N'4 GB', N'64 GB', N'2 Nano SIM, Hỗ trợ 4G', N'3300 mAh', N'MicroSD - hỗ trợ tối đa 2 TB ; 	Mở khóa bằng vân tay ; Chặn tin nhắn ; 	Chặn cuộc gọi ; mở khoá gương mặt ', N'zen5liteCT1.jpg                                                                                     ', N'zen5liteCT2.jpg                                                                                     ', N'zen5liteCT3.jpg                                                                                     ')
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT]) VALUES (N'Zen5z     ', N'	IPS LCD, 6.2", Full HD+', N'Android 8.0 (Oreo)', N'Camera sau:	12 MP và 8 MP (2 camera)
Camera trước:	8 MP', N'Snapdragon 845 8 nhân', N'8 GB', N'256 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'3300 mAh, có sạc nhanh', N'	USB Type-C ; MicroSD, hỗ trợ tối đa 2 TB ; 	Mở khóa bằng vân tay ; Mở khóa bằng khuôn mặt ; microphone chuyên dụng chống ồn', N'zen5zCT1.jpg                                                                                        ', N'zen5zCT2.jpg                                                                                        ', N'zen5zCT3.jpg                                                                                        ')
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_DIENTHOAI] FOREIGN KEY([MADT_BL])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_DIENTHOAI]
GO
ALTER TABLE [dbo].[DIENTHOAI]  WITH CHECK ADD  CONSTRAINT [FK_DIENTHOAI_HANGDT] FOREIGN KEY([HANG_DT])
REFERENCES [dbo].[HANGDT] ([MA_HDT])
GO
ALTER TABLE [dbo].[DIENTHOAI] CHECK CONSTRAINT [FK_DIENTHOAI_HANGDT]
GO
ALTER TABLE [dbo].[DONGIA]  WITH CHECK ADD  CONSTRAINT [FK_DONGIA_DIENTHOAI] FOREIGN KEY([MADT_DG])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[DONGIA] CHECK CONSTRAINT [FK_DONGIA_DIENTHOAI]
GO
ALTER TABLE [dbo].[THONGSOKYTHUAT]  WITH CHECK ADD  CONSTRAINT [FK_THONGSOKYTHUAT_DIENTHOAI] FOREIGN KEY([MADT_TSKT])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[THONGSOKYTHUAT] CHECK CONSTRAINT [FK_THONGSOKYTHUAT_DIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[SP_Comment]    Script Date: 26-Jul-18 8:13:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Comment]
@maDT nvarchar(50),
@mail nvarchar(50),
@ten nvarchar(50),
@cmt nvarchar(500)
AS
BEGIN
	declare @id int
	select @id = ( select top 1 ID_BL from BINHLUAN order by ID_BL DESC ) from BINHLUAN
	
	insert into BINHLUAN (ID_BL , MADT_BL, EMAIL_SDT_BL , TENKH_BL , CMT_BL)
	values (@id+1 , @maDT , @mail , @ten , @cmt)
END
GO
USE [master]
GO
ALTER DATABASE [DBTTTN] SET  READ_WRITE 
GO
