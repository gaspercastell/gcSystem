"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core');
var users_service_1 = require('./services/users.service');
var UsersComponent = (function () {
    function UsersComponent(userService) {
        this.selected = new core_1.EventEmitter();
        this.users = userService.listaUsers(true);
    }
    UsersComponent.prototype.clickInUser = function (evento) {
        this.selected.emit({ name: evento.target.textContent });
    };
    __decorate([
        core_1.Input(), 
        __metadata('design:type', Boolean)
    ], UsersComponent.prototype, "isClient", void 0);
    __decorate([
        core_1.Output(), 
        __metadata('design:type', Object)
    ], UsersComponent.prototype, "selected", void 0);
    UsersComponent = __decorate([
        core_1.Component({
            selector: 'users',
            template: "\n        <h3>Lista de usuarios</h3>\n        <ul>\n            <li *ngFor=\"let user of users\">\n                <span (click) = \"clickInUser($event)\">{{user}}</span>\n            </li>\n        </ul>\n    ",
            providers: [users_service_1.UserService]
        }), 
        __metadata('design:paramtypes', [users_service_1.UserService])
    ], UsersComponent);
    return UsersComponent;
}());
exports.UsersComponent = UsersComponent;
//# sourceMappingURL=users.component.js.map