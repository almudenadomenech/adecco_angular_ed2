import { IProduct } from "./product.model";
import { ISupermarket } from "./supermarket.model";

let mercadona: ISupermarket = {
    id: 1,
    brandName: "Mercadona Industrias SL",
    m2: 150,
    numEmployees: 20,
    products: []
}

let yogures: IProduct = {
    id: 1,
    title: "Yogures sabor kiwi",
    price: 4.99,
    quantity: 6,
    supermarket: mercadona // Many To One
}

let pan: IProduct = {
    id: 2,
    title: "Pan de pueblo Rústico",
    price: 0.99,
    quantity: 20,
    supermarket: mercadona
}

// Completar asociación bidireccional
// Desde un producto acceder a un supermercado
// Desde un supermercado puedo acceder a los producto
mercadona.products.push(yogures);
mercadona.products.push(pan);


// Crear otro supermercado esta vez pasando los productos directamente

let alimerka: ISupermarket = {
    id: 2,
    brandName: "Alimerka es Para todos",
    m2: 200,
    numEmployees: 24,
    products: [ // lista de objetos IProduct
        {
            id: 3,
            title: "Sandía",
            price: 9.87,
            quantity: 7
            // supermarket opcional
        },
        {
            id: 4, 
            title: "Naranjas",
            price: 0.87,
            quantity: 600
        }
    ]
}
// Unidireccional: únicamente de un lado de la asociación puedo llegar a la otra clase: 
// Por ejemplo, desde supermercado puedo llegar a producto, pero desde producto no puedo llegar a supermercado

// Bidireccional: desde ambos lados de la asociación puedo acceder a la otra clase:
// Por ejemplo: desde supermercado puedo llegar a producto y desde un producto también puedo llegar a un supermercado

// manual
// alimerka.products[0].supermarket = alimerka;
 //alimerka.products[1].supermarket = alimerka;

// Asignar supermercado alimerka a los productos que están dentro de alimerka utilizando un for
// for 

for (const product of alimerka.products)
    product.supermarket = alimerka;


// forEach
alimerka.products.forEach( product => product.supermarket = alimerka );

// let prices = alimerka.products.map( product => product.price)
// console.log(prices);

alimerka.products.forEach( product => console.log(product.supermarket) );


