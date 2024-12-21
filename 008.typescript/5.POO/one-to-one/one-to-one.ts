import { IAddress } from "./address.model";
import { IUser } from "./user.model";


let address1: IAddress = {
    id: 1,
    street: "Calle falsa 123",
    postalCode: "33034",
    city: "Gijón",
    country: "Spain"
}

let address2: IAddress = {
    id: 2,
    street: "Calle verdadera 123",
    postalCode: "55067",
    city: "Toledo",
    country: "Spain"
}

let user1: IUser = {
    id: 1,
    email: "user1@gmail.com",
    birthday: new Date(1990, 1,1),
    phone: "654321234",
    address: address1 // ONE TO ONE
}
console.log(`usuario ${user1.email} vive en ${user1.address.city} de ${user1.address.country}`);

// El usuario se cambia de casa
user1.address = address2;

console.log(`usuario ${user1.email} vive en ${user1.address.city} de ${user1.address.country}`);


// Crear objeto address y user a la vez en la propia creación del usuario
let user2: IUser = {
    id: 2,
    email: "user2@gmail.com",
    birthday: new Date(1901, 1, 1),
    phone: "765431223",
    address: { // crear un objeto address
        id: 2,
        street: "otra calle",
        postalCode: "33021",
        city: "León",
        country: "Spain"
    }
}

