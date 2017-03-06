"use strict";
var UserService = (function () {
    function UserService() {
    }
    UserService.prototype.listaUsers = function (isClient) {
        if (isClient == false) {
            return ['jorge', 'luis', 'juan', 'pedro'];
        }
        else {
            return ['Maria', 'Petra', 'Luisa', 'Sandy'];
        }
    };
    return UserService;
}());
exports.UserService = UserService;
//# sourceMappingURL=users.service.js.map