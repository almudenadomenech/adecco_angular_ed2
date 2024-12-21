/*
Representa categoría o género de película, por ejemplo: comedia, acción, terror, drama, ciencia ficción, serie o pelicula etc.
*/

import { IFilm } from "./film.model";

export interface ICategory {
    id: number,
    fullName: string,
    color: string,
    minAge: number,
    films?: IFilm[]
}