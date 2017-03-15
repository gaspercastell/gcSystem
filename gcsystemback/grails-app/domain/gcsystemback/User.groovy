package gcsystemback

enum Role {
  ADMIN("Administrador del sistema"),
  CLIENTE("Rol para clientes en general")

  String value

  public Role(String value) {
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
  Role rol
  static hasMany = [orders:Order]

  static constraints = {
    secondLastName nullable:true
  }

  static mapping = {
    table "USUARIO"

    username colum:"MAIL"
    password colum:"CONTRASEÑA"
    name colum:"NOMBRE"
    lastName colum:"APELLIDO_PATERNO"
    secondLastName colum:"APELLIDO_MATERNO"
    phone colum:"TELEFONO"
    rol colum:"ROL"
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }
}
