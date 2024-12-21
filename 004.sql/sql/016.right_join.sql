-- Right join
-- Tablas de departamentos y empleados

-- Mostrar todos los departamentos(left) con los nombres de los empleados (right), 
-- incluyendo empleados sin departamento

/* SELECT tablaA.columna1, tablaB.columna2
FROM TablaA -- tabla izquierda
RIGHT JOIN TablaB ON TablaA.columna_clave = TablaB.columna_clave */

SELECT departamentos.nombre AS nombre_departamento, empleados.nombre
FROM departamentos
RIGHT JOIN empleados ON departamentos.departamento_id = empleados.departamento_id;

-- Mostrar las ventas (right) con los nombres de los clientes (left), 
-- incluyendo las ventas sin cliente asociado (incluye nulos)
SELECT clientes.nombre, ventas.monto
FROM clientes
RIGHT JOIN ventas ON clientes.cliente_id= ventas.cliente_id;



 
