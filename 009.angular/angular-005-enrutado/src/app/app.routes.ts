import { Routes } from '@angular/router';
import { RestaurantListComponent } from './restaurant-list/restaurant-list.component';
import { RestaurantFormComponent } from './restaurant-form/restaurant-form.component';
import { RestaurantDetailComponent } from './restaurant-detail/restaurant-detail.component';
import { RestaurantBookingComponent } from './restaurant-booking/restaurant-booking.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { HomeComponent } from './home/home.component';

export const routes: Routes = [
  /* Opción 1: redirigir a un listado
  CASO ESPECIAL: se pone pathMatch full para evitar que detecte cualquier url
  ya que todas las urls empiezan por cadena vacía
  Restringir la detección de la cadena vacía si y solo si está vacía
  */
  /*
  {
    path: '',
    redirectTo: '/restaurantes',
    pathMatch: 'full'
  },
  */

  /*
  OPCIÓN 2: crear un componente HOME que sea la pantalla de inicio desde donde navegar a los listados
  ng generate component home
  */
  {
    path: '', // ruta vacía
    component: HomeComponent
  },
  {
    path: 'restaurantes',
    component: RestaurantListComponent
  },
  {
    path: 'restaurantes/nuevo',
    component: RestaurantFormComponent
  },
  {
    path: 'restaurantes/:id/detalle',
    component: RestaurantDetailComponent
  },
  {
    path: 'restaurantes/:id/reservas',
    component: RestaurantBookingComponent
  },
  {
    path: 'not-found-404',
    component: NotFoundComponent
  },
  {
    path: '**', // ruta comodín que atrapa cualquier url que se escriba
    redirectTo: '/not-found-404'
  }
  // Opción en la que se conserva la ruta errónea
  /*
  ,{
    path: '**', // ruta comodín que atrapa cualquier url que se escriba
    component: NotFoundComponent
  }
  */



];
