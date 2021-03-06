USE [movies]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[Updated] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActor](
	[MovieId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
 CONSTRAINT [PK_MovieActor] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC,
	[ActorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieId] [int] NOT NULL,
	[GenreId] [int] NOT NULL,
 CONSTRAINT [PK_MovieGenre] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC,
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieReservations]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieReservations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
	[ReservationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MovieReservations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[RuntimeMinutes] [int] NOT NULL,
	[DirectorId] [int] NOT NULL,
	[OnStock] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[UseCaseName] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
	[Actor] [nvarchar](max) NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftDeleted] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](450) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 02-Jul-20 3:52:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUseCases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UserUseCases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625093430_add actors', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625131039_add user, config user, config actors', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630084623_movies, genres, directors', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630101535_movie-actor table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630104010_movie reservation', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630133601_update db', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630141859_updated table movies', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630193300_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630193901_update2', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (1, N'Chris', N'Evans', CAST(N'2020-06-30T19:09:44.0181592' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (2, N'Robert', N'Downey', CAST(N'2020-06-30T19:10:02.0236645' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (3, N'Jennifer', N'Lawrance', CAST(N'2020-07-02T09:01:50.4789369' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (4, N'Channing', N'Tatum', CAST(N'2020-07-02T09:01:54.4475706' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (5, N'George', N'Clooney', CAST(N'2020-07-02T09:01:55.3686039' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (6, N'Johnny', N'Depp', CAST(N'2020-07-02T09:01:56.0443396' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (7, N'Margot', N'Robbie', CAST(N'2020-07-02T09:01:56.7632701' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (8, N'Jared', N'Leto', CAST(N'2020-07-02T09:01:57.4204007' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (9, N'Ryan', N'Reynolds', CAST(N'2020-07-02T09:01:58.1440846' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (10, N'Ryan', N'Gosling', CAST(N'2020-07-02T09:01:58.9288623' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (11, N'Scarlett', N'Johansson', CAST(N'2020-07-02T09:01:59.5409180' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (12, N'Brad', N'Pitt', CAST(N'2020-07-02T09:02:00.2957552' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (13, N'Will', N'Smith', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (14, N'Paul', N'Roud', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (15, N'Ben', N'Affleck', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (16, N'Tom', N'Hardy', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (17, N'Chris', N'HemsWorth', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (18, N'Dwayne', N'Jonhnson', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Created], [IsDeleted], [SoftDeleted], [Updated], [IsActive]) VALUES (19, N'Jamie', N'Foxx', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'Dodo', N'Abashidze')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (2, CAST(N'2020-06-30T15:39:11.3391356' AS DateTime2), NULL, 0, NULL, 1, N'George', N'Abbot')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (4, CAST(N'2020-07-01T14:35:29.7121026' AS DateTime2), CAST(N'2020-07-01T14:37:35.7491929' AS DateTime2), 0, NULL, 1, N'Jim', N'Abrahams')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (6, CAST(N'2020-07-02T09:08:29.4069407' AS DateTime2), NULL, 0, NULL, 1, N'Ivan', N'Abranson')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (7, CAST(N'2020-07-02T09:08:32.2165605' AS DateTime2), NULL, 0, NULL, 1, N'Herbert', N'Acterbuch')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (8, CAST(N'2020-07-02T09:08:33.2107502' AS DateTime2), NULL, 0, NULL, 1, N'Andrew', N'Adamson')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (9, CAST(N'2020-07-02T09:08:34.0079125' AS DateTime2), NULL, 0, NULL, 1, N'Maren', N'Ade')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (10, CAST(N'2020-07-02T09:08:34.7389503' AS DateTime2), NULL, 0, NULL, 1, N'Carine', N'Adler')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (11, CAST(N'2020-07-02T09:08:35.3936453' AS DateTime2), NULL, 0, NULL, 1, N'Percy', N'Adlon')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (12, CAST(N'2020-07-02T09:08:36.0349000' AS DateTime2), NULL, 0, NULL, 1, N'Franklin', N'Andreon')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (13, CAST(N'2020-07-02T09:08:36.6589868' AS DateTime2), NULL, 0, NULL, 1, N'Chantai', N'Akermon')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (14, CAST(N'2020-07-02T09:08:37.2854714' AS DateTime2), NULL, 0, NULL, 1, N'Fatih', N'Akin')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (15, CAST(N'2020-07-02T09:08:37.9939414' AS DateTime2), NULL, 0, NULL, 1, N'Moustapha', N'Akkad')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (16, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Ben', N'Affleck')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (17, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Barbara', N'Albert')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (18, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Irwin', N'Allen')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (19, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Marc', N'Allegert')
INSERT [dbo].[Directors] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName]) VALUES (20, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Woody', N'Allen')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'Action')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'Adventure')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'Comedy')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (5, CAST(N'2020-06-30T15:05:44.8829869' AS DateTime2), NULL, 0, NULL, 1, N'Horor')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (6, CAST(N'2020-07-02T08:59:26.2957181' AS DateTime2), NULL, 0, NULL, 1, N'Drama')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (7, CAST(N'2020-07-02T08:59:37.9560199' AS DateTime2), NULL, 0, NULL, 1, N'Fanrasy')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (8, CAST(N'2020-07-02T08:59:41.2844746' AS DateTime2), NULL, 0, NULL, 1, N'Saga')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (9, CAST(N'2020-07-02T08:59:49.1816226' AS DateTime2), NULL, 0, NULL, 1, N'Thriller')
INSERT [dbo].[Genres] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Name]) VALUES (10, CAST(N'2020-07-02T08:59:52.4046534' AS DateTime2), NULL, 0, NULL, 1, N'Western')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (1, 1)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (3, 1)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (1, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (2, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (3, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (4, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (5, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (6, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (7, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (8, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (9, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (10, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (11, 2)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (1, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (5, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (6, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (7, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (8, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (9, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (10, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (11, 3)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (2, 6)
INSERT [dbo].[MovieActor] ([MovieId], [ActorId]) VALUES (10, 7)
GO
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (3, 1)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (1, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (2, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (3, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (4, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (5, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (6, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (7, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (8, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (9, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (10, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (11, 2)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (5, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (6, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (7, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (8, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (9, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (10, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (11, 3)
INSERT [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (2, 6)
GO
SET IDENTITY_INSERT [dbo].[MovieReservations] ON 

INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (1, CAST(N'2020-07-02T08:24:36.8935018' AS DateTime2), NULL, 0, NULL, 1, 7, 1, CAST(N'2020-07-02T08:24:36.7843982' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (2, CAST(N'2020-07-02T08:45:07.9124485' AS DateTime2), NULL, 0, NULL, 1, 7, 1, CAST(N'2020-07-02T08:45:07.7076108' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (7, CAST(N'2020-07-02T08:45:07.7076108' AS DateTime2), NULL, 0, NULL, 1, 8, 2, CAST(N'2020-07-02T08:45:07.7076108' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (8, CAST(N'2020-07-02T08:45:07.7076108' AS DateTime2), NULL, 0, NULL, 1, 8, 3, CAST(N'2020-07-02T08:45:07.7076108' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (9, CAST(N'2020-07-02T09:43:56.4317502' AS DateTime2), NULL, 0, NULL, 1, 8, 1, CAST(N'2020-07-02T09:43:56.3536287' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (10, CAST(N'2020-07-02T09:43:59.9777275' AS DateTime2), NULL, 0, NULL, 1, 9, 5, CAST(N'2020-07-02T09:43:59.9749178' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (11, CAST(N'2020-07-02T09:44:01.0093079' AS DateTime2), NULL, 0, NULL, 1, 9, 6, CAST(N'2020-07-02T09:44:01.0063232' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (12, CAST(N'2020-07-02T09:44:01.9715854' AS DateTime2), NULL, 0, NULL, 1, 9, 7, CAST(N'2020-07-02T09:44:01.9685838' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (13, CAST(N'2020-07-02T09:44:02.8681490' AS DateTime2), NULL, 0, NULL, 1, 10, 5, CAST(N'2020-07-02T09:44:02.8616950' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (14, CAST(N'2020-07-02T09:44:03.7654547' AS DateTime2), NULL, 0, NULL, 1, 10, 6, CAST(N'2020-07-02T09:44:03.7617309' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (15, CAST(N'2020-07-02T09:44:04.5985229' AS DateTime2), NULL, 0, NULL, 1, 10, 7, CAST(N'2020-07-02T09:44:04.5861908' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (16, CAST(N'2020-07-02T09:44:05.3972731' AS DateTime2), NULL, 0, NULL, 1, 11, 8, CAST(N'2020-07-02T09:44:05.3915002' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (17, CAST(N'2020-07-02T09:44:06.1061792' AS DateTime2), NULL, 0, NULL, 1, 11, 9, CAST(N'2020-07-02T09:44:06.1027022' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (18, CAST(N'2020-07-02T09:44:06.9188099' AS DateTime2), NULL, 0, NULL, 1, 11, 10, CAST(N'2020-07-02T09:44:06.9141771' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (19, CAST(N'2020-07-02T09:44:07.7687264' AS DateTime2), NULL, 0, NULL, 1, 12, 8, CAST(N'2020-07-02T09:44:07.7640114' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (20, CAST(N'2020-07-02T09:44:10.8680389' AS DateTime2), NULL, 0, NULL, 1, 12, 9, CAST(N'2020-07-02T09:44:10.8612113' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (21, CAST(N'2020-07-02T09:44:11.5990905' AS DateTime2), NULL, 0, NULL, 1, 12, 10, CAST(N'2020-07-02T09:44:11.5970820' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (22, CAST(N'2020-07-02T09:44:12.3922136' AS DateTime2), NULL, 0, NULL, 1, 13, 11, CAST(N'2020-07-02T09:44:12.3897023' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (23, CAST(N'2020-07-02T09:44:13.1873742' AS DateTime2), NULL, 0, NULL, 1, 13, 3, CAST(N'2020-07-02T09:44:13.1832378' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (24, CAST(N'2020-07-02T09:44:13.9277716' AS DateTime2), NULL, 0, NULL, 1, 13, 4, CAST(N'2020-07-02T09:44:13.9252364' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (25, CAST(N'2020-07-02T09:44:14.6704508' AS DateTime2), NULL, 0, NULL, 1, 15, 5, CAST(N'2020-07-02T09:44:14.6656990' AS DateTime2))
INSERT [dbo].[MovieReservations] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [UserId], [MovieId], [ReservationDate]) VALUES (26, CAST(N'2020-07-02T11:18:21.4151228' AS DateTime2), NULL, 0, NULL, 1, 16, 1, CAST(N'2020-07-02T11:18:21.2467156' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MovieReservations] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-02T14:49:52.6133908' AS DateTime2), 0, NULL, 0, N'Movie1', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2012-06-22T00:00:00.0000000' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'Movie2', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2020-06-30T12:05:45.9457299' AS DateTime2), 60, 2, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (3, CAST(N'2020-06-30T19:23:36.2031875' AS DateTime2), NULL, 0, NULL, 1, N'Movie3', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2015-03-25T00:00:00.0000000' AS DateTime2), 60, 6, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (4, CAST(N'2020-07-02T07:00:24.2297779' AS DateTime2), NULL, 0, NULL, 1, N'Movie4', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 7, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (5, CAST(N'2020-07-02T09:35:45.0549458' AS DateTime2), NULL, 0, NULL, 1, N'Movie5', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 8, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (6, CAST(N'2020-07-02T09:35:48.4422609' AS DateTime2), NULL, 0, NULL, 1, N'Movie6', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 8, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (7, CAST(N'2020-07-02T09:35:49.5065263' AS DateTime2), NULL, 0, NULL, 1, N'Movie7', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 9, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (8, CAST(N'2020-07-02T09:35:50.4729644' AS DateTime2), NULL, 0, NULL, 1, N'Movie8', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 9, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (9, CAST(N'2020-07-02T09:35:51.4588947' AS DateTime2), NULL, 0, NULL, 1, N'Movie9', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 10, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (10, CAST(N'2020-07-02T09:35:52.5790181' AS DateTime2), NULL, 0, NULL, 1, N'Movie10', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 11, 10)
INSERT [dbo].[Movies] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [Title], [Description], [ReleaseDate], [RuntimeMinutes], [DirectorId], [OnStock]) VALUES (11, CAST(N'2020-07-02T09:35:53.4096332' AS DateTime2), NULL, 0, NULL, 1, N'Movie11', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2017-05-12T00:00:00.0000000' AS DateTime2), 100, 12, 10)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (1, CAST(N'2020-07-01T05:22:30.5176960' AS DateTime2), N'Ef get one actor', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (2, CAST(N'2020-07-01T05:23:21.5613023' AS DateTime2), N'Ef get one actor', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (3, CAST(N'2020-07-01T05:24:00.3082061' AS DateTime2), N'Ef get one actor', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (4, CAST(N'2020-07-01T09:42:40.5042634' AS DateTime2), N'Ef delete actor', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (5, CAST(N'2020-07-01T11:58:19.8655400' AS DateTime2), N'Ef get actors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (6, CAST(N'2020-07-01T12:00:24.5450663' AS DateTime2), N'Ef get actors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (7, CAST(N'2020-07-01T12:10:16.8618161' AS DateTime2), N'Ef get directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (8, CAST(N'2020-07-01T12:10:43.4542660' AS DateTime2), N'Ef get directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (9, CAST(N'2020-07-01T12:21:04.4871915' AS DateTime2), N'Ef create director', N'{"FirstName":"Director1","LastName":"Director2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (10, CAST(N'2020-07-01T12:22:21.3417700' AS DateTime2), N'Ef create director', N'{"FirstName":"Director1","LastName":"Director2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (11, CAST(N'2020-07-01T12:22:51.9064246' AS DateTime2), N'Ef delete director', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (12, CAST(N'2020-07-01T12:35:18.3947315' AS DateTime2), N'Ef create director', N'{"FirstName":"Director1","LastName":"Director2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (13, CAST(N'2020-07-01T12:36:02.3482606' AS DateTime2), N'Ef get directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (14, CAST(N'2020-07-01T12:37:01.8597106' AS DateTime2), N'Ef update director', N'{"Id":3,"FirstName":"Test","LastName":"Director2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (15, CAST(N'2020-07-01T12:37:33.8502658' AS DateTime2), N'Ef update director', N'{"Id":4,"FirstName":"Test","LastName":"Director2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (16, CAST(N'2020-07-01T13:52:57.3632370' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (17, CAST(N'2020-07-01T13:54:46.6139581' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (18, CAST(N'2020-07-01T14:21:27.8210521' AS DateTime2), N'Ef update user', N'{"Id":1,"UserUseCases":[1,2,3,5]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (19, CAST(N'2020-07-01T14:29:44.9112625' AS DateTime2), N'Ef update user', N'{"Id":1,"UserUseCases":[4],"RemoveUserUseCases":[5]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (20, CAST(N'2020-07-01T14:50:26.7517493' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Admin","LastName":"Admin","Username":"admin","Password":"sifra123","Email":"admin@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (21, CAST(N'2020-07-01T14:52:31.1881775' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (22, CAST(N'2020-07-01T14:53:47.9605147' AS DateTime2), N'Ef update user', N'{"Id":7,"UserUseCases":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],"RemoveUserUseCases":[]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (23, CAST(N'2020-07-01T14:58:13.4935264' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (24, CAST(N'2020-07-01T14:58:40.3787289' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (25, CAST(N'2020-07-01T14:58:50.4352162' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (26, CAST(N'2020-07-01T14:58:51.6219924' AS DateTime2), N'Ef get users', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (27, CAST(N'2020-07-01T15:21:56.7630981' AS DateTime2), N'Eg get logs', N'{"Actor":null,"UseCaseName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (28, CAST(N'2020-07-01T15:22:48.0910252' AS DateTime2), N'Eg get logs', N'{"Actor":null,"UseCaseName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (29, CAST(N'2020-07-01T15:39:13.5165827' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca","LastName":"Todor","Username":"aca","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (30, CAST(N'2020-07-01T15:41:38.6769221' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca2","LastName":"Todor2","Username":"aca2","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (31, CAST(N'2020-07-01T15:44:11.1703546' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca2","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (32, CAST(N'2020-07-01T15:44:42.7278625' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca3","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (33, CAST(N'2020-07-01T15:46:46.6573976' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca4","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (34, CAST(N'2020-07-01T15:52:46.2518817' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca5","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (35, CAST(N'2020-07-01T15:55:40.4170837' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca6","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (36, CAST(N'2020-07-01T16:05:26.2246372' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca7","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (37, CAST(N'2020-07-01T16:06:43.7640029' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Aca3","LastName":"Todor3","Username":"aca8","Password":"sifra123","Email":"atodorovic197@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (38, CAST(N'2020-07-01T17:16:39.9888081' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":null,"LastName":null}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (39, CAST(N'2020-07-01T17:25:07.3811574' AS DateTime2), N'Ef delete actor', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (40, CAST(N'2020-07-01T17:34:08.6076676' AS DateTime2), N'Ef update actor', N'{"Id":1,"FirstName":null,"LastName":null}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (41, CAST(N'2020-07-01T17:43:12.5764828' AS DateTime2), N'Ef get directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (42, CAST(N'2020-07-01T17:43:55.0367541' AS DateTime2), N'Ef create director', N'{"FirstName":null,"LastName":null}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (43, CAST(N'2020-07-01T17:44:03.7775618' AS DateTime2), N'Ef delete director', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (44, CAST(N'2020-07-01T17:44:11.8637763' AS DateTime2), N'Ef update director', N'{"Id":3,"FirstName":null,"LastName":null}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (45, CAST(N'2020-07-01T17:45:24.6661691' AS DateTime2), N'Ef create director', N'{"FirstName":"Test","LastName":"Test"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (46, CAST(N'2020-07-01T17:45:56.9144712' AS DateTime2), N'Ef delete director', N'5', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (47, CAST(N'2020-07-01T17:47:26.3102856' AS DateTime2), N'Ef delete director', N'5', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (48, CAST(N'2020-07-01T17:48:34.3866081' AS DateTime2), N'Ef delete director', N'5', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (49, CAST(N'2020-07-01T18:13:20.7912487' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":null}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (50, CAST(N'2020-07-01T18:21:54.1140727' AS DateTime2), N'Ef get genres', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (51, CAST(N'2020-07-01T18:22:40.7295502' AS DateTime2), N'Ef get genres', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (52, CAST(N'2020-07-01T18:49:16.5152405' AS DateTime2), N'Ef create movie', N'{"Title":null,"Description":null,"ReleaseDate":"0001-01-01T00:00:00","OnStock":0,"RuntimeMinutes":0,"DirectorId":0,"Genres":[],"Actors":[]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (53, CAST(N'2020-07-01T19:07:31.9696388' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (54, CAST(N'2020-07-01T19:08:24.3931371' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (55, CAST(N'2020-07-01T19:09:28.3554723' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (56, CAST(N'2020-07-01T20:11:34.8473553' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (57, CAST(N'2020-07-01T20:13:45.9866535' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (58, CAST(N'2020-07-01T20:15:32.1340136' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (59, CAST(N'2020-07-01T20:23:57.0051563' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (60, CAST(N'2020-07-01T20:25:14.9321187' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (61, CAST(N'2020-07-01T20:27:13.4390070' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (62, CAST(N'2020-07-01T20:31:44.4657517' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (63, CAST(N'2020-07-01T20:38:18.8661015' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (64, CAST(N'2020-07-01T20:42:26.3715203' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (65, CAST(N'2020-07-02T04:54:05.0255969' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (66, CAST(N'2020-07-02T04:55:17.4932580' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2dasdasdasddsadasdasdsds asdas dasd as dsa","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (67, CAST(N'2020-07-02T05:00:07.6523747' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2dasdasdasddsadasdasdsds asdas dasd as dsa","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (68, CAST(N'2020-07-02T05:02:34.5555708' AS DateTime2), N'Eg get logs', N'{"Actor":null,"UseCaseName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (69, CAST(N'2020-07-02T05:11:27.2079067' AS DateTime2), N'Eg get logs', N'{"Actor":null,"UseCaseName":null,"DateFrom":"0001-01-01T00:00:00","DateTo":"2020-07-02T05:11:26.7838617Z","PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (70, CAST(N'2020-07-02T05:28:49.1488814' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (71, CAST(N'2020-07-02T05:29:06.5664286' AS DateTime2), N'Ef get one movie', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (72, CAST(N'2020-07-02T05:31:12.0096303' AS DateTime2), N'Ef get one movie', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (73, CAST(N'2020-07-02T05:33:09.8285663' AS DateTime2), N'Ef get one movie', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (74, CAST(N'2020-07-02T05:36:55.7669303' AS DateTime2), N'Ef get one movie', N'4', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (75, CAST(N'2020-07-02T05:39:57.6151555' AS DateTime2), N'Ef get one movie', N'4', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (76, CAST(N'2020-07-02T05:40:27.5984999' AS DateTime2), N'Ef get one movie', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (77, CAST(N'2020-07-02T05:57:56.1399447' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (78, CAST(N'2020-07-02T05:59:33.9188807' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (79, CAST(N'2020-07-02T06:24:26.9356839' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (80, CAST(N'2020-07-02T06:34:14.9156236' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":0,"ReservationDate":"0001-01-01T00:00:00"}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (81, CAST(N'2020-07-02T06:44:09.9636191' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (82, CAST(N'2020-07-02T06:45:06.9417780' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (83, CAST(N'2020-07-02T06:59:21.1778553' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (84, CAST(N'2020-07-02T06:59:29.0647250' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (85, CAST(N'2020-07-02T06:59:37.9204141' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test2"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (86, CAST(N'2020-07-02T06:59:41.2661472' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test3"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (87, CAST(N'2020-07-02T06:59:49.1464091' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test4"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (88, CAST(N'2020-07-02T06:59:52.3795612' AS DateTime2), N'Ef create genre', N'{"Id":0,"Name":"Test5"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (89, CAST(N'2020-07-02T07:01:12.1688747' AS DateTime2), N'Ef get genres', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (90, CAST(N'2020-07-02T07:01:50.3942458' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (91, CAST(N'2020-07-02T07:01:54.4333524' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (92, CAST(N'2020-07-02T07:01:55.3334426' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (93, CAST(N'2020-07-02T07:01:56.0231515' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (94, CAST(N'2020-07-02T07:01:56.7441660' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (95, CAST(N'2020-07-02T07:01:57.3919276' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (96, CAST(N'2020-07-02T07:01:58.1094343' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (97, CAST(N'2020-07-02T07:01:58.9084809' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (98, CAST(N'2020-07-02T07:01:59.5246081' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (99, CAST(N'2020-07-02T07:02:00.2659988' AS DateTime2), N'Ef create actor', N'{"Id":0,"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
GO
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (100, CAST(N'2020-07-02T07:08:29.3429942' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (101, CAST(N'2020-07-02T07:08:32.2084444' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (102, CAST(N'2020-07-02T07:08:33.1936705' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (103, CAST(N'2020-07-02T07:08:33.9982974' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (104, CAST(N'2020-07-02T07:08:34.7305901' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (105, CAST(N'2020-07-02T07:08:35.3888659' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (106, CAST(N'2020-07-02T07:08:36.0282112' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (107, CAST(N'2020-07-02T07:08:36.6545409' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (108, CAST(N'2020-07-02T07:08:37.2773700' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (109, CAST(N'2020-07-02T07:08:37.9764967' AS DateTime2), N'Ef create director', N'{"FirstName":"Test1","LastName":"Test1"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (110, CAST(N'2020-07-02T07:11:53.1072169' AS DateTime2), N'Ef get directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (111, CAST(N'2020-07-02T07:32:35.8891138' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (112, CAST(N'2020-07-02T07:33:33.2995941' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (113, CAST(N'2020-07-02T07:33:43.0643218' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (114, CAST(N'2020-07-02T07:33:56.0657941' AS DateTime2), N'Ef get one movie', N'3', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (115, CAST(N'2020-07-02T07:35:20.1917227' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":2,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":2,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":2,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (116, CAST(N'2020-07-02T07:35:44.9450872' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (117, CAST(N'2020-07-02T07:35:48.3800617' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (118, CAST(N'2020-07-02T07:35:49.4774911' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (119, CAST(N'2020-07-02T07:35:50.4269171' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (120, CAST(N'2020-07-02T07:35:51.3849623' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (121, CAST(N'2020-07-02T07:35:52.5448711' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (122, CAST(N'2020-07-02T07:35:53.3751519' AS DateTime2), N'Ef create movie', N'{"Title":"Title1","Description":"Description2 sadsadas dasdds dasadsadas dasdads","ReleaseDate":"2017-05-12T00:00:00","OnStock":10,"RuntimeMinutes":100,"DirectorId":1,"Genres":[{"Id":2,"Name":null},{"Id":3,"Name":null}],"Actors":[{"Id":2,"FirstName":null,"LastName":null},{"Id":3,"FirstName":null,"LastName":null}]}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (123, CAST(N'2020-07-02T07:36:54.0941446' AS DateTime2), N'Ef get one movie', N'10', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (124, CAST(N'2020-07-02T07:37:41.4373786' AS DateTime2), N'Ef get one movie', N'10', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (125, CAST(N'2020-07-02T07:38:04.8710777' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (126, CAST(N'2020-07-02T07:38:42.6244807' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (127, CAST(N'2020-07-02T07:39:15.3381943' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (128, CAST(N'2020-07-02T07:43:56.2886080' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (129, CAST(N'2020-07-02T07:43:59.9553793' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (130, CAST(N'2020-07-02T07:44:00.9783961' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (131, CAST(N'2020-07-02T07:44:01.9522344' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (132, CAST(N'2020-07-02T07:44:02.8283715' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (133, CAST(N'2020-07-02T07:44:03.7463958' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (134, CAST(N'2020-07-02T07:44:04.5480120' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (135, CAST(N'2020-07-02T07:44:05.3487803' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (136, CAST(N'2020-07-02T07:44:06.0872761' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (137, CAST(N'2020-07-02T07:44:06.8743656' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (138, CAST(N'2020-07-02T07:44:07.7221448' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (139, CAST(N'2020-07-02T07:44:10.8158433' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (140, CAST(N'2020-07-02T07:44:11.5825343' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (141, CAST(N'2020-07-02T07:44:12.3759560' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (142, CAST(N'2020-07-02T07:44:13.1560231' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (143, CAST(N'2020-07-02T07:44:13.9102250' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (144, CAST(N'2020-07-02T07:44:14.6462805' AS DateTime2), N'Ef create reservation', N'{"UserId":7,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00"}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (145, CAST(N'2020-07-02T08:11:43.9750068' AS DateTime2), N'Ef get reservations', N'{"MovieId":1,"PerPage":10,"Page":1}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (146, CAST(N'2020-07-02T08:13:50.2753275' AS DateTime2), N'Ef get reservations', N'{"MovieId":1,"PerPage":10,"Page":1}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (147, CAST(N'2020-07-02T08:15:48.9626365' AS DateTime2), N'Ef get reservations', N'{"MovieId":1,"PerPage":10,"Page":1}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (148, CAST(N'2020-07-02T09:00:41.7726468' AS DateTime2), N'Ef get one user', N'1', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (149, CAST(N'2020-07-02T09:00:55.1070618' AS DateTime2), N'Ef get one user', N'1', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (150, CAST(N'2020-07-02T09:00:57.0317028' AS DateTime2), N'Ef get one user', N'15', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (151, CAST(N'2020-07-02T09:01:00.2409496' AS DateTime2), N'Ef get one user', N'4', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (152, CAST(N'2020-07-02T09:01:03.0798575' AS DateTime2), N'Ef get one user', N'5', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (153, CAST(N'2020-07-02T09:01:06.1414188' AS DateTime2), N'Ef get one user', N'7', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (154, CAST(N'2020-07-02T09:01:08.2312094' AS DateTime2), N'Ef get one user', N'7', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (155, CAST(N'2020-07-02T09:01:09.5283876' AS DateTime2), N'Ef get one user', N'8', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (156, CAST(N'2020-07-02T09:01:13.2629679' AS DateTime2), N'Ef get one user', N'9', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (157, CAST(N'2020-07-02T09:14:00.4382000' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Test","LastName":"Test","Username":"test12345","Password":"sifra123","Email":"test@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (158, CAST(N'2020-07-02T09:17:30.6532134' AS DateTime2), N'Ef get reservations', N'{"MovieId":1,"PerPage":10,"Page":1}', N'test12345')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (159, CAST(N'2020-07-02T09:18:21.1603802' AS DateTime2), N'Ef create reservation', N'{"UserId":16,"MovieId":1,"ReservationDate":"0001-01-01T00:00:00","Movie":null}', N'test12345')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (160, CAST(N'2020-07-02T09:20:33.4881661' AS DateTime2), N'Ef get reservations', N'{"MovieId":1,"PerPage":10,"Page":1}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (161, CAST(N'2020-07-02T09:22:01.1345937' AS DateTime2), N'Eg get logs', N'{"Actor":null,"UseCaseName":null,"DateFrom":"0001-01-01T00:00:00","DateTo":"2020-07-02T09:22:01.0694938Z","PerPage":10,"Page":1}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (162, CAST(N'2020-07-02T10:54:55.8584484' AS DateTime2), N'Ef update user', N'{"Id":7,"UserUseCases":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],"RemoveUserUseCases":[]}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (163, CAST(N'2020-07-02T10:55:33.1697912' AS DateTime2), N'Ef update user', N'{"Id":1,"UserUseCases":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],"RemoveUserUseCases":[]}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (164, CAST(N'2020-07-02T10:57:39.4158311' AS DateTime2), N'Ef get one user', N'7', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (165, CAST(N'2020-07-02T10:57:44.0529292' AS DateTime2), N'Ef get one user', N'9', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (166, CAST(N'2020-07-02T11:06:45.2783530' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (167, CAST(N'2020-07-02T11:15:41.5398122' AS DateTime2), N'Ef - user registration', N'{"Id":0,"FirstName":"Test2","LastName":"Test2","Username":"test12345123","Password":"sifra123","Email":"test2@gmail.com"}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (168, CAST(N'2020-07-02T12:26:58.8400180' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (169, CAST(N'2020-07-02T12:36:33.9030219' AS DateTime2), N'Ef get one movie', N'1', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (170, CAST(N'2020-07-02T12:41:28.1250370' AS DateTime2), N'Ef update movie', N'{"Id":1,"Title":"Promena","Description":null,"ReleaseDate":"0001-01-01T00:00:00","OnStock":0,"RuntimeMinutes":0}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (171, CAST(N'2020-07-02T12:43:39.1557756' AS DateTime2), N'Ef update movie', N'{"Id":1,"Title":"Promena","Description":null,"ReleaseDate":"0001-01-01T00:00:00","OnStock":0,"RuntimeMinutes":0}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (172, CAST(N'2020-07-02T12:49:23.9681332' AS DateTime2), N'Ef update movie', N'{"Id":1,"Title":"Promena","Description":null,"ReleaseDate":"0001-01-01T00:00:00","OnStock":0,"RuntimeMinutes":0}', N'admin123')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (173, CAST(N'2020-07-02T13:08:13.1786340' AS DateTime2), N'Movie Search', N'{"Title":null,"PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (174, CAST(N'2020-07-02T13:08:30.0228991' AS DateTime2), N'Movie Search', N'{"Title":"2","PerPage":10,"Page":1}', N'Anonimus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (175, CAST(N'2020-07-02T13:50:31.5624508' AS DateTime2), N'Ef soft delete user', N'27', N'admin123')
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (1, CAST(N'2020-06-30T22:06:05.6326896' AS DateTime2), NULL, 0, NULL, 1, N'Pera', N'Peric', N'pera12345', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'pera@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (7, CAST(N'2020-07-01T16:50:31.8689154' AS DateTime2), NULL, 0, NULL, 1, N'Admin', N'Admin', N'admin123', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'admin@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (8, CAST(N'2020-07-01T17:39:19.6255804' AS DateTime2), NULL, 0, NULL, 1, N'Aca', N'Todor', N'aca12345', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'atodorovic197@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (9, CAST(N'2020-07-01T17:41:47.8145859' AS DateTime2), NULL, 0, NULL, 1, N'Mika', N'Mikic', N'mika12345', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'mika197@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (10, CAST(N'2020-07-01T17:44:42.7644004' AS DateTime2), NULL, 0, NULL, 1, N'Zika', N'Zikic', N'zika12345', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'ziika197@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (11, CAST(N'2020-07-01T17:46:52.5932348' AS DateTime2), NULL, 0, NULL, 1, N'Jovana', N'Jovanovic', N'jovana123', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'jovana@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (12, CAST(N'2020-07-01T17:52:56.9657913' AS DateTime2), NULL, 0, NULL, 1, N'Ana', N'Todorovic', N'ana123', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'ana@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (13, CAST(N'2020-07-01T17:55:45.7378426' AS DateTime2), NULL, 0, NULL, 1, N'Nemanja', N'Pecic', N'nemanja', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'nemanja@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (15, CAST(N'2020-07-01T18:06:49.8452586' AS DateTime2), NULL, 0, NULL, 1, N'Aleksa', N'Mitic', N'aleksa123', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'aleksa@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (16, CAST(N'2020-07-02T11:14:07.1077819' AS DateTime2), NULL, 0, NULL, 1, N'Filip', N'Nikolic', N'fica345', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'filip@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (17, CAST(N'2020-07-02T13:15:41.9649061' AS DateTime2), NULL, 0, NULL, 1, N'Test2', N'Test2', N'test12345123', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'test2@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (26, CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, N'Petar', N'Petrovic', N'perica', N'566a489658425a07b32ed07c34d7a25cb4c3b16947799fdae2e8a9715cfce412', N'perica@gmail.com')
INSERT [dbo].[Users] ([Id], [Created], [Updated], [IsDeleted], [SoftDeleted], [IsActive], [FirstName], [LastName], [Username], [Password], [Email]) VALUES (27, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-02T15:50:32.6469365' AS DateTime2), 1, CAST(N'2020-07-02T15:50:32.5867986' AS DateTime2), 1, N'Test', N'Test', N'test', N'sadasdasds', N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserUseCases] ON 

INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (1, 1, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (2, 1, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (3, 1, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (4, 1, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (9, 7, 28)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (10, 7, 27)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (11, 7, 26)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (12, 7, 25)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (13, 7, 24)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (14, 7, 23)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (15, 7, 22)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (16, 7, 21)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (17, 7, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (18, 7, 19)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (19, 7, 18)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (20, 7, 17)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (21, 7, 16)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (22, 7, 15)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (23, 7, 14)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (24, 7, 13)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (25, 7, 12)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (26, 7, 11)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (27, 7, 10)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (28, 7, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (29, 7, 8)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (30, 7, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (31, 7, 6)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (32, 7, 5)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (33, 7, 4)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (34, 7, 3)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (35, 7, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (36, 7, 29)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (37, 7, 30)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (39, 15, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (40, 15, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (41, 15, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (42, 15, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (45, 7, 1)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (50, 8, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (51, 8, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (52, 8, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (53, 8, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (54, 9, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (55, 9, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (56, 9, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (57, 9, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (58, 10, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (59, 10, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (60, 10, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (61, 10, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (62, 11, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (63, 11, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (64, 11, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (65, 11, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (66, 12, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (67, 12, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (68, 12, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (69, 12, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (70, 13, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (71, 13, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (72, 13, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (73, 13, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (75, 16, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (76, 16, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (77, 16, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (78, 16, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (139, 17, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (140, 17, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (141, 17, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (142, 17, 7)
SET IDENTITY_INSERT [dbo].[UserUseCases] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Users_Username]    Script Date: 02-Jul-20 3:52:13 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [AK_Users_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Created]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Movies] ADD  DEFAULT ((0)) FOR [OnStock]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Actors_ActorId]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Movies_MovieId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Genres_GenreId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Movies_MovieId]
GO
ALTER TABLE [dbo].[MovieReservations]  WITH CHECK ADD  CONSTRAINT [FK_MovieReservations_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MovieReservations] CHECK CONSTRAINT [FK_MovieReservations_Movies_MovieId]
GO
ALTER TABLE [dbo].[MovieReservations]  WITH CHECK ADD  CONSTRAINT [FK_MovieReservations_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[MovieReservations] CHECK CONSTRAINT [FK_MovieReservations_Users_UserId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Directors_DirectorId] FOREIGN KEY([DirectorId])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Directors_DirectorId]
GO
ALTER TABLE [dbo].[UserUseCases]  WITH CHECK ADD  CONSTRAINT [FK_UserUseCases_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserUseCases] CHECK CONSTRAINT [FK_UserUseCases_Users_UserId]
GO
