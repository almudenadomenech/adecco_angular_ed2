
let precios = [10, 20, 30, 40, 50];

// Filtrar precios utilizando la función filter()
// Filtrar aquellos precios que estén entre 25 y 45 €
// operación que devuelva un boolean

let preciosFiltrados = precios.filter(precio => precio > 25);
console.log(preciosFiltrados); // 30, 40, 50

preciosFiltrados = precios.filter(precio => precio >= 25 && precio <= 45);
console.log(preciosFiltrados); // 30, 40

// filtrar e imprimir a la vez: encadenamiento de funciones, method chain
precios.filter(precio => precio >= 25 && precio <= 45)
        .forEach(precio => console.log(precio));
