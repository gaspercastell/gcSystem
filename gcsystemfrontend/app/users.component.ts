import { Component , Input, Output, EventEmitter } from '@angular/core'
import { UserService } from './services/users.service'
@Component({
    selector:'users',
    template:`
        <h3>Lista de usuarios</h3>
        <ul>
            <li *ngFor="let user of users">
                <span (click) = "clickInUser($event)">{{user}}</span>
            </li>
        </ul>
    `,
    providers: [UserService]
})

export class UsersComponent {
    @Input() isClient: boolean;
    @Output() selected = new EventEmitter();
    users:string[];

    constructor(userService:UserService){
        this.users = userService.listaUsers(true);
    }

    clickInUser(evento):void{
        this.selected.emit({name: evento.target.textContent});
    }
}


