
-- DISTINCT
-- Elimina registros duplicados de los resultados de una búsqueda 
-- Es útil cuando se desea mostrar solo los resultados únicos

-- Utilizar la base de datos SAKILA
USE sakila;

-- Consulta de todas columnas y filas de una tabla
SELECT * FROM actor; -- 203 filas

-- Consulta de la columna "first name" de la tabla actor
SELECT first_name from actor; -- 203 filas

-- consulta del first_name de la tabla actor y que los ordene por el first_name
-- Si no pongo DESC lo poner en ASC por default
SELECT first_name from actor ORDER BY first_name;

-- Consulta del first_name de la tabla actor, sin nombres repetidos
SELECT DISTINCT first_name from actor;

-- Consulta del 'release_year' de la tabla 'film' (peliculas). 
SELECT DISTINCT release_year from film;



