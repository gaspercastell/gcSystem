package mx.gcsystem

enum SizeClothes {
  CHICA, MEDIANA,GRANDE,EXTRAGRANDE
}

class Size {

  Boolean active
  Integer number
  SizeClothes name
  static hasMany = [colors:Color]
  static belongsTo = Product
  static constraints = {
    name  nullable:true
    number nullable:true
    active nullable:true
  }

  static mapping = {
    table "size"

    name colum:"name"
    colors joinTable: [name: "size_color", key: "id_size", column: "id_color"]
    id ( generator:"sequence", params: [ sequence:"size_seq" ] )
  }

}
