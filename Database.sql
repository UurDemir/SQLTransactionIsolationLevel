﻿USE [master]
GO
/****** Object:  Database [dbIsolation]    Script Date: 2/11/2019 12:04:07 AM ******/
CREATE DATABASE [dbIsolation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbIsolation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbIsolation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbIsolation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbIsolation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbIsolation] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbIsolation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbIsolation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbIsolation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbIsolation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbIsolation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbIsolation] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbIsolation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbIsolation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbIsolation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbIsolation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbIsolation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbIsolation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbIsolation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbIsolation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbIsolation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbIsolation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbIsolation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbIsolation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbIsolation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbIsolation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbIsolation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbIsolation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbIsolation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbIsolation] SET RECOVERY FULL 
GO
ALTER DATABASE [dbIsolation] SET  MULTI_USER 
GO
ALTER DATABASE [dbIsolation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbIsolation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbIsolation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbIsolation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbIsolation] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbIsolation', N'ON'
GO
ALTER DATABASE [dbIsolation] SET QUERY_STORE = OFF
GO
USE [dbIsolation]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [dbIsolation]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 2/11/2019 12:04:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([Id], [Name], [Surname], [Age], [Status]) VALUES (1, N'Uğur', N'Demir', 24, 1)
GO
INSERT [dbo].[Members] ([Id], [Name], [Surname], [Age], [Status]) VALUES (2, N'Frank', N'Sinatra', 82, 0)
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
USE [master]
GO
ALTER DATABASE [dbIsolation] SET  READ_WRITE 
GO
