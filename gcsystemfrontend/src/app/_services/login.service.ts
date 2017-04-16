import {Http} from '@angular/http'
import {Injectable} from '@angular/core'
import { BasePath } from '../app.router'
import 'rxjs/add/operator/map';

@Injectable()
export class LoginService{
    constructor(private _http :Http){}
    
    getUserInfo(){
        return this._http.get(BasePath + '/v1/user/getUser')
        .map(res => res.json());
    }
}