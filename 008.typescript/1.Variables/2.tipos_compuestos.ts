
/*
Tipos de datos compuestos
Array
Tuplas
Enum
Object

*/

let nifs: string[] = ['43535345G', '7345435Y', '24354353F'];
console.log(nifs.length); // 3

nifs.push('435435435G');
// nifs.push(true); // Argument of type 'boolean' is not assignable to parameter of type 'string'.ts(2345)
console.log(nifs.length); // 4


let cosas: any[] = ['34243324G', 23, true]
console.log(cosas.length);

let names: Array<string> = ['Alice', 'Bob', 'Charlie'];
let precios: Array<number> = [49.99, 12.34, 87.55];


// tuplas

let ubicacionOficinas: [number, number] = [45.5, -76.33]

let empleado1: [number, string, number, Date] = [1, 'Juanito', 30, new Date("2000-01-01")]
console.log(empleado1);
console.log(typeof empleado1);

for (const key in empleado1) {
    if (Object.prototype.hasOwnProperty.call(empleado1, key)) {
        const element = empleado1[key];
        console.log(element);
    }
}

let contacto: [string, string] = ['user1@gmail.com', '654555444']

// enums: agrupación de constantes
// días semana
// meses del año
// limita el número de opciones posible a las opciones que hay dentro del enum


enum AccountType {
    Saving, // 0
    Investment, // 1
    Company // 2
}

let cuentaBancaria1: AccountType = AccountType.Company; // 2
let cuentaBancaria2: AccountType = AccountType.Saving; // 0
let cuentaBancaria3: AccountType = AccountType.Investment; // 1

console.log(cuentaBancaria1);
console.log(cuentaBancaria2);
console.log(cuentaBancaria3);
console.log(typeof cuentaBancaria1);

console.log(cuentaBancaria1 === AccountType.Company) // true
// console.log(cuentaBancaria1 === AccountType.Saving) // false


enum WeekDays {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    // ...
}


// object

let persona: object = {
    firstName: 'Ejemplo nombre',
    lastName: 'Ejemplo apellido'
}
console.log(typeof persona);
console.log(persona);


