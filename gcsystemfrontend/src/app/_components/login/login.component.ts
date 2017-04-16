import {Component} from '@angular/core'
import {LoginService} from '../../_services/login.service'

@Component ({
    selector:'login-root',
    templateUrl: './login.component.html',
    providers: [LoginService]
})

export class LoginComponent{
    mensaje : String;
    constructor(private loginService : LoginService){
        this.mensaje = loginService.getUserInfo();
    }
}