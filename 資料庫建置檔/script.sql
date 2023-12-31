
/****** Object:  Database [COISAT]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
CREATE DATABASE [COISAT]
 
USE [COISAT]
GO
/****** Object:  Table [dbo].[DA]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DA](
	[DAID] [varchar](50) NOT NULL,
	[DepartmentID] [varchar](50) NOT NULL,
	[DAName] [nchar](50) NOT NULL,
	[Room] [varchar](50) NOT NULL,
	[Ext] [int] NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DA] PRIMARY KEY CLUSTERED 
(
	[DAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [varchar](10) NOT NULL,
	[DepartmentName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expertise]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expertise](
	[ExpertiseID] [varchar](50) NOT NULL,
	[ExpertiseName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Expertise_1] PRIMARY KEY CLUSTERED 
(
	[ExpertiseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PE]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProfessorID] [nvarchar](50) NOT NULL,
	[ExpertiseID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 2022/11/8 週二 上午 11:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[ProfessorID] [varchar](10) NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[ProfessorName] [nvarchar](50) NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Ext] [varchar](50) NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Professor] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A001', N'1', N'邱翊儒                                               ', N'3709-2', 6502, N'cyiju@isu.edu.tw')
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A002', N'2', N'胡雅芳                                               ', N'1411-1', 5602, N'jbf0606@isu.edu.tw')
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A003', N'3', N'黃琦茵                                               ', N'3621-2', 6752, N'emilyh@isu.edu.tw')
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A004', N'4', N'陳盈君                                               ', N'3809-2', 6552, N'winny1126y@isu.edu.tw')
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A005', N'1', N'佟劭文                                               ', N'3709-2', 6503, N'tsw01@isu.edu.tw ')
INSERT [dbo].[DA] ([DAID], [DepartmentID], [DAName], [Room], [Ext], [E-mail]) VALUES (N'A006', N'4', N'郭美娟                                               ', N'3809-2', 6553, N'pig811010@isu.edu.tw')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (N'1', N'資訊工程系                                             ')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (N'2', N'資料科學與大數據分析學系                                      ')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (N'3', N'智慧網路科技系                                           ')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (N'4', N'資訊管理系                                             ')
GO
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E001', N'無線感測網路                                            ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E002', N'物聯網                                               ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E003', N'平行計算                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E004', N'分散式系統                                             ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E005', N'雲端計算                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E006', N'人工智慧                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E007', N'無線網路                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E008', N'平行處理                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E009', N'行動計算                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E010', N'極化碼                                               ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E011', N'圖形演算法                                             ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E012', N'計算理論                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E013', N'連接網路                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E014', N'網路編碼                                              ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E015', N'網路最佳化                                             ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E016', N'數位通訊系統')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E017', N'計算機網路')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E018', N'編碼理論')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E019', N'通訊網路 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E020', N'網際網路電信')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E021', N'WDM光波網路 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E022', N'嵌入式系統設計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E023', N'ASIC/FPGA設計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E024', N'密碼學')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E025', N'適應性信號處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E026', N'生醫訊號處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E027', N'圖形識別')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E028', N'電腦視覺')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E029', N'資訊檢索 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E030', N'機器學習與深度學習')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E031', N'影像與視訊處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E032', N'大數據分析 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E033', N'多媒體通訊')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E034', N'多媒體內容檢索')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E035', N'估測理論 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E036', N'機器學習')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E037', N'資料探勘')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E038', N'生醫訊號與影像分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E039', N'計算機圖學與動畫')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E040', N'影像視訊分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E041', N'人機互動技術')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E042', N'多媒體安全保護 ')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E043', N'全文檢索')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E044', N'資料庫系統')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E045', N'編譯器設計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E046', N'資料壓縮')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E047', N'醫學影像處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E048', N'深度學習')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E049', N'影像分析與分類')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'E050', N'數據探勘')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F001', N'科學計算')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F002', N'數值分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F003', N'計算機程式')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F004', N'代數')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F005', N'組合數學')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F006', N'代數編碼')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F007', N'密碼學')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F009', N'調合分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F010', N'計量方法')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F011', N'時間序列資料分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F012', N'泛函分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F013', N'算子半群')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F014', N'財務數學')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F015', N'統計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F016', N'偏微分方程')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F017', N'微分方程')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F018', N'數值最佳化')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F019', N'矩陣運算')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F020', N'矩陣理論')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'F021', N'線性代數')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G001', N'程式設計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G002', N'智慧物聯網(AIoT)')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G003', N'光學識別與成像分析')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G004', N'雷射金屬彩色打標')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G005', N'資訊安全')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G006', N'時域數值電磁')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G007', N'深度學習')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G008', N'軟體定義網路')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G009', N'電子陶瓷')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G010', N'資訊安全管理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'G011', N'訊號處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H001', N'管理資訊系統')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H002', N'網站設計與評估')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H003', N'智慧型計算')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H004', N'企業電子化')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H005', N'生產與作業管理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H006', N'供應鏈管理化')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H007', N'網路行銷')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H008', N'知識管理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H009', N'資訊教育')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H010', N'資訊系統')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H011', N'訊號處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H012', N'視訊影像處理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H013', N'企業E化策略')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H014', N'策略管理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H015', N'雲端運算')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H016', N'組織創新')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H017', N'無線多媒體通訊')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H018', N'系統分析與設計')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H019', N'數位內容')
GO
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H020', N'圖訊辨識')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H021', N'消費者行為')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H022', N'服務品質管理')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (N'H023', N'作業管理')
GO
SET IDENTITY_INSERT [dbo].[PE] ON 

INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (1, N'C001', N'E001')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (2, N'C001', N'E002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (3, N'C001', N'E003')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (4, N'C001', N'E004')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (5, N'C001', N'E005')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (6, N'C001', N'E006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (7, N'C002', N'E007')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (9, N'C002', N'E008')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (10, N'C002', N'E009')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (11, N'C002', N'E004')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (13, N'C003', N'E010')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (14, N'C003', N'E011')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (15, N'C003', N'E012')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (16, N'C003', N'E013')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (17, N'C003', N'E014')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (18, N'C003', N'E015')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (19, N'C004', N'E016')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (20, N'C004', N'E017')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (21, N'C004', N'E018')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (22, N'C004', N'E019')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (23, N'C005', N'E007')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (25, N'C005', N'E002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (26, N'C005', N'E020')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (27, N'C005', N'E021')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (28, N'C006', N'E022')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (29, N'C006', N'E023')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (30, N'C006', N'E024')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (31, N'C006', N'E006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (32, N'C007', N'E022')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (33, N'C007', N'E025')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (34, N'C007', N'E026')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (35, N'C007', N'E018')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (36, N'C008', N'E027')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (37, N'C008', N'E006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (38, N'C008', N'E028')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (39, N'C008', N'E029')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (40, N'C009', N'E030')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (41, N'C009', N'E031')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (42, N'C009', N'E032')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (43, N'C010', N'E033')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (44, N'C010', N'E034')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (45, N'C010', N'E035')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (46, N'C010', N'E031')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (47, N'C011', N'E006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (48, N'C011', N'E036')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (49, N'C011', N'E037')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (50, N'C011', N'E038')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (51, N'C011', N'E028')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (52, N'C012', N'E039')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (53, N'C012', N'E040')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (54, N'C012', N'E041')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (55, N'C012', N'E012')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (57, N'C013', N'E043')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (58, N'C013', N'E037')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (59, N'C013', N'E044')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (60, N'C013', N'E045')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (61, N'C013', N'E046')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (62, N'C014', N'E047')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (63, N'C014', N'E036')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (64, N'C014', N'E048')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (65, N'C014', N'E049')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (66, N'D001', N'F001')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (69, N'D001', N'F002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (70, N'D001', N'F003')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (71, N'D002', N'F004')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (72, N'D002', N'F005')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (73, N'D002', N'F006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (74, N'D002', N'F007')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (75, N'D003', N'F009')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (76, N'D003', N'F010')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (77, N'D003', N'F011')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (78, N'D004', N'F012')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (79, N'D004', N'F013')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (80, N'D004', N'F014')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (81, N'D005', N'F002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (82, N'D005', N'F014')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (83, N'D005', N'F015')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (84, N'D006', N'F016')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (85, N'D006', N'F017')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (86, N'D006', N'F014')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (87, N'D007', N'F018')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (88, N'D007', N'F019')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (90, N'D008', N'F020')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (91, N'D008', N'F021')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (92, N'F001', N'G001')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (93, N'F002', N'G002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (94, N'F002', N'G003')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (95, N'F002', N'G004')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (96, N'F003', N'G005')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (97, N'F004', N'G006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (98, N'F005', N'G007')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (99, N'F006', N'G008')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (100, N'F007', N'G009')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (101, N'F008', N'G010')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (102, N'F009', N'G011')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (103, N'G001', N'H001')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (104, N'G001', N'H002')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (105, N'G002', N'H003')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (106, N'G002', N'H004')
GO
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (107, N'G003', N'H005')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (108, N'G003', N'H006')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (109, N'G004', N'H007')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (110, N'G004', N'H008')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (111, N'G005', N'H009')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (112, N'G005', N'H010')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (113, N'G006', N'H011')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (114, N'G006', N'H012')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (115, N'G007', N'H013')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (116, N'G007', N'H014')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (117, N'G008', N'H015')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (118, N'G008', N'H016')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (119, N'G009', N'H017')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (120, N'G009', N'H018')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (121, N'G010', N'H019')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (122, N'G010', N'H020')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (123, N'G011', N'H021')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (124, N'G012', N'H022')
INSERT [dbo].[PE] ([id], [ProfessorID], [ExpertiseID]) VALUES (125, N'G012', N'H023')
SET IDENTITY_INSERT [dbo].[PE] OFF
GO
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C001', N'1', N'陳啟彰', N'3703C', N'6514', N'ccchen@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C002', N'1', N'王三元', N'3704D', N'6531', N'sywang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C003', N'1', N'王振仲', N'3704C', N'6520', N'jjwang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C004', N'1', N'劉世昌', N'3706B', N'6516', N'liusc@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C005', N'1', N'廖冠雄', N'3705B', N'6529', N'ghliaw@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C006', N'1', N'陳延華', N'3705D', N'6536', N'yanchen@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C007', N'1', N'張國清', N'3705C', N'6527', N'cgc@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C008', N'1', N'黃健興', N'3705E', N'6535', N'raylan@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C009', N'1', N'鄭志宏', N'3703B', N'6523', N'jjeng@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C010', N'1', N'郭忠民', N'3707B', N'6530', N'kuocm@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C011', N'1', N'歐陽振森', N'3704B', N'6534', N'ouyangcs@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C012', N'1', N'杜維昌', N'3703D', N'6528', N'wcdu@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C013', N'1', N'張旭光', N'3706D', N'6533', N'hkchang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'C014', N'1', N'許士彥', N'3707E', N'6537', N'syhsu@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D001', N'2', N'黃宏財', N'1412B', N'5614', N'huanght@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D002', N'2', N'張耀祖', N'1909', N'5619', N'ytchang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D003', N'2', N'羅大欽', N'1413B', N'5615', N'dclour@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D004', N'2', N'張榮展', N'1415B', N'5624', N' jcchang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D005', N'2', N'吳土城', N'1412E', N'5617', N'tucheng@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D006', N'2', N'郎正廉', N'1415D', N'5613', N' cllang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D007', N'2', N'施俊良', N'1413A', N'5620', N'clshih@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'D008', N'2', N'謝良瑜 ', N'1412C', N'5626', N'lyhsieh@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F001', N'3', N'李崇道', N'3601A', N'6769', N'chongdao@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F002', N'3', N'林士強 ', N'3601B', N'6764', N' sclin@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F003', N'3', N'楊吳泉', N'3707C', N'6526', N'wcyang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F004', N'3', N'陳聲寰 ', N'3601C', N'6763', N'jasonchen@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F005', N'3', N'吳宗承 ', N'3602C', N'6762', N' tcwu@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F006', N'3', N'高典良 ', N'3602B', N'6768', N'tlkao@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F007', N'3', N'陳柄成 ', N'3602A', N'6766', N'chen1113@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F008', N'3', N'程凱', N'3604-E', N'6761', N'kaichain@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'F009', N'3', N'張赫烜', N'3603A', N'6760', N'hhchang@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G001', N'4', N'吳有龍 ', N'38053', N'6563', N'wuyulung@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G002', N'4', N'劉振隆', N'38055', N'6579', N'jlliu@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G003', N'4', N'梁鐿徽', N'38054
', N'6572', N'german@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G004', N'4', N'吳傳春 ', N'3806B', N'6578', N'miswucc@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G005', N'4', N'鄭榮祿', N'3807D', N'6561', N'rjeng@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G006', N'4', N'蔡吉昌', N'3806E', N'6567', N'tjc@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G007', N'4', N'陳筠昀', N'3807A', N'6569', N'lisachen@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G008', N'4', N'陳秀如 ', N'3806D', N'6577', N'hjchen@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G009', N'4', N'楊崇宏', N'3807E', N'6571', N'yangch@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G010', N'4', N'蔡賢亮', N'3807B', N'6576', N'jim@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G011', N'4', N'吳佳純', N'38052', N'6566', N'chiachun@isu.edu.tw')
INSERT [dbo].[Professor] ([ProfessorID], [DepartmentID], [ProfessorName], [Room], [Ext], [E-mail]) VALUES (N'G012', N'4', N'吳靖純', N'38051', N'6580', N'chinchunw@isu.edu.tw')
GO

