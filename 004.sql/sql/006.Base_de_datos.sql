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

-- Consulta , seleccionar todos los profesores
-- Otra opción, es desde schemas, clic derecho en la tabla y dar clic a "select rows..."
SELECT * FROM profesores;

-- Seleccionar a los profesores con el departamento "support"
SELECT * FROM profesores WHERE departamento = 'Support';

-- Seleccionar a todos los profesores activos
SELECT * FROM profesores WHERE activo = 1;

-- Seleccionar a todos los profesores con fecha de nacimiento después de 2023-10-10 (AAAA-MM-DD)
SELECT * FROM profesores WHERE fecha_nacimiento > '2023-10-10';

-- Seleccionar a todos los profesores con un salario mayor que 2000 y menor que 2500.
SELECT * FROM profesores WHERE salario > 2000 AND salario <2500;

-- Seleccionar a los profesores ordenados por apellido de forma ascendente
SELECT * FROM profesores ORDER BY apellido ASC;
-- Seleccionar a los profesores ordenados por apellido de forma descendente
SELECT * FROM profesores ORDER BY apellido DESC;

-- Seleccionar a los profesores que email con terminación '.com'
SELECT * FROM profesores WHERE email LIKE '%.com%';

-- Consulta para contar el número total de profesores
-- Total_profesores crea un alias/variable intermedia
-- AS sería para asignar el nombre de esta columna que se crea momentáneamente
SELECT COUNT(*) AS total_profesores FROM profesores;

-- Consulta para obtener el salario promedio de todos los profesores.
SELECT AVG(salario) AS salario_promedio FROM profesores;

-- Consulta para seleccionar a los profesores con salario mayor a la media
SELECT * FROM profesores WHERE salario > (SELECT AVG(salario) FROM profesores);

-- Seleccionar a los profesores que nacieron en enero
SELECT * FROM profesores WHERE MONTH(fecha_nacimiento) =1;

-- Seleccionar a los profesores con salario entre 6000 y 7000
-- Usando el bewteen 
SELECT * FROM profesores WHERE salario BETWEEN 6000 AND 7000;

-- Seleccionar a los profesores no activos ( activo = 0) y que tenga un departamento específico = 'Sales'
SELECT * FROM profesores WHERE activo =0 AND departamento = 'Sales';

-- Insert con datos null
insert into profesores (nombre, apellido, email) values ('Registro', 'prueba', 'prueba@baidu.com');

-- Seleccionar a los profesores con telefono especificado
-- Operadores de comparación
-- '!=' significa diferente de
SELECT * FROM profesores WHERE telefono IS NOT NULL AND telefono!='';

-- Seleccionar a los profesores inactivos ordenado por fecha de nacimiento ascendente
SELECT * FROM profesores WHERE activo= 0 ORDER BY fecha_nacimiento ASC;

-- Seleccionar al profesor con salario máximo
SELECT * FROM profesores WHERE salario = (SELECT MAX(salario) FROM profesores);

-- Seleccionar * profesores con el salario mínimo (MIN) y máximo (MAX) 
SELECT * FROM profesores WHERE salario = (SELECT MIN(salario) FROM profesores) OR 
salario= (SELECT MAX(salario) FROM profesores);


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

-- Eliminar todas las filas/registros de la tabla
-- No nos deja si tenemos el safe mode (modificar desde edit-> preferences-> SQL Editor, 
-- deseleccionar el safe mode y cerrar y abrir Workbench)
DELETE FROM profesores;


-- Para desactivar el safe mode para hacer updates
SET sql_safe_updates = 0;

-- Para poder volver a activarlo:
SET sql_safe_updates = 1;

















