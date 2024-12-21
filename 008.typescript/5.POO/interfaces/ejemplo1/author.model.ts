
// Crear una interfaz
interface IAuthor {
    idAuthor: number,
    firstName: string,
    dateFrom: Date,
    dateTo: Date | undefined,
    city: string,
    bio: string
}

// Crear objetos a partir de una interfaz:


let alan: IAuthor = {
    idAuthor: 32,
    firstName: "Alan",
    dateFrom: new Date(),
    dateTo: undefined,
    city: "Madrid",
    bio: "Profesor Angular"
}

console.log(alan.city);


let author1: IAuthor = {
    idAuthor: 1,
    firstName: "Neruda",
    dateFrom: new Date(2000, 1, 1),
    dateTo: undefined,
    city: "Madrid",
    bio: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
    nisi ut aliquip ex ea commodo cons`
}

let author2: IAuthor = {
    idAuthor: 2,
    firstName: "Eckhart",
    dateFrom: new Date(2000, 1, 1),
    dateTo: new Date(2019, 1, 1),
    city: "Barcelona",
    bio: `Lorem ipsum dolor sit amet`
}
