USE [Practica 3]
GO
/****** Object:  Table [dbo].[ORDEN_ARTICULO]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[ORDEN_ARTICULO]
GO
/****** Object:  Table [dbo].[ORDEN]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[ORDEN]
GO
/****** Object:  Table [dbo].[MESA]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[MESA]
GO
/****** Object:  Table [dbo].[EMPLEADO_PUESTO]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO_PUESTO]
GO
/****** Object:  Table [dbo].[EMPLEADO_MESA]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO_MESA]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[CLIENTE]
GO
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP TABLE IF EXISTS [dbo].[ALMACEN]
GO
USE [master]
GO
/****** Object:  Database [Practica 3]    Script Date: 9/29/2018 2:39:10 AM ******/
DROP DATABASE IF EXISTS [Practica 3]
GO
/****** Object:  Database [Practica 3]    Script Date: 9/29/2018 2:39:10 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Practica 3')
BEGIN
CREATE DATABASE [Practica 3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica 3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica 3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica 3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica 3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [Practica 3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica 3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica 3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica 3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica 3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica 3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica 3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica 3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica 3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica 3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica 3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica 3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica 3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica 3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica 3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica 3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica 3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica 3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica 3] SET  MULTI_USER 
GO
ALTER DATABASE [Practica 3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica 3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica 3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica 3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica 3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica 3] SET QUERY_STORE = OFF
GO
USE [Practica 3]
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
USE [Practica 3]
GO
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ALMACEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ALMACEN](
	[ID_Articulo] [tinyint] NOT NULL,
	[Cantidad] [tinyint] NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ALMACEN] PRIMARY KEY CLUSTERED 
(
	[ID_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CLIENTE](
	[ID_Cliente] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Domicilio] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLEADO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMPLEADO](
	[ID_Empleado] [tinyint] NOT NULL,
	[Antiguedad] [smalldatetime] NULL,
	[Sueldo] [float] NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EMPLEADO_MESA]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLEADO_MESA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMPLEADO_MESA](
	[ID_Empleado] [tinyint] NOT NULL,
	[ID_Mesa] [tinyint] NULL,
 CONSTRAINT [PK_EMPLEADO_MESA] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EMPLEADO_PUESTO]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLEADO_PUESTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMPLEADO_PUESTO](
	[ID_Empleado] [tinyint] NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[Turno] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLEADO_PUESTO] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MESA]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MESA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MESA](
	[ID_Mesa] [tinyint] NOT NULL,
	[Capacidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_MESA] PRIMARY KEY CLUSTERED 
(
	[ID_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ORDEN]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDEN](
	[ID_Orden] [tinyint] NOT NULL,
	[Articulos] [tinyint] NULL,
 CONSTRAINT [PK_ORDEN] PRIMARY KEY CLUSTERED 
(
	[ID_Orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ORDEN_ARTICULO]    Script Date: 9/29/2018 2:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDEN_ARTICULO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDEN_ARTICULO](
	[ID_Orden] [tinyint] NOT NULL,
	[ID_Articulo] [tinyint] NULL,
 CONSTRAINT [PK_ORDEN_ARTICULO] PRIMARY KEY CLUSTERED 
(
	[ID_Orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
USE [master]
GO
ALTER DATABASE [Practica 3] SET  READ_WRITE 
GO
