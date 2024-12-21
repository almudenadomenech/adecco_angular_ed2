-- Utilizar base de datos universidad
USE universidad;

/* SELECT tablaA.columna1, tablaB.columna2
FROM TablaA -- tabla izquierda
LEFT JOIN TablaB ON TablaA.columna_clave = TablaB.columna_clave */

-- Consulta en las tablas departamentos y empleados, utilizando LEFT JOIN, 
-- para relacionar los datos de ambas tablas

-- Insertar datos de empleados sin departamento asociado
INSERT INTO empleados(nombre, apellido) VALUES
('Roberto', 'Martinez'),
('Lucia', 'Garcia');

-- Insertar datos a departamentos sin asignarle un empleado
INSERT INTO departamentos (nombre) VALUES
('Cocina'),
('Informática'); 


-- Consulta de todos los empleados con los nombres de sus departamentos, 
-- incluyendo a los empleados sin departamento
SELECT empleados.nombre, empleados.apellido, departamentos.nombre AS nombre_departamento
FROM empleados
LEFT JOIN departamentos ON empleados.departamento_id = departamentos.departamento_id;

-- Consulta/mostrar de departamentos y sus empleados, incluidos los departamentos sin empleados
-- LEFT JOIN
SELECT departamentos.nombre as nombre_departamento, empleados.nombre, empleados.apellido
FROM departamentos
LEFT JOIN empleados ON departamentos.departamento_id= empleados.departamento_id;

-- LEFT JOIN con la tabla de clientes y ventas
-- Insertar datos de clientes nuevos y ventas sin cliente asignado
INSERT INTO clientes(nombre, direccion) VALUES
('Luis Gómez', 'Avenida 1'),
('Ángel Lopez', 'Corazón de María 67');

INSERT INTO ventas(monto) VALUES
(100),
(900);

-- Mostrar clientes(left) y todas su ventas (right), incluyendo los clientes sin ventas
SELECT clientes.nombre, ventas.monto
FROM clientes
LEFT JOIN ventas ON clientes.cliente_id= ventas.cliente_id;

-- Mostrar todas las ventas (left)  y los clientes (right) asociados
SELECT ventas.monto, clientes.nombre
FROM ventas
LEFT JOIN clientes ON ventas.cliente_id= clientes.cliente_id;






