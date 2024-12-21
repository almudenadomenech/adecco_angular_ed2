
-- Funciones 
-- Realizar cálculos de grupo de filas, y nos pueden dar un único resultado por grupo

-- COUNT (), SUM, MAX, MIN
-- COUNT.- contar el número de filas de la columna que especifiquemos

USE universidad;

-- Contar el número total de filas en la tabla de profesores
SELECT COUNT(*) 
FROM profesores;
-- Lo mismo, pero modificando el nombre de la columna con el resultado, opcional
SELECT COUNT(*) AS total_profesores FROM profesores;

-- Contar el total de filas de profesores que SI tienen datos en la columna de salario
SELECT COUNT(salario) FROM profesores;

-- Contar el total de filas de profesores que SI tienen datos en teléfono
SELECT COUNT(telefono) FROM profesores;


-- Función SUM().- sumaría todos los valores de una columna específica
-- sintaxis de SUM
SELECT SUM(nombre_columna) FROM nombre_tabla;
-- Sumar todos los valores de salario
SELECT SUM(salario) FROM profesores;

-- Sumar los salarios SOLO de los profesores activos
SELECT SUM(salario) FROM profesores WHERE activo =1;

-- GROUP BY .- agrupar filas que tienen los mismos valores en columnas específicas,
-- por ejemolo, departamento (sales, ventas, support, etc)

-- Sumar salarios por departamento
SELECT departamento, SUM(salario) FROM profesores GROUP BY departamento;

-- AVG .- calcular el promedio
-- Calcular el salario promedio de todos los profesores
SELECT AVG(salario) FROM profesores;

-- Calcular el salario promedio SOLO de profesores activos
SELECT AVG(salario) FROM profesores WHERE activo=1;

-- Calcular el salario promedio por departamento
SELECT departamento, AVG(salario) FROM profesores GROUP BY departamento;

-- MAX Y MIN .- encontrar el maximo y el mínimo por columna
-- 1. Encontrar el salario máximo por departamento
SELECT departamento, MAX(salario) FROM profesores GROUP BY departamento;
-- 2. Encontrar el salario mínimo por departamento
SELECT departamento, MIN(salario) FROM profesores GROUP BY departamento;

-- GROUP BY .- agrupando por dos columnas
-- Agrupar por departamento y estado( activo o no activo)
SELECT departamento, activo, COUNT(*) AS cantidad_profesores
FROM profesores
GROUP BY departamento, activo;

-- Calcular el salario promedio por departamento y estado (activo o no activo)
SELECT departamento, activo, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento, activo;

-- HAVING .- filtrar resultados de grupos
-- Filtrar departamentos con un salario promedio mayor que 5000
SELECT departamento, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento
HAVING salario_promedio >5000;

-- Filtrar rango de salario promedio por departamento, que me aperezcan solo los que tienen
-- un salario promedio entre 4000 y 6000
SELECT departamento, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento
HAVING salario_promedio BETWEEN 4000 AND 6000;

-- Filtro departamento con 2 o más profesores activos
SELECT departamento, COUNT(*) AS cantidad_profesores
FROM profesores
WHERE activo=1
GROUP BY departamento
HAVING cantidad_profesores >=2;


