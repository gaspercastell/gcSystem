package mx.gcsystem

enum TypeRole {
  ADMIN("Administrador del sistema"),
  CLIENTE("Rol para clientes en general")

  String value

  public TypeRole(String value) {
    this.value = value
  }

  String value() { return value }
}

class User {
  String username
  String password
  String name
  String lastName
  String secondLastName
  String phone
  TypeRole rol
  static hasMany = [orders:Order]

  static constraints = {
    secondLastName nullable:true
  }

  static mapping = {
    table "user"

    username colum:"mail"
    password colum:"password"
    name colum:"name"
    lastName colum:"last_name"
    secondLastName colum:"second_last_name"
    phone colum:"phone"
    rol colum:"role"
    id ( generator:"sequence", params: [ sequence:"user_seq" ] )
  }
}
