
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


-- Asociación Many-to-Many /Muchos a Muchos

--  Crear tabla de eventos que se realizan en una biblioteca (talleres, coneferencias)
CREATE TABLE eventos(
evento_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT,
fecha_evento DATE
);

-- Crear tabla de salas
CREATE TABLE salas(
sala_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
capacidad int
);

-- Crear la tabla de unión que relacione eventos con las salas.
-- Un evento puede tener varias salas, y una sala puede ser utilizada para varios eventos
-- Crear tabla eventos_salas
CREATE TABLE eventos_salas (
evento_id INT,
sala_id INT,
PRIMARY KEY (evento_id, sala_id), -- establece la clave primaria compuesta
FOREIGN KEY (evento_id) REFERENCES eventos(evento_id),
FOREIGN KEY (sala_id) REFERENCES salas(sala_id)
);


-- Clave primaria compuesta (debe ser única en toda la tabla)
-- Introducir datos
INSERT INTO eventos(nombre, descripcion, fecha_evento) VALUES
('Taller de escritura', 'Un taller para aspirantes a escritores', '2023-01-15'),
('Club de lectura', 'Discusión sobre libros', '2023-02-12'),
('Conferencia de Historia', 'Charla de historia', '2023-03-18');

-- Insertar datos a la tabla salas
INSERT INTO salas(nombre, capacidad) VALUES
('Sala A', 50),
('Sala B', 100),
('Sala C', 30);

-- Insertar datos a la tabla eventos_salas
INSERT INTO eventos_salas(evento_id, sala_id) VALUES 
(1, 1), -- taller escritura/ sala a
(1, 2), -- taller de escritura/ sala b
(1, 3), -- taller de escritura /sala c
(2, 1), -- club de lectura /sala a
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);
-- clave primaria compuesta, la combinación debe ser única en toda la tabla.

-- Esta línea es de prueba para ver que no se pueden repetir las claves primarias
-- compuestas
-- INSERT INTO eventos_salas(evento_id, sala_id) VALUES (1, 1);

-- Asociación Many-to-Many
-- Libros y categorías, podemos categorizar los libros en diferentes géneros
-- y un libro puede perteneces a varias categorías a la vez

-- Para mostrar las columnas de una tabla
show columns from libros;

-- Crear la tabla de categorias
CREATE TABLE categorias (
categoria_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);

-- Crear la tabla de unión que relaciona libros con categorías.
CREATE TABLE libros_categorias(
libro_id INT,
categoria_id INT,
PRIMARY KEY (libro_id, categoria_id),
FOREIGN KEY (libro_id) REFERENCES libros(libro_id) ON DELETE CASCADE,
FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id) ON DELETE CASCADE
);

-- ON DELETE CASCADE= asegura que los registros de una tabla se eliminen automáticamente
-- si se elimina un libro o una categoría.

-- Insertar datos a categorías
INSERT INTO categorias (nombre) VALUES 
('Ficción'),
('Ciencia'),
('Arte');

-- Insertar datos en la tabla de unión libros_categorias
INSERT INTO libros_categorias (libro_id, categoria_id) VALUES
(1, 1), -- Libro 1 está categorizado como de "ficción"
(1, 2), -- Libro 1 tiene la categoría de "ciencias"
(2, 3), -- Libro 2 categoría arte
(3, 1); -- Libro 3 categoría ficción







