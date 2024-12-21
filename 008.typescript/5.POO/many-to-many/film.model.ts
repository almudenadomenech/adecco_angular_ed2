import { ICategory } from "./category.model"

export interface IFilm {
    id: number,
    title: string,
    minutes: number
    rating: number
    year: number,
    categories?: ICategory[]
}