package unity

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
//@Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY'])
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
		//redirect action: 'create'
    }
	
	@Secured('permitAll')
	def register(User userInstance) {
		log.info "Trying to register"
		
	}
	@Secured('permitAll')
	def verify_email() {
		log.info "Trying to verify email"
		
		def user = User.findByVistashare_email(params.email)
		if (user && user.username != null) {
			log.info "username already in the system"
			def msg = g.message(code: "Your username already exists! Please login.")
			flash.message = msg
			redirect action: 'auth', controller: "login", params: [email: params.email]
		} else if (user && user.vistashare_email != "") {
			log.info "verified email"
			def email = params.email
			redirect action: 'registerContinued', params: [email: email]
		} else {
			log.info "failed to verify email"
			def msg = g.message(code: "Sorry, we were not able to find a user with that VistaShare email")
			flash.message = msg
			redirect action: 'register'
		}
		
	}
	// CANNOT PERMIT ALL TO GET PAST THE VERIFY EMAIL IF THEY HAVEN't BEEN VERIFIED.
	// MUST HAVE A CHECK MORE THAN JUST NULL
	@Secured('permitAll')
	def registerContinued() {
		log.info params.email
		def user = User.findByVistashare_email(params.email)
		if (params.email == null || !user || user.vistashare_email == "") { // checks if vistashare email was actually valid (to prevent holes)
			redirect action: 'denied', controller: 'login'
			return
		}
		log.info "Register continued"
	}
	
	@Secured('permitAll')
	def verify_creds() {
		log.info "Trying to verify last 4 digits of SSN, full name, DOB"
		log.info params
		def user = User.findByVistashare_email(params.email)
		log.info user.first_name
		log.info params.firstname
		log.info user.last_name
		log.info params.lastname
		log.info user.dob.toString().substring(0, 10)
		log.info params.DOB.toString()
		log.info user.ssn_last_four
		log.info params.ssn
		try {
			if (user.first_name != params.firstname || user.last_name != params.lastname ||
				user.dob.toString().substring(0, 10) != params.DOB.toString() || user.ssn_last_four != params.ssn) {
				def msg = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
				flash.message = msg
				redirect action: 'register'
			} else {
				log.info "fully authenticated"
				/**
				def adminRole = Role.findByAuthority('ROLE_ADMIN')
				if (!user.authorities.contains(adminRole)) {
					UserRole.create user, adminRole
				}
				*/
				redirect action: 'registerFinish', params: [email: params.email]
			}
		} catch (Exception e) {
			// in case the user information is null ( EARN made up some users without these params)
			def msg = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
			flash.message = msg
			redirect action: 'register'
		}
	}
	
	// nEED TO CHANGE, how do we tell the system that you are now a ROLE_ADMIN, without signing in.
	// Alternate solution is to just keep 2nd and 3rd registration pages on the same page.
	@Secured('permitAll')
	def registerFinish() {
		log.info "Finishing registration"
	}

	@Secured('permitAll')
	@Transactional
	def register_user() {
		if (params.password != params.confirmed_password) {
			def msg = g.message(code: "Passwords do not match.")
			flash.message = msg
			redirect action: 'registerFinish', params: [email: params.email]
			return
		}
		def user = User.findByVistashare_email(params.email)
		user.username = params.username
		user.password = params.password
		user.accountExpired = false
		user.accountLocked = false
		user.enabled = true
		user.passwordExpired = false
		user.save(flush: true, failOnError:true)
		
		def adminRole = Role.findByAuthority('ROLE_ADMIN')
		if (!user.authorities.contains(adminRole)) {
			UserRole.create user, adminRole
		}

		log.info "finished registration process"
		redirect action: 'index', params: [email: user.username]
	}
	
    def show(User userInstance) {
        respond userInstance
    }
	@Secured('permitAll')
    def create() {
		if (params.password != params.confirmed_password) {
			def msg = g.message(code: "Passwords do not match.")
			flash.message = msg
			redirect action: 'registerFinish', params: [email: params.email]
		}
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

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
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
