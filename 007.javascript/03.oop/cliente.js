
class Cliente {

    // atributos de instancia
    constructor(nif, direccion) {
        this.nif = nif;
        this.direccion = direccion;
        this.activo = true;
    }
}

let cliente1 = new Cliente(); // undefined
let cliente2 = new Cliente("11122235T", "C Maria");

console.log(cliente1.direccion); // undefined
console.log(cliente2.direccion); // C Maria