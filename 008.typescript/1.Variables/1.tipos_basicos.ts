
/*
Tipos de datos básicos

tsc m2-typescript/1.Variables/1.tipos_basicos.ts
*/

// boolean
let esValido = true;
let esCorrecto: boolean = false;
let prueba: boolean = true;
console.log(prueba);


// number
let count2: number = 42;
let price: number = 19.99;


// string
let firstName: string = 'John Doe';
let greeting: string = `Hello, ${firstName}!`;

function logMessage(message: string): void {
    console.log(message);
}

function returnMessage(message: string): string {
    //return 5;
    return "hola mundo " + message;
}

let saludo: string = returnMessage("Alan");
console.log(saludo);
console.log(returnMessage("Otra prueba"));

let nombre: string = "Mi nombre";
// nombre = 50; // error TS2322: Type 'number' is not assignable to type 'string'.

let cualquiercosa: any = 5;
cualquiercosa = "otra cosa";