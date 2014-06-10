package p1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FirstController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond First.list(params), model:[firstInstanceCount: First.count()]
    }

    def show(First firstInstance) {
        respond firstInstance
    }

    def create() {
        respond new First(params)
    }

    @Transactional
    def save(First firstInstance) {
        if (firstInstance == null) {
            notFound()
            return
        }

        if (firstInstance.hasErrors()) {
            respond firstInstance.errors, view:'create'
            return
        }

        firstInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'first.label', default: 'First'), firstInstance.id])
                redirect firstInstance
            }
            '*' { respond firstInstance, [status: CREATED] }
        }
    }

    def edit(First firstInstance) {
        respond firstInstance
    }

    @Transactional
    def update(First firstInstance) {
        if (firstInstance == null) {
            notFound()
            return
        }

        if (firstInstance.hasErrors()) {
            respond firstInstance.errors, view:'edit'
            return
        }

        firstInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'First.label', default: 'First'), firstInstance.id])
                redirect firstInstance
            }
            '*'{ respond firstInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(First firstInstance) {

        if (firstInstance == null) {
            notFound()
            return
        }

        firstInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'First.label', default: 'First'), firstInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'first.label', default: 'First'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
