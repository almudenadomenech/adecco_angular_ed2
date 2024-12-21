
// Crear clase Empresa con atributos
class Empresa {

    constructor(cif, nombreLegal, direccion, year) {
        this.cif = cif;
        this.nombreLegal = nombreLegal;
        this.direccion = direccion;
        this.year = year;
    }
}
// Crear una clase Empleado con atributos, uno de ellos será de tipo Empresa
class Empleado {

    constructor(nss, nif, numCuenta, empresa) {
        this.nss = nss;
        this.nif = nif;
        this.numCuenta = numCuenta;
        this.empresa = empresa; // Composición: Es un objeto de la clase Empresa
    }
}
// Crear 1 objeto empresa
let fundacionAdecco = new Empresa("A12345678", "Fundación Adecco", "C María", 2005);

// Crear 2 objetos empleado ambos con la misma empresa
let juanito = new Empleado("1122334455", "14725836J", "ES123456789", fundacionAdecco);
console.log(juanito.empresa.cif);
console.log(juanito.empresa.nombreLegal);

