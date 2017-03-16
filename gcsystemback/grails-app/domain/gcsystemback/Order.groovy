package gcsystemback

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
    table "PEDIDO"

    client colum:"ID_USUARIO"
    orderDate colum:"FECHA_PEDIDO"
    deliveryDate colum:"FECHA_ENTREGA"
    orderAmount colum:"MONTO_PROVEEDOR"
    clientAmount colum:"MONTO_CLIENTE"
    status colum:"ESTATUS_PEDIDO"
    pendingPayment colum:"PAGO_PENDIENTE"
    id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
  }
}
