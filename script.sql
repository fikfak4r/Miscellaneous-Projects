USE [Staging]
GO
ALTER TABLE [dbo].[DerivedQryTemp] DROP CONSTRAINT [FK_DerivedQryTemp_BaseQryTemp]
GO
/****** Object:  Table [dbo].[DerivedQryTemp]    Script Date: 4/23/2019 9:52:54 AM ******/
DROP TABLE [dbo].[DerivedQryTemp]
GO
/****** Object:  Table [dbo].[BaseQryTemp]    Script Date: 4/23/2019 9:52:54 AM ******/
DROP TABLE [dbo].[BaseQryTemp]
GO
/****** Object:  Table [dbo].[BaseQryTemp]    Script Date: 4/23/2019 9:52:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseQryTemp](
	[BsId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[TemplateName] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Fields] [varchar](500) NULL,
	[RunTimeTableName] [varchar](50) NULL,
	[Params] [varchar](500) NULL,
	[RltdColumns] [varchar](50) NULL,
 CONSTRAINT [PK_DerivedQryTemp] PRIMARY KEY CLUSTERED 
(
	[BsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DerivedQryTemp]    Script Date: 4/23/2019 9:52:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DerivedQryTemp](
	[DrvdId] [int] IDENTITY(1,1) NOT NULL,
	[BsId] [int] NULL,
	[Params] [varchar](500) NULL,
	[QryTemplate] [varchar](max) NULL,
 CONSTRAINT [PK_BaseQryTemp] PRIMARY KEY CLUSTERED 
(
	[DrvdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaseQryTemp] ON 

INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (1, N'2', N'AverageBalance', NULL, N'CUST_ID,AvgBal', N'Temp_AverageBalance', N'{int:avgBal1,int:avgBal2,date:startDate,date:endDate}', N'CUST_ID:CUST_ID')
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (2, N'5', N'RetailCustomer', NULL, N'CUST_ID', N'Temp_RetailCustomers', N'{string:undefined}', NULL)
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (3, N'2', N'Account', NULL, N'CUST_ID,ACCT_NUM,PROD_CD', N'Temp_Account', N'{string:undefined}', N'CUST_ID:CUST_ID')
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (4, N'3', N'Product', NULL, N'PROD_CD', N'Temp_Product', N'{string:undefined}', N'PROD_CD:PROD_CD')
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (5, NULL, N'Root', NULL, N'Root', N'Temp_Root', N'{string:undefined}', N'Root:Root')
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (6, N'1', N'Account1', NULL, N'CUST_ID,ACCT_NUM,PROD_CD', N'Temp_Account', N'{string:undefined}', N'CUST_ID:CUST_ID')
INSERT [dbo].[BaseQryTemp] ([BsId], [ParentId], [TemplateName], [Category], [Fields], [RunTimeTableName], [Params], [RltdColumns]) VALUES (7, N'6', N'Product1', NULL, N'PROD_CD', N'Temp_Product', N'{string:undefined}', N'PROD_CD:PROD_CD')
SET IDENTITY_INSERT [dbo].[BaseQryTemp] OFF
SET IDENTITY_INSERT [dbo].[DerivedQryTemp] ON 

INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (1, 1, N'{double:avgBal1:not_null,double:avgBal2:not_null,date:startDate:not_null,date:endDate:null}', N'Select * from the DB')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (2, 1, N'{double:avgBal1:not_null,double:avgBal2:null,date:startDate:not_null,date:endDate:null}', N'Select * from the DB 2')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (3, 2, N'{string:undefined:null}', N'Select * From CustomerDetails')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (4, 3, N'{string:undefined:null}', N'Select * From Account')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (5, 4, N'{string:undefined:null}', N'Select * From Products')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (6, 6, N'{string:undefined:null}', N'Select * From Account')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (7, 7, N'{string:undefined:null}', N'Select * From Products')
INSERT [dbo].[DerivedQryTemp] ([DrvdId], [BsId], [Params], [QryTemplate]) VALUES (8, 1, N'{double:avgBal1:null,double:avgBal2:null,date:startDate:null,date:endDate:null}', N'Select * from the DB All')
SET IDENTITY_INSERT [dbo].[DerivedQryTemp] OFF
ALTER TABLE [dbo].[DerivedQryTemp]  WITH CHECK ADD  CONSTRAINT [FK_DerivedQryTemp_BaseQryTemp] FOREIGN KEY([BsId])
REFERENCES [dbo].[BaseQryTemp] ([BsId])
GO
ALTER TABLE [dbo].[DerivedQryTemp] CHECK CONSTRAINT [FK_DerivedQryTemp_BaseQryTemp]
GO
