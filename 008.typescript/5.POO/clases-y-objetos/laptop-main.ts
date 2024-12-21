// La palabra import permite importar clases, métodos
// de otros archivos
import { Laptop } from "./laptop.model";

const laptop1 = new Laptop(1, 8, 4, "ASUS", "A55A");

console.log(laptop1.getFullName());

// al ser privado no se puede acceder
// sería necesario un método public
// console.log(laptop1.manufacturer)
