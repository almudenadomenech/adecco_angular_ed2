
-- Crear base de datos
CREATE DATABASE base_de_datos2;


-- Eliminar base de datos
DROP DATABASE base_de_datos2;

-- Crear tabla
CREATE TABLE IF NOT EXISTS empleados(
id INT,
nombres VARCHAR(50),
apellidos VARCHAR(50),
genero CHAR(1), 
teletrabajo BOOLEAN,
salario NUMERIC(6, 2),
fecha_nacimiento DATE,
hora_entrada TIME,
edad INT
);

-- Eliminar una tabla
DROP TABLE IF EXISTS empleados;

-- Tipos de datos 
-- INT = Números enteros
-- BOOLEAN = verdadero o falso 
-- CHAR, VARCHAR, TEXT = cadena de texto
-- NUMERIC = números decimales
-- DATE = fechas
-- TIME = tiempo, hora
-- SERIAL, BIGSERIAL = número autoincremental, en cada fila un valor único 
--                     (clave primaria)

-- Renombrar una tabla  
ALTER TABLE empleados RENAME TO empleados_nuevo;
-- Volver al nombre original
ALTER TABLE empleados_nuevo RENAME TO empleados;

-- Agregar columnas a una tabla existente
ALTER TABLE empleados ADD COLUMN email VARCHAR(50);

-- Eliminar columna de una tabla 
ALTER TABLE empleados DROP COLUMN email;

-- Crear tabla empleados 2 con restricciones
CREATE TABLE IF NOT EXISTS empleados_2(
id INT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
genero CHAR(1),
teletrabajo BOOLEAN,
salario DECIMAL(9, 2) CHECK (salario>=100000),
fecha_nacimiento DATE,
hora_entrada TIME,
edad INT,
email VARCHAR(100) UNIQUE
);

-- Tabla "Productos", mínimo 10 columnas con la interfaz gráfica de SQL




