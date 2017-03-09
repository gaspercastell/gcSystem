import { Component , Input, Output, EventEmitter } from '@angular/core'
import { UserService } from './services/users.service'
import {AppModule} from './app.module';
import {HTTP_PROVIDERS} from "@angular/http";
@Component({
    selector:'users',
    template:`
        <button (click)="ontestGet()">test get request </button><br>
        <p> output : {{getData}}</p>
    `,
    providers: [UserService, HTTP_PROVIDERS]
})

export class UsersComponent {
    getData:string;

    constructor(private _userService:UserService){} 

    ontestGet(){
        this._userService.getCurrentTime()
        .subscribe(
            data => this.getData = JSON.stringify(data),
            error => alert(error),
            () => console.log("Finished")
        );
    }
}