import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template:
  `
  <h1>{{title}}</h1>
  <ul>
   <li *ngFor="let prod of products">
     <p>Producto: {{prod}}</p>
   </li>
  </ul>

  `
})

export class AppComponent {
  title = 'Hola Gasper!';
  products =["zapatos","prendas","pulceras"];
}
