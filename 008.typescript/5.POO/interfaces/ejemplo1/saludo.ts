/*
Palabras reservadas para interfaces:

interface
implements

Todas las clases que implementan una misma interfaz están obligadas a 
implementar los métodos de la interfaz.
*/

interface ISaludo {
    // declarar métodos
    saludar(): string;
    despedirse(firstName: string): string;
}

class SaludoAlan implements ISaludo {
    saludar(): string {
        return "Hola soy Alan";
    }
    despedirse(firstName: string): string {
        return "Adios " + firstName;
    }
    
}
class SaludoFormal implements ISaludo {

    // no ponemos constructor ya que no hay atributos

    saludar(): string {
        return "Estimados, buenos días";
    }
    despedirse(firstName: string): string {
        return `Hasta la próxima ${firstName}`;
    }
}

class SaludoInformal implements ISaludo {
    saludar(): string {
        return "Que pasa gente";
    }
    despedirse(firstName: string): string {
        return `Chao ${firstName}`;
    }
}

let saludo1: ISaludo = new SaludoFormal();
let saludo2: ISaludo = new SaludoInformal();

console.log(saludo1.saludar());
console.log(saludo2.saludar());