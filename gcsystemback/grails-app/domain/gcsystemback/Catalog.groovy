package gcsystemback

enum CatalogType {
  SPRINGSUMER("Primaver/Verano"),
  AUTUMNWINTER("Otoño/Invierno")

  String value

  public CatalogType(String value) {
    this.value = value
  }

  String value() { return value }
}

enum Companies{
  CKLASS,PAKAR,PRICESHOES
}

class Catalog {
  CatalogType type
  Companies company
  Date year

  static constraints = {
    type nullable:true
    company nullable:true
    year nullable:true
  }

  static hasMany = [products:Product]

  static mapping={
    table "catalogo"

    type colum:"type"
    company colum:"company_name"
    year colum:"year"
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }
}
