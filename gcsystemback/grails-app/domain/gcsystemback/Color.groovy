package gcsystemback

class Color {

  String name
  static constraints = {
    name nullable:true
  }

  static mapping={
    table "color"

    name colum:"name"
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }
}
