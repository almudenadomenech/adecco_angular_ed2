import { Body, ConflictException, Controller, Delete, Get, HttpCode, NotFoundException, Param, ParseIntPipe, Post, Put } from '@nestjs/common';
import { Book } from './book.model';
@Controller('book')
export class BookController {
    // Crear métodos CRUD con @Get, @Post, @Put, @Delete
    @Get()
    findAll(): Book[] {
        // Crear un array de 3 books y devolverlo con return
        let book1: Book = {
            id: 1,
            title: 'Book1',
            price: 19.99
        }
        return [book1];
    }

    // nest start watch
    // http://localhost:3000/book/4
    @Get(':id') // :id es una variable, parámetro en la url
    findById( @Param('id', ParseIntPipe) id: number ) {
        console.log(id);
        let bookDemo: Book = {
            id: id,
            title: 'book',
            price: 20.0
        }
        return bookDemo;
    }

    // POST Se usa para crear nuevos libros en base de datos
    // http://localhost:3000/book enviando un objeto en Body
    // Body es el cuerpo de la petición
    @Post()
    create(@Body() book: Book) {
        // guardar el book en base de datos
        console.log(book);
        return book;
    }

    // PUT se usa para actualizar un libro existente en base de datos
    // http://localhost:3000/book/3
    // ParseIntPipe lo convierte de string a number
    // POST sería para crear un nuevo objeto que no existía antes
    // PUT sería una actualización completa de un objeto
    // PATCH sería una actualización parcial solo de algunos atributos de un objeto de forma variable
    @Put(':id')
    update(
        @Param('id', ParseIntPipe) id: number, 
        @Body() book: Book) {

            console.log(id);
            console.log(book);
            // buscar y actualizar book en base de datos
            return book;
    }


    // DELETE se usa para borrar
    @Delete(':id')
    @HttpCode(204) // por defecto devuelva status 204 no content
    deleteById(
        @Param('id', ParseIntPipe) id:number
    ) {
        console.log(id);
        // comprobar si existe el libro
        // borrarlo si existe

        // throw new NotFoundException('Libro no encontrado');
        // throw new ConflictException('No se puede borrar libro porque tiene elementos asociados');

    }
}
