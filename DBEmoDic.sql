USE [master]
GO
/****** Object:  Database [Emo_Dic]    Script Date: 26-Jul-18 8:15:03 PM ******/
CREATE DATABASE [Emo_Dic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Emo_Dic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Emo_Dic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Emo_Dic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Emo_Dic_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Emo_Dic] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Emo_Dic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Emo_Dic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Emo_Dic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Emo_Dic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Emo_Dic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Emo_Dic] SET ARITHABORT OFF 
GO
ALTER DATABASE [Emo_Dic] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Emo_Dic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Emo_Dic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Emo_Dic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Emo_Dic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Emo_Dic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Emo_Dic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Emo_Dic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Emo_Dic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Emo_Dic] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Emo_Dic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Emo_Dic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Emo_Dic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Emo_Dic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Emo_Dic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Emo_Dic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Emo_Dic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Emo_Dic] SET RECOVERY FULL 
GO
ALTER DATABASE [Emo_Dic] SET  MULTI_USER 
GO
ALTER DATABASE [Emo_Dic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Emo_Dic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Emo_Dic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Emo_Dic] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Emo_Dic] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Emo_Dic', N'ON'
GO
ALTER DATABASE [Emo_Dic] SET QUERY_STORE = OFF
GO
USE [Emo_Dic]
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
USE [Emo_Dic]
GO
/****** Object:  Table [dbo].[KhiaCanh]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhiaCanh](
	[id] [int] NOT NULL,
	[KhiaCanh] [nvarchar](200) NULL,
 CONSTRAINT [PK_KhiaCanh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrongSo]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrongSo](
	[idTuCamXuc] [int] NOT NULL,
	[idKhiaCanh] [int] NOT NULL,
	[TrongSo] [float] NOT NULL,
 CONSTRAINT [PK_TrongSo] PRIMARY KEY CLUSTERED 
(
	[idTuCamXuc] ASC,
	[idKhiaCanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuCamXuc]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuCamXuc](
	[id] [int] NOT NULL,
	[HatGiong] [bit] NULL,
	[TuCamXuc] [nvarchar](200) NULL,
 CONSTRAINT [PK_TuCamXuc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (1, N'Màn Hình')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (2, N'Hệ Điều Hành')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (3, N'Camera')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (4, N'CPU')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (5, N'Ram')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (6, N'Rom')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (7, N'Sim')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (8, N'Pin')
INSERT [dbo].[KhiaCanh] ([id], [KhiaCanh]) VALUES (9, N'Tổng quan')
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (1, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (2, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (3, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (4, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (5, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (6, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (7, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (8, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (9, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (10, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (11, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (12, 1, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (13, 1, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (14, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (15, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (16, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (17, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (18, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (19, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (20, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (21, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (22, 4, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (22, 7, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (22, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (22, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (23, 4, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (23, 7, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (23, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (23, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (24, 4, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (24, 7, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (24, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (24, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (25, 4, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (25, 7, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (25, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (25, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (26, 4, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (26, 7, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (26, 8, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (26, 9, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (27, 4, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (27, 7, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (27, 8, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (27, 9, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (28, 4, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (28, 7, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (28, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (28, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (29, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (30, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (31, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (32, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (33, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (34, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (35, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (36, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (36, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (37, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (37, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (38, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (38, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (39, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (39, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (40, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (40, 3, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (41, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (41, 3, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (42, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (42, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (43, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (43, 3, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (44, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (44, 3, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (45, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (45, 3, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (46, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (46, 3, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (47, 1, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (47, 3, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (48, 1, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (48, 3, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (49, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (49, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (50, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (50, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (51, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (51, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (52, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (52, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (53, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (53, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (54, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (54, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (55, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (55, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (56, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (56, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (57, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (57, 5, 3)
GO
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (57, 6, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (57, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (58, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (58, 5, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (58, 6, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (58, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (59, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (59, 5, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (59, 6, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (59, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (60, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (60, 5, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (60, 6, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (60, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (61, 2, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (61, 5, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (61, 6, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (61, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (62, 2, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (62, 5, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (62, 6, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (62, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (63, 2, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (63, 5, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (63, 6, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (63, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (64, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (64, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (65, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (65, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (66, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (66, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (67, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (67, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (68, 2, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (68, 8, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (69, 2, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (69, 8, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (70, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (70, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (71, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (72, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (73, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (74, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (75, 8, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (76, 8, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (77, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (78, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (79, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (80, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (81, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (82, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (83, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (84, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (85, 4, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (85, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (85, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (86, 4, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (86, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (86, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (87, 4, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (87, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (87, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (88, 4, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (88, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (88, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (89, 4, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (89, 7, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (89, 9, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (90, 4, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (90, 7, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (90, 9, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (91, 4, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (91, 7, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (91, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (92, 3, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (93, 3, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (94, 3, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (95, 3, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (96, 3, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (97, 3, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (98, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (99, 5, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (99, 6, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (99, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (100, 5, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (100, 6, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (100, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (101, 5, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (101, 6, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (101, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (102, 5, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (102, 6, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (102, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (103, 5, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (103, 6, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (103, 8, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (104, 5, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (104, 6, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (104, 8, -1.5)
GO
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (105, 5, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (105, 6, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (105, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (106, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (107, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (108, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (109, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (110, 3, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (111, 3, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (112, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (113, 5, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (113, 6, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (114, 5, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (114, 6, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (115, 5, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (115, 6, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (116, 5, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (116, 6, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (117, 5, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (117, 6, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (118, 5, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (118, 6, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (119, 5, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (119, 6, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (120, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (120, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (121, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (121, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (122, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (122, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (123, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (123, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (124, 7, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (124, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (125, 7, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (125, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (126, 7, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (126, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (127, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (128, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (129, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (130, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (131, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (132, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (133, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (134, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (134, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (135, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (135, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (136, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (136, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (137, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (137, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (138, 2, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (138, 9, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (139, 2, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (139, 9, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (140, 2, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (140, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (141, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (141, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (142, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (142, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (143, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (143, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (144, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (144, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (145, 2, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (145, 9, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (146, 2, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (146, 9, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (147, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (147, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (148, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (149, 9, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (150, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (151, 9, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (152, 9, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (153, 9, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (154, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (155, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (156, 2, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (157, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (158, 2, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (159, 2, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (160, 2, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (161, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (162, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (163, 7, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (164, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (165, 7, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (166, 7, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (167, 7, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (168, 7, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (169, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (170, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (171, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (172, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (173, 9, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (174, 9, 1.5)
GO
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (175, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (176, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (177, 8, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (178, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (179, 8, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (180, 8, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (181, 8, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (182, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (183, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (184, 2, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (185, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (186, 2, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (187, 2, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (188, 2, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (189, 2, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (190, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (191, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (192, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (192, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (193, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (194, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (194, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (195, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (196, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (196, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (197, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (197, 5, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (197, 6, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (197, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (198, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (198, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (199, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (200, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (201, 7, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (201, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (202, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (203, 6, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (204, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (205, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (206, 4, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (206, 7, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (206, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (207, 7, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (208, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (209, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (209, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (210, 2, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (210, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (211, 2, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (212, 2, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (213, 9, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (214, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (215, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (216, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (217, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (218, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (219, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (220, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (221, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (222, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (223, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (224, 1, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (225, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (226, 1, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (227, 1, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (228, 1, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (229, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (230, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (231, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (232, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (233, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (234, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (235, 1, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (236, 1, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (237, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (238, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (239, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (240, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (241, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (242, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (243, 1, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (244, 1, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (245, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (246, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (247, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (248, 1, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (249, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (250, 1, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (251, 1, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (252, 1, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (253, 1, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (254, 1, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (255, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (255, 5, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (255, 6, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (255, 8, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (256, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (256, 5, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (256, 6, -3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (256, 8, -3)
GO
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (257, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (257, 5, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (257, 6, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (257, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (258, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (258, 5, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (258, 6, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (258, 8, -2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (259, 3, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (259, 5, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (259, 6, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (259, 8, -2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (260, 3, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (260, 5, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (260, 6, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (260, 8, -1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (261, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (261, 5, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (261, 6, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (261, 8, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (262, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (262, 5, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (262, 6, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (262, 8, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (263, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (264, 3, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (265, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (266, 3, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (267, 3, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (268, 3, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (269, 3, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (270, 3, 1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (271, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (272, 9, 3)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (273, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (274, 9, 2.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (275, 9, 2)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (276, 9, 1.5)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (277, 9, -1)
INSERT [dbo].[TrongSo] ([idTuCamXuc], [idKhiaCanh], [TrongSo]) VALUES (278, 9, 1)
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (1, 0, N'cực kì đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (2, 0, N'đẹp cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (3, 0, N'rất đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (4, 0, N'khá đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (5, 1, N'đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (6, 0, N'cực đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (7, 1, N'xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (8, 0, N'cực kì xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (9, 0, N'xấu cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (10, 0, N'cực xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (11, 0, N'xấu cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (12, 0, N'rất xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (13, 0, N'khá xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (14, 1, N'khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (15, 0, N'cực kì khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (16, 0, N'khủng cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (17, 0, N'cực khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (18, 0, N'khủng cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (19, 0, N'rất khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (20, 0, N'khá khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (21, 0, N'đẹp cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (22, 0, N'cực kì yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (23, 0, N'yếu cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (24, 0, N'cực yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (25, 0, N'yếu cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (26, 0, N'rất yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (27, 0, N'khá yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (28, 1, N'yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (29, 0, N'cực kì mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (30, 0, N'mượt cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (31, 0, N'cực mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (32, 0, N'mượt cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (33, 0, N'rất mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (34, 0, N'khá mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (35, 1, N'mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (36, 0, N'cực kì nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (37, 0, N'nét cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (38, 0, N'cực nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (39, 0, N'nét cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (40, 0, N'rất nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (41, 0, N'khá nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (42, 1, N'nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (43, 0, N'cực kì mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (44, 0, N'mờ cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (45, 0, N'cực mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (46, 0, N'mờ cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (47, 0, N'rất mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (48, 0, N'khá mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (49, 1, N'mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (50, 0, N'cực kì tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (51, 0, N'tuyệt vời cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (52, 0, N'cực tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (53, 0, N'tuyệt vời cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (54, 0, N'rất tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (55, 0, N'khá tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (56, 1, N'tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (57, 0, N'cực kì cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (58, 0, N'cao cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (59, 0, N'cực cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (60, 0, N'cao cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (61, 0, N'rất cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (62, 0, N'khá cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (63, 1, N'cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (64, 0, N'cực kì thấp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (65, 0, N'thấp cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (66, 0, N'cực thấp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (67, 0, N'thấp cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (68, 0, N'rất thấp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (69, 0, N'khá thấp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (70, 1, N'thấp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (71, 0, N'cực kì kém')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (72, 0, N'kém cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (73, 0, N'cực kém')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (74, 0, N'kém cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (75, 0, N'rất kém')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (76, 0, N'khá kém')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (77, 1, N'kém')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (78, 0, N'cực kì đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (79, 0, N'đã cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (80, 0, N'cực đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (81, 0, N'đã cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (82, 0, N'rất đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (83, 0, N'khá đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (84, 1, N'đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (85, 0, N'cực kì mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (86, 0, N'mạnh cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (87, 0, N'cực mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (88, 0, N'mạnh cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (89, 0, N'rất mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (90, 0, N'khá mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (91, 0, N'mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (92, 0, N'cực kì nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (93, 0, N'nhòe cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (94, 0, N'cực nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (95, 0, N'nhòe cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (96, 0, N'rất nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (97, 0, N'khá nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (98, 0, N'nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (99, 0, N'cực kì ít')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (100, 0, N'ít cực kì')
GO
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (101, 0, N'cực ít')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (102, 0, N'ít cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (103, 0, N'rất ít')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (104, 0, N'khá ít')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (105, 0, N'ít')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (106, 0, N'cực kì chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (107, 0, N'chân thật cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (108, 0, N'cực chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (109, 0, N'chân thật cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (110, 0, N'rất chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (111, 0, N'khá chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (112, 0, N'chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (113, 0, N'cực kì lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (114, 0, N'lớn cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (115, 0, N'cực lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (116, 0, N'lớn cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (117, 0, N'rất lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (118, 0, N'khá lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (119, 0, N'lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (120, 0, N'cực kì ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (121, 0, N'ổn cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (122, 0, N'cực ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (123, 0, N'ổn cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (124, 0, N'rất ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (125, 0, N'khá ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (126, 0, N'ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (127, 0, N'cực kì trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (128, 0, N'trâu cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (129, 0, N'cực trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (130, 0, N'trâu cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (131, 0, N'rất trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (132, 0, N'khá trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (133, 0, N'trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (134, 0, N'cực kì tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (135, 0, N'tốt cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (136, 0, N'cực tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (137, 0, N'tốt cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (138, 0, N'rất tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (139, 0, N'khá tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (140, 0, N'tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (141, 0, N'cực kì lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (142, 0, N'lag cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (143, 0, N'cực lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (144, 0, N'lag cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (145, 0, N'rất lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (146, 0, N'khá lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (147, 0, N'lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (148, 0, N'cực kì nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (149, 0, N'nóng cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (150, 0, N'cực nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (151, 0, N'nóng cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (152, 0, N'rất nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (153, 0, N'khá nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (154, 0, N'nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (155, 0, N'cực kì lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (156, 0, N'lắc cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (157, 0, N'cực lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (158, 0, N'lắc cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (159, 0, N'rất lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (160, 0, N'khá lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (161, 0, N'lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (162, 0, N'cực kì ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (163, 0, N'ổn định cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (164, 0, N'cực ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (165, 0, N'ổn định cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (166, 0, N'rất ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (167, 0, N'khá ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (168, 0, N'ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (169, 0, N'cực kì sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (170, 0, N'sang chảnh cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (171, 0, N'cực sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (172, 0, N'sang chảnh cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (173, 0, N'rất sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (174, 0, N'khá sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (175, 0, N'sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (176, 0, N'cực kì nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (177, 0, N'nhanh cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (178, 0, N'cực nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (179, 0, N'nhanh cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (180, 0, N'rất nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (181, 0, N'khá nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (182, 0, N'nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (183, 0, N'cực kì tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (184, 0, N'tối ưu cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (185, 0, N'cực tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (186, 0, N'tối ưu cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (187, 0, N'rất tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (188, 0, N'khá tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (189, 0, N'tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (190, 0, N'không đẹp')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (191, 0, N'không mượt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (192, 0, N'không nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (193, 0, N'không xấu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (194, 0, N'không mờ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (195, 0, N'không khủng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (196, 0, N'không yếu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (197, 0, N'không cao')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (198, 0, N'không tuyệt vời')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (199, 0, N'không đã')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (200, 0, N'không thấp')
GO
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (201, 0, N'không ổn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (202, 0, N'không trâu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (203, 0, N'không lớn')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (204, 0, N'không nhòe')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (205, 0, N'không chân thật')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (206, 0, N'không mạnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (207, 0, N'không ổn định')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (208, 0, N'không nhanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (209, 0, N'không tốt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (210, 0, N'không lag')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (211, 0, N'không lắc')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (212, 0, N'không tối ưu')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (213, 0, N'không nóng')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (214, 0, N'không sang chảnh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (215, 0, N'cực kì bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (216, 0, N'bắt mắt cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (217, 0, N'cực bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (218, 0, N'bắt mắt cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (219, 0, N'rất bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (220, 0, N'khá bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (221, 0, N'không bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (222, 0, N'bắt mắt')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (223, 0, N'cực kì rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (224, 0, N'rõ cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (225, 0, N'cực rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (226, 0, N'rõ cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (227, 0, N'rất rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (228, 0, N'khá rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (229, 0, N'không rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (230, 0, N'rõ')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (231, 0, N'cực kì ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (232, 0, N'ám tím cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (233, 0, N'cực ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (234, 0, N'ám tím cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (235, 0, N'rất ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (236, 0, N'khá ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (237, 0, N'không ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (238, 0, N'ám tím')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (239, 0, N'cực kì ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (240, 0, N'ám xanh cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (241, 0, N'cực ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (242, 0, N'ám xanh cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (243, 0, N'rất ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (244, 0, N'khá ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (245, 0, N'không ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (246, 0, N'ám xanh')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (247, 0, N'cực kì ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (248, 0, N'ám cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (249, 0, N'cực ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (250, 0, N'ám cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (251, 0, N'rất ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (252, 0, N'khá ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (253, 0, N'không ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (254, 0, N'ám')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (255, 0, N'cực kì ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (256, 0, N'ảo cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (257, 0, N'cực ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (258, 0, N'ảo cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (259, 0, N'rất ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (260, 0, N'khá ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (261, 0, N'không ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (262, 0, N'ảo')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (263, 0, N'cực kì sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (264, 0, N'sắc nét cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (265, 0, N'cực sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (266, 0, N'sắc nét cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (267, 0, N'rất sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (268, 0, N'khá sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (269, 0, N'không sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (270, 0, N'sắc nét')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (271, 0, N'cực kì đáng mua')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (272, 0, N'đáng mua cực kì')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (273, 0, N'cực đáng mua')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (274, 0, N'đáng mua cực')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (275, 0, N'rất đáng mua')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (276, 0, N'khá đáng mua')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (277, 0, N'không đáng mua')
INSERT [dbo].[TuCamXuc] ([id], [HatGiong], [TuCamXuc]) VALUES (278, 0, N'đáng mua')
ALTER TABLE [dbo].[TrongSo]  WITH CHECK ADD  CONSTRAINT [FK_TrongSo_KhiaCanh] FOREIGN KEY([idKhiaCanh])
REFERENCES [dbo].[KhiaCanh] ([id])
GO
ALTER TABLE [dbo].[TrongSo] CHECK CONSTRAINT [FK_TrongSo_KhiaCanh]
GO
ALTER TABLE [dbo].[TrongSo]  WITH CHECK ADD  CONSTRAINT [FK_TrongSo_TuCamXuc] FOREIGN KEY([idTuCamXuc])
REFERENCES [dbo].[TuCamXuc] ([id])
GO
ALTER TABLE [dbo].[TrongSo] CHECK CONSTRAINT [FK_TrongSo_TuCamXuc]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddTuCamXuc]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_AddTuCamXuc]
@TuHatGiong nvarchar(200),
@TuKhiaCanh nvarchar(200),
@TrongSo float
AS
BEGIN
	declare @idKhiaCanh int
	declare @idTuCamXuc int
	declare @res int

	IF EXISTS (select * from KhiaCanh where KhiaCanh.KhiaCanh = @TuKhiaCanh)
	BEGIN
		set @idKhiaCanh = (select KhiaCanh.id from KhiaCanh where KhiaCanh.KhiaCanh = @TuKhiaCanh)

		IF EXISTS (select * from TuCamXuc where TuCamXuc.TuCamXuc = @TuHatGiong)
		BEGIN
			set @idTuCamXuc = (select TuCamXuc.id from TuCamXuc where TuCamXuc.TuCamXuc = @TuHatGiong)

			IF EXISTS (select * from TrongSo where TrongSo.idTuCamXuc = @idTuCamXuc and TrongSo.idKhiaCanh = @idKhiaCanh)
			BEGIN
				set @res = 0
			END
			ELSE
			BEGIN
				insert into TrongSo(idKhiaCanh , idTuCamXuc , TrongSo)
				values (@idKhiaCanh , @idTuCamXuc , @TrongSo)
				set @res = 1
			END
		END
		ELSE
		BEGIN
			set @idTuCamXuc = (select top 1 TuCamXuc.id from TuCamXuc ORDER BY TuCamXuc.id DESC)
			set @idTuCamXuc += 1

			insert into TuCamXuc(id,HatGiong,TuCamXuc)
			values(@idTuCamXuc,0,@TuHatGiong)

			insert into TrongSo(idKhiaCanh , idTuCamXuc , TrongSo)
			values (@idKhiaCanh , @idTuCamXuc , @TrongSo)
			
			
			set @res = 1

		END
	END
	ELSE
	BEGIN
		set @res = 0
	END
	RETURN @res
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTrongSo]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetTrongSo]
@TuKhiaCanh nvarchar(200),
@TuCamXuc nvarchar(200)
AS
BEGIN
	declare @idTukhiaCanh int
	declare @idTuCamXuc int
	declare @TrongSo float

	IF NOT EXISTS (select * from KhiaCanh where KhiaCanh.KhiaCanh = @TuKhiaCanh)
		BEGIN
			set @TrongSo = 0.0
		END
	ELSE
		BEGIN
			set @idTukhiaCanh = (select KhiaCanh.id from KhiaCanh where KhiaCanh.KhiaCanh = @TuKhiaCanh)

			IF NOT EXISTS (select * from TuCamXuc where TuCamXuc.TuCamXuc = @TuCamXuc )
				BEGIN
					set @TrongSo = 0.0
				END
			ELSE
				BEGIN
					set @idTuCamXuc = (select TuCamXuc.id from TuCamXuc where TuCamXuc.TuCamXuc = @TuCamXuc)

					set @TrongSo =	(	select TrongSo.TrongSo 
										from TrongSo 
											inner join KhiaCanh on TrongSo.idKhiaCanh = KhiaCanh.id
											inner join TuCamXuc on TrongSo.idTuCamXuc = TuCamXuc.id
										where 
											KhiaCanh.id = @idTukhiaCanh
											and
											TuCamXuc.id = @idTuCamXuc
									)
				END
		END
		set @TrongSo*=10
		RETURN @TrongSo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TimTu]    Script Date: 26-Jul-18 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimTu]
@InputTu nvarchar(200)
AS
BEGIN
	declare @ret int

	IF EXISTS (select * from TuCamXuc where TuCamXuc.TuCamXuc = @InputTu )
			BEGIN
				set @ret = 1
			END
		ELSE
			BEGIN
				IF EXISTS (select * from KhiaCanh where KhiaCanh.KhiaCanh = @InputTu)
					BEGIN
						set @ret = 2
					END
				ELSE
					BEGIN
						set @ret = 0
					END
			END

		RETURN @ret
	
END
GO
USE [master]
GO
ALTER DATABASE [Emo_Dic] SET  READ_WRITE 
GO
