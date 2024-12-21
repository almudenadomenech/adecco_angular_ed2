
for (let index = 0; index < 10; index++) {
    console.log(index);
}


let nombres: string[] = ["nombre1", "nombre2","nombre3","nombre4"]
for (const nombre of nombres) {
    console.log(nombre);
}

nombres.forEach(nombre => console.log(nombre));

nombres.forEach( (nombre, index) => console.log(`${index}: ${nombre}`) );