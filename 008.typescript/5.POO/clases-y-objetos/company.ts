/*
Ejemplo de uso del modificador de acceso public

Cuando tenemos modificadores de acceso como por ejemplo public o private en los atributos, podemos ponerlos 
directamente en el constructor y no haría añadirlos fuera del constructor y escribir la asignación this de cada atributos.
*/

class Company {

    // constructor: se puede dividir en varias líneas para mejorar la legibilidad
    constructor(public id: number, public cif: string, public legalName: string, public income: number, public outcome: number) { }

    getFullName(): string {
        return `${this.cif} ${this.legalName}`;
    }

    getNetIncome(): number {
        return this.income - this.outcome;
    }
}

const company1 = new Company(1, 'B55674342', 'DESARROLLOS COSMICOS SL', 500000, 250000);
console.log(company1.getFullName());
console.log(company1.getNetIncome());
// como los atributos son public se pueden acceder directamente
console.log(company1.outcome);
console.log(company1.income);
company1.legalName = "OTRA EMPRESA SL";
console.log(company1.legalName);