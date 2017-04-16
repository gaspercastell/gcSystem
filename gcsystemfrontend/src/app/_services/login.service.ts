import {Http} from '@angular/http'
import {Injectable} from '@angular/core'

@Injectable()
export class LoginService{
    constructor(private _http :Http){}
    
    getUserInfo(){
        return 'hola mundo';
    }
}