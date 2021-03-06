USE [master]
GO
/****** Object:  Database [SchoolPortal+]    Script Date: 28.03.2022 14:28:36 ******/
CREATE DATABASE [SchoolPortal+]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolPortal+', FILENAME = N'b:\SQL\MSSQL11.SQLEXPRESS\MSSQL\DATA\SchoolPortal+.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolPortal+_log', FILENAME = N'b:\SQL\MSSQL11.SQLEXPRESS\MSSQL\DATA\SchoolPortal+_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SchoolPortal+] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolPortal+].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolPortal+] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolPortal+] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolPortal+] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolPortal+] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolPortal+] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolPortal+] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolPortal+] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolPortal+] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolPortal+] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolPortal+] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolPortal+] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolPortal+] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolPortal+] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolPortal+] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolPortal+] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolPortal+] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolPortal+] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolPortal+] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolPortal+] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolPortal+] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolPortal+] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolPortal+] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolPortal+] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolPortal+] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchoolPortal+] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolPortal+] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolPortal+] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolPortal+] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolPortal+] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SchoolPortal+]
GO
/****** Object:  Table [dbo].[Grades_Students]    Script Date: 28.03.2022 14:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades_Students](
	[id] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[id_Student] [int] NULL,
	[Algebra] [nvarchar](50) NULL,
	[Geometry] [nvarchar](50) NULL,
	[Literature] [nvarchar](50) NULL,
	[Physical_education] [nvarchar](50) NULL,
	[Russian_language] [nvarchar](50) NULL,
	[Work_] [nvarchar](50) NULL,
 CONSTRAINT [PK_Grades_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 28.03.2022 14:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id_Student] [int] NOT NULL,
	[Last_name] [nvarchar](50) NULL,
	[First_name] [nvarchar](50) NULL,
	[Middle_name] [nvarchar](50) NULL,
	[Group_] [nvarchar](50) NULL,
	[Number_phone] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Street_address] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Year_of_admission] [nvarchar](50) NULL,
	[College_ID_number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Grades_Students] ([id], [Date], [id_Student], [Algebra], [Geometry], [Literature], [Physical_education], [Russian_language], [Work_]) VALUES (1, N'20.01.2022', 1, N'4', N'+', N'3', N'2', N'4', N'5')
INSERT [dbo].[Students] ([id_Student], [Last_name], [First_name], [Middle_name], [Group_], [Number_phone], [Mail], [Street_address], [Login], [Password], [Year_of_admission], [College_ID_number]) VALUES (1, N'Алексеев', N'Виктор', N'Васильевич', N'09.02.07', N'7 (909) 446-40-63', N'majip64560@sueshaw.com', N'ул. Новомосковская, дом 73, квартира 23', N'stud1', N'111', N'27.03.2018', N'None')
INSERT [dbo].[Students] ([id_Student], [Last_name], [First_name], [Middle_name], [Group_], [Number_phone], [Mail], [Street_address], [Login], [Password], [Year_of_admission], [College_ID_number]) VALUES (2, N'Канаев', N'Зиновий', N'Викторович', N'09.02.07', N'7 (991) 595-41-46', N'gucremeuddouqueu@yopmail.com', N'ул. Дворцовая пл, дом 37, квартира 81', N'stud2', N'222', N'27.03.2018', N'None')
INSERT [dbo].[Students] ([id_Student], [Last_name], [First_name], [Middle_name], [Group_], [Number_phone], [Mail], [Street_address], [Login], [Password], [Year_of_admission], [College_ID_number]) VALUES (3, N'Охота', N'Ерофей', N'Матвеевич', N'09.02.07', N'7 (905) 585-84-40', N'fraulleiveudala@yopmail.com', N'ул. Козловский М. пер, дом 156, квартира 587', N'stud3', N'333', N'27.03.2018', N'None')
INSERT [dbo].[Students] ([id_Student], [Last_name], [First_name], [Middle_name], [Group_], [Number_phone], [Mail], [Street_address], [Login], [Password], [Year_of_admission], [College_ID_number]) VALUES (4, N'Лысов', N'Вячеслав', N'Константинович', N'09.02.07', N'7 (909) 446-35-63', N'fraulleiveudala@mail.com', N'ул. Козловский М. пер, дом 156, квара 587', N'admin', N'sozdatel', N'27.03.2018', N'None')
ALTER TABLE [dbo].[Grades_Students]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students_Students] FOREIGN KEY([id_Student])
REFERENCES [dbo].[Students] ([id_Student])
GO
ALTER TABLE [dbo].[Grades_Students] CHECK CONSTRAINT [FK_Grades_Students_Students]
GO
USE [master]
GO
ALTER DATABASE [SchoolPortal+] SET  READ_WRITE 
GO
