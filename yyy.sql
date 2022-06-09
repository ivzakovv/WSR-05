USE [master]
GO
/****** Object:  Database [DEMO2020]    Script Date: 09.06.2022 10:07:59 ******/
CREATE DATABASE [DEMO2020]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEMO2020', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DEMO2020.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DEMO2020_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DEMO2020_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DEMO2020] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEMO2020].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEMO2020] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEMO2020] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEMO2020] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEMO2020] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEMO2020] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEMO2020] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEMO2020] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEMO2020] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEMO2020] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEMO2020] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEMO2020] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEMO2020] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEMO2020] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEMO2020] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEMO2020] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DEMO2020] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEMO2020] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEMO2020] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEMO2020] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEMO2020] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEMO2020] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEMO2020] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEMO2020] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DEMO2020] SET  MULTI_USER 
GO
ALTER DATABASE [DEMO2020] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEMO2020] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEMO2020] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEMO2020] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DEMO2020] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DEMO2020] SET QUERY_STORE = OFF
GO
USE [DEMO2020]
GO
/****** Object:  Table [dbo].[manufacturer_a_import]    Script Date: 09.06.2022 10:07:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturer_a_import](
	[Название производителя] [nvarchar](255) NULL,
	[Дата начала работы] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_a_import]    Script Date: 09.06.2022 10:07:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_a_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Наименование товара] [nvarchar](255) NOT NULL,
	[ Главное изображение] [nvarchar](255) NULL,
	[ Производитель] [nvarchar](255) NULL,
	[ Активен?] [nvarchar](255) NULL,
	[ Цена] [float] NULL,
 CONSTRAINT [PK_product_a_import_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsale_a_import]    Script Date: 09.06.2022 10:07:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsale_a_import](
	[id товара] [int] IDENTITY(1,1) NOT NULL,
	[Товар] [nvarchar](255) NULL,
	[Количество] [float] NULL,
	[Дата продажи] [datetime] NULL,
	[Время продажи] [datetime] NULL,
 CONSTRAINT [PK_productsale_a_import] PRIMARY KEY CLUSTERED 
(
	[id товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Profix', CAST(N'2017-10-02' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Pierburg', CAST(N'2017-01-10' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Honda', CAST(N'2016-06-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Benson', CAST(N'2015-04-09' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Mazda', CAST(N'2018-01-23' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Zekkert', CAST(N'2018-03-08' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Ferodo', CAST(N'2015-08-11' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Lemforder', CAST(N'2016-11-15' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Toyota', CAST(N'2016-06-03' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Automega', CAST(N'2016-07-01' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'MagnetiMarelli', CAST(N'2017-05-27' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Nissan', CAST(N'2015-01-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Airline', CAST(N'2016-03-26' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'BILSTEIN', CAST(N'2018-03-06' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Petro-Canada', CAST(N'2017-03-22' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Bendix', CAST(N'2015-04-25' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Mercedes', CAST(N'2016-03-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Mitsubishi', CAST(N'2017-04-23' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Motul', CAST(N'2018-01-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Shell', CAST(N'2016-11-14' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'LiquiMoly', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Mando', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'LUK', CAST(N'2015-12-02' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'76', CAST(N'2017-02-03' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Kayaba', CAST(N'2016-02-08' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Total', CAST(N'2015-03-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'ASHIKA', CAST(N'2018-06-13' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'VAG', CAST(N'2018-05-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'KingBearings', CAST(N'2016-09-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Castrol', CAST(N'2015-04-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Hyundai/Kia', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Opel', CAST(N'2015-03-04' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Idemitsu', CAST(N'2018-01-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Stels', CAST(N'2017-05-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'BOGE', CAST(N'2016-01-18' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Glaser', CAST(N'2015-12-29' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Goodyear', CAST(N'2015-12-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Suzuki', CAST(N'2017-05-18' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'ZIMMERMANN', CAST(N'2017-12-14' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Mobil', CAST(N'2016-10-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'OPTIMAL', CAST(N'2016-08-19' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'ZIC', CAST(N'2015-02-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Ford', CAST(N'2016-10-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'GeneralMotors', CAST(N'2016-10-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'KASHIYAMA', CAST(N'2015-10-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'ALСA', CAST(N'2016-10-01' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Airtex', CAST(N'2015-10-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Elf', CAST(N'2016-10-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'BOSCH', CAST(N'2017-06-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([Название производителя], [Дата начала работы]) VALUES (N'Lukoil', CAST(N'2017-12-19' AS Date))
GO
SET IDENTITY_INSERT [dbo].[product_a_import] ON 

INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (1, N'Жилет светоотражающий взрослый ARW-AV-02', N' Товары автосервиса/D4D0CE67.jpg', N' Airline', N' да', 150)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (2, N'Кредитница, Кожа B6 6 95 1349', N' Товары автосервиса/63C09E91.jpg', N' Mercedes', N' да', 6770)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (3, N'Моторное масло 76 08880-803ENGINE OIL-GO', N' Товары автосервиса/0070C563.jpg', N' Toyota', N' да', 1630)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (4, N'Моторное масло 76 A000989PKW Motorenol0213BLER', N' Товары автосервиса/2E00E06C.jpg', N' Mercedes', N' да', 2510)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (5, N'Моторное масло 76 Top Tec 420061', N' Товары автосервиса/03D096CB.jpg', N' Liqui Moly', N' да', 3440)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (6, N'Моторное масло 8100 X-CESS 102870', N' Товары автосервиса/E9308929.jpg', N' Motul', N' да', 3190)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (7, N'Моторное масло Dexos 2 19 42 000', N' Товары автосервиса/2390848B.jpg', N' Opel', N' да', 1410)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (8, N'Моторное масло Dexos 2 19 42 002', N' Товары автосервиса/23F0848B.jpg', N' Opel', N' да', 1300)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (9, N'Моторное масло Dexos 2 19 42 003', N' Товары автосервиса/8430842A.jpg', N' Opel', N' да', 1490)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (10, N'Моторное масло Dexos 2 93165554', N' Товары автосервиса/45008C52.jpg', N' General Motors', N' да', 1380)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (11, N'Моторное масло Dexos 2 93165556', N' Товары автосервиса/43E08C52.jpg', N' General Motors', N' да', 1340)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (12, N'Моторное масло Dexos 2 93165557', N' Товары автосервиса/45908C52.jpg', N' General Motors', N' да', 1500)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (13, N'Моторное масло Dexos 2 95599405', N' Товары автосервиса/AD00B713.jpg', N' General Motors', N' да', 1410)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (14, N'Моторное масло Ecstar F9000 99M00-22R02-004', N' Товары автосервиса/21B0E533.jpg', N' Suzuki', N' да', 2330)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (15, N'Моторное масло EDGE LL Titanium FST 15669A', N' Товары автосервиса/8BC0C1A9.jpg', N' Castrol', N' да', 3000)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (16, N'Моторное масло EDGE Professional LL III Titanium FST 157AD6', N' Товары автосервиса/96E0C1E7.jpg', N' Castrol', N' да', 1760)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (17, N'Моторное масло ENGINE OIL 08880-80365-GO', N' Товары автосервиса/CC10C869.jpg', N' Toyota', N' да', 3580)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (18, N'Моторное масло ENGINE OIL 08880-80375-GO', N' Товары автосервиса/CC40C869.jpg', N' Toyota', N' нет', 2710)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (19, N'Моторное масло ENGINE OIL MZ 320753', N' Товары автосервиса/5BB0C351.jpg', N' Mitsubishi', N' нет', 1590)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (20, N'Моторное масло ENGINE OIL MZ 320754', N' Товары автосервиса/3B70C57C.jpg', N' Mitsubishi', N' да', 2140)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (21, N'Моторное масло ENGINE OIL MZ 320756', N' Товары автосервиса/5BE0C351.jpg', N' Mitsubishi', N' нет', 1600)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (22, N'Моторное масло ENGINE OIL MZ 320757', N' Товары автосервиса/0D30C4EE.jpg', N' Mitsubishi', N' да', 2210)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (23, N'Моторное масло Evolution 900 SXR 10160501', N' Товары автосервиса/BD80E8D5.jpg', N' Elf', N' да', 1750)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (24, N'Моторное масло Evolution 900 SXR 194839', N' Товары автосервиса/F8E0B138.jpg', N' Elf', N' нет', 2340)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (25, N'Моторное масло Evolution 900 SXR 194877', N' Товары автосервиса/E3A0B18A.jpg', N' Elf', N' да', 2470)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (26, N'Моторное масло Evolution 900 SXR 194878', N' Товары автосервиса/E320BB7C.jpg', N' Elf', N' да', 2010)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (27, N'Моторное масло Formula F 15595E', N' Товары автосервиса/5250C855.jpg', N' Ford', N' нет', 1750)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (28, N'Моторное масло Formula F 155D3A', N' Товары автосервиса/39D0C188.jpg', N' Ford', N' да', 1830)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (29, N'Моторное масло Formula F Fuel Economy HC 155D4B', N' Товары автосервиса/39A0C188.jpg', N' Ford', N' да', 1450)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (30, N'Моторное масло Fuel Economy 08880-80845', N' Товары автосервиса/23106A35.jpg', N' Toyota', N' да', 2560)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (31, N'Моторное масло Gasoline Fully- Synthetic 30021326-746', N' Товары автосервиса/27B0C883.jpg', N' Idemitsu', N' да', 1650)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (32, N'Моторное масло Genesis Armortech 1539424', N' Товары автосервиса/B0F0CB59.jpg', N' Lukoil', N' да', 1710)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (33, N'Моторное масло Genesis Armortech 3148675', N' Товары автосервиса/C9C0F036.jpg', N' Lukoil', N' нет', 1660)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (34, N'Моторное масло Genuine A000989790211BIFR', N' Товары автосервиса/2E30E06C.jpg', N' Mercedes', N' нет', 1530)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (35, N'Моторное масло Genuine A000989790213BIFR', N' Товары автосервиса/2E60E06C.jpg', N' Mercedes', N' да', 2390)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (36, N'Моторное масло Helix HX8 A5/B5 550046777', N' Товары автосервиса/F160E078.jpg', N' Shell', N' да', 1530)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (37, N'Моторное масло Helix Ultra 550046361', N' Товары автосервиса/F310E078.jpg', N' Shell', N' да', 2120)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (38, N'Моторное масло Helix Ultra 550046367', N' Товары автосервиса/F2E0E078.jpg', N' Shell', N' нет', 1650)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (39, N'Моторное масло Helix Ultra 550046387', N' Товары автосервиса/F2B0E078.jpg', N' Shell', N' нет', 2160)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (40, N'Моторное масло Helix Ultra Pro AM-L 550046353', N' Товары автосервиса/3DF0E4BC.jpg', N' Shell', N' да', 2110)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (41, N'Моторное масло Leichtlauf Special AA 7516', N' Товары автосервиса/47E07CB5.jpg', N' Liqui Moly', N' да', 2360)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (42, N'Моторное масло Longlife III G 052 195 M2', N' Товары автосервиса/E5507A37.jpg', N' VAG', N' да', 1910)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (43, N'Моторное масло Longlife III G 052 195 M4', N' Товары автосервиса/D9605006.jpg', N' VAG', N' да', 4100)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (44, N'Моторное масло Magnatec A3/B4 156E9D', N' Товары автосервиса/9290C1E7.jpg', N' Castrol', N' да', 1610)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (45, N'Моторное масло Magnatec A3/B4 156E9E', N' Товары автосервиса/92C0C1E7.jpg', N' Castrol', N' да', 2130)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (46, N'Моторное масло Magnatec A5 15583D', N' Товары автосервиса/9380C1E7.jpg', N' Castrol', N' да', 2220)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (47, N'Моторное масло Mobil 1 ESP 154279', N' Товары автосервиса/F460E078.jpg', N' Mobil', N' да', 1860)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (48, N'Моторное масло Mobil 1 ESP 154285', N' Товары автосервиса/F490E078.jpg', N' Mobil', N' да', 2890)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (49, N'Моторное масло Mobil 1 ESP Formula 152621', N' Товары автосервиса/DC70BEC3.jpg', N' Mobil', N' нет', 2920)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (50, N'Моторное масло Mobil 1 FS 153692', N' Товары автосервиса/6080DCD5.jpg', N' Mobil', N' да', 3020)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (51, N'Моторное масло Molygen New Generation 9042', N' Товары автосервиса/0D60A8A4.jpg', N' Liqui Moly', N' да', 2510)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (52, N'Моторное масло Molygen New Generation 9054', N' Товары автосервиса/0DF0A8A4.jpg', N' Liqui Moly', N' да', 2670)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (53, N'Моторное масло Motor Oil KE900-90032-R', N' Товары автосервиса/54B0795D.jpg', N' Nissan', N' да', 1450)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (54, N'Моторное масло Motor Oil KE900-90042', N' Товары автосервиса/90505D31.jpg', N' Nissan', N' да', 2020)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (55, N'Моторное масло Motor Oil KE900-90042-R', N' Товары автосервиса/8FE07916.jpg', N' Nissan', N' да', 2060)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (56, N'Моторное масло Optimal Synth 2293', N' Товары автосервиса/C310B9F3.jpg', N' Liqui Moly', N' да', 2520)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (57, N'Моторное масло Optimal Synth 3926', N' Товары автосервиса/EFC05011.jpg', N' Liqui Moly', N' да', 1880)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (58, N'Моторное масло Original oil Ultra 0530-05-TFE', N' Товары автосервиса/85C04040.jpg', N' Mazda', N' да', 2930)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (59, N'Моторное масло Original oil Ultra 8300-77-992', N' Товары автосервиса/EF80D790.jpg', N' Mazda', N' нет', 2770)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (60, N'Моторное масло Premium DPF Diesel 05200-00120', N' Товары автосервиса/2D709062.jpg', N' Hyundai/Kia', N' да', 1460)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (61, N'Моторное масло Premium DPF Diesel 05200-00620', N' Товары автосервиса/9B3075EB.jpg', N' Hyundai/Kia', N' да', 2470)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (62, N'Моторное масло Premium LF Gasoline 05100-00451', N' Товары автосервиса/2B609062.jpg', N' Hyundai/Kia', N' да', 1620)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (63, N'Моторное масло QUARTZ 9000 148597', N' Товары автосервиса/8F909ED7.jpg', N' Total', N' нет', 1700)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (64, N'Моторное масло QUARTZ 9000 ENERGY HKS 175392', N' Товары автосервиса/6DA0A012.jpg', N' Total', N' нет', 1530)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (65, N'Моторное масло QUARTZ 9000 ENERGY HKS 175393', N' Товары автосервиса/6DD0A012.jpg', N' Total', N' да', 2830)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (66, N'Моторное масло QUARTZ 9000 FUTURE NFC 10230501', N' Товары автосервиса/3970E753.jpg', N' Total', N' нет', 1650)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (67, N'Моторное масло QUARTZ 9000 FUTURE NFC 171839', N' Товары автосервиса/D2508F32.jpg', N' Total', N' да', 1560)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (68, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', N' Товары автосервиса/6CE0A012.jpg', N' Total', N' да', 2040)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (69, N'Моторное масло QUARTZ 9000 FUTURE NFC 183450', N' Товары автосервиса/FA90B138.jpg', N' Total', N' да', 1660)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (70, N'Моторное масло QUARTZ INEO ECS 151510', N' Товары автосервиса/8F609ED7.jpg', N' Total', N' да', 1920)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (71, N'Моторное масло QUARTZ INEO ECS 166252', N' Товары автосервиса/D0D08F32.jpg', N' Total', N' да', 1600)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (72, N'Моторное масло SN 08880-10705', N' Товары автосервиса/43909176.jpg', N' Toyota', N' да', 2200)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (73, N'Моторное масло SN 08880-10706', N' Товары автосервиса/43C09176.jpg', N' Toyota', N' да', 1640)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (74, N'Моторное масло SN/GF-5 SN5W30C', N' Товары автосервиса/5A30A7EE.jpg', N' Profix', N' да', 1550)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (75, N'Моторное масло Special C G 055 167 M4', N' Товары автосервиса/6730A31C.jpg', N' VAG', N' да', 4720)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (76, N'Моторное масло Special G G 052 502 M2', N' Товары автосервиса/E0D0E079.jpg', N' VAG', N' да', 1820)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (77, N'Моторное масло Special G G 052 502 M4', N' Товары автосервиса/E0A0E079.jpg', N' VAG', N' да', 3090)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (78, N'Моторное масло Special Tec LL 8055', N' Товары автосервиса/B590AA7B.jpg', N' Liqui Moly', N' нет', 2420)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (79, N'Моторное масло Super 3000 X1 152061', N' Товары автосервиса/40409946.jpg', N' Mobil', N' да', 2010)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (80, N'Моторное масло Super 3000 X1 152566', N' Товары автосервиса/6CA0BE73.jpg', N' Mobil', N' нет', 1820)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (81, N'Моторное масло Super 3000 X1 152567', N' Товары автосервиса/F200BC2F.jpg', N' Mobil', N' да', 1550)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (82, N'Моторное масло Super 3000 X1 Diesel 152572', N' Товары автосервиса/B0A0C186.jpg', N' Mobil', N' да', 1870)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (83, N'Моторное масло Super 3000 X1 Formula FE 152564', N' Товары автосервиса/59B0BE73.jpg', N' Mobil', N' да', 1890)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (84, N'Моторное масло Super Extra Gasoline 05100-00410', N' Товары автосервиса/2A109062.jpg', N' Hyundai/Kia', N' да', 1230)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (85, N'Моторное масло Supreme Synthetic MOSYN53C16', N' Товары автосервиса/69C0CD62.jpg', N' Petro-Canada', N' да', 1910)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (86, N'Моторное масло Top Tec 4100 7501', N' Товары автосервиса/022096CB.jpg', N' Liqui Moly', N' да', 2580)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (87, N'Моторное масло Top Tec 4600 8033', N' Товары автосервиса/B790A6AA.jpg', N' Liqui Moly', N' нет', 2580)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (88, N'Моторное масло Turbo SYN Gasoline 05100-00441', N' Товары автосервиса/2B009062.jpg', N' Hyundai/Kia', N' да', 1870)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (89, N'Моторное масло ULTRA 152624', N' Товары автосервиса/BA30C186.jpg', N' Mobil', N' да', 1940)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (90, N'Моторное масло Ultra LEO-SN 08217-99974', N' Товары автосервиса/97809225.jpg', N' Honda', N' да', 2980)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (91, N'Моторное масло X9 162613', N' Товары автосервиса/30E0C751.jpg', N' ZIC', N' да', 1530)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (92, N'Моторное масло Zepro Eco Medalist 3583-001', N' Товары автосервиса/6800BB8A.jpg', N' Idemitsu', N' да', 1770)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (93, N'Моторное масло Zepro Eco Medalist 3583-004', N' Товары автосервиса/3DA0B713.jpg', N' Idemitsu', N' да', 2520)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (94, N'Моторное масло Zepro Euro Spec SN/CF 1849-001', N' Товары автосервиса/90A0B807.jpg', N' Idemitsu', N' да', 1730)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (95, N'Моторное масло Zepro Euro Spec SN/CF 1849-004', N' Товары автосервиса/90D0B807.jpg', N' Idemitsu', N' да', 2400)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (96, N'Моторное масло Zepro Touring 1845-001', N' Товары автосервиса/7B70B9C6.jpg', N' Idemitsu', N' да', 1720)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (97, N'Моторное масло Zepro Touring 1845-004', N' Товары автосервиса/5180B90E.jpg', N' Idemitsu', N' да', 2380)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (98, N'Моторное масло Люкс 207465', N' Товары автосервиса/8E20A863.jpg', N' Lukoil', N' да', 1090)
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (99, N'Трос буксировочный 12 тонн 54384', N' Товары автосервиса/9750DA76.jpg', N' Stels', N' да', 410)
GO
INSERT [dbo].[product_a_import] ([id], [Наименование товара], [ Главное изображение], [ Производитель], [ Активен?], [ Цена]) VALUES (100, N'Щетка для снега со съемным скребком GY000202', N' Товары автосервиса/3760D73F.jpg', N' Goodyear', N' да', 350)
SET IDENTITY_INSERT [dbo].[product_a_import] OFF
GO
SET IDENTITY_INSERT [dbo].[productsale_a_import] ON 

INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (1, N'Моторное масло Mobil 1 ESP 154285', 2, CAST(N'2019-02-22T15:30:53.000' AS DateTime), CAST(N'2019-02-22T15:30:53.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (2, N'Моторное масло ENGINE OIL MZ 320756', 3, CAST(N'2019-11-20T17:05:24.000' AS DateTime), CAST(N'2019-11-20T17:05:24.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (3, N'Моторное масло QUARTZ 9000 FUTURE NFC 171839', 1, CAST(N'2019-10-05T17:25:12.000' AS DateTime), CAST(N'2019-10-05T17:25:12.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (4, N'Моторное масло EDGE LL Titanium FST 15669A', 2, CAST(N'2019-10-06T15:45:52.000' AS DateTime), CAST(N'2019-10-06T15:45:52.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (5, N'Моторное масло Top Tec 4600 8033', 1, CAST(N'2019-02-11T18:18:45.000' AS DateTime), CAST(N'2019-02-11T18:18:45.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (6, N'Моторное масло ENGINE OIL 08880-80375-GO', 2, CAST(N'2019-11-03T19:48:14.000' AS DateTime), CAST(N'2019-11-03T19:48:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (7, N'Жилет светоотражающий взрослый ARW-AV-02', 3, CAST(N'2019-08-25T09:14:40.000' AS DateTime), CAST(N'2019-08-25T09:14:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (8, N'Моторное масло Super 3000 X1 152567', 2, CAST(N'2019-04-08T19:12:39.000' AS DateTime), CAST(N'2019-04-08T19:12:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (9, N'Моторное масло Motor Oil KE900-90032-R', 3, CAST(N'2019-10-07T18:30:53.000' AS DateTime), CAST(N'2019-10-07T18:30:53.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (10, N'Моторное масло Premium LF Gasoline 05100-00451', 2, CAST(N'2019-12-30T13:56:10.000' AS DateTime), CAST(N'2019-12-30T13:56:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (11, N'Моторное масло ENGINE OIL MZ 320757', 2, CAST(N'2019-07-23T13:22:18.000' AS DateTime), CAST(N'2019-07-23T13:22:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (12, N'Моторное масло Dexos 2 93165556', 1, CAST(N'2019-05-08T16:32:17.000' AS DateTime), CAST(N'2019-05-08T16:32:17.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (13, N'Моторное масло Evolution 900 SXR 194877', 1, CAST(N'2019-02-25T18:40:43.000' AS DateTime), CAST(N'2019-02-25T18:40:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (14, N'Моторное масло Magnatec A3/B4 156E9D', 3, CAST(N'2019-11-16T16:36:00.000' AS DateTime), CAST(N'2019-11-16T16:36:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (15, N'Моторное масло Genesis Armortech 3148675', 3, CAST(N'2019-01-05T14:29:56.000' AS DateTime), CAST(N'2019-01-05T14:29:56.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (16, N'Моторное масло ENGINE OIL MZ 320754', 3, CAST(N'2019-01-03T14:05:29.000' AS DateTime), CAST(N'2019-01-03T14:05:29.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (17, N'Моторное масло Premium DPF Diesel 05200-00120', 3, CAST(N'2019-11-22T08:16:05.000' AS DateTime), CAST(N'2019-11-22T08:16:05.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (18, N'Моторное масло Dexos 2 93165554', 2, CAST(N'2019-12-18T15:30:51.000' AS DateTime), CAST(N'2019-12-18T15:30:51.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (19, N'Моторное масло Formula F Fuel Economy HC 155D4B', 2, CAST(N'2019-02-11T13:31:04.000' AS DateTime), CAST(N'2019-02-11T13:31:04.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (20, N'Моторное масло Evolution 900 SXR 10160501', 3, CAST(N'2019-11-09T14:29:57.000' AS DateTime), CAST(N'2019-11-09T14:29:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (21, N'Моторное масло Premium DPF Diesel 05200-00620', 3, CAST(N'2019-01-17T09:33:19.000' AS DateTime), CAST(N'2019-01-17T09:33:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (22, N'Моторное масло QUARTZ INEO ECS 151510', 3, CAST(N'2019-07-27T12:18:45.000' AS DateTime), CAST(N'2019-07-27T12:18:45.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (23, N'Моторное масло Helix Ultra 550046361', 1, CAST(N'2019-05-02T14:04:39.000' AS DateTime), CAST(N'2019-05-02T14:04:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (24, N'Моторное масло Magnatec A5 15583D', 3, CAST(N'2019-03-23T12:33:48.000' AS DateTime), CAST(N'2019-03-23T12:33:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (25, N'Моторное масло Zepro Eco Medalist 3583-001', 2, CAST(N'2019-08-31T10:27:10.000' AS DateTime), CAST(N'2019-08-31T10:27:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (26, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', 3, CAST(N'2019-04-02T15:49:55.000' AS DateTime), CAST(N'2019-04-02T15:49:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (27, N'Моторное масло SN 08880-10706', 2, CAST(N'2019-02-14T16:30:00.000' AS DateTime), CAST(N'2019-02-14T16:30:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (28, N'Моторное масло Super 3000 X1 152566', 3, CAST(N'2019-06-30T15:04:55.000' AS DateTime), CAST(N'2019-06-30T15:04:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (29, N'Моторное масло QUARTZ 9000 FUTURE NFC 183450', 1, CAST(N'2019-01-15T10:32:43.000' AS DateTime), CAST(N'2019-01-15T10:32:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (30, N'Моторное масло Zepro Euro Spec SN/CF 1849-004', 3, CAST(N'2019-12-25T09:20:39.000' AS DateTime), CAST(N'2019-12-25T09:20:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (31, N'Моторное масло Special G G 052 502 M2', 2, CAST(N'2019-04-24T17:19:15.000' AS DateTime), CAST(N'2019-04-24T17:19:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (32, N'Моторное масло SN 08880-10706', 1, CAST(N'2019-05-11T16:15:00.000' AS DateTime), CAST(N'2019-05-11T16:15:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (33, N'Моторное масло Evolution 900 SXR 194878', 2, CAST(N'2019-01-21T13:44:02.000' AS DateTime), CAST(N'2019-01-21T13:44:02.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (34, N'Моторное масло Premium DPF Diesel 05200-00620', 2, CAST(N'2019-08-22T09:42:19.000' AS DateTime), CAST(N'2019-08-22T09:42:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (35, N'Моторное масло Dexos 2 19 42 003', 1, CAST(N'2019-11-10T17:27:19.000' AS DateTime), CAST(N'2019-11-10T17:27:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (36, N'Моторное масло 76 Top Tec 420061', 3, CAST(N'2019-01-20T17:36:33.000' AS DateTime), CAST(N'2019-01-20T17:36:33.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (37, N'Моторное масло Special Tec LL 8055', 2, CAST(N'2019-08-06T10:47:18.000' AS DateTime), CAST(N'2019-08-06T10:47:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (38, N'Моторное масло 76 A000989PKW Motorenol0213BLER', 2, CAST(N'2019-09-25T09:23:18.000' AS DateTime), CAST(N'2019-09-25T09:23:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (39, N'Моторное масло Formula F Fuel Economy HC 155D4B', 3, CAST(N'2019-01-13T15:27:07.000' AS DateTime), CAST(N'2019-01-13T15:27:07.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (40, N'Моторное масло QUARTZ INEO ECS 151510', 1, CAST(N'2019-11-21T15:51:29.000' AS DateTime), CAST(N'2019-11-21T15:51:29.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (41, N'Моторное масло Helix Ultra 550046367', 1, CAST(N'2019-03-02T09:33:38.000' AS DateTime), CAST(N'2019-03-02T09:33:38.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (42, N'Моторное масло Dexos 2 19 42 000', 1, CAST(N'2019-02-16T08:02:50.000' AS DateTime), CAST(N'2019-02-16T08:02:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (43, N'Моторное масло Evolution 900 SXR 194878', 2, CAST(N'2019-07-22T17:12:57.000' AS DateTime), CAST(N'2019-07-22T17:12:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (44, N'Моторное масло Genuine A000989790211BIFR', 2, CAST(N'2019-12-26T19:19:02.000' AS DateTime), CAST(N'2019-12-26T19:19:02.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (45, N'Трос буксировочный 12 тонн 54384', 3, CAST(N'2019-07-18T08:43:03.000' AS DateTime), CAST(N'2019-07-18T08:43:03.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (46, N'Моторное масло Mobil 1 ESP Formula 152621', 2, CAST(N'2019-06-02T19:06:42.000' AS DateTime), CAST(N'2019-06-02T19:06:42.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (47, N'Моторное масло ENGINE OIL MZ 320753', 3, CAST(N'2019-07-22T10:28:38.000' AS DateTime), CAST(N'2019-07-22T10:28:38.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (48, N'Жилет светоотражающий взрослый ARW-AV-02', 2, CAST(N'2019-03-27T19:34:17.000' AS DateTime), CAST(N'2019-03-27T19:34:17.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (49, N'Моторное масло Genuine A000989790211BIFR', 3, CAST(N'2019-09-01T17:03:46.000' AS DateTime), CAST(N'2019-09-01T17:03:46.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (50, N'Моторное масло 76 A000989PKW Motorenol0213BLER', 2, CAST(N'2019-02-27T17:52:43.000' AS DateTime), CAST(N'2019-02-27T17:52:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (51, N'Моторное масло Zepro Eco Medalist 3583-004', 3, CAST(N'2019-02-22T15:07:25.000' AS DateTime), CAST(N'2019-02-22T15:07:25.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (52, N'Трос буксировочный 12 тонн 54384', 2, CAST(N'2019-01-18T14:44:16.000' AS DateTime), CAST(N'2019-01-18T14:44:16.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (53, N'Моторное масло QUARTZ 9000 148597', 3, CAST(N'2019-03-24T18:10:35.000' AS DateTime), CAST(N'2019-03-24T18:10:35.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (54, N'Моторное масло Magnatec A5 15583D', 2, CAST(N'2019-10-21T10:29:19.000' AS DateTime), CAST(N'2019-10-21T10:29:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (55, N'Моторное масло X9 162613', 3, CAST(N'2019-06-11T09:34:14.000' AS DateTime), CAST(N'2019-06-11T09:34:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (56, N'Моторное масло Original oil Ultra 8300-77-992', 1, CAST(N'2019-06-08T14:12:26.000' AS DateTime), CAST(N'2019-06-08T14:12:26.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (57, N'Моторное масло Formula F 155D3A', 3, CAST(N'2019-03-23T09:48:58.000' AS DateTime), CAST(N'2019-03-23T09:48:58.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (58, N'Трос буксировочный 12 тонн 54384', 1, CAST(N'2019-07-21T08:46:28.000' AS DateTime), CAST(N'2019-07-21T08:46:28.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (59, N'Моторное масло Evolution 900 SXR 10160501', 2, CAST(N'2019-04-13T12:41:52.000' AS DateTime), CAST(N'2019-04-13T12:41:52.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (60, N'Моторное масло Люкс 207465', 1, CAST(N'2019-01-24T16:39:39.000' AS DateTime), CAST(N'2019-01-24T16:39:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (61, N'Кредитница, Кожа B6 6 95 1349', 3, CAST(N'2019-02-15T13:41:46.000' AS DateTime), CAST(N'2019-02-15T13:41:46.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (62, N'Моторное масло Helix Ultra 550046361', 2, CAST(N'2019-07-04T17:30:40.000' AS DateTime), CAST(N'2019-07-04T17:30:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (63, N'Моторное масло Dexos 2 93165557', 3, CAST(N'2019-03-27T18:28:09.000' AS DateTime), CAST(N'2019-03-27T18:28:09.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (64, N'Моторное масло Optimal Synth 3926', 2, CAST(N'2019-11-14T08:58:07.000' AS DateTime), CAST(N'2019-11-14T08:58:07.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (65, N'Моторное масло Dexos 2 95599405', 2, CAST(N'2019-06-12T10:24:41.000' AS DateTime), CAST(N'2019-06-12T10:24:41.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (66, N'Моторное масло Mobil 1 ESP Formula 152621', 2, CAST(N'2019-08-07T18:21:42.000' AS DateTime), CAST(N'2019-08-07T18:21:42.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (67, N'Моторное масло Longlife III G 052 195 M4', 1, CAST(N'2019-09-26T16:57:40.000' AS DateTime), CAST(N'2019-09-26T16:57:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (68, N'Моторное масло ENGINE OIL MZ 320753', 3, CAST(N'2019-09-04T08:03:50.000' AS DateTime), CAST(N'2019-09-04T08:03:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (69, N'Моторное масло X9 162613', 1, CAST(N'2019-02-19T08:36:15.000' AS DateTime), CAST(N'2019-02-19T08:36:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (70, N'Моторное масло Genuine A000989790213BIFR', 1, CAST(N'2019-05-14T16:03:31.000' AS DateTime), CAST(N'2019-05-14T16:03:31.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (71, N'Моторное масло ENGINE OIL MZ 320754', 1, CAST(N'2019-07-14T09:32:31.000' AS DateTime), CAST(N'2019-07-14T09:32:31.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (72, N'Моторное масло Gasoline Fully- Synthetic 30021326-746', 1, CAST(N'2019-01-01T08:47:04.000' AS DateTime), CAST(N'2019-01-01T08:47:04.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (73, N'Моторное масло QUARTZ 9000 148597', 2, CAST(N'2019-01-08T10:57:01.000' AS DateTime), CAST(N'2019-01-08T10:57:01.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (74, N'Моторное масло X9 162613', 2, CAST(N'2019-03-07T17:37:12.000' AS DateTime), CAST(N'2019-03-07T17:37:12.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (75, N'Моторное масло Optimal Synth 3926', 2, CAST(N'2019-05-08T16:55:35.000' AS DateTime), CAST(N'2019-05-08T16:55:35.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (76, N'Моторное масло Super 3000 X1 Diesel 152572', 3, CAST(N'2019-07-29T09:29:15.000' AS DateTime), CAST(N'2019-07-29T09:29:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (77, N'Моторное масло Zepro Eco Medalist 3583-004', 3, CAST(N'2019-01-17T18:25:51.000' AS DateTime), CAST(N'2019-01-17T18:25:51.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (78, N'Моторное масло Formula F 15595E', 1, CAST(N'2019-01-02T08:49:59.000' AS DateTime), CAST(N'2019-01-02T08:49:59.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (79, N'Моторное масло Molygen New Generation 9042', 3, CAST(N'2019-04-27T12:25:55.000' AS DateTime), CAST(N'2019-04-27T12:25:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (80, N'Моторное масло SN/GF-5 SN5W30C', 2, CAST(N'2019-10-11T16:56:48.000' AS DateTime), CAST(N'2019-10-11T16:56:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (81, N'Моторное масло Fuel Economy 08880-80845', 3, CAST(N'2019-11-16T13:32:23.000' AS DateTime), CAST(N'2019-11-16T13:32:23.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (82, N'Моторное масло Longlife III G 052 195 M2', 1, CAST(N'2019-07-28T10:56:06.000' AS DateTime), CAST(N'2019-07-28T10:56:06.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (83, N'Моторное масло ENGINE OIL 08880-80365-GO', 2, CAST(N'2019-05-29T13:09:10.000' AS DateTime), CAST(N'2019-05-29T13:09:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (84, N'Моторное масло Fuel Economy 08880-80845', 1, CAST(N'2019-05-23T12:00:25.000' AS DateTime), CAST(N'2019-05-23T12:00:25.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (85, N'Моторное масло Special Tec LL 8055', 3, CAST(N'2019-12-24T10:08:28.000' AS DateTime), CAST(N'2019-12-24T10:08:28.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (86, N'Моторное масло Evolution 900 SXR 194878', 1, CAST(N'2019-03-10T08:00:50.000' AS DateTime), CAST(N'2019-03-10T08:00:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (87, N'Моторное масло QUARTZ 9000 ENERGY HKS 175392', 3, CAST(N'2019-08-20T18:45:14.000' AS DateTime), CAST(N'2019-08-20T18:45:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (88, N'Моторное масло Helix Ultra 550046367', 1, CAST(N'2019-03-27T12:05:57.000' AS DateTime), CAST(N'2019-03-27T12:05:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (89, N'Моторное масло Fuel Economy 08880-80845', 3, CAST(N'2019-02-13T13:40:11.000' AS DateTime), CAST(N'2019-02-13T13:40:11.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (90, N'Моторное масло Top Tec 4600 8033', 2, CAST(N'2019-09-20T08:56:22.000' AS DateTime), CAST(N'2019-09-20T08:56:22.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (91, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', 1, CAST(N'2019-10-03T12:31:48.000' AS DateTime), CAST(N'2019-10-03T12:31:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (92, N'Моторное масло Zepro Eco Medalist 3583-001', 2, CAST(N'2019-10-08T12:30:44.000' AS DateTime), CAST(N'2019-10-08T12:30:44.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (93, N'Моторное масло Longlife III G 052 195 M2', 3, CAST(N'2019-08-19T10:01:32.000' AS DateTime), CAST(N'2019-08-19T10:01:32.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (94, N'Моторное масло QUARTZ 9000 148597', 2, CAST(N'2019-10-09T18:21:47.000' AS DateTime), CAST(N'2019-10-09T18:21:47.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (95, N'Моторное масло Optimal Synth 2293', 3, CAST(N'2019-01-09T17:04:05.000' AS DateTime), CAST(N'2019-01-09T17:04:05.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (96, N'Моторное масло ENGINE OIL MZ 320754', 2, CAST(N'2019-07-26T13:42:01.000' AS DateTime), CAST(N'2019-07-26T13:42:01.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (97, N'Моторное масло Magnatec A3/B4 156E9E', 1, CAST(N'2019-04-29T18:19:10.000' AS DateTime), CAST(N'2019-04-29T18:19:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (98, N'Моторное масло Longlife III G 052 195 M2', 3, CAST(N'2019-11-22T14:44:14.000' AS DateTime), CAST(N'2019-11-22T14:44:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (99, N'Моторное масло Mobil 1 FS 153692', 1, CAST(N'2019-01-28T08:59:40.000' AS DateTime), CAST(N'2019-01-28T08:59:40.000' AS DateTime))
GO
INSERT [dbo].[productsale_a_import] ([id товара], [Товар], [Количество], [Дата продажи], [Время продажи]) VALUES (100, N'Моторное масло ENGINE OIL MZ 320757', 3, CAST(N'2019-05-25T12:03:17.000' AS DateTime), CAST(N'2019-05-25T12:03:17.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[productsale_a_import] OFF
GO
USE [master]
GO
ALTER DATABASE [DEMO2020] SET  READ_WRITE 
GO
