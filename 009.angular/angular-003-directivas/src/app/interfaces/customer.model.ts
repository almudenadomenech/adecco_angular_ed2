export interface Customer {
  id: number;
  nif: string;
  firstName: string;
  email: string;
  // fecha cumpleaños
  birthday: Date;
  active: boolean;
  salary?: number; // La interrogación ? indica opcional
}
