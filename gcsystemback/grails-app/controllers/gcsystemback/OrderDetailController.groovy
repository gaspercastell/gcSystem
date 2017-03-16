package gcsystemback

import org.springframework.dao.DataIntegrityViolationException

class OrderDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [orderDetailInstanceList: OrderDetail.list(params), orderDetailInstanceTotal: OrderDetail.count()]
    }

    def create() {
        [orderDetailInstance: new OrderDetail(params)]
    }

    def save() {
        def orderDetailInstance = new OrderDetail(params)
        if (!orderDetailInstance.save(flush: true)) {
            render(view: "create", model: [orderDetailInstance: orderDetailInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), orderDetailInstance.id])
        redirect(action: "show", id: orderDetailInstance.id)
    }

    def show(Long id) {
        def orderDetailInstance = OrderDetail.get(id)
        if (!orderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "list")
            return
        }

        [orderDetailInstance: orderDetailInstance]
    }

    def edit(Long id) {
        def orderDetailInstance = OrderDetail.get(id)
        if (!orderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "list")
            return
        }

        [orderDetailInstance: orderDetailInstance]
    }

    def update(Long id, Long version) {
        def orderDetailInstance = OrderDetail.get(id)
        if (!orderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (orderDetailInstance.version > version) {
                orderDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'orderDetail.label', default: 'OrderDetail')] as Object[],
                          "Another user has updated this OrderDetail while you were editing")
                render(view: "edit", model: [orderDetailInstance: orderDetailInstance])
                return
            }
        }

        orderDetailInstance.properties = params

        if (!orderDetailInstance.save(flush: true)) {
            render(view: "edit", model: [orderDetailInstance: orderDetailInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), orderDetailInstance.id])
        redirect(action: "show", id: orderDetailInstance.id)
    }

    def delete(Long id) {
        def orderDetailInstance = OrderDetail.get(id)
        if (!orderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "list")
            return
        }

        try {
            orderDetailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'orderDetail.label', default: 'OrderDetail'), id])
            redirect(action: "show", id: id)
        }
    }
}
