
// CREAR CLASE
// La palabra export permite que se pueda utilizar
// la clase desde otros archivos
export class Laptop {

    // estado
    constructor(private id: number, 
                private ram: number, 
                private cores: number, 
                private manufacturer: string,
                private model: string) {}

    // comportamiento
    public getFullName() {
        return `${this.manufacturer} ${this.model}`;
    }

}

