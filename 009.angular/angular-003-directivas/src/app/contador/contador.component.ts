import { NgStyle } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-contador',
  standalone: true,
  imports: [NgStyle],
  templateUrl: './contador.component.html',
  styleUrl: './contador.component.css'
})
export class ContadorComponent {
  // Crear variable contador number sin valor
  contador: number | undefined;
  // método para incrementar
  incrementar() {
    if(!this.contador) {
      this.contador = 0;
    }
    this.contador++;
  }
  // método para decrementar
  decrementar() {
    if(!this.contador)
      this.contador = 0;

    if(this.contador > 0) // condicion para evitar decrementar por debajo de 0
      this.contador--;
  }

  // método para resetear a undefined
  resetear() {
    const reset = confirm("Esta operación elimina el contador, ¿Quiere proceder?");
    if (reset)
      this.contador = undefined;
  }

  // método getCounterStyle para obtener color en base a número
  // y usarlo con la directiva ngStyle
  getCounterStyle(): any {
    if (this.contador && this.contador < 5) {
      return {color: "red"};

    } else if (this.contador && this.contador < 10) {
      return {color: "blue"};
      
    } else {
      return {color: "green"};
    }

  }

}
