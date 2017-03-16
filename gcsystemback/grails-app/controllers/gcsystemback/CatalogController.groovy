package gcsystemback

import org.springframework.dao.DataIntegrityViolationException

class CatalogController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [catalogInstanceList: Catalog.list(params), catalogInstanceTotal: Catalog.count()]
    }

    def create() {
        [catalogInstance: new Catalog(params)]
    }

    def save() {
        def catalogInstance = new Catalog(params)
        if (!catalogInstance.save(flush: true)) {
            render(view: "create", model: [catalogInstance: catalogInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'catalog.label', default: 'Catalog'), catalogInstance.id])
        redirect(action: "show", id: catalogInstance.id)
    }

    def show(Long id) {
        def catalogInstance = Catalog.get(id)
        if (!catalogInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "list")
            return
        }

        [catalogInstance: catalogInstance]
    }

    def edit(Long id) {
        def catalogInstance = Catalog.get(id)
        if (!catalogInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "list")
            return
        }

        [catalogInstance: catalogInstance]
    }

    def update(Long id, Long version) {
        def catalogInstance = Catalog.get(id)
        if (!catalogInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (catalogInstance.version > version) {
                catalogInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'catalog.label', default: 'Catalog')] as Object[],
                          "Another user has updated this Catalog while you were editing")
                render(view: "edit", model: [catalogInstance: catalogInstance])
                return
            }
        }

        catalogInstance.properties = params

        if (!catalogInstance.save(flush: true)) {
            render(view: "edit", model: [catalogInstance: catalogInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'catalog.label', default: 'Catalog'), catalogInstance.id])
        redirect(action: "show", id: catalogInstance.id)
    }

    def delete(Long id) {
        def catalogInstance = Catalog.get(id)
        if (!catalogInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "list")
            return
        }

        try {
            catalogInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'catalog.label', default: 'Catalog'), id])
            redirect(action: "show", id: id)
        }
    }
}
