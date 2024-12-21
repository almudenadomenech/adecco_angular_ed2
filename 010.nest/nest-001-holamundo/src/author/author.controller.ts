import { Body, Controller, Get, Param, ParseIntPipe, Post } from '@nestjs/common';
import { Author } from './author.model';
import { log } from 'console';

// http://localhost:3000/author

@Controller('author')
export class AuthorController {

    // findAll
    @Get()
    findAll(): Author[]{
        let a1: Author = {id: 1, name: 'a1', city: 'c1'};
        let a2: Author = {id: 2, name: 'a2', city: 'c2'};
        let a3: Author = {id: 3, name: 'a3', city: 'c3'};
        return [a1, a2, a3];
    }

    // findById - http://localhost:3000/author/6
    @Get(':id')
    findById(@Param('id', ParseIntPipe) id: number) {
        console.log(id);
        let a1: Author = {id: id, name: 'a1', city: 'c1'};
        return a1;
    }

    @Post()
    create(@Body() author: Author) {
        console.log(author);
        return author;
    }


}
