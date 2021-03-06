USE [StudentDb]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[VolumeNumber] [nvarchar](50) NULL,
	[Barcode] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeWorks]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeWorks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopicId] [int] NULL,
	[Name] [nvarchar](30) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_HomeWorks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiralama]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiralama](
	[Id] [int] NULL,
	[UserId] [int] NULL,
	[BooksId] [int] NULL,
	[KutuphaneId] [int] NULL,
	[KiralamaTarihi] [datetime] NULL,
	[TeslimTarihi] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kutuphane]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kutuphane](
	[Id] [int] NOT NULL,
	[KutuphaneAdi] [nchar](20) NULL,
	[UsersId] [int] NULL,
 CONSTRAINT [PK_Kutuphane] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryTransactions]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryTransactions](
	[Id] [int] NULL,
	[UserId] [int] NULL,
	[LibrarId] [int] NULL,
	[BookId] [int] NULL,
	[StartDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PoetBooks]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoetBooks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PoetId] [int] NULL,
	[BookId] [int] NULL,
 CONSTRAINT [PK_PoetBooks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poets]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Poets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentHomeWorks]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHomeWorks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[HomeWorkId] [int] NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentHomeWorks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentHomeWorkVotes]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHomeWorkVotes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[StudentHomeWorkId] [int] NULL,
	[Vote] [smallint] NULL,
 CONSTRAINT [PK_StudentHomeWorkVotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[Lesson] [nvarchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CardNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFaculities]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFaculities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_UserFaculities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInformations]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInformations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[IdentificationNumber] [bigint] NULL,
 CONSTRAINT [PK_UserInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.02.2022 18:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NULL,
	[Password] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (1, N'Sefiller', N'No: 01', N'123', 1)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (2, N'Hayvan Çiftliği', N'No: 19', N'122', 1)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (3, N'Cesur Yeni Dünya', N'No: 11', N'111', 2)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (4, N'835 Satır', N'No: 835', N'835', 3)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (5, N'Üvercinka', N'No: 22', N'812', 3)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (6, N'Devlet', N'No: 34', N'34', 4)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (7, N'Metal Fırtına', N'No: 16', N'16', 2)
INSERT [dbo].[Books] ([Id], [Name], [VolumeNumber], [Barcode], [CategoryId]) VALUES (8, N'Sevda Sözleri', N'No: 102', N'102', 3)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Roman')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Bilim Kurgu')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Şiir')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Felsefe')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (1, N'Akademik')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (2, N'Myo')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (3, N'Mühendislik')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[PoetBooks] ON 

INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (1, 1, 1)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (2, 2, 2)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (3, 3, 3)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (4, 4, 4)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (5, 5, 5)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (6, 6, 6)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (7, 7, 7)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (8, 8, 7)
INSERT [dbo].[PoetBooks] ([Id], [PoetId], [BookId]) VALUES (9, 5, 8)
SET IDENTITY_INSERT [dbo].[PoetBooks] OFF
GO
SET IDENTITY_INSERT [dbo].[Poets] ON 

INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (1, N'Victor Hugo')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (2, N'George Orwell')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (3, N'Aldous Euxlhy')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (4, N'Nazım Hikmet')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (5, N'Cemal Süreya')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (6, N'Platon')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (7, N'Orkun Uçar')
INSERT [dbo].[Poets] ([Id], [FullName]) VALUES (8, N'Burak Turna')
SET IDENTITY_INSERT [dbo].[Poets] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [UserId], [StudentNumber], [Lesson]) VALUES (1, 1, N'1231', N'Kbt303')
INSERT [dbo].[Students] ([Id], [UserId], [StudentNumber], [Lesson]) VALUES (2, 2, N'1232', N'Kbt202')
INSERT [dbo].[Students] ([Id], [UserId], [StudentNumber], [Lesson]) VALUES (3, 3, N'1233', N'Kbt303')
INSERT [dbo].[Students] ([Id], [UserId], [StudentNumber], [Lesson]) VALUES (4, 4, N'1234', N'Kbt303')
INSERT [dbo].[Students] ([Id], [UserId], [StudentNumber], [Lesson]) VALUES (5, 5, N'1235', N'Kbt202')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [UserId], [CardNumber]) VALUES (1, 6, N'1121')
INSERT [dbo].[Teachers] ([Id], [UserId], [CardNumber]) VALUES (2, 1, N'1122')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[UserFaculities] ON 

INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (1, 1, 2)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (2, 2, 3)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (3, 3, 2)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (4, 4, 2)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (5, 5, 3)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (6, 6, 1)
INSERT [dbo].[UserFaculities] ([Id], [UserId], [FacultyId]) VALUES (7, 1, 1)
SET IDENTITY_INSERT [dbo].[UserFaculities] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInformations] ON 

INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (1, 1, N'Büşra', N'Kırmızıkaya', 1)
INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (2, 2, N'Yalçın', N'Uzun', 2)
INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (3, 3, N'Bilge', N'Yılmaz', 3)
INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (4, 4, N'Yasin', N'Göktepe', 4)
INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (5, 5, N'Melisa', N'Gürgöze', 5)
INSERT [dbo].[UserInformations] ([Id], [UserId], [FirstName], [LastName], [IdentificationNumber]) VALUES (6, 6, N'Yakup', N'Eyisan', 6)
SET IDENTITY_INSERT [dbo].[UserInformations] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (1, N'busra', N'123')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (2, N'yalcin', N'2')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (3, N'bilge', N'3')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (4, N'yasin', N'4')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (5, N'yasemin', N'5')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (6, N'yakup', N'6')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[HomeWorks]  WITH CHECK ADD  CONSTRAINT [FK_HomeWorks_Topics] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topics] ([Id])
GO
ALTER TABLE [dbo].[HomeWorks] CHECK CONSTRAINT [FK_HomeWorks_Topics]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralama_Books] FOREIGN KEY([BooksId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralama_Books]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralama_Kutuphane] FOREIGN KEY([KutuphaneId])
REFERENCES [dbo].[Kutuphane] ([Id])
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralama_Kutuphane]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralama_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralama_Users]
GO
ALTER TABLE [dbo].[Kutuphane]  WITH CHECK ADD  CONSTRAINT [FK_Kutuphane_Users] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Kutuphane] CHECK CONSTRAINT [FK_Kutuphane_Users]
GO
ALTER TABLE [dbo].[StudentHomeWorks]  WITH CHECK ADD  CONSTRAINT [FK_StudentHomeWorks_HomeWorks] FOREIGN KEY([HomeWorkId])
REFERENCES [dbo].[HomeWorks] ([Id])
GO
ALTER TABLE [dbo].[StudentHomeWorks] CHECK CONSTRAINT [FK_StudentHomeWorks_HomeWorks]
GO
ALTER TABLE [dbo].[StudentHomeWorks]  WITH CHECK ADD  CONSTRAINT [FK_StudentHomeWorks_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[StudentHomeWorks] CHECK CONSTRAINT [FK_StudentHomeWorks_Students]
GO
ALTER TABLE [dbo].[StudentHomeWorkVotes]  WITH CHECK ADD  CONSTRAINT [FK_StudentHomeWorkVotes_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[StudentHomeWorkVotes] CHECK CONSTRAINT [FK_StudentHomeWorkVotes_Users]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Users]
GO
