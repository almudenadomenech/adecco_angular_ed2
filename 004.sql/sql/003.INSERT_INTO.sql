
/* INSERT.- Insertar datos en las tablas.
Agrega nuevos registros/ filas.
*/

-- Insertar un nuevo actor con nombre de "Juan" y apellido "Lopez"
INSERT INTO actor (first_name, last_name) VALUE ('Juan', 'Lopez');
-- Select para confirmar el insert
SELECT * FROM actor;
-- Insertar una actriz con nombre "Maria" y apellido "Garcia"
INSERT INTO actor (first_name, last_name) VALUE ('Maria', 'Garcia');

/* Cuando se insertan valores en todas las columnas, se puede omitir
el nombre de las columnas. Solo se va agregando el contenido de la fila en órden*/
INSERT INTO actor VALUES (203, 'Roberto', 'Garza', '2020-10-10 22:22:22');
-- Insertar en la tabla "category" una nueva categoría
-- dos filas, una con el id autogenerado, y una con un id dado
SELECT * FROM category;
INSERT INTO category (name) VALUE ('accion');
INSERT INTO category VALUES (19, 'drama', '2020-10-10 12:12:12');

-- Insertar 4 registros/filas de actores, solo agregando nombre y apellido
INSERT INTO actor (first_name, last_name) 
VALUES ('Lucia', 'Lopez'),
('Marcos', 'Tellez'),
('Luis', 'Estrada'),
('Fernanda', 'Olivera');

SELECT * FROM actor;






