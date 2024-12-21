function saludar(firstName: string): string {
    return `Hello, ${firstName}!`;
}
function imprimirSaludo(firstName: string): void {
    console.log(`Hello, ${firstName}!`);
}

function getFullName(firstName: string, 
                                lastName: string, 
                                edad: number, 
                                inscrito: boolean): string {

    return `Hola ${firstName} ${lastName} con edad ${edad}, tu inscripción está en estado: ${inscrito}`;
}

getFullName('Usuario1', 'Apellido1', 30, true);


// saludar(50); //error TS2345: Argument of type 'number' is not  assignable to parameter of type 'string'

// let saludo: number = saludar("usuario1") // Type 'string' is not assignable to type 'number'.ts(2322)
let saludo: string = saludar("usuario1")
console.log(saludo);
console.log(typeof saludo);




