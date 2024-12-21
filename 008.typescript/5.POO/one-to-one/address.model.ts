
/*
Crear una interfaz para definir los atributos de una dirección física que pertenece a un usuario

*/
export interface IAddress {
    id: number;
    street: string;
    postalCode: string;
    city: string;
    country: string;
}