import {Injectable} from "@angular/core"
import {Http} from "@angular/http";
import {Observable} from 'rxjs/Rx';
import 'rxjs/add/operator/map';

@Injectable()
export class UserService{
    constructor(private _http:Http){}

    getCurrentTime(){
        //return this._http.get('http://localhost:8080/gcsystembackend/api/v1/user/getUser')
        return this._http.get('/api/v1/user/getUser')
        .map(res => res.json());
    }
}

//main.ts
// Importar objetos de la librería http
//import { Http, Response, RequestOptions, Headers } from '@angular/http';
// Importar la clase Observable desde la librería rxjs
//import { Observable }     from 'rxjs/Observable';
