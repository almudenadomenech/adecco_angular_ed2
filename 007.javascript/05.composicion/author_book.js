
// Crear la clase Author
// nombre, edad, bio, numBestSeller (numero de libros Best Seller), estudios []
class Author {
    constructor(nombre, edad, bio, numBestSellers, certifications) {
        this.nombre = nombre;
        this.edad = edad;
        this.bio = bio;
        this.numBestSellers = numBestSellers; // numero de libros vendidos que son best sellers
        this.certifications = certifications; // una lista de strings
    }
}

// Crear la clase Editorial
// nombre, year, numPublishedTitles (número total de libros publicados)
class Editorial {
    constructor(nombre, year, numPublishedTitles) {
        this.nombre = nombre;
        this.year = year;
        this.numPublishedTitles = numPublishedTitles;
    }
}
// Crear la clase Libro
// isbn, title, numPages, price, author, editorial
class Book {
    constructor (isbn, title, numPages, price, author, editorial) {
        this.isbn = isbn;
        this.title = title;
        this.numPages = numPages;
        this.price = price;
        this.author = author; // objeto de la clase Author
        this.editorial = editorial; // objeto de la clase Editorial
    }

}
// Crear objetos autor y editorial
let certifications = ["Admin y Direccion de Empresas", "MBA", "Curso Angular CertiDevs"];
let hormozi = new Author("Alex Hormozi", 30, "Entrepreneur ...", 2, certifications);

let raquel = new Author("Alex Hormozi", 30, "Entrepreneur ...", 2, ["cert1", "certi2", "cert3"]);

let anaya = new Editorial("ANAYA Educación", 1995, 4500);

// Crear objetos libro
let libro1 = new Book("123456", "100M Offers", 400, 19.99, hormozi, anaya);

console.log(libro1.author.nombre);
console.log(libro1.editorial.nombre);