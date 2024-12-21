
-- Crear base de datos biblioteca
CREATE DATABASE IF NOT EXISTS biblioteca;

-- Usar la base de datos biblioteca
USE biblioteca;

-- Asociación one-to-one
-- tabla de usuario
CREATE TABLE usuario(
usuario_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL
);

CREATE TABLE tarjetas_biblioteca(
tarjeta_id INT AUTO_INCREMENT PRIMARY KEY,
fecha_expiracion DATE,
usuario_id INT UNIQUE, 
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
-- fk apunta a la primera tabla
);

-- Insertar datos
INSERT INTO usuario(nombre, apellido, email) VALUES
('Juan', 'Pérez', 'juanperez@gmail.com'),
('María', 'Gómez', 'mariagomez@gmail.com'),
('Carlos', 'Martínez', 'carlosmartinez@gmail.com'),
('Laura', 'Lopez', 'lauralopez@gmail.com');

INSERT INTO tarjetas_biblioteca(fecha_expiracion, usuario_id) VALUES
('2023-12-31', 1),
('2023-12-31', 2),
('2023-12-31', 3),
('2023-12-31', 4);

INSERT INTO tarjetas_biblioteca(fecha_expiracion, usuario_id) VALUES
('2023-12-31', 1);


-- Asociación Muchos a Uno / Uno a muchos
-- Many-to-one/ One-to-Many

CREATE TABLE autores(
autor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL
);

CREATE TABLE libros(
libro_id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
autor_id INT,
FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

-- un autor puede tener muchos libros (one-to-many)
-- Insertar datos
INSERT INTO autores(nombre, apellido) VALUES
('autor 1', 'apellido 1'),
('autor 2', 'apellido 2'),
('autor 3', 'apellido 3'),
('autor 4', 'apellido 4');

-- Insertar libros
INSERT INTO libros(titulo, autor_id) VALUES
('Libro 1', 1),
('Libro 2', 2),
('Libro 3', 3),
('Libro 4', 4),
('Libro 5', 4),
('Libro 6', 3);










