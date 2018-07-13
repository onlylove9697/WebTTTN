USE [master]
GO
/****** Object:  Database [DBTTTN]    Script Date: 26-Apr-18 5:26:52 PM ******/
CREATE DATABASE [DBTTTN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBTTTN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DBTTTN.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBTTTN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DBTTTN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [DBTTTN] SET AUTO_CREATE_STATISTICS ON 
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
EXEC sys.sp_db_vardecimal_storage_format N'DBTTTN', N'ON'
GO
USE [DBTTTN]
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[MADT_BL] [char](10) NOT NULL,
	[EMAIL_SDT_BL] [char](50) NULL,
	[TENKH_BL] [char](50) NULL,
	[CMT_BL] [char](300) NULL,
 CONSTRAINT [PK_BINHLUAN] PRIMARY KEY CLUSTERED 
(
	[MADT_BL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIENTHOAI]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIENTHOAI](
	[MA_DT] [char](10) NOT NULL,
	[TEN_DT] [char](20) NULL,
	[HANG_DT] [char](10) NULL,
	[HINHSP_DT] [char](100) NULL,
 CONSTRAINT [PK_DIENTHOAI] PRIMARY KEY CLUSTERED 
(
	[MA_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONGIA]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONGIA](
	[MADT_DG] [char](10) NOT NULL,
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANGDT]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAMNOIBAT]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAMNOIBAT](
	[MADT_SPNB] [char](10) NOT NULL,
	[Ten_SPNB] [nvarchar](50) NULL,
	[Gia_SPNB] [money] NULL,
	[Hinh_SPNB] [nchar](100) NULL,
 CONSTRAINT [PK_SanPhamNoiBat] PRIMARY KEY CLUSTERED 
(
	[MADT_SPNB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGSOKYTHUAT]    Script Date: 26-Apr-18 5:26:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THONGSOKYTHUAT](
	[MADT_TSKT] [char](10) NOT NULL,
	[MANHINH_TSKT] [char](50) NULL,
	[HDH_TSKT] [char](30) NULL,
	[CAMERA_TSKT] [char](100) NULL,
	[CPU_TSKT] [nvarchar](50) NULL,
	[RAM_TSKT] [char](10) NULL,
	[ROM_TSKT] [char](10) NULL,
	[SIM_TSKT] [nvarchar](50) NULL,
	[PIN_TSKT] [char](10) NULL,
	[TINHNANGNOIBAT_TSKT] [char](300) NULL,
	[HINHCT1_TSKT] [nchar](100) NULL,
	[HINHCT2_TSKT] [nchar](100) NULL,
	[HINHCT3_TSKT] [nchar](100) NULL,
	[HINHCT4_TSKT] [nchar](100) NULL,
 CONSTRAINT [PK_THONGSOKYTHUAT] PRIMARY KEY CLUSTERED 
(
	[MADT_TSKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'HTCm8     ', N'HTC M8              ', N'H007      ', N'HTCm8.png                                                                                           ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'HTCuUtral ', N'HTC U Utral         ', N'H007      ', N'HTCuutral.png                                                                                       ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IP7       ', N'Iphone 7            ', N'H001      ', N'ip7.png                                                                                             ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IP7Plus   ', N'Iphone 7Plus        ', N'H001      ', N'ip7plus.png                                                                                         ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'IPX       ', N'Iphone X            ', N'H001      ', N'ipX.png                                                                                             ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'LGG3      ', N'LG G3               ', N'H005      ', N'LGG3.png                                                                                            ')
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
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'XiMiMax2  ', N'Xiaomi Mi Max 2     ', N'H006      ', N'xiaomimimax2.png                                                                                    ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'XiNote3   ', N'Xiaomi Note 3       ', N'H006      ', N'xiaomiminote3.png                                                                                   ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'Zen5lite  ', N'Asus Zenfone 5 lite ', N'H002      ', N'zen5lite.png                                                                                        ')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [HANG_DT], [HINHSP_DT]) VALUES (N'Zen5z     ', N'Asus Zenfone 5z     ', N'H002      ', N'zen5z.png                                                                                           ')
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'HTCm8     ', 12000000.0000, CAST(0x0000A8B500000000 AS DateTime), CAST(0x0000A8F200000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'HTCuUtral ', 18000000.0000, CAST(0x0000A8F200000000 AS DateTime), CAST(0x0000A94E00000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7       ', 18000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A8F200000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7Plus   ', 26000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A87A00000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IP7Plus   ', 23000000.0000, CAST(0x0000A87A00000000 AS DateTime), CAST(0x0000A8F200000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'IPX       ', 29000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A8D300000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'LGG3      ', 5000000.0000, CAST(0x0000A85D00000000 AS DateTime), CAST(0x0000A89600000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'LGv20     ', 8000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A92F00000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No2       ', 5000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No5       ', 7000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'No6       ', 9000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SonyM4    ', 2000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SonyZ5    ', 6500000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSNote8   ', 19000000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS8      ', 16990000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS9      ', 20990000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'SSS9Plus  ', 23590000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'XiMiMax2  ', 6590000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'XiNote3   ', 8490000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'Zen5lite  ', 5990000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[DONGIA] ([MADT_DG], [GIABAN_DG], [TUNGAY_DG], [DENNGAY_DG]) VALUES (N'Zen5z     ', 9990000.0000, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H001      ', N'Apple               ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H002      ', N'Asus                ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H003      ', N'Samsung             ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H004      ', N'Nokia               ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H005      ', N'LG                  ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H006      ', N'Xiaomi              ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H007      ', N'HTC                 ')
INSERT [dbo].[HANGDT] ([MA_HDT], [TEN_HDT]) VALUES (N'H008      ', N'Sony                ')
INSERT [dbo].[SANPHAMNOIBAT] ([MADT_SPNB], [Ten_SPNB], [Gia_SPNB], [Hinh_SPNB]) VALUES (N'IPX       ', N'Iphone X', 30000000.0000, NULL)
INSERT [dbo].[SANPHAMNOIBAT] ([MADT_SPNB], [Ten_SPNB], [Gia_SPNB], [Hinh_SPNB]) VALUES (N'SSS9Plus  ', N'SamSung S9phlus', 24000000.0000, NULL)
INSERT [dbo].[SANPHAMNOIBAT] ([MADT_SPNB], [Ten_SPNB], [Gia_SPNB], [Hinh_SPNB]) VALUES (N'XiMiMax2  ', N'Xiaomi Mi Max 2     ', 16000000.0000, NULL)
INSERT [dbo].[SANPHAMNOIBAT] ([MADT_SPNB], [Ten_SPNB], [Gia_SPNB], [Hinh_SPNB]) VALUES (N'Zen5z     ', N'Asus Zenfone 5z     ', 9700000.0000, NULL)
INSERT [dbo].[THONGSOKYTHUAT] ([MADT_TSKT], [MANHINH_TSKT], [HDH_TSKT], [CAMERA_TSKT], [CPU_TSKT], [RAM_TSKT], [ROM_TSKT], [SIM_TSKT], [PIN_TSKT], [TINHNANGNOIBAT_TSKT], [HINHCT1_TSKT], [HINHCT2_TSKT], [HINHCT3_TSKT], [HINHCT4_TSKT]) VALUES (N'IP7Plus   ', N'LED-backlit IPS LCD, 5.5", Retina HD              ', N'iOS 11                        ', N'2 camera sau 12 MP , 1 camera tru?c 7MP                                                             ', N'Apple A10 Fusion 4 nhân 64-bit', N'3 GB      ', N'32 Gb     ', N'
1 Nano SIM, Hỗ trợ 4G', N'2900 mAh  ', N'M? khóa b?ng vân tay , Kháng nu?c, kháng b?i
3D Touch                                                                                                                                                                                                                                                      ', NULL, NULL, NULL, NULL)
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
ALTER TABLE [dbo].[SANPHAMNOIBAT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamNoiBat_DIENTHOAI] FOREIGN KEY([MADT_SPNB])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[SANPHAMNOIBAT] CHECK CONSTRAINT [FK_SanPhamNoiBat_DIENTHOAI]
GO
ALTER TABLE [dbo].[THONGSOKYTHUAT]  WITH CHECK ADD  CONSTRAINT [FK_THONGSOKYTHUAT_DIENTHOAI] FOREIGN KEY([MADT_TSKT])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[THONGSOKYTHUAT] CHECK CONSTRAINT [FK_THONGSOKYTHUAT_DIENTHOAI]
GO
USE [master]
GO
ALTER DATABASE [DBTTTN] SET  READ_WRITE 
GO
