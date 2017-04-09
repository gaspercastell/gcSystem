import { Component } from '@angular/core';
import { LoginService } from '../_services/login.service';
//import {HTTP_PROVIDERS} from "@angular/http";

@Component({
  selector: 'gcsystem',
  templateUrl: 'login.component.html',

  providers:[LoginService]
})
export class LoginComponent {
    title = 'Control de ventas por Catálogo';
    myName:String;
    json:String;

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