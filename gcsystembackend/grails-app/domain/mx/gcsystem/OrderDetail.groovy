package mx.gcsystem

class OrderDetail {
  Order order
  Product product
  String size
  String color
  Integer quantity
  Double orderAmount
  Double clientAmount
  Double total

  static constraints = {
    order nullable:true
    product nullable:true
    size nullable:true
    color nullable:true
    quantity nullable:true
    orderAmount nullable:true
    clientAmount nullable:true
    total nullable:true
  }

  static mapping ={
    table "order_detail"

    order colum:"order_id"
    product colum:"product_id"
    size colum:"size"
    color colum:"color"
    quantity colum:"quantity"
    orderAmount colum:"order_amount"
    clientAmount colum:"client_amount"
    total colum:"total"
    id ( generator:"sequence", params: [ sequence:"order_detail_seq" ] )
  }
}
