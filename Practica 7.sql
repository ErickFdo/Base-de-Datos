USE [Practica 3]

CREATE PROCEDURE ClientesNombre @Nombre varchar(50)
AS
SELECT * FROM CLIENTE WHERE Nombre = @Nombre;

EXEC ClientesNombre @Nombre = 'Sam Jasso';

CREATE PROCEDURE ClientesDomicilio @Domicilio varchar(50)
AS
SELECT * FROM CLIENTE WHERE Domicilio = @Domicilio;

EXEC ClientesDomicilio @Domicilio = 'Col. Morelos';

CREATE PROCEDURE MesaCapacidad @Capacidad varchar(50)
AS
SELECT * FROM MESA WHERE Capacidad = @Capacidad;

EXEC MesaCapacidad @Capacidad = '4';

CREATE PROCEDURE OrdenArticulos @Articulos varchar(50)
AS
SELECT * FROM ORDEN WHERE Articulos = @Articulos;

EXEC OrdenArticulos @Articulos = '5';

CREATE PROCEDURE ordenID @id varchar(50)
AS
SELECT * FROM ORDEN WHERE ID_Orden = @id;

EXEC ordenID @id = '22';

CREATE FUNCTION SUELDOSIVA (@por float) RETURNS float
AS
BEGIN
DECLARE @SueldoEmpleado float
SET @SueldoEmpleado = @por / 1.16
RETURN @SueldoEmpleado
END

SELECT dbo.SUELDOSIVA(1350.86) AS SUELDOCONIVA
GO



