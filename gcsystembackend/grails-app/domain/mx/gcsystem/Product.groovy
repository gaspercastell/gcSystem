package mx.gcsystem

enum ProducType {
  SHOES("Zapatos"),
  CLOTHES("Ropa"),
  ARTICLES("Articulos")
  String value

  public ProducType(String value) {
    this.value = value
  }
  String value() { return value }
}

class Product {

ProducType type
String description
String code
Double private_price
Double public_price
Boolean active
Integer catalog_page
String image
static hasMany = [sizes:Size]
static belongsTo = [ catalogo: Catalog ]

  static constraints = {
    type nullable:true
    description nullable:true
    code nullable:true
    sizes nullable:true
    private_price nullable:true
    public_price nullable:true
    active nullable:true
    catalogo nullable:true
    catalog_page nullable:true
    image nullable:true
  }

  static mapping={
    table "product"

    type colum:"type_product"
    description colum:"description"
    code colum:"code"
    private_price colum:"price_store"
    public_price colum:"price_public"
    active colum:"active"
    catalogo colum:"id_catalog"
    catalog_page colum:"page_catalog"
    image colum:"image"

    sizes joinTable: [name: "product_size", key: "id_product", column: "id_size"]
    id ( generator:"sequence", params: [ sequence:"product_seq" ] )
  }
}
