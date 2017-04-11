import {Injectable} from '@angular/core'
import {Http} from '@angular/http'
import { BasePath } from '../app.router';
import 'rxjs/add/operator/map';


@Injectable()
export class LoginService{
    mostrarNonbre():String{
        return 'Gasper Castell';
    }

    constructor(private _http:Http){}

    getInfoUser(){
        //return this._http.get('http://date.jsontest.com')
        return this._http.get(BasePath +'/v1/user/getUser')
        .map(res => res.json());
    }
}


