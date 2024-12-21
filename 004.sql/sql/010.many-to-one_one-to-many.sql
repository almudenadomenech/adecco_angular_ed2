
-- RELACIÓN MANY-TO-ONE Y ONE-TO-MANY
-- la diferencia radica en como tengo organizadas las tablas y la dirección de la relación entre ellas

-- ejemplo:
-- tabla principal: departamentos, tabla secundaria: empleados
-- Cada empleado trabaja en un solo departamento, un departamento puede tener varios empleados 

-- utilizar la base de datos universidad
USE universidad;

CREATE TABLE clientes (
cliente_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
direccion VARCHAR(100) DEFAULT 'dirección no especificada'
);

CREATE TABLE ventas(
venta_id INT AUTO_INCREMENT PRIMARY KEY,
monto DECIMAL(10, 2),
cliente_id INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Insertar datos 
INSERT INTO clientes (nombre, direccion) VALUES 
('Juan Perez', 'Corazon de María 89'),
('Ana Rodriguez', 'Calle 123'),
('Luis Gomez', 'Avenida 76');

INSERT INTO clientes (nombre) VALUES 
('Oscar Javier');

-- Insertar datos en ventas
INSERT INTO ventas (monto, cliente_id) VALUES
(100.50, 1),
(75.30, 2), 
(150.00, 3), 
(60.45, 4), 
(80.00, 1);

INSERT INTO ventas (monto, cliente_id) VALUES
(500.90, 2),
(60.56, 3),
(45.67, 4);


-- Crear dos tablas, una de "departamentos" y otra de "empleados"
-- Varios empleados puedan trabajar en el mismo departamento (5 empleados en Recursos Humanos)
-- tabla departamentos= departamento_id, nombre
-- tabla empleados= empleado_id, nombre, apellido, departamento_id, FK

CREATE TABLE departamentos (
departamento_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50)
);

CREATE TABLE empleados (
empleado_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
departamento_id INT,
FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

INSERT INTO departamentos(nombre) VALUES
('Ventas'),
('Recursos Humanos'),
('Administración');

INSERT INTO empleados(nombre, apellido, departamento_id) VALUES
('Laura', 'Rodriguez', 1),
('Javier', 'Gomez', 1), 
('Ana', 'Lopez', 2), 
('Carlos', 'Garcia', 3);


