
// interface: contrato, declara las operaciones o acciones (métodos)
interface IPersonaService {
    guardarPersona(nif: string): void;
}


// clase 1: implementa los métodos de la interfaz utilizando un Array
class PersonaServiceArray implements IPersonaService {

    // personas: string[] = []; // Array
    personas: Array<string> = [] // Array

    // obligatorio
    guardarPersona(nif: string): void {
        this.personas.push(nif);
    }
}


// clase 2: implementa los métodos de la interfaz utilizando otra estructura
class PersonaServiceSet implements IPersonaService {

    personas: Set<string> = new Set();

    guardarPersona(nif: string): void {
        this.personas.add(nif);
    }
    
}