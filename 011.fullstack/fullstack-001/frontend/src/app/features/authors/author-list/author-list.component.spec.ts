import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthorListComponent } from './author-list.component';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { Author } from '../../../interfaces/author.model';
import { By } from '@angular/platform-browser';
import { RouterModule } from '@angular/router';
import { BehaviorSubject, of } from 'rxjs';
import { AuthenticationService } from '../../../authentication/services/authentication.service';
// import { RouterTestingModule } from '@angular/router/testing';

describe('AuthorListComponent', () => {
  let component: AuthorListComponent;
  let fixture: ComponentFixture<AuthorListComponent>;
  let httpTestingController: HttpTestingController;
  let mockAuthentionService: any;
  let isAdmin: BehaviorSubject<boolean>;
  const expectedAuthors: Author[] = [
    {id: 1,firstName:'Alan', lastName:'Sastre', birthDate: new Date(), salary: 1000, photoUrl: 'prueba.jpg', country: 'spain', bio: 'prueba', wikipediaUrl: 'url' },
    {id: 1,firstName:'Eutimio', lastName:'Developer', birthDate: new Date(), salary: 1000, photoUrl: 'prueba.jpg', country: 'spain', bio: 'prueba', wikipediaUrl: 'url' },
  ];

  beforeEach(async () => {
    isAdmin = new BehaviorSubject<boolean>(true);

    mockAuthentionService = {
      isAdmin: isAdmin.asObservable()
    }

    await TestBed.configureTestingModule({
      imports: [
        AuthorListComponent,
        HttpClientTestingModule,
        RouterModule.forRoot([])
        // RouterTestingModule
      ],
      providers: [
        { provide: AuthenticationService, useValue: mockAuthentionService }
      ]
    })
    .compileComponents();

    httpTestingController = TestBed.inject(HttpTestingController);
    fixture = TestBed.createComponent(AuthorListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should load authors from backend using HttpClient', () => {
    const request = httpTestingController.expectOne('http://localhost:3000/author');
    request.flush(expectedAuthors);

    expect(request.request.method).toEqual('GET');
    expect(component.authors).toEqual(expectedAuthors);
  });

  it('should display firstName and lastName of authors in cards', () => {
    component.authors = expectedAuthors;
    fixture.detectChanges();
    const authorsInHtml = fixture.debugElement.queryAll(By.css('.card'));
    expect(authorsInHtml.length).toEqual(2);

    const authorTitles = fixture.debugElement.queryAll(By.css('.card h3'));
    expect(authorTitles[0].nativeElement.textContent).toContain('Alan Sastre');
    expect(authorTitles[1].nativeElement.textContent).toContain('Eutimio Developer');
  });

  it('should display admin buttons when user is admin', () => {
    component.authors = expectedAuthors;
    fixture.detectChanges();
    const buttons = fixture.debugElement.queryAll(By.css('.card button'));
    expect(buttons.length).toEqual(4);
  });

  it('should not display admin buttons when user is user role not admin', () => {
    component.authors = expectedAuthors;
    isAdmin.next(false);
    fixture.detectChanges();
    const buttons = fixture.debugElement.queryAll(By.css('.card button'));
    expect(buttons.length).toEqual(2);
  });
});
