/* DELETE
para eliminar registros */

-- Eliminar un actor específico por su id
DELETE FROM actor WHERE actor_id=201;
DELETE FROM actor WHERE actor_id=202;

-- Eliminar un actor por su nombre y apellido
DELETE FROM actor WHERE first_name = 'Fernanda' AND last_name = 'Olivera';

-- Eliminar a todos los actores que tengan un apellido en específico
DELETE FROM actor WHERE last_name = 'Tellez';

-- Eliminar todos los actores, no funciona por foreign keys y safe mode
DELETE FROM actor;



