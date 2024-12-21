
let precios = [10, 20, 30, 40, 50];

precios.push(40); // agrega un nuevo precio

precios.forEach(precio => console.log(precio));

// equivalente pero guardando la función flecha
// en una variable para darle un nombre
let imprimirPrecio = precio => console.log(precio);
precios.forEach(imprimirPrecio);