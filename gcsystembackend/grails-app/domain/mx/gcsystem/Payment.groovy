package mx.gcsystem
import grails.util.Environment

class Payment {
  BigDecimal pay
  BigDecimal pendingAmount
  Date paymentDate

  static belongsTo = [ order: Order ]

    static constraints = {
      order nullable:true
      pay nullable:true
      pendingAmount nullable:true
      paymentDate nullable:true
    }

    static mapping ={
      table "payment"

      order colum: "id_order"
      pay colum:"pay"
      pendingAmount colum:"pending_amount"
      paymentDate colum:"pay_date"
      id ( generator:"sequence", params: [ sequence:"payment_seq" ] )
    }
}
