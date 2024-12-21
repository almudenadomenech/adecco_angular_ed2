import { IProduct } from "./product.model"

// One Supermarket To Many Products (One To Many)
export interface ISupermarket {
    id: number,
    brandName: string,
    m2: number, // metros cuadrados
    numEmployees: number
    products: IProduct[]   // One To Many
}