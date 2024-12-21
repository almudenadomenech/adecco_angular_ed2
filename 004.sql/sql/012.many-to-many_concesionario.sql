-- Asociación Many-to-Many
-- Un conductor puede conducir varios coches y un coche puede 
-- ser conducido por varios conductoras

-- Crear base de datos Concesionario
CREATE DATABASE IF NOT EXISTS concesionario;

-- Usar esta base de datos
USE concesionario;

-- Crear tabla conductor
CREATE TABLE conductor(
conductor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (50),
apellido VARCHAR (50) NOT NULL,
email VARCHAR(100)
);

-- Crear tabla coche
CREATE TABLE coche (
coche_id INT AUTO_INCREMENT PRIMARY KEY,
marca VARCHAR(50),
modelo VARCHAR(50)
);

-- Crear tabla de unión, conductor_coche
CREATE TABLE conductor_coche(
conductor_id INT,
coche_id INT,
PRIMARY KEY (conductor_id, coche_id),
FOREIGN KEY (conductor_id) REFERENCES conductor(conductor_id),
FOREIGN KEY (coche_id) REFERENCES coche(coche_id)
);

-- Insertar datos a conductor
INSERT INTO conductor (nombre, apellido, email) VALUES
('Carlos', 'González', 'carlosgonzalez@gmail.com'),
('Ana', 'Martínez', 'anamartinez@gmail.com'),
('Luis', 'Fernández', 'luis@gmail.com');

-- Insertar datos a coche
INSERT INTO coche(marca, modelo) VALUES
('Honda', 'Civic'),
('Ford', 'Fiesta'),
('Volkswagen', 'Golf');

-- Insertar datos a tabla de unión conductor_coche
INSERT INTO conductor_coche (conductor_id, coche_id) VALUES
(1, 1), -- Carlos conduce un Honda Civic
(1, 2), -- Carlos conduce un Ford fiesta
(1, 3), -- Carlos conduce un Golf
(2, 1); -- Ana conduce un Honda Civic
