USE [master]
GO
/****** Object:  Database [MetroTrainManagement]    Script Date: 5/1/2020 3:11:55 AM ******/
CREATE DATABASE [MetroTrainManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MetroTrainManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.PULOCK\MSSQL\DATA\MetroTrainManagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MetroTrainManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.PULOCK\MSSQL\DATA\MetroTrainManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MetroTrainManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MetroTrainManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MetroTrainManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MetroTrainManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MetroTrainManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MetroTrainManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MetroTrainManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MetroTrainManagement] SET  MULTI_USER 
GO
ALTER DATABASE [MetroTrainManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MetroTrainManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MetroTrainManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MetroTrainManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MetroTrainManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MetroTrainManagement]
GO
/****** Object:  Table [dbo].[DeletedUser]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeletedUser](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Report] [text] NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[AdminId] [int] NOT NULL,
	[DeletedTime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeletedUser] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Report] [text] NOT NULL,
	[Checked] [int] NOT NULL,
	[Time] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Request]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Nid] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Dob] [date] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SeatCount]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeatCount](
	[TrainId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Seat] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainTable]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrainTable](
	[TrainId] [int] IDENTITY(1000,1) NOT NULL,
	[TrainName] [varchar](50) NOT NULL,
	[Start] [varchar](50) NOT NULL,
	[Destination] [varchar](50) NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[Ticket] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TrainTable] PRIMARY KEY CLUSTERED 
(
	[TrainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 5/1/2020 3:11:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Nid] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Dob] [date] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserLoginType] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DeletedUser] ON 

INSERT [dbo].[DeletedUser] ([Serial], [UserId], [Report], [Time], [AdminId], [DeletedTime]) VALUES (1, 5, N'sq', N'5/1/2020 1:51:06 AM', 100, N'5/1/2020 2:44:53 AM')
SET IDENTITY_INSERT [dbo].[DeletedUser] OFF
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([Serial], [UserId], [Report], [Checked], [Time]) VALUES (1, 5, N'sq', 1, N'5/1/2020 1:51:06 AM')
INSERT [dbo].[Report] ([Serial], [UserId], [Report], [Checked], [Time]) VALUES (2, 6, N'adawa', 0, N'5/1/2020 2:15:14 AM')
INSERT [dbo].[Report] ([Serial], [UserId], [Report], [Checked], [Time]) VALUES (3, 6, N'adw', 1, N'5/1/2020 2:15:25 AM')
INSERT [dbo].[Report] ([Serial], [UserId], [Report], [Checked], [Time]) VALUES (4, 14, N'rwa', 0, N'5/1/2020 2:15:36 AM')
SET IDENTITY_INSERT [dbo].[Report] OFF
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 5, 4, N'OLD')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 6, 3, N'OLD')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 14, 4, N'OLD')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 15, 4, N'OLD')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 11, 4, N'OLD')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 15, 1, N'NEW')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 5, 4, N'NEW')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 11, 2, N'NEW')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 14, 2, N'NEW')
INSERT [dbo].[SeatCount] ([TrainId], [UserId], [Seat], [Status]) VALUES (1002, 6, 4, N'NEW')
SET IDENTITY_INSERT [dbo].[TrainTable] ON 

INSERT [dbo].[TrainTable] ([TrainId], [TrainName], [Start], [Destination], [Time], [Day], [Ticket], [Amount], [Status]) VALUES (1002, N'q', N'q', N'q', N'q', N'q', 0, 10, N'ARRIVING')
SET IDENTITY_INSERT [dbo].[TrainTable] OFF
INSERT [dbo].[UserTable] ([Id], [Name], [Nid], [Email], [Phone], [Dob], [Gender], [Address], [UserName], [Password], [UserLoginType], [Amount]) VALUES (6, N'w         ', N'w', N'w', N'w', CAST(N'2020-04-10' AS Date), N'MALE', N'w', N'w', N'w', 2, 130)
INSERT [dbo].[UserTable] ([Id], [Name], [Nid], [Email], [Phone], [Dob], [Gender], [Address], [UserName], [Password], [UserLoginType], [Amount]) VALUES (11, N'a         ', N's', N'da', N'qq', CAST(N'2020-04-11' AS Date), N'MALE', N'1', N'y', N'u', 2, 100)
INSERT [dbo].[UserTable] ([Id], [Name], [Nid], [Email], [Phone], [Dob], [Gender], [Address], [UserName], [Password], [UserLoginType], [Amount]) VALUES (14, N'q         ', N'q', N'q', N'q', CAST(N'2020-04-12' AS Date), N'FEMALE', N'r', N'r', N'r', 2, 30)
INSERT [dbo].[UserTable] ([Id], [Name], [Nid], [Email], [Phone], [Dob], [Gender], [Address], [UserName], [Password], [UserLoginType], [Amount]) VALUES (15, N'r         ', N'r', N'r', N'r', CAST(N'2020-04-12' AS Date), N'FEMALE', N'r', N'u', N'u', 2, 20)
INSERT [dbo].[UserTable] ([Id], [Name], [Nid], [Email], [Phone], [Dob], [Gender], [Address], [UserName], [Password], [UserLoginType], [Amount]) VALUES (100, N'PULOCK    ', N'12345678', N'Choyondas100@gmail.com', N'0168919830', CAST(N'1996-10-15' AS Date), N'MALE', N'DHAKA', N'pulock', N'1', 1, 0)
USE [master]
GO
ALTER DATABASE [MetroTrainManagement] SET  READ_WRITE 
GO
