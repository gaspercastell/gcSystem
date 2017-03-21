package gcsystemback

class Size {

  String name
  Integer number
  Boolean active
  Boolean isClothes
  Boolean isShoes
  
  static constraints = {
    name  nullable:true
    number nullable:true
    isClothes nullable:true
    isShoes nullable:true
  }

  static mapping = {
    table "TALLA"

    name colum:"NOMBRE"
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }

}
