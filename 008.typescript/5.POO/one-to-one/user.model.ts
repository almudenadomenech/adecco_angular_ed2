import { IAddress } from "./address.model";

export interface IUser {

    id: number;
    email: string;
    birthday: Date;
    phone: string;
    address: IAddress; // One To One unidireccional
}
