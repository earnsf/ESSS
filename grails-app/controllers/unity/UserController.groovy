package unity

import org.apache.commons.validator.Msg;

import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import Service.*

import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly = false)
class UserController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	static _auth = []
	
	static registerAttempts = [:]
	
	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService
	
	def homepage() {
		log.info 'in homepage()'
		
		if (springSecurityService.isLoggedIn()) {
			def cur_id = springSecurityService.currentUser.id
			def user = DataService.getUser(cur_id)
//			if (user.emailConfirmed) {
//				render(view:"homepage_unconfirmed", model:[name:user.first_name + ' ' + user.last_name])
//				return
//			}
			
			def accountLists = DataService.getAccounts(cur_id)
			def openList = accountLists[0]
			def closedList = accountLists[1]
			render(view:"homepage", model: [openList:openList, closedList:closedList, name:user.first_name + ' ' + user.last_name])
			
		} else {
			log.info 'not logged in'
		}
		
	}
	
	def sendConfirmEmail(String v_email) {
		EmailVerifService.persistConfirmEmail(v_email)
		render(view:"homepage_unconfirmed")
	}
	
	def confirmEmail() {
		def code = params.id
		log.info('in confirmEmail(), code is ' + code.toString())
		sendConfirmEmail('georgeqwu@gmail.com')
	}

	def editProfile() {
		log.info "in edit profile"
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		def numbers = DataService.getPhoneNumbers(cur_id)
		def address = DataService.getAddress(cur_id)
		render(view:"editProfile", model: [user: user, numbers: numbers, address: address])
		
	}
	
	
	@Transactional
	def saveEmail() {
		log.info "Trying to change email to " + params.email
		
		if (ContentService.user_exists(params)) {
			flash.errormessage = g.message(code: "That email exists. Please try another email.")
		} else if (ContentService.is_invalid_email(params)) {
			flash.errormessage = g.message(code: "Invalid entry. Please try again.")
		} else {
			ContentService.change_email(params)
			flash.successmessage = g.message(code: "Successfully saved email.")
		}	
		render (view: "save")
	}
	
	@Transactional
	def savePassword() {
		log.info "Trying to change password"
		if (ContentService.is_correct_password(params)) {
			if (ContentService.passwords_match(params)) {
				ContentService.change_password(params)
				flash.successmessage = g.message(code: "Successfully saved password.")
			} else {
				flash.errormessage = g.message(code: "Passwords do not match.")
			}
		} else {
			flash.errormessage = g.message(code: "Incorrect password. Please try again.")
		}
		render (view: "save")
	}
	
	@Transactional
	def saveHomeNumber() {
		log.info "Trying to save home number"
		if (ContentService.is_valid_number(params) || ContentService.is_blank_number(params)) {
			ContentService.change_number("home", params)
			flash.successmessage = g.message(code: "Successfully saved home number.")
		} else {
			flash.errormessage = g.message(code: "Invalid home number. Try again.")
		}

		render (view: "save")	
	}
	
	@Transactional
	def saveWorkNumber() {
		log.info "Trying to save work number"
		if (ContentService.is_valid_number(params) || ContentService.is_blank_number(params)) {
			ContentService.change_number("work", params)
			flash.successmessage = g.message(code: "Successfully saved work number.")
		} else {
			flash.errormessage = g.message(code: "Invalid work number. Try again.")
		}

		render (view: "save")	
	}
	
	@Transactional
	def saveMobileNumber() {
		log.info "Trying to save mobile number"
		if (ContentService.is_valid_number(params) || ContentService.is_blank_number(params)) {
			ContentService.change_number("mobile", params)
			flash.successmessage = g.message(code: "Successfully saved mobile number.")
		} else {
			flash.errormessage = g.message(code: "Invalid mobile number. Try again.")
		}
		render (view: "save")	
	}
	
	@Transactional
	def saveAlternateNumber() {
		log.info "Trying to save alternate number"
		if (ContentService.is_valid_number(params) || ContentService.is_blank_number(params)) {
			ContentService.change_number("alternate", params)
			flash.successmessage = g.message(code: "Successfully saved alternate home number.")
		} else {
			flash.errormessage = g.message(code: "Invalid alternate number. Try again.")
		}
		render (view: "save")	
	}
	
	@Transactional
	def saveAddress() {
		log.info "Trying to save address"
		if (ContentService.existAll(params)) {
			ContentService.change_address(params)
			flash.successmessage = g.message(code: "Successfully saved address.")
		} else {
			flash.errormessage = g.message(code: "Invalid or incomplete address. Try again.")
		}
		render (view: "save")
	}
	@Transactional
	def saveLanguage() {
		log.info "Trying to save address"
	}
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond User.list(params), model:[userInstanceCount: User.count()]
	}
	
	
	@Secured('permitAll')
	def register(User userInstance) {
		log.info "Trying to register"
	
	}
	
	@Secured('permitAll')
	def registerPart2() {
		/** You want to log out before you register because the "registerFinish" page is going to
		 * take you straight back to your home page, not let you log in*/
		log.info "Trying to check if Logged in"
		if (springSecurityService.isLoggedIn()) {
			def msg = g.message(code: "You are logged in. Please log out to register.")
			flash.message = msg
			redirect action: "register"
			return
		}
		if (params.email == null) {
			render view: "denied"
			return
		}
		log.info "Not logged in, "
		verify_email(params)
		log.info "Continuing to Register Part 2"
	}
	
	@Transactional
	@Secured('permitAll')
	def registerPart3() {
		if (params.email == null) {
			render view: "denied"
			return
		}
		verify_creds(params)
		log.info "Continuing to Register Part 3"
		
	}
	@Transactional
	@Secured('permitAll')
	def registerFinish() {
		log.info "Trying to see if passwords match"
		if (params.password != params.confirmed_password) {
			def msg = g.message(code: "Passwords do not match.")
			flash.message = msg
			forward action: "registerPart3", params: _auth
			return
		}
		if (params.email == null) {
			render view: "denied"
			return
		}
		log.info "Passwords match!"
		register_user(params)
		log.info "Successfully created!"
		render (view: "registerFinish", model: [login_email: params.email])
	}
	
	@Secured('permitAll')
	def verify_email(params) {
		log.info "Trying to verify email"
		def user = User.findByVistashare_email(params.email)
		if (!user) {
			def msg = g.message(code: "Sorry, we were not able to find a user with VistaShare email: ${params.email}")
			flash.message = msg
			redirect action: 'register'
			return
		}
		def locked_email = user.vistashare_email + "_accountLocked"
		def esss_user = User.findByUsername(params.email)
		if (esss_user && esss_user.username != locked_email) {
			def msg = g.message(code: "Login exists for this email. Please sign in.")
			flash.message = msg
			redirect action: 'auth', controller: 'login', params: [email: params.email]
			return
		}
		if (user.accountLocked) {
			flash.message = g.message(code: "You have exceeded the number of attempts to register. Please contact EARN.")
			redirect action: "register"
			return
		}
		if (user && user.vistashare_email != "") {
			log.info "verified email"
			if (!registerAttempts[params.email]) {
				registerAttempts[params.email] = 1
			}
			return
		}
	}
	
	
	@Transactional
	@Secured('permitAll')
	def verify_creds(params) {
		log.info "Trying to verify last 4 digits of SSN, full name, DOB"
		log.info params
		def user = User.findByVistashare_email(params.email)
		/**
		log.info user.first_name
		log.info params.firstname
		log.info user.last_name
		log.info params.lastname
		log.info user.dob.toString()
		log.info user.dob.toString().substring(0, 10)
		log.info params.DOB.toString()
		log.info user.ssn_last_four
		log.info params.ssn
		*/
		cache false
		try {
			if (user.first_name != params.firstname || user.last_name != params.lastname ||
				user.dob.toString().substring(0, 10) != params.DOB.toString() || user.ssn_last_four != params.ssn) {
				def msg = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
				log.info registerAttempts[params.email]
				registerAttempts[params.email] += 1
				if (registerAttempts[params.email] > 6) { // allow 6 attempts to register
					user.username = user.vistashare_email + "_accountLocked"
					user.password = user.vistashare_email + "_accountLocked"
					user.accountExpired = false
					user.accountLocked = true
					user.enabled = true
					user.passwordExpired = false
					registerAttempts[params.email] = 1 // reset in case account becomes unlocked
					user.save(flush: true, failOnError:true)
				}
				flash.message = msg
				redirect action: 'register'
				return
			} else {
				log.info "fully authenticated"
				_auth = params
				return
			}
		} catch (java.lang.IllegalArgumentException e) {
			def msg = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
				registerAttempts[params.email] += 1
				if (registerAttempts[params.email] > 6) {
					user.username = user.vistshare_email + "_accountLocked"
					user.password = user.vistashare_email + "_accountLocked"
					user.accountExpired = false
					user.accountLocked = true
					user.enabled = true
					user.passwordExpired = false
					registerAttempts[params.email] = 1 // reset in case account becomes unlocked
					user.save(flush: true, failOnError:true)
				}
				flash.message = msg
				redirect action: 'register'
				return
		} catch (Exception e) {
			// in case the user information is null ( EARN made up some users without these params)
			log.info e.toString()
			def msg = g.message(code: "We cannot create an account due to incomplete information for your old account. Please contact EARN.")
			flash.message = msg
			redirect action: 'register'
		}
	}
	
	@Secured('permitAll')
	@Transactional
	def register_user(params) {
		cache false
		
		def user = User.findByVistashare_email(params.email)
		user.username = params.email
		def locked_password = user.vistashare_email + "_accountLocked"
		if (user.password != null || user.password == locked_password) {
			def msg = g.message(code: "A password has already been set for this account. Please login to change it.")
			flash.message = msg
			redirect action:'auth', controller:'login', params: [email: params.email]
			return
		}
		user.password = params.password
		user.accountExpired = false
		user.accountLocked = false
		user.enabled = true
		user.passwordExpired = false
		user.save(flush: true, failOnError:true)
		log.info "successfully created an account"
		
		log.info "creating a role for this account"
		def adminRole = Role.findByAuthority('ROLE_ADMIN')
		if (!user.authorities.contains(adminRole)) {
			UserRole.create user, adminRole
		}
	}
	
	def show(User userInstance) {
		respond userInstance
	}
	@Secured('permitAll')
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
