import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Author } from '../interfaces/author.model';

@Injectable({
  providedIn: 'root'
})
export class AuthorService {

  backendUrl: string = "http://localhost:3000/authors";

  constructor(private httpClient: HttpClient) { }

  findAll(): Observable<Author[]> {
    return this.httpClient.get<Author[]>(this.backendUrl);
  }

  findById(id: number | string): Observable<Author> {
    return this.httpClient.get<Author>(`${this.backendUrl}/${id}`);
  }

  create(author: Author): Observable<Author> {
    return this.httpClient.post<Author>(this.backendUrl, author);
  }

  update(id: number | string, author: Author): Observable<Author> {
    return this.httpClient.put<Author>(`${this.backendUrl}/${id}`, author)
  }

  deleteById(id: number | string) {
    return this.httpClient.delete(`${this.backendUrl}/${id}`);
  }

}
