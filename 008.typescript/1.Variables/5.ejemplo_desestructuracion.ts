// Crear un objeto sin crear una clase
const person = {
    firstName: 'John Doe',
    age: 30,
    // composición
    address: {
        city: 'New York',
        country: 'USA'
    }
};

console.log(person.address.city);

// desestructuración o destructuring (avanzado)
let { firstName, age } = person;
let { address : {city} } = person;

console.log(age);
console.log(city);

