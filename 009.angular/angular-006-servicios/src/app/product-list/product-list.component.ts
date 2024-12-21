import { Component, OnInit } from '@angular/core';
import { ProductService } from '../services/product.service';
import { HttpClientModule } from '@angular/common/http';
import { Product } from '../interfaces/product.model';

@Component({
  selector: 'app-product-list',
  standalone: true,
  imports: [HttpClientModule],
  providers: [ProductService],
  templateUrl: './product-list.component.html',
  styleUrl: './product-list.component.css'
})
export class ProductListComponent implements OnInit{



  products: Product[] = []; // ARRAY DE PRODUCTOS QUE VIENEN DE FAKESTORE API

  constructor(private productService: ProductService) {}

  ngOnInit(): void {
    // llamar al servicio y traer los productos de FAKE STORE API
    this.productService.findAll().subscribe(data => this.products = data);
  }

  imprimirHola(): void {
    let texto = this.productService.holaMundo();
    console.log(texto);
  }
  imprimirProduct(): void {
    // obtener el producto e imprimirlo por consola
    this.productService.obtenerProducto1().subscribe(p => console.log(p));
  }
  crearProducto(): void {
    // Crear objeto de tipo Product
    const tvSamsung: Product = {
      id: 1,
      description: 'Example',
      category: 'Electrónica',
      price: 500,
      image: '',
      title: 'Tv Samsung',
      rating: {
        rate: 4.5,
        count: 120
      }
    };
    // Enviar ese objeto product a API REST BACKEND
    this.productService.create(tvSamsung).subscribe(p => console.log(p));
  }
  actualizarProducto() {
    const tvSamsung: Product = {
      id: 1,
      description: 'Example modificado',
      category: 'Electrónica',
      price: 500,
      image: '',
      title: 'Tv Samsung',
      rating: {
        rate: 4.5,
        count: 120
      }
    };
    // update
    this.productService.update(1, tvSamsung).subscribe(p => console.log(p));
  }

  borrarProducto() {

    this.productService.deleteById(10).subscribe(p => console.log(p));
  }

}
