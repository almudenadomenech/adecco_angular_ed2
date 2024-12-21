
-- Utilizar base de datos universidad
USE universidad;

/* SELECT tablaA.columna1, tablaB.columna2
FROM TablaA -- tabla izquierda
INNER JOIN TablaB ON TablaA.columna_clave = TablaB.columna_clave */

-- Utilizar un inner join con las tablas departamentos y empleados
-- Consulta de todos los empleados con los nombres de sus departamentos

SELECT empleados.nombre, departamentos.nombre AS nombre_departamento
FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = 
departamentos.departamento_id;

-- Consulta con nombre y apellido de empleado + los nombres de los departamentos
SELECT empleados.nombre, empleados.apellido, departamentos.nombre AS nombre_departamento
FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = 
departamentos.departamento_id;

-- Consulta de todos los clientes y los montos de sus ventas
SELECT clientes.nombre, ventas.monto
FROM clientes -- tabla principal/tabla izquierda
INNER JOIN ventas ON clientes.cliente_id = ventas.cliente_id; -- clave primaria/ clave foránea

-- Mostrar el nombre del estudiante y el nombre del curso asociado
SELECT estudiantes.nombre, cursos.nombre AS nombre_curso -- alias
FROM estudiantes
INNER JOIN cursos ON estudiantes.estudiante_id = cursos.estudiante_id;

-- Mostrar estudiantes con sus fechas de nacimiento y los cursos a los que inscritos
SELECT estudiantes.nombre, estudiantes.fecha_nacimiento, cursos.nombre AS nombre_curso -- alias
FROM estudiantes
INNER JOIN cursos ON estudiantes.estudiante_id = cursos.estudiante_id;



