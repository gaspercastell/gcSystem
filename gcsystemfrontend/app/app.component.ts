import { Component } from '@angular/core'
import { UsersComponent } from './users.component';

@Component({
  selector: 'my-app',
  templateUrl:'app/templates/user.template.html',
  directives:[UsersComponent]
})
export class AppComponent { 
  isCliente = true;

  showSelected(evento):void{
    console.log(evento.name);
  }
}