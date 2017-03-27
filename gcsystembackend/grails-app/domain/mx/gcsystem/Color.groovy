package mx.gcsystem

class Color {

  String name
  static constraints = {
    name nullable:true
  }
  static belongsTo = Size
  static mapping={
    table "color"

    name colum:"name"
    id ( generator:"sequence", params: [ sequence:"color_seq" ] )
  }
}
