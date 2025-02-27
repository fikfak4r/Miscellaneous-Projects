USE [master]
GO
/****** Object:  Database [SmoothData_Default_v1]    Script Date: 1/29/2020 7:15:32 AM ******/
CREATE DATABASE [SmoothData_Default_v1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmoothData_Default_v1', FILENAME = N'C:\Users\Fikayo\Documents\Visual Studio 2017\Projects\SmoothData\SmoothData\SmoothData.Web\App_Data\SmoothData_Default_v1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmoothData_Default_v1_log', FILENAME = N'C:\Users\Fikayo\Documents\Visual Studio 2017\Projects\SmoothData\SmoothData\SmoothData.Web\App_Data\SmoothData_Default_v1.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SmoothData_Default_v1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmoothData_Default_v1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmoothData_Default_v1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SmoothData_Default_v1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmoothData_Default_v1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmoothData_Default_v1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SmoothData_Default_v1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmoothData_Default_v1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmoothData_Default_v1] SET  MULTI_USER 
GO
ALTER DATABASE [SmoothData_Default_v1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmoothData_Default_v1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmoothData_Default_v1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmoothData_Default_v1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmoothData_Default_v1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SmoothData_Default_v1] SET QUERY_STORE = OFF
GO
USE [SmoothData_Default_v1]
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
USE [SmoothData_Default_v1]
GO
/****** Object:  Table [dbo].[BaseQry]    Script Date: 1/29/2020 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseQry](
	[BsId] [int] IDENTITY(2,1) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[TemplateName] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[FieldList] [varchar](500) NULL,
	[RunTimeTableName] [varchar](50) NULL,
	[Params] [varchar](500) NULL,
	[RltdColumns] [varchar](50) NULL,
	[DfltVl] [varchar](500) NULL,
 CONSTRAINT [PK_BaseQry] PRIMARY KEY CLUSTERED 
(
	[BsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/29/2020 7:15:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](200) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetail]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetail](
	[CustomerId] [int] NOT NULL,
	[Full_Name] [varchar](50) NULL,
	[Sex] [nchar](5) NULL,
	[Address] [varchar](5000) NULL,
 CONSTRAINT [PK_CustomerDetail] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DerivedQry]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DerivedQry](
	[DrvdId] [int] IDENTITY(2,1) NOT NULL,
	[BsId] [int] NULL,
	[Params] [varchar](500) NULL,
	[QryTemplate] [varchar](max) NULL,
 CONSTRAINT [PK_DerivedQry] PRIMARY KEY CLUSTERED 
(
	[DrvdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exceptions]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exceptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](50) NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[IsProtected] [bit] NOT NULL,
	[Host] [nvarchar](100) NULL,
	[Url] [nvarchar](500) NULL,
	[HTTPMethod] [nvarchar](10) NULL,
	[IPAddress] [nvarchar](40) NULL,
	[Source] [nvarchar](100) NULL,
	[Message] [nvarchar](1000) NULL,
	[Detail] [nvarchar](max) NULL,
	[StatusCode] [int] NULL,
	[SQL] [nvarchar](max) NULL,
	[DeletionDate] [datetime] NULL,
	[FullJson] [nvarchar](max) NULL,
	[ErrorHash] [int] NULL,
	[DuplicateCount] [int] NOT NULL,
 CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldList]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldList](
	[FieldMemberId] [int] IDENTITY(1,1) NOT NULL,
	[BsId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[DataType] [tinyint] NULL,
	[Size] [int] NULL,
 CONSTRAINT [PK_FieldList] PRIMARY KEY CLUSTERED 
(
	[FieldMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [nvarchar](10) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RolePermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateUnits]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateUnits](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[BaseUnitId] [int] NOT NULL,
	[ParentUnitId] [int] NULL,
	[BaseUnitRelationFieldId] [int] NULL,
	[ParentUnitRelationId] [int] NULL,
 CONSTRAINT [PK_TemplateUnits] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions](
	[UserPermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
	[Granted] [bit] NOT NULL,
 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPreferences]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPreferences](
	[UserPreferenceId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PreferenceType] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED 
(
	[UserPreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Source] [nvarchar](4) NOT NULL,
	[PasswordHash] [nvarchar](86) NOT NULL,
	[PasswordSalt] [nvarchar](10) NOT NULL,
	[LastDirectoryUpdate] [datetime] NULL,
	[UserImage] [nvarchar](100) NULL,
	[InsertDate] [datetime] NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserId] [int] NULL,
	[IsActive] [smallint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variable]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variable](
	[VariableId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[DataType] [tinyint] NULL,
	[BaseId] [int] NULL,
 CONSTRAINT [PK_Variable] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VersionInfo]    Script Date: 1/29/2020 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersionInfo](
	[Version] [bigint] NOT NULL,
	[AppliedOn] [datetime] NULL,
	[Description] [nvarchar](1024) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [UC_Version]    Script Date: 1/29/2020 7:15:35 AM ******/
CREATE UNIQUE CLUSTERED INDEX [UC_Version] ON [dbo].[VersionInfo]
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaseQry] ON 

INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (2, NULL, N'Active Retail Customers', 1, N'CUSTOMER_HOST_ID
FINACLE_HOST_ID
FULL_NAME
CUSTOMER_SEGMENT
CUSTOMER_SUB_SEGMENT', NULL, N'declare @startDate int
declare @endDate int', NULL, NULL)
INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (3, NULL, N'Average Balance', 2, N'CUST_ID
AVG_BAL', NULL, NULL, NULL, NULL)
INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (1003, NULL, N'Kids', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (2003, NULL, N'CustomerDetails', 1002, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (2004, NULL, N'MTNCustomers', 1003, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaseQry] ([BsId], [ParentId], [TemplateName], [CategoryId], [FieldList], [RunTimeTableName], [Params], [RltdColumns], [DfltVl]) VALUES (2005, NULL, N'Root', 1004, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BaseQry] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Retail 1')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Average Bal')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1002, N'Customers')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1003, N'Network')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1004, N'Root Category')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[DerivedQry] ON 

INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (2, 2, NULL, N'Select * from MASTER_CASA_DAILY_SUMMARY where ACCT_SUM_DATE = @startdate')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (3, 2, NULL, N'SELECT * FROM MASTER_CARD_DETAILS')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (4, NULL, NULL, N'My new query')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (5, NULL, NULL, N'fdas')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (6, NULL, NULL, N'fda fa')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (7, 2, NULL, N'fdafda')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (9, 2, NULL, N'fsafds')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (11, NULL, NULL, N'asa')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (12, 2, NULL, N'pppp')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (13, NULL, NULL, N'cccc')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (14, NULL, NULL, N'dddd')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (15, NULL, NULL, N'ds d')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (16, NULL, NULL, N'sd ds')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (17, NULL, NULL, N'DDDVVVFFF')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (18, 2, NULL, N'SSS')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (19, 2, NULL, N'AWAW')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (20, 3, NULL, N'FD FD DFA')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (21, NULL, NULL, N'SELECT')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (22, 1003, NULL, N'sELECT')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (1021, 2003, NULL, N'select * from MyCustomersDetails')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (1022, NULL, NULL, N'SELECT CUST_ID, PHN_MOBL, RGN_DESC FROM CustomerDetails WHERE LEFT(PHN_MOBL, 4) IN 
(
''0803'', 
''0806'',
''0703'',
''0706'',
''0813'',
''0816'',
''0810'',
''0814'',
''0906'', 
''0903''
)')
INSERT [dbo].[DerivedQry] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (1023, 2004, NULL, N'SELECT CUST_ID, PHN_MOBL, RGN_DESC FROM CustomerDetails WHERE LEFT(PHN_MOBL, 4) IN 
(
''0803'', 
''0806'',
''0703'',
''0706'',
''0813'',
''0816'',
''0810'',
''0814'',
''0906'', 
''0903''
)')
SET IDENTITY_INSERT [dbo].[DerivedQry] OFF
SET IDENTITY_INSERT [dbo].[FieldList] ON 

INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1, 2, N'CUSTOMER_HOST_ID', 2, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (2, 2, N'FINACLE_HOST_ID', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (3, 3, N'CUSTOMER_HOST_ID', 2, 22)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (5, 1003, N'customer_host_id', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1004, 2003, N'CUSTOMER_HOST_ID', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1005, 2003, N'FULL_NM', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1006, 2004, N'CUST_ID', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1007, 2004, N'PHN_MOBL', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1008, 2004, N'RGN_DESC', 1, NULL)
INSERT [dbo].[FieldList] ([FieldMemberId], [BsId], [Name], [DataType], [Size]) VALUES (1009, 2005, N'CUSTOMER_ID', 1, NULL)
SET IDENTITY_INSERT [dbo].[FieldList] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (1, N'en', N'English')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (2, N'ru', N'Russian')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (3, N'es', N'Spanish')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (4, N'tr', N'Turkish')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (5, N'de', N'German')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (6, N'zh-CN', N'Chinese (Simplified)')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (7, N'it', N'Italian')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (8, N'pt', N'Portuguese')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (9, N'pt-BR', N'Portuguese (Brazil)')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (10, N'fa', N'Farsi')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (11, N'vi-VN', N'Vietnamese (Vietnam)')
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[TemplateUnits] ON 

INSERT [dbo].[TemplateUnits] ([UnitId], [BaseUnitId], [ParentUnitId], [BaseUnitRelationFieldId], [ParentUnitRelationId]) VALUES (1008, 2005, NULL, 1009, 1006)
INSERT [dbo].[TemplateUnits] ([UnitId], [BaseUnitId], [ParentUnitId], [BaseUnitRelationFieldId], [ParentUnitRelationId]) VALUES (1009, 2, 1008, 1, 1009)
INSERT [dbo].[TemplateUnits] ([UnitId], [BaseUnitId], [ParentUnitId], [BaseUnitRelationFieldId], [ParentUnitRelationId]) VALUES (1010, 3, 1008, 3, 1009)
SET IDENTITY_INSERT [dbo].[TemplateUnits] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive]) VALUES (1, N'admin', N'admin', N'admin@dummy.com', N'site', N'rfqpSPYs0ekFlPyvIRTXsdhE/qrTHFF+kKsAUla7pFkXL4BgLGlTe89GDX5DBysenMDj8AqbIZPybqvusyCjwQ', N'hJf_F', NULL, NULL, CAST(N'2014-01-01T00:00:00.000' AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Variable] ON 

INSERT [dbo].[Variable] ([VariableId], [Name], [DataType], [BaseId]) VALUES (1, N'startdate ', 1, 2)
INSERT [dbo].[Variable] ([VariableId], [Name], [DataType], [BaseId]) VALUES (2, N'enddate   ', 1, 2)
SET IDENTITY_INSERT [dbo].[Variable] OFF
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20141103140000, CAST(N'2019-06-30T15:32:43.000' AS DateTime), N'DefaultDB_20141103_140000_Initial')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20141111113000, CAST(N'2019-06-30T15:32:44.000' AS DateTime), N'DefaultDB_20141111_113000_Permissions')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160515072600, CAST(N'2019-06-30T15:32:44.000' AS DateTime), N'DefaultDB_20160515_072600_UserPreferences')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20161029130000, CAST(N'2019-06-30T15:32:44.000' AS DateTime), N'DefaultDB_20161029_130000_ExceptionLog')
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Exceptions_App_Del_Cre]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Exceptions_App_Del_Cre] ON [dbo].[Exceptions]
(
	[ApplicationName] ASC,
	[DeletionDate] ASC,
	[CreationDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Exceptions_GUID_App_Del_Cre]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Exceptions_GUID_App_Del_Cre] ON [dbo].[Exceptions]
(
	[GUID] ASC,
	[ApplicationName] ASC,
	[DeletionDate] ASC,
	[CreationDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Exceptions_Hash_App_Cre_Del]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Exceptions_Hash_App_Cre_Del] ON [dbo].[Exceptions]
(
	[ErrorHash] ASC,
	[ApplicationName] ASC,
	[CreationDate] DESC,
	[DeletionDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_RolePerm_RoleId_PermKey]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_RolePerm_RoleId_PermKey] ON [dbo].[RolePermissions]
(
	[RoleId] ASC,
	[PermissionKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_UserPerm_UserId_PermKey]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_UserPerm_UserId_PermKey] ON [dbo].[UserPermissions]
(
	[UserId] ASC,
	[PermissionKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserPref_UID_PrefType_Name]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserPref_UID_PrefType_Name] ON [dbo].[UserPreferences]
(
	[UserId] ASC,
	[PreferenceType] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoles_RoleId_UserId]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId_UserId] ON [dbo].[UserRoles]
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ_UserRoles_UserId_RoleId]    Script Date: 1/29/2020 7:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_UserRoles_UserId_RoleId] ON [dbo].[UserRoles]
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exceptions] ADD  CONSTRAINT [DF_Exceptions_IsProtected]  DEFAULT ((1)) FOR [IsProtected]
GO
ALTER TABLE [dbo].[Exceptions] ADD  CONSTRAINT [DF_Exceptions_DuplicateCount]  DEFAULT ((1)) FOR [DuplicateCount]
GO
ALTER TABLE [dbo].[UserPermissions] ADD  CONSTRAINT [DF_UserPermissions_Granted]  DEFAULT ((1)) FOR [Granted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[BaseQry]  WITH CHECK ADD  CONSTRAINT [FK_BaseQry_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[BaseQry] CHECK CONSTRAINT [FK_BaseQry_Category]
GO
ALTER TABLE [dbo].[DerivedQry]  WITH CHECK ADD  CONSTRAINT [FK_DerivedQry_BaseQry] FOREIGN KEY([BsId])
REFERENCES [dbo].[BaseQry] ([BsId])
GO
ALTER TABLE [dbo].[DerivedQry] CHECK CONSTRAINT [FK_DerivedQry_BaseQry]
GO
ALTER TABLE [dbo].[FieldList]  WITH CHECK ADD  CONSTRAINT [FK_FieldList_BaseQry] FOREIGN KEY([BsId])
REFERENCES [dbo].[BaseQry] ([BsId])
GO
ALTER TABLE [dbo].[FieldList] CHECK CONSTRAINT [FK_FieldList_BaseQry]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_RoleId]
GO
ALTER TABLE [dbo].[TemplateUnits]  WITH CHECK ADD  CONSTRAINT [FK_TemplateUnits_BaseQry] FOREIGN KEY([BaseUnitId])
REFERENCES [dbo].[BaseQry] ([BsId])
GO
ALTER TABLE [dbo].[TemplateUnits] CHECK CONSTRAINT [FK_TemplateUnits_BaseQry]
GO
ALTER TABLE [dbo].[TemplateUnits]  WITH CHECK ADD  CONSTRAINT [FK_TemplateUnits_FieldList] FOREIGN KEY([BaseUnitRelationFieldId])
REFERENCES [dbo].[FieldList] ([FieldMemberId])
GO
ALTER TABLE [dbo].[TemplateUnits] CHECK CONSTRAINT [FK_TemplateUnits_FieldList]
GO
ALTER TABLE [dbo].[TemplateUnits]  WITH CHECK ADD  CONSTRAINT [FK_TemplateUnits_FieldList1] FOREIGN KEY([ParentUnitRelationId])
REFERENCES [dbo].[FieldList] ([FieldMemberId])
GO
ALTER TABLE [dbo].[TemplateUnits] CHECK CONSTRAINT [FK_TemplateUnits_FieldList1]
GO
ALTER TABLE [dbo].[TemplateUnits]  WITH CHECK ADD  CONSTRAINT [FK_TemplateUnits_TemplateUnits] FOREIGN KEY([ParentUnitId])
REFERENCES [dbo].[TemplateUnits] ([UnitId])
GO
ALTER TABLE [dbo].[TemplateUnits] CHECK CONSTRAINT [FK_TemplateUnits_TemplateUnits]
GO
ALTER TABLE [dbo].[UserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserPermissions_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserPermissions] CHECK CONSTRAINT [FK_UserPermissions_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_UserId]
GO
ALTER TABLE [dbo].[Variable]  WITH CHECK ADD  CONSTRAINT [FK_Variable_BaseQry] FOREIGN KEY([BaseId])
REFERENCES [dbo].[BaseQry] ([BsId])
GO
ALTER TABLE [dbo].[Variable] CHECK CONSTRAINT [FK_Variable_BaseQry]
GO
USE [master]
GO
ALTER DATABASE [SmoothData_Default_v1] SET  READ_WRITE 
GO
