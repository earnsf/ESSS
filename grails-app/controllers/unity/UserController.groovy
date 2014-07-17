package unity

import static org.springframework.http.HttpStatus.*

import unity.User;
import grails.transaction.Transactional

/**
 * Only takes in account SAVE or POST method. We don't need different roles.
 *
 */

@Transactional(readOnly = true)
class UserController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
    def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond User.list(params), model:[UserInstanceCount: User.count()]
	}
	
	// For BACK END viewing, probably won't call it.
	def show(User userInstance) {
		respond userInstance
	}
	
	def create() {
		respond new User(params)
	}
	
	@Transactional
	def save(User userInstance) {
		if (userInstance == null) {
			notFound()
			return
		}

		if (userInstance.hasErrors()) {
			respond userInstance.errors, view:'create'
			return
		}

		userInstance.save flush:true // saves a new domain class instance or updates a modified one

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
				redirect userInstance
			}
			'*' { respond userInstance, [status: CREATED] }
		}
	}
	

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
	
}
