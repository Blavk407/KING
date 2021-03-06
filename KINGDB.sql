USE [master]
GO
/****** Object:  Database [KING]    Script Date: 13.04.2022 16:05:23 ******/
CREATE DATABASE [KING]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KING', FILENAME = N'D:\Games\SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KING.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KING_log', FILENAME = N'D:\Games\SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KING_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KING] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KING].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KING] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KING] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KING] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KING] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KING] SET ARITHABORT OFF 
GO
ALTER DATABASE [KING] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KING] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KING] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KING] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KING] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KING] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KING] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KING] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KING] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KING] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KING] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KING] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KING] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KING] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KING] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KING] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KING] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KING] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KING] SET  MULTI_USER 
GO
ALTER DATABASE [KING] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KING] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KING] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KING] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KING] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KING] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KING] SET QUERY_STORE = OFF
GO
USE [KING]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id_activity] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id_activity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appeals]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appeals](
	[Id_appeals] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](16) NOT NULL,
	[Id_staff] [int] NOT NULL,
	[Reason] [nvarchar](max) NOT NULL,
	[Solution] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Appeals] PRIMARY KEY CLUSTERED 
(
	[Id_appeals] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id_author] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id_author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlockedUsers]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedUsers](
	[Id_blockeduser] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_userblocked] [int] NOT NULL,
 CONSTRAINT [PK_BlockedUsers] PRIMARY KEY CLUSTERED 
(
	[Id_blockeduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[Id_card] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Number] [nvarchar](19) NOT NULL,
	[Month] [nchar](2) NOT NULL,
	[Year] [nchar](2) NOT NULL,
	[CVV] [nchar](3) NOT NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[Id_card] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id_chat] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_user2] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id_chat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLC]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLC](
	[Id_dlc] [int] IDENTITY(1,1) NOT NULL,
	[Id_game] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Cost] [money] NOT NULL,
 CONSTRAINT [PK_DLC] PRIMARY KEY CLUSTERED 
(
	[Id_dlc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_friend] [int] NOT NULL,
	[Id_user] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gameplays]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gameplays](
	[Id_gameplay] [int] IDENTITY(1,1) NOT NULL,
	[Id_game] [int] NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Gameplays] PRIMARY KEY CLUSTERED 
(
	[Id_gameplay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id_game] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Release] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Id_author] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Age_limit] [int] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id_game] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GamesActivity]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamesActivity](
	[Id_gameactivity] [int] IDENTITY(1,1) NOT NULL,
	[Id_game] [int] NOT NULL,
	[Id_user] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
 CONSTRAINT [PK_GamesActivity] PRIMARY KEY CLUSTERED 
(
	[Id_gameactivity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GamesComments]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamesComments](
	[Id_gamecomment] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_game] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Rating] [float] NOT NULL,
 CONSTRAINT [PK_GamesComments] PRIMARY KEY CLUSTERED 
(
	[Id_gamecomment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id_message] [int] IDENTITY(1,1) NOT NULL,
	[Id_chat] [int] NOT NULL,
	[Id_user] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id_message] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesStatus]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesStatus](
	[Id_messagestatus] [int] IDENTITY(1,1) NOT NULL,
	[Id_message] [int] NOT NULL,
	[Id_user] [int] NOT NULL,
	[Is_Read] [nvarchar](max) NOT NULL,
	[Notified] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MessagesStatus] PRIMARY KEY CLUSTERED 
(
	[Id_messagestatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentSalaries]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentSalaries](
	[Id_paymentsalaries] [int] IDENTITY(1,1) NOT NULL,
	[Id_staff] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Salary] [money] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaymentSalaries] PRIMARY KEY CLUSTERED 
(
	[Id_paymentsalaries] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaysDLC]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaysDLC](
	[Id_paydlc] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_dlc] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaysDLC] PRIMARY KEY CLUSTERED 
(
	[Id_paydlc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaysGames]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaysGames](
	[Id_paygames] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_game] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Operation] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaysGames] PRIMARY KEY CLUSTERED 
(
	[Id_paygames] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id_role] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[Id_shift] [int] IDENTITY(1,1) NOT NULL,
	[Start_shift] [datetime] NOT NULL,
	[End_shift] [datetime] NOT NULL,
	[Start_break] [datetime] NOT NULL,
	[End_break] [datetime] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Shifts] PRIMARY KEY CLUSTERED 
(
	[Id_shift] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftsStaffs]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftsStaffs](
	[Id_shiftstaff] [int] IDENTITY(1,1) NOT NULL,
	[Id_staff] [int] NULL,
	[Id_shift] [int] NULL,
	[CountHour] [int] NULL,
 CONSTRAINT [PK_ShiftsStaffs] PRIMARY KEY CLUSTERED 
(
	[Id_shiftstaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[Id_staff] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Passport_number] [nchar](6) NOT NULL,
	[Passport_seria] [nchar](4) NOT NULL,
	[INN] [nchar](12) NOT NULL,
	[Post] [nvarchar](max) NOT NULL,
	[SalaryHour] [money] NOT NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[Id_staff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id_user] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Security] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Birthday] [date] NULL,
	[Phone] [nvarchar](16) NULL,
	[email] [nvarchar](max) NULL,
	[Id_role] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersBan]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersBan](
	[Id_userban] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Reason] [nvarchar](max) NOT NULL,
	[Date_ban] [datetime] NOT NULL,
	[Date_unban] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersBan] PRIMARY KEY CLUSTERED 
(
	[Id_userban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersDLC]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersDLC](
	[Id_userdlc] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_dlc] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UsersDLC] PRIMARY KEY CLUSTERED 
(
	[Id_userdlc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersGames]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersGames](
	[Id_usergame] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Id_game] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UsersGames] PRIMARY KEY CLUSTERED 
(
	[Id_usergame] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSettings]    Script Date: 13.04.2022 16:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSettings](
	[Id_usersetting] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NOT NULL,
	[Font] [nvarchar](max) NOT NULL,
	[Style] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UsersSettings] PRIMARY KEY CLUSTERED 
(
	[Id_usersetting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id_role], [Name], [Description]) VALUES (1, N'User', N'Человек с этой ролью уже зарегистрирован в системе. Скидок у данного человека не будет! ')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id_user], [Name], [Surname], [Patronymic], [Photo], [Security], [Status], [Birthday], [Phone], [email], [Id_role]) VALUES (1, N'Егор', N'Лихошерстов', N'Алексеевич', NULL, N'High', N'activate', CAST(N'2003-03-06' AS Date), N'+7 906 832 04 05', N'likhosherstov12345@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Users]
GO
ALTER TABLE [dbo].[Appeals]  WITH CHECK ADD  CONSTRAINT [FK_Appeals_Staffs] FOREIGN KEY([Id_staff])
REFERENCES [dbo].[Staffs] ([Id_staff])
GO
ALTER TABLE [dbo].[Appeals] CHECK CONSTRAINT [FK_Appeals_Staffs]
GO
ALTER TABLE [dbo].[BlockedUsers]  WITH CHECK ADD  CONSTRAINT [FK_BlockedUsers_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[BlockedUsers] CHECK CONSTRAINT [FK_BlockedUsers_Users]
GO
ALTER TABLE [dbo].[BlockedUsers]  WITH CHECK ADD  CONSTRAINT [FK_BlockedUsers_Users1] FOREIGN KEY([Id_userblocked])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[BlockedUsers] CHECK CONSTRAINT [FK_BlockedUsers_Users1]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Users]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_Users]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_Users1] FOREIGN KEY([Id_user2])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_Users1]
GO
ALTER TABLE [dbo].[DLC]  WITH CHECK ADD  CONSTRAINT [FK_DLC_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[DLC] CHECK CONSTRAINT [FK_DLC_Games]
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users] FOREIGN KEY([Id_friend])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users]
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users1] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users1]
GO
ALTER TABLE [dbo].[Gameplays]  WITH CHECK ADD  CONSTRAINT [FK_Gameplays_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[Gameplays] CHECK CONSTRAINT [FK_Gameplays_Games]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Authors] FOREIGN KEY([Id_author])
REFERENCES [dbo].[Authors] ([Id_author])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Authors]
GO
ALTER TABLE [dbo].[GamesActivity]  WITH CHECK ADD  CONSTRAINT [FK_GamesActivity_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[GamesActivity] CHECK CONSTRAINT [FK_GamesActivity_Games]
GO
ALTER TABLE [dbo].[GamesActivity]  WITH CHECK ADD  CONSTRAINT [FK_GamesActivity_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[GamesActivity] CHECK CONSTRAINT [FK_GamesActivity_Users]
GO
ALTER TABLE [dbo].[GamesComments]  WITH CHECK ADD  CONSTRAINT [FK_GamesComments_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[GamesComments] CHECK CONSTRAINT [FK_GamesComments_Games]
GO
ALTER TABLE [dbo].[GamesComments]  WITH CHECK ADD  CONSTRAINT [FK_GamesComments_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[GamesComments] CHECK CONSTRAINT [FK_GamesComments_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Chats] FOREIGN KEY([Id_chat])
REFERENCES [dbo].[Chats] ([Id_chat])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Chats]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[MessagesStatus]  WITH CHECK ADD  CONSTRAINT [FK_MessagesStatus_Messages] FOREIGN KEY([Id_message])
REFERENCES [dbo].[Messages] ([Id_message])
GO
ALTER TABLE [dbo].[MessagesStatus] CHECK CONSTRAINT [FK_MessagesStatus_Messages]
GO
ALTER TABLE [dbo].[MessagesStatus]  WITH CHECK ADD  CONSTRAINT [FK_MessagesStatus_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[MessagesStatus] CHECK CONSTRAINT [FK_MessagesStatus_Users]
GO
ALTER TABLE [dbo].[PaymentSalaries]  WITH CHECK ADD  CONSTRAINT [FK_PaymentSalaries_Staffs] FOREIGN KEY([Id_staff])
REFERENCES [dbo].[Staffs] ([Id_staff])
GO
ALTER TABLE [dbo].[PaymentSalaries] CHECK CONSTRAINT [FK_PaymentSalaries_Staffs]
GO
ALTER TABLE [dbo].[PaysDLC]  WITH CHECK ADD  CONSTRAINT [FK_PaysDLC_DLC] FOREIGN KEY([Id_dlc])
REFERENCES [dbo].[DLC] ([Id_dlc])
GO
ALTER TABLE [dbo].[PaysDLC] CHECK CONSTRAINT [FK_PaysDLC_DLC]
GO
ALTER TABLE [dbo].[PaysDLC]  WITH CHECK ADD  CONSTRAINT [FK_PaysDLC_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[PaysDLC] CHECK CONSTRAINT [FK_PaysDLC_Users]
GO
ALTER TABLE [dbo].[PaysGames]  WITH CHECK ADD  CONSTRAINT [FK_PaysGames_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[PaysGames] CHECK CONSTRAINT [FK_PaysGames_Games]
GO
ALTER TABLE [dbo].[PaysGames]  WITH CHECK ADD  CONSTRAINT [FK_PaysGames_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[PaysGames] CHECK CONSTRAINT [FK_PaysGames_Users]
GO
ALTER TABLE [dbo].[ShiftsStaffs]  WITH CHECK ADD  CONSTRAINT [FK_ShiftsStaffs_Shifts] FOREIGN KEY([Id_shift])
REFERENCES [dbo].[Shifts] ([Id_shift])
GO
ALTER TABLE [dbo].[ShiftsStaffs] CHECK CONSTRAINT [FK_ShiftsStaffs_Shifts]
GO
ALTER TABLE [dbo].[ShiftsStaffs]  WITH CHECK ADD  CONSTRAINT [FK_ShiftsStaffs_Staffs] FOREIGN KEY([Id_staff])
REFERENCES [dbo].[Staffs] ([Id_staff])
GO
ALTER TABLE [dbo].[ShiftsStaffs] CHECK CONSTRAINT [FK_ShiftsStaffs_Staffs]
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK_Staffs_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK_Staffs_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Id_role])
REFERENCES [dbo].[Roles] ([Id_role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[UsersBan]  WITH CHECK ADD  CONSTRAINT [FK_UsersBan_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[UsersBan] CHECK CONSTRAINT [FK_UsersBan_Users]
GO
ALTER TABLE [dbo].[UsersDLC]  WITH CHECK ADD  CONSTRAINT [FK_UsersDLC_DLC] FOREIGN KEY([Id_dlc])
REFERENCES [dbo].[DLC] ([Id_dlc])
GO
ALTER TABLE [dbo].[UsersDLC] CHECK CONSTRAINT [FK_UsersDLC_DLC]
GO
ALTER TABLE [dbo].[UsersDLC]  WITH CHECK ADD  CONSTRAINT [FK_UsersDLC_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[UsersDLC] CHECK CONSTRAINT [FK_UsersDLC_Users]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [FK_UsersGames_Games] FOREIGN KEY([Id_game])
REFERENCES [dbo].[Games] ([Id_game])
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [FK_UsersGames_Games]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [FK_UsersGames_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [FK_UsersGames_Users]
GO
ALTER TABLE [dbo].[UsersSettings]  WITH CHECK ADD  CONSTRAINT [FK_UsersSettings_Users] FOREIGN KEY([Id_user])
REFERENCES [dbo].[Users] ([Id_user])
GO
ALTER TABLE [dbo].[UsersSettings] CHECK CONSTRAINT [FK_UsersSettings_Users]
GO
USE [master]
GO
ALTER DATABASE [KING] SET  READ_WRITE 
GO
