import {Injectable} from "@angular/core"
import {Http} from "@angular/http";
import {Observable} from 'rxjs/Rx';
import 'rxjs/add/operator/map';

@Injectable()
export class UserService{
    constructor(private _http:Http){}
    
    getCurrentTime(){
        return this._http.get('http://localhost:3000/api/v1/users.json')
        //return this._http.get('http://time.jsontest.com')
        //return this._http.post('http://localhost:3000/api/users.json/',"")
        .map(res => res.json());
    }
}
