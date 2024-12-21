
// Crear array de precios
let precios = [10, 20, 30, 40, 50];

// Sumar 1 €
precios2024 = precios.map(precio => precio + 1) // suma 1 € 

console.log(precios2024);
console.log(precios); // el array precios original no se modifica

// Sumar IVA
preciosIVA = precios.map(precio => precio * 1.21);
console.log(preciosIVA);
