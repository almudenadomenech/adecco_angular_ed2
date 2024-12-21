-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS universidad;

-- Crear una tabla que se llame "profesores"
CREATE TABLE universidad.profesores(
profesor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL, 
apellido VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL,
telefono VARCHAR(20),
direccion TEXT,
fecha_nacimiento DATE,
departamento VARCHAR(50),
salario DECIMAL(10, 2),
activo TINYINT(1) -- BOOLEAN
);

-- Especificar la base de datos
USE universidad;

-- SELECT para CONSULTA de datos NO modifica ni elimina ni inserta datos
-- Consulta de la tabla para confirmar que se creó, opcional por si no la encontrábamos desde schemas
SELECT * FROM profesores;

-- INSERT INTO para insertar filas/registros a mi tabla
-- Insertar datos generados en mockaroo
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Hilly', 'Jesse', 'hjesse0@storify.com', '198-954-2554', '5 Main Trail', '2022-11-30', 'Support', 2029.54, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Jessalin', 'Frodsham', 'jfrodsham1@china.com.cn', '907-145-3656', '055 Birchwood Crossing', '2022-12-24', 'Research and Development', 5843.68, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Haywood', 'Coomber', 'hcoomber2@tamu.edu', '414-169-0017', '2291 Basil Plaza', '2023-07-10', 'Research and Development', 3840.57, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Silvio', 'Faherty', 'sfaherty3@bandcamp.com', '724-138-7911', '95166 Spohn Trail', '2023-03-25', 'Human Resources', 5375.7, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Alica', 'Le Houx', 'alehoux4@plala.or.jp', '687-141-2608', '2774 Tennyson Junction', '2023-01-06', 'Marketing', 5904.65, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Torin', 'Sivorn', 'tsivorn5@cam.ac.uk', '695-517-3176', '6 Rusk Alley', '2023-07-06', 'Accounting', 4440.02, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Rosaleen', 'Canny', 'rcanny6@mysql.com', '247-935-2661', '467 Tennessee Parkway', '2023-08-29', 'Accounting', 6131.72, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Cheslie', 'Brehaut', 'cbrehaut7@globo.com', '738-486-5394', '42 Dexter Drive', '2023-04-07', 'Support', 7751.71, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Lowell', 'Dyne', 'ldyne8@eventbrite.com', '335-592-7402', '756 Cherokee Avenue', '2023-11-16', 'Marketing', 8789.31, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Vaughan', 'Smallthwaite', 'vsmallthwaite9@cafepress.com', '714-638-2345', '23 Sullivan Court', '2023-03-28', 'Human Resources', 5995.33, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Adair', 'Gerrell', 'agerrella@lycos.com', '593-572-3767', '7 Forest Terrace', '2023-04-20', 'Support', 4810.25, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Ulysses', 'Sutch', 'usutchb@mozilla.com', '415-819-6652', '602 Southridge Drive', '2023-06-04', 'Sales', 5906.11, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Evangelia', 'Stading', 'estadingc@upenn.edu', '142-607-3327', '5 Oak Avenue', '2022-12-16', 'Sales', 6118.42, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Ricky', 'Quene', 'rquened@youtube.com', '588-846-7112', '7449 Prairie Rose Center', '2022-12-26', 'Sales', 7418.31, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Aloin', 'Adderley', 'aadderleye@histats.com', '591-951-6243', '7484 Lighthouse Bay Way', '2022-12-28', 'Sales', 5913.28, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Bay', 'Filon', 'bfilonf@pinterest.com', '568-386-0871', '0 Clove Court', '2023-04-16', 'Legal', 8530.76, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Osbourn', 'Courtliff', 'ocourtliffg@chronoengine.com', '279-730-0870', '6 Hallows Drive', '2023-10-20', 'Support', 2355.34, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Meta', 'Waight', 'mwaighth@seattletimes.com', '954-944-2956', '1375 Hanover Park', '2023-03-05', 'Engineering', 3144.85, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Stewart', 'Cheeseman', 'scheesemani@goo.ne.jp', '723-163-5037', '5 Eagle Crest Park', '2023-08-21', 'Marketing', 2411.91, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) 
values ('Jimmy', 'Theurer', 'jtheurerj@baidu.com', '321-237-7756', '913 Lake View Court', '2023-09-15', 'Accounting', 4603.71, 0);

-- Insert de una fila (registro) sin mockaroo
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) 
values ('Jimmy', 'Theurer', 'jtheurerj@baidu.com', '321-237-7756', '913 Lake View Court', '2023-09-15', 'Accounting', 4603.71, 0);
-- Si introduzco todos los datos de las columnas puedo omitir especificar el nombre de las columnas
-- Revisar bien el id, si marca error probar con el siguiente id. No es la manera recomendable de introducir filas/registros
insert into profesores
values (22, 'Daniela', 'Estrada', 'daniela@certidevs.com', '999999999', 'Corazón de María #56', '2022-12-10', 'Ventas', 900.00, 1); 


-- Insert con datos null
insert into profesores (nombre, apellido, email) values ('Registro', 'prueba', 'prueba@baidu.com');

-- UPDATE .- actualizar/modificar datos existentes
-- Actualizar el teléfono del profesor con id=1
UPDATE profesores SET telefono = '555555555' WHERE profesor_id =1;
UPDATE profesores SET telefono = '888888888' WHERE profesor_id =2;

-- Actualizar el departamento del profesor con id =3
UPDATE profesores SET departamento = 'Ventas' WHERE profesor_id= 3;

-- Modificar el teléfono y el email del profesor con id=3
UPDATE profesores SET telefono= '111111111', email ='juan@gmail.com' WHERE profesor_id =3; 

-- Modificar el salario del profesor con id= 4
UPDATE profesores SET salario = 20000 WHERE profesor_id= 4;

-- Modificar el nombre de un departamento, todos los que dicen support se modifiquen a ventas
UPDATE profesores SET departamento = 'ventas' WHERE departamento = 'Support';

-- Actualizar la dirección y el salario del profesor con id=5
UPDATE profesores SET direccion = 'Calle luz 65', salario=50000 WHERE profesor_id=5;


-- DELETE .- eliminar registros
-- Eliminar al profesor con id= 1
DELETE FROM profesores WHERE profesor_id= 1;

-- Eliminar al profesor con id= 21
DELETE FROM profesores WHERE profesor_id= 21;

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


