import { ICategory } from "./category.model";
import { IFilm } from "./film.model";

// Many To Many: ICategory tiene un array de IFilm, IFilm tiene un array de ICategory
let comedia: ICategory = {
    id: 1,
    fullName: "Comedia Española",
    color: "amarillo",
    minAge: 7,
    films: [] // Many To Many
}

let drama: ICategory = {
    id: 2,
    fullName: "Drama",
    color: "Rojo",
    minAge: 12,
    films: []
}

let accion: ICategory = {
    id: 3,
    fullName: "Accion",
    color: "Amarillo",
    minAge: 16,
    films: []
}

// Unidireccional
// Normalmente hacemos la asociación en el modelo más importante para nuestra aplicación

let titanic: IFilm = {
    id: 1,
    title: "titanic",
    minutes: 120,
    rating: 9.9,
    year: 1997,
    categories: [comedia, drama] // Many
}

let aTodoGas: IFilm = {
    id: 2,
    title: "A todo Gas 1",
    minutes: 140,
    rating: 8.9,
    year: 2002,
    categories: [comedia, accion] // Many
}


// Bidireccional (Opcional)
// comedia.films?.push(aTodoGas);
// console.log(comedia);

// comedia.films = []

// Opción 1: intentar insertar directamente. No deja porque el atributo es opcional
// comedia.films.push(titanic);

// Opción 2: comprobar el atributo opcional antes de insertar con un if
if(comedia.films !== undefined)
    comedia.films.push(titanic);

// Opción 3: comprobar el atributo opcional con ? antes de la acción
comedia.films?.push(titanic); 

console.log(comedia)