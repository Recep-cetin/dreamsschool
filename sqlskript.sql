USE [master]
GO
/****** Object:  Database [hayalerim]    Script Date: 27.01.2022 17:38:27 ******/
CREATE DATABASE [hayalerim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hayalerim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\hayalerim.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hayalerim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\hayalerim_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [hayalerim] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hayalerim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hayalerim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hayalerim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hayalerim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hayalerim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hayalerim] SET ARITHABORT OFF 
GO
ALTER DATABASE [hayalerim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hayalerim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hayalerim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hayalerim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hayalerim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hayalerim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hayalerim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hayalerim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hayalerim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hayalerim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hayalerim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hayalerim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hayalerim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hayalerim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hayalerim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hayalerim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hayalerim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hayalerim] SET RECOVERY FULL 
GO
ALTER DATABASE [hayalerim] SET  MULTI_USER 
GO
ALTER DATABASE [hayalerim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hayalerim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hayalerim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hayalerim] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [hayalerim] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'hayalerim', N'ON'
GO
USE [hayalerim]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[sehiradi] [nvarchar](255) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__iller__3213E83F665ABFDA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[karakter]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[karakter](
	[karakter_id] [int] IDENTITY(1,1) NOT NULL,
	[karakter] [nchar](3) NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_karakter] PRIMARY KEY CLUSTERED 
(
	[karakter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meslek]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meslek](
	[mslkKyt_id] [int] IDENTITY(1,1) NOT NULL,
	[meslek] [int] NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_Meslek] PRIMARY KEY CLUSTERED 
(
	[mslkKyt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sayfalar]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sayfalar](
	[sayfa_id] [int] IDENTITY(1,1) NOT NULL,
	[sayfa_basligi] [nvarchar](50) NULL,
	[icerik] [ntext] NULL,
	[sıra] [int] NULL,
	[silindi] [bit] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_sayfalar] PRIMARY KEY CLUSTERED 
(
	[sayfa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[uye_sınav]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uye_sınav](
	[sinav_id] [int] IDENTITY(1,1) NOT NULL,
	[turce] [nvarchar](5) NULL,
	[matamatik] [nvarchar](5) NULL,
	[fen] [nvarchar](5) NULL,
	[sosyal] [nvarchar](5) NULL,
	[toplam] [nchar](10) NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_uye_sınav] PRIMARY KEY CLUSTERED 
(
	[sinav_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[uyeler]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uyeler](
	[uye_id] [int] IDENTITY(1,1) NOT NULL,
	[uye_adi] [nvarchar](20) NULL,
	[uye_soyadi] [nvarchar](20) NULL,
	[uye_dogum_trh] [datetime2](7) NULL,
	[uye_sınıf] [nchar](10) NULL,
	[uye_il] [nvarchar](20) NULL,
	[uye_cnsyt] [nvarchar](20) NULL,
	[uye_ePost] [nvarchar](20) NULL,
	[parola] [int] NULL,
	[silindi] [bit] NULL,
	[aktif] [bit] NULL,
	[yetki] [int] NULL,
 CONSTRAINT [PK_uyeler] PRIMARY KEY CLUSTERED 
(
	[uye_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yonetici]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yonetici](
	[yonetici_id] [int] IDENTITY(1,1) NOT NULL,
	[yonetici_ePsot] [nvarchar](50) NULL,
	[yonetici_adi] [nvarchar](50) NULL,
	[yonetici_soyadi] [nvarchar](50) NULL,
	[aktif] [bit] NULL,
	[yetki] [int] NULL,
	[parola] [nvarchar](50) NULL,
 CONSTRAINT [PK_yonetici] PRIMARY KEY CLUSTERED 
(
	[yonetici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yorumlar]    Script Date: 27.01.2022 17:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yorumlar](
	[yorum_id] [int] IDENTITY(1,1) NOT NULL,
	[yorum] [nvarchar](510) NULL,
	[onaylandi] [bit] NULL,
	[yorum_tarihi] [datetime] NULL,
	[uye_id] [int] NULL,
	[IP_adresi] [varchar](40) NULL,
 CONSTRAINT [PK_yorumlar] PRIMARY KEY CLUSTERED 
(
	[yorum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [hayalerim] SET  READ_WRITE 
GO
