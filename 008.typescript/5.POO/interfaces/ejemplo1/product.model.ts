

// Crear una interface Producto con atributos
interface Producto {
    title: string;
    price: number;
}
// Crear objetos que tienen la estructura de la interface Producto
let ordenador: Producto = {
    title: "Ordenador MSI 17 pulgadas",
    price: 499.99
}
console.log(ordenador.title);
console.log(ordenador.price);

ordenador.title = "Ordenador con descuento";
ordenador.price = 449.59;


