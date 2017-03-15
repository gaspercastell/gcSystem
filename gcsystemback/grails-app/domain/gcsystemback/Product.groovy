package gcsystemback

class Product {

  enum ProducType {
    SHOES("Zapatos"),
    CLOTHES("Ropa"),
    ARTICLES("Articulos")

    public Role(String value) {
      this.value = value
    }
    String value() { return value }
  }

  ProducType type
  String description
  String code
  Double private_price
  Double public_price
  Integer active
  Integer catalog_page
  String image
  static hasMany = [sizes:Size,colors:Color]
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
      table "PRODUCTO"

      type colum:"TIPO_PRODUCTO"
      description colum:"DESCRIPCION"
      code colum:"CODIGO"
      private_price colum:"PRECIO_TIENDA"
      public_price colum:"PRECIO_PUBLICO"
      active colum:"ACTIVO"
      catalogo colum:"ID_CATALOGO"
      catalog_page colum:"PAGINA_CATALOGO"
      image colum:"IMAGEN"

      sizes joinTable:[name:"product_size", key:'id_product']
      colors joinTable:[name:"product_color", key:'id_product']

      id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
    }
}
