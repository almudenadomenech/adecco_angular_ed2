export interface Book {
  // atributos básicos:
  id: number;
  title: string;
  sinopsis: string;
  release: Date;
  numPages: number;
  photo: string;
  price: number;
  // asociaciones con otras Interfaces:
  authorId: number; // Many To One
  categories: number[]; // Many To Many
}
