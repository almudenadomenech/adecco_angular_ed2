import { Routes } from '@angular/router';
import { HomeComponent } from './layout/home/home.component';
import { BookListComponent } from './features/books/book-list/book-list.component';
import { BookDetailComponent } from './features/books/book-detail/book-detail.component';
import { BookFormComponent } from './features/books/book-form/book-form.component';
import { CategoryDetailComponent } from './features/categories/category-detail/category-detail.component';
import { ReservationFormComponent } from './features/reservations/reservation-form/reservation-form.component';
import { AuthorListComponent } from './features/authors/author-list/author-list.component';
import { AuthorFormComponent } from './features/authors/author-form/author-form.component';
import { AuthorDetailComponent } from './features/authors/author-detail/author-detail.component';
import { RegisterComponent } from './authentication/register/register.component';
import { LoginComponent } from './authentication/login/login.component';
import { roleAdminGuard } from './authentication/guards/role.guard';
import { AccountFormComponent } from './features/users/account-form/account-form.component';
import { ReservationListComponent } from './features/reservations/reservation-list/reservation-list.component';
import { AvatarFormComponent } from './features/users/avatar-form/avatar-form.component';
import { userLoggedInGuard } from './authentication/guards/user-logged-in.guard';

export const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'books',
    component: BookListComponent
  },
  {
    path: 'books/:id/detail',
    component: BookDetailComponent
  },
  {
    path: 'books/create',
    component: BookFormComponent,
    canActivate: [roleAdminGuard]
  },
  {
    path: 'books/:id/update',
    component: BookFormComponent,
    canActivate: [roleAdminGuard]
  },
  {
    path: 'categories/:id/detail',
    component: CategoryDetailComponent,
    canActivate: [userLoggedInGuard]
  },
  {
    path: 'books/:id/reserve',
    component: ReservationFormComponent
  },
  {
    path: 'authors',
    component: AuthorListComponent
  },
  {
    path: 'authors/create',
    component: AuthorFormComponent,
    canActivate: [roleAdminGuard]
  },
  {
    path: 'authors/:id/update',
    component: AuthorFormComponent,
    canActivate: [roleAdminGuard]
  },
  {
    path: 'authors/:id/detail',
    component: AuthorDetailComponent,
    canActivate: [userLoggedInGuard]
  },
  {
    path: 'register',
    component: RegisterComponent
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'account',
    component: AccountFormComponent
  },
  {
    path: 'reservations',
    component: ReservationListComponent
  },
  {
    path: 'account/avatar',
    component: AvatarFormComponent
  }

];
