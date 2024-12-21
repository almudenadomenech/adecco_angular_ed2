
-- Nueva base de datos para tomar la asistencia a clases
CREATE DATABASE IF NOT EXISTS asistencia;

-- Seleccionar base de datos
USE asistencia;

-- Crear la tabla de asistencia
CREATE TABLE asistencia_miercoles (
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
asistencia TINYINT(1)
);

INSERT INTO asistencia_miercoles (nombre, asistencia) VALUES
('Emilia', 1),
('Vladimir', 1),
('Rolando', 1),
('Diego', 1),
('Guillermo', 1),
('Almudena', 1),
('Alexandra', 1),
('Marian', 1),
('Albora', 1),
('Luis Fernando', 1),
('Susana', 1),
('Mario', 1),
('Raquel', 1),
('Ana', 1),
('Adrián', 1),
('Diana María', 1),
('Eunice', 1),
('Beatriz', 1),
('Jana', 1),
('Enrique', 1);