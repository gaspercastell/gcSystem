import {Injectable} from '@angular/core'
import {Http} from '@angular/http'
import 'rxjs/add/operator/map';

@Injectable()
export class LoginService{
    mostrarNonbre():String{
        return 'Gasper Castell';
    }

    constructor(private _http:Http){}

    getInfoUser(){
        return this._http.get('http://headers.jsontest.com/')
        .map(res => res.json());
    }
}


