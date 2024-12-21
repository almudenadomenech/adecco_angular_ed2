

// OPCIÓN 1: SIN COMPROBAR PARÁMETRO OPCIONAL
function saludarPersona1(firstName: string, age?: number): void {
    console.log(`${firstName} con edad ${age}`);
}

// Si no se especifica el argumento entonces tomará valor undefined
// saludarPersona1("Persona1");
// saludarPersona1("Persona1", 30);

// OPCIÓN 2: COMPROBAR PARÁMETRO OPCIONAL CON IF
function saludarPersona2(firstName: string, age?: number): void {
    if (age === undefined) {
        console.log(`${firstName} con edad desconocida`);
        return;
    }

    console.log(`${firstName} con edad ${age}`);
}

// saludarPersona2("Persona2");
// saludarPersona2("Persona2", 30);


// OPCIÓN 3: COMPROBAR PARÁMETRO OPCIONAL CON OPERADOR TERNARIO ? :
function saludarPersona3(firstName: string, age?: number): void {
    age === undefined ? 
    console.log(`${firstName} con edad desconocida`) : 
    console.log(`${firstName} con edad ${age}`);
}

// saludarPersona3("Persona3");
// saludarPersona3("Persona3", 30);

// OPCIÓN 4: ASIGNAR VALOR POR DEFECTO A VARIABLE OPCIONAL CON OPERADOR ??

function saludarPersona4(firstName: string, age?: number): void {
    console.log(`${firstName} con edad ${age ?? 18}`);
}

saludarPersona4("Persona4"); // 18
saludarPersona4("Persona4", 30); // 30

//  A NIVEL DE CÓDIGO LIMPIO O CLEAN CODE 
// CUANTOS MENOS PARÁMETROS TENGA UNA FUNCIÓN MÁS FÁCIL SERÁ DE MANTENER Y TESTEAR
