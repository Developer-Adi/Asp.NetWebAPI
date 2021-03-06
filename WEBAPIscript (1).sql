USE [master]
GO
/****** Object:  Database [Webapi]    Script Date: 7/31/2018 12:08:41 PM ******/
CREATE DATABASE [Webapi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Webapi', FILENAME = N'F:\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Webapi.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Webapi_log', FILENAME = N'F:\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Webapi_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Webapi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Webapi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Webapi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Webapi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Webapi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Webapi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Webapi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Webapi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Webapi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Webapi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Webapi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Webapi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Webapi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Webapi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Webapi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Webapi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Webapi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Webapi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Webapi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Webapi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Webapi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Webapi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Webapi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Webapi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Webapi] SET RECOVERY FULL 
GO
ALTER DATABASE [Webapi] SET  MULTI_USER 
GO
ALTER DATABASE [Webapi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Webapi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Webapi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Webapi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Webapi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Webapi', N'ON'
GO
USE [Webapi]
GO
/****** Object:  Table [dbo].[tbl_mobileOperator]    Script Date: 7/31/2018 12:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_mobileOperator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[operator_name] [varchar](70) NULL,
	[code] [varchar](20) NULL,
	[image] [varchar](100) NULL,
	[status] [varchar](7) NULL,
	[operator_type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SignUp]    Script Date: 7/31/2018 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SignUp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_mobileOperator] ON 

INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (1, N'AIRTEL DIGITAL', N'ADG', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (2, N'BIG TV ', N'BIG', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (3, N'DISH ', N'DSH', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (4, N'SUN DIRECT', N'SUN', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (5, N'TATA SKY', N'TSK ', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (6, N'VIDEOCON DTH', N'D2H', NULL, N'true', N'DTH RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (7, N'AIRCEL BILL ', N'BAC', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (8, N'AIRTEL BILL ', N'BAI', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (9, N'IDEA BILL', N'BID', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (10, N'RELIANCE BILL GSM', N'BRG ', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (11, N'RELIANCE CDMA BILL ', N'BRC ', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (12, N'TATA BILL', N'BTA', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (13, N'VODAFONE BILL ', N'BVO', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (14, N'AIRCEL', N'CEL', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (15, N'AIRTEL', N'AIR', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (16, N'BSNL VALIDITY', N'BSV', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (17, N'DOCOMO SPECIAL', N'SDC', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (18, N'IDEA ', N'IDE', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (19, N'MTNL TOPUP', N'MTT', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (20, N'MTNL VALIDITY', N'MTV', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (21, N'MTS ', N'MTS ', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (22, N'RELIANCE CDMA', N'REL', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (23, N'RELIANCE GSM', N'RGM', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (24, N'RELIANCE JIO ', N'JIO ', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (25, N'TATA', N'TID', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (26, N'TATA DOCOMO', N'DCM', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (27, N'TELENOR', N'UNI', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (28, N'TELENOR SPECIAL ', N'UNS', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (29, N'VODAFONE', N'VOD', NULL, N'true', N'PREPAID MOBILE RECHARGE')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (30, N'VIDEOCON GSM ', N'DTC', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (31, N'TIKONA BILL PAYMENT ', N'TDN', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (32, N'MAHANAGAR GAS BILL', N'MGB', NULL, N'true', N'GAS BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (46, N'NORTH BIHAR ELECTRICITY', N'NBE', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (47, N'SOUTH BIHAR ELECTRICITY', N'SBE', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (48, N'RELIANCE ENERGY BILL', N'REM', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (49, N'BEST ELECTRICITY BILL', N'BES', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (50, N'CELLONE BILL PAY', N'BPM', NULL, N'true', N'POSTPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (51, N'BSES RAJDHANI', N'BSR', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (52, N'IGL DELHI', N'IGL', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (53, N'TATA POWER DELHI', N'TDP', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (54, N'AIRTEL LAND LINE', N'BLA', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (55, N'BSES YAMUNA', N'BSY', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (56, N'DELHI JAL BOARD', N'DJB', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (57, N'TORRENT POWER', N'TPO', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (58, N'UTTARAKHAND POWER
CORPORATION LIMITED', N'UPC', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (59, N'CHATTISGARH STATE ELECTRICITY', N'CEB', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (60, N'INDIA POWER CORPORATION LTD ', N'IPC', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (61, N'MP PASCHIM KSHETRA VIDYUT
VITARAN INDORE', N'MPV', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (62, N'MSEDC LIMITED', N'MSE', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (63, N'NOIDA POWER COMPANY LTD', N'NPC', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (64, N'RAJASTHAN VIDYUT VITRAN NIGAM
LIMITED', N'RVV', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (65, N'TELENGANA SOUTHERN POWER
DISTRIBUTION COMPANY', N'SPD', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (66, N'AP SOUTHERN POWER DISTRIBUTION
COMPANY LTD', N'APD', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (67, N'BANGALORE ELECTRICITY SUPPLY
COMPANY', N'BSC', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (68, N'JAMSHEDPUR UTILITIES AND
SERVICES COMPANY LTD', N'JUS', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (69, N'MADHYA PRADESH MADHYA
KSHETRA VIDYUT VITARAN', N'MMV', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (70, N'GUJARAT GAS COMPANY LIMITED', N'GGC', NULL, N'true', N'GAS BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (71, N'BSNL VALIDITY', N'BSV', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (72, N'MTNL VALIDITY', N'MTV', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (73, N'TELENOR SPECIAL ', N'UNS', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (74, N'DOCOMO SPECIAL', N'SDC', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (75, N'BESCOM BANGALURU', N'BCO', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (76, N'ADANI GAS LIMITED', N'AGL', NULL, N'true', N'GAS BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (77, N'TABCAB', N'TAB', NULL, N'true', N'POSTPAID BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (78, N'MSRTC', N'MSR', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (79, N'RELIANCE JIO ', N'JIO', NULL, N'true', N'PREPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (83, N'BHAGALPUR ELECTRICITY
DISTRIBUTION COMPANY PVT LTD', N'BED', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (84, N'MEGHALAYA POWER DISTRIBUTION
CORPORATION LTD', N'MPD', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (85, N'TRIPURA STATE ELECTRICITY
CORPORATION LTD', N'TSE', NULL, N'true', N'ELECTRICITY BILL PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (86, N'BSNL TOPUP', N'BST', NULL, N'true', N'PREPAID MOBILE PAYMENT')
INSERT [dbo].[tbl_mobileOperator] ([id], [operator_name], [code], [image], [status], [operator_type]) VALUES (87, N'BSNL BILL PAY', N'BLL', NULL, NULL, N'POSTPAID BILL PAYMENT')
SET IDENTITY_INSERT [dbo].[tbl_mobileOperator] OFF
SET IDENTITY_INSERT [dbo].[tbl_SignUp] ON 

INSERT [dbo].[tbl_SignUp] ([id], [username], [password], [email], [mobile]) VALUES (1, N'aditya', N'dsfdsa', N'a@g.c', N'98187788')
SET IDENTITY_INSERT [dbo].[tbl_SignUp] OFF
USE [master]
GO
ALTER DATABASE [Webapi] SET  READ_WRITE 
GO
