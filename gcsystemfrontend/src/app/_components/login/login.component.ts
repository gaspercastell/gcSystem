import {Component} from '@angular/core'
import {LoginService} from '../../_services/login.service'

@Component ({
    selector:'login',
    templateUrl: './login.component.html',
    providers: [LoginService]
})

export class LoginComponent{
    mensaje : String;
    constructor(private loginService : LoginService){
        this.getUserInfo();
    }

    getUserInfo(){
        this.loginService.getUserInfo().subscribe(
            data => this.mensaje = JSON.stringify(data),
            error => alert(error),
            () => console.log("Fin")
        );
    }

}