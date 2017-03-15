package gcsystemback

class Color {
  static belongsTo = Product
  static hasMany = [products:Product]
  String name
  static constraints = {
    name nullable:true
  }

  static mapping={
    table "color"

    name colum:"name"
    products joinTable:[name:"product_color", key:"id_color"]
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }
}
