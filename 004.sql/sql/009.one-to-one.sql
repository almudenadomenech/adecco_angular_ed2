
-- Relaciones ONE-TO-ONE
-- asociar tablas, que una tabla apunte a otra tabla, cada una tiene su 
-- propia PK (primary key/clave primaria) y sola una tiene una FK (foreign key/clave foránea)
-- clave foránea, es para establecer relaciones entre dos tablas. 

-- usar la base datos de universidad
USE universidad;

CREATE TABLE estudiantes(
estudiante_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
fecha_nacimiento DATE,
email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE cursos (
curso_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
estudiante_id INT UNIQUE, 
FOREIGN KEY (estudiante_id) REFERENCES estudiantes(estudiante_id)
);

-- esta relación nos indica que cada curso está asociado a un estudiante en específico
INSERT INTO estudiantes (nombre, fecha_nacimiento, email) VALUES
('Maria Lopez', '2000-03-10', 'ejemplo@gmail.com'),
('Carlos Gomez', '2005-11-25', 'ejemplo2@gmail.com'),
('Luisa Torres', '1980-11-25', 'ejemplo3@gmail.com'),
('Javier Ramirez', '1989-11-25', 'ejemplo4@gmail.com'),
('Laura Hernandez', '2015-11-25', 'ejemplo5@gmail.com');

INSERT INTO cursos(nombre, estudiante_id) VALUES
('Inglés', 3),
('Ciencias', 4),
('Economía', 5), 
('Arte', 1),
('Física', 2);

-- Consulta de los estudiantes que nacieron antes del 2015
SELECT * FROM estudiantes WHERE fecha_nacimiento < '2015-01-01';

-- Contar el número total de estudiantes
SELECT COUNT(*)
FROM estudiantes;

-- Actualizar el email de el estudiante con id= 2
UPDATE estudiantes SET email= 'correomodificado@gmail.com' WHERE estudiante_id=2;

UPDATE estudiantes SET fecha_nacimiento = '2001-03-10' WHERE nombre= 'Maria Lopez';

-- Eliminar a todos los estudiantes que nacieron después del 2015
-- No se puede eliminar estudiantes por la clave foránea
-- error: delete or update a parent row: a foreign key constraint fails 
DELETE FROM estudiantes WHERE fecha_nacimiento > '2015-01-01';



