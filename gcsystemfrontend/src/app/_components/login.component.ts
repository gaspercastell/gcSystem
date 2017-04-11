import { Component } from '@angular/core';
import { LoginService } from '../_services/login.service';


@Component({
  selector: 'login',
  templateUrl: 'login.component.html',

  providers:[LoginService]
})
export class LoginComponent {
    public title: String = 'Control de ventas por Catálogo';
    public myName:String;
    public json:String;

    constructor(private loginService:LoginService){
        this.myName=loginService.mostrarNonbre();
        this.getUserInfo();
    }

    getUserInfo(){
        this.loginService.getInfoUser().subscribe(
            data => this.json = JSON.stringify(data),
            error => alert(error),
            () => console.log("Fin")
        );
    }
}