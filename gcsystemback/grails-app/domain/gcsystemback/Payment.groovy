package gcsystemback
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
      table "ABONO"

      order colum: "ID_ORDEN"
      pay colum:"PAGO"
      pendingAmount colum:"CANTIDAD_RESTANTE"
      paymentDate colum:"FECHA_ABONO"
      id ( generator:"sequence", params: [ sequence:"US_SEQ" ] )
    }
}
