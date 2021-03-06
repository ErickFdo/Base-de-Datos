USE [Practica 3]
GO
/****** Object:  Table [dbo].[ORDEN_ARTICULO]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[ORDEN_ARTICULO]
GO
/****** Object:  Table [dbo].[ORDEN]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[ORDEN]
GO
/****** Object:  Table [dbo].[MESA]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[MESA]
GO
/****** Object:  Table [dbo].[EMPLEADO_PUESTO]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO_PUESTO]
GO
/****** Object:  Table [dbo].[EMPLEADO_MESA]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO_MESA]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[EMPLEADO]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[CLIENTE]
GO
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP TABLE IF EXISTS [dbo].[ALMACEN]
GO
USE [master]
GO
/****** Object:  Database [Practica 3]    Script Date: 10/12/2018 10:12:32 PM ******/
DROP DATABASE IF EXISTS [Practica 3]
GO
/****** Object:  Database [Practica 3]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[EMPLEADO_MESA]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[EMPLEADO_PUESTO]    Script Date: 10/12/2018 10:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLEADO_PUESTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMPLEADO_PUESTO](
	[ID_Empleado] [tinyint] NOT NULL,
	[Puesto] [varchar](50) NULL,
	[Turno] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLEADO_PUESTO] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MESA]    Script Date: 10/12/2018 10:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MESA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MESA](
	[ID_Mesa] [tinyint] NOT NULL,
	[Capacidad] [tinyint] NULL,
 CONSTRAINT [PK_MESA] PRIMARY KEY CLUSTERED 
(
	[ID_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ORDEN]    Script Date: 10/12/2018 10:12:32 PM ******/
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
/****** Object:  Table [dbo].[ORDEN_ARTICULO]    Script Date: 10/12/2018 10:12:32 PM ******/
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

USE [Practica 3]

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('4', 'Juan Lopez', 'Col. Guadalupe Victoria');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('8', 'Jorge Reyes', 'Col. Villa de Luz');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('15', 'Jaime Francisco', 'Col. Santa Rosa');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('16', 'Sam Jasso', 'Col. Santa Fe');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('23', 'Jaqueline Sosa', 'Col. San Miguel');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('42', 'Sol Ruiz', 'Col. Napoles');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('22', 'Jorge Pablos', 'Col. Del Valle');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('2', 'Isabel Duran', 'Col. Interlomas');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('25', 'Ricardo Calleja', 'Col. Florida');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('7', 'Maria Jose', 'Col. San Rafael');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('111', 'Salvador Barquin', 'Col. Morelos');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('69', 'Gabriel Vivar', 'Col. Olivar del Conde');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('98', 'Maria Victoria', 'Col. Doctores');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('101', 'Botelos Bar', 'Col. Buenavista');

INSERT INTO CLIENTE (ID_Cliente, Nombre, Domicilio)
	VALUES ('32', 'jose Manuel', 'Col. Anahuac');

UPDATE CLIENTE
SET Nombre = 'Jose Manuel'
WHERE ID_Cliente = 32;

DELETE FROM CLIENTE
WHERE Nombre = 'Maria Victoria';

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('106', '2');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('123', '2');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('128', '2');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('98', '4');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('43', '6');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('96', '8');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('42', '10');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('101', '4');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('125', '4');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('136', '4');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('75', '8');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('64', '8');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('70', '6');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('138', '4');

INSERT INTO MESA (ID_Mesa, Capacidad)
	VALUES ('73', '10');

UPDATE MESA
SET Capacidad = 6
WHERE ID_Mesa = 138;

DELETE FROM MESA
WHERE ID_Mesa = '98';

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('10', '5');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('11', '9');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('12', '3');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('13', '2');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('14', '4');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('15', '3');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('17', '4');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('18', '9');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('19', '5');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('20', '5');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('21', '8');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('22', '14');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('24', '3');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('50', '7');

INSERT INTO ORDEN (ID_Orden, Articulos)
	VALUES ('37', '4');

UPDATE ORDEN
SET ID_Orden = 192
WHERE ID_Orden = 10;

DELETE FROM ORDEN
WHERE ID_Orden = '24';

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('254', '2015-08-13 12:43:10', '1200');

UPDATE EMPLEADO
SET Antiguedad = 2015-08-13
WHERE ID_Empleado = 254;

UPDATE EMPLEADO
SET Antiguedad = '2015-08-13 09:50:00'
WHERE ID_Empleado = 254;

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('253', '2013-06-13 10:43:10', '1500.15');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('252', '2015-08-13 11:59:10', '1230.56');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('251', '2011-08-13 13:57:10', '4998.66');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('250', '2015-08-13 16:23:10', '1999.23');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('249', '2010-01-1 16:23:10', '6999.23');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('248', '2018-03-23 16:23:10', '1703.75');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('247', '2017-05-1 16:23:10', '1350.86');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('246', '2018-07-4 16:23:10', '809.15');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('245', '2009-10-26 16:23:10', '9885.42');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('244', '2015-06-26 16:23:22', '885.95');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('243', '2009-07-26 06:00:35', '958.33');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('242', '2018-08-26 07:23:00', '1234.89');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('241', '2017-02-26 15:23:52', '4444.52');

INSERT INTO EMPLEADO (ID_Empleado, Antiguedad, Sueldo)
	VALUES ('240', '2016-02-26 21:23:10', '3468.12');

DELETE FROM EMPLEADO
WHERE ID_Empleado = '240';

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('239', 'Mesero', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('238', 'Mesero', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('237', 'Mesero', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('236', 'Bartender', 'Nocturno');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('235', 'Bartender', 'Nocturno');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('234', 'Conserje', 'Vespertino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('233', 'Conserje', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('232', 'Conserje', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('231', 'Cocinero', 'Vespertino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('230', 'Cocinero', 'Nocturno');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('229', 'Guardia', 'Nocturno');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('228', 'Cajero', 'Vespertino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('227', 'Gerente', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('226', 'Supervisor', 'Matutino');

INSERT INTO EMPLEADO_PUESTO (ID_Empleado, Puesto, Turno)
	VALUES ('225', 'Contador', 'Vespertino');

DELETE FROM EMPLEADO_PUESTO
WHERE ID_Empleado = '227';

USE [Practica 3]

SELECT ID_Cliente, Nombre + ', ' + Domicilio AS nomDom
FROM CLIENTE;

SELECT ID_Mesa, Capacidad AS mCap
FROM MESA; 

SELECT ID_Orden, Articulos AS art
FROM ORDEN;

SELECT ID_EMPLEADO, Antiguedad + ', ' + Sueldo AS anSuelo
FROM EMPLEADO

SELECT ID_Empleado, Puesto + ', ' + Turno AS pTur
FROM EMPLEADO_PUESTO;



SELECT EMPLEADO.Antiguedad, EMPLEADO_PUESTO.Puesto
FROM EMPLEADO
INNER JOIN EMPLEADO_PUESTO ON EMPLEADO.ID_Empleado = EMPLEADO_PUESTO.ID_Empleado

SELECT *
FROM EMPLEADO
CROSS JOIN EMPLEADO_PUESTO;

SELECT EMPLEADO_PUESTO.Puesto, EMPLEADO.Antiguedad
FROM EMPLEADO_PUESTO
LEFT JOIN EMPLEADO ON EMPLEADO_PUESTO.ID_Empleado = EMPLEADO.ID_Empleado
ORDER BY EMPLEADO_PUESTO.Puesto

SELECT EMPLEADO.ID_Empleado, EMPLEADO_PUESTO.Puesto
FROM EMPLEADO
RIGHT JOIN EMPLEADO_PUESTO
ON EMPLEADO.ID_Empleado = EMPLEADO_PUESTO.ID_Empleado
ORDER BY EMPLEADO.ID_Empleado



SELECT * FROM CLIENTE
WHERE ID_Cliente = '15';

SELECT * FROM MESA
WHERE ID_Mesa >= '15'
ORDER BY ID_Mesa;

SELECT * FROM ORDEN
WHERE Articulos <= '5';

SELECT * FROM EMPLEADO
WHERE SUELDO >= '5000';

SELECT * FROM EMPLEADO_PUESTO
WHERE Puesto = 'Guardia';



SELECT MIN(Capacidad), ID_Mesa
FROM MESA
GROUP BY ID_Mesa;

SELECT MAX(ID_Mesa) AS minMesa
FROM MESA

SELECT COUNT(ID_Empleado) AS numEmpleados
FROM EMPLEADO

SELECT AVG(Sueldo) as promSueldo
FROM EMPLEADO

SELECT SUM(Articulos) AS totalArticulos
FROM ORDEN














