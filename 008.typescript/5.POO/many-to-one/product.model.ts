import { ISupermarket } from "./supermarket.model"


// Many Products To One Supermarket (Many To One)
export interface IProduct {
    id: number,
    title: string,
    price: number,
    quantity: number // stock: cantidad de producto
    supermarket?: ISupermarket // Many To One
}