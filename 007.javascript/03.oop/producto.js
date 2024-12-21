
/*
Plantilla de lo que tendría un producto
*/

class Producto {

    // atributos/propiedades: estado
    title = "Producto";
    precio = 40;
    fabricante = "Samsung";
    cantidad = 5;
    imgUrl = "https://static.carrefour.es/hd_510x_/crs/cdn_static/catalog/hd/176943_00_1.jpg"

    // métodos: acciones, comportamiento, cambian el estado
    mostrarPrecio() {
        // Se pone this. para que busque en los atributos
        // console.log(precio); // precio is not defined
        // this. se usa dentro de los métodos de una clase
        console.log(this.precio);
    }

}

// Crear un objeto a partir de una clase
let televisor = new Producto();
console.log(televisor.fabricante);
televisor.mostrarPrecio();

let iphone = new Producto();
iphone.title = "iPhone 15 Pro";
console.log(iphone.title);



