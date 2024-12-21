/* UPDATE .- Actualizar datos
Se utiliza para modificar datos existentes en una tabla */

-- Cambiar el nombre del actor, que tiene un id =5, a "Pepe".
-- Tabla "actor"
UPDATE actor SET first_name = 'Pepe' WHERE actor_id = 5; 
UPDATE actor SET last_name = 'Estrada' WHERE actor_id =1;

-- Cambiar el nombre y apellido del actor con id= 2
UPDATE actor SET first_name = 'Marta', last_name = 'Perez' WHERE actor_id =2;

-- Cambiar la fecha de "last_update" a la de hoy en la tabla actor
UPDATE actor SET last_update = '2023-11-28 12:12:12' WHERE actor_id= 1;



