import { Component } from '@angular/core';
import { ProductosComponent } from "./productos/productos.component";
import { ClientesComponent } from './clientes/clientes.component';
import { PedidosComponent } from "./pedidos/pedidos.component";

@Component({
    selector: 'app-root',
    standalone: true,
    templateUrl: './app.component.html',
    styleUrl: './app.component.css',
    imports: [ProductosComponent, ClientesComponent, PedidosComponent]
})
export class AppComponent {
  title = 'angular-002-componentes';
}
