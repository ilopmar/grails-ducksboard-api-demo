package ducksboard.api.demo

//import org.springframework.dao.DataIntegrityViolationException

/**
 * DemoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class DemoController {
    
    def ducksboardService

    //static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static allowedMethods = [updateLong:"POST"]
    
    def updateLong(String countId, Long value) {
        def result = ducksboardService.pushLongValue(countId, value)
        
        if (result) {
            render "Widget updated"
        } else {
            render "There was an error updating the widget"
        }
    }

    /*
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [demoInstanceList: Demo.list(params), demoInstanceTotal: Demo.count()]
    }

    def create() {
        [demoInstance: new Demo(params)]
    }

    def save() {
        def demoInstance = new Demo(params)
        if (!demoInstance.save(flush: true)) {
            render(view: "create", model: [demoInstance: demoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'demo.label', default: 'Demo'), demoInstance.id])
        redirect(action: "show", id: demoInstance.id)
    }

    def show() {
        def demoInstance = Demo.get(params.id)
        if (!demoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "list")
            return
        }

        [demoInstance: demoInstance]
    }

    def edit() {
        def demoInstance = Demo.get(params.id)
        if (!demoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "list")
            return
        }

        [demoInstance: demoInstance]
    }

    def update() {
        def demoInstance = Demo.get(params.id)
        if (!demoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (demoInstance.version > version) {
                demoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'demo.label', default: 'Demo')] as Object[],
                          "Another user has updated this Demo while you were editing")
                render(view: "edit", model: [demoInstance: demoInstance])
                return
            }
        }

        demoInstance.properties = params

        if (!demoInstance.save(flush: true)) {
            render(view: "edit", model: [demoInstance: demoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'demo.label', default: 'Demo'), demoInstance.id])
        redirect(action: "show", id: demoInstance.id)
    }

    def delete() {
        def demoInstance = Demo.get(params.id)
        if (!demoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "list")
            return
        }

        try {
            demoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'demo.label', default: 'Demo'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
    */
}
