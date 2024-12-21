import { Component } from '@angular/core';
import { Restaurant } from '../interfaces/restaurant.model';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-restaurant-list',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './restaurant-list.component.html',
  styleUrl: './restaurant-list.component.css'
})
export class RestaurantListComponent {

  restaurants: Restaurant[] = [{
    id: 1,
    name: "100 montaditos",
    location: "C de María 63",
    rating: 5,
    phone: "654321123",
    imageUrl: "https://placehold.co/300"
  },
  {
    id: 2,
    name: "100 montaditos",
    location: "C de María 63",
    rating: 5,
    phone: "654321123",
    imageUrl: "https://placehold.co/300"
  },
  {
    id: 3,
    name: "100 montaditos",
    location: "C de María 63",
    rating: 5,
    phone: "654321123",
    imageUrl: "https://placehold.co/300"
  },
  {
    id: 4,
    name: "100 montaditos",
    location: "C de María 63",
    rating: 5,
    phone: "654321123",
    imageUrl: "https://placehold.co/300"
  }];
}
