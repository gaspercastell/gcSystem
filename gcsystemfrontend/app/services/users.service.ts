export class UserService{
    listaUsers(isClient):Array<string>{
        if(isClient == false){
            return ['jorge','luis','juan','pedro']
        }else{
            return ['Maria','Petra','Luisa','Sandy']
        }
    }
}