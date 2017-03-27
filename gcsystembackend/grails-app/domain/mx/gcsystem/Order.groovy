package mx.gcsystem

enum OrderStatus{
  DELIVERED("Surtido"),
  INCOMPLETE("Surtido incompleto"),
  PENDING("Pendiente de surtir"),
  REJECTED("Pedido rechazado"),
  CANCELLED("Pedido cancelado")

  String value

  public OrderStatus(String value) {
    this.value = value
  }

  String value() { return value }

}

class Order {

  Date orderDate
  Date deliveryDate
  BigDecimal orderAmount
  BigDecimal clientAmount
  OrderStatus status
  BigDecimal pendingPayment
  static hasMany = [payments: Payment]
  static belongsTo = [ client: User ]

    static constraints = {
      client nullable: true
      orderDate nullable: true
      deliveryDate nullable: true
      orderAmount nullable: true
      clientAmount nullable: true
      status nullable:true
      pendingPayment nullable: true
    }
  static mapping = {
    table "pedido"

    client colum:"id_user"
    orderDate colum:"date_order"
    deliveryDate colum:"date_delivery"
    orderAmount colum:"amount_provider"
    clientAmount colum:"amount_client"
    status colum:"status_order"
    pendingPayment colum:"pay_pending"
    id ( generator:"sequence", params: [ sequence:"order_seq" ] )
  }
}
