import { Component } from '@angular/core';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';
import { Login } from '../login.dto';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { AuthenticationService } from '../services/authentication.service';
import { Token } from '../token.dto';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {

  loginForm = this.fb.group({
    email: ['', Validators.required],
    password: ['', Validators.required]
  });
  error = '';

  constructor(
    private fb: FormBuilder,
    private httpClient: HttpClient,
    private router: Router,
    private authService: AuthenticationService) {}

  save() {
    let login: Login = {
      email: this.loginForm.get('email')?.value ?? '',
      password: this.loginForm.get('password')?.value ?? ''
    }

    let url = 'http://localhost:3000/user/login';
    this.httpClient.post<Token>(url, login).subscribe({
      next: data => {
        console.log(data.token);
        this.authService.handleLogin(data.token);
        this.router.navigate(['/books']);
      },
      error: error => {
        console.log(error);

        if (error.status === 404) {
          this.error = "No se ha encontrado el usuario";

        } else if (error.status === 401) {
          this.error = "Credenciales incorrectas.";
        }

      }
    });
  }
}
