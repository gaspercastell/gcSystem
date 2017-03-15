package gcsystemback

class Size {
  static belongsTo = Product
  static hasMany =[products:Product]
  String name
  static constraints = {
    name  nullable:true
  }

  static mapping = {
    table "TALLA"

    name colum:"NOMBRE"
    products joinTable : [name:"product_size", key:"id_size"]
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }

}
