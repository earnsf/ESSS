package unity

import javax.imageio.spi.RegisterableService;

import org.apache.commons.validator.Msg;

import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import Service.*
import grails.converters.JSON
import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly = false)
class UserController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	static _auth = []
	
	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService
	def RegisterService
	def cookieService
	
	@Secured('permitAll')
	def rest() {
		def cur_id = null
		if (params.containsKey('id')) {
			cur_id = params.id
		} 
		def type = request.method
		log.info('type: ' + type + ' id: ' + cur_id)
		if (type == 'GET') {
			if (cur_id == null) {
				render(status:400, text:'Sorry, need an id for GET')
			} else {
				def user_obj = User.findById(cur_id)
				def convert = new JSON(target:user_obj)
				render(text:convert.toString(),contentType:'application/json',encoding:'UTF-8')
				return
			}
		}
	}
	
	def homepage() {
		log.info 'in homepage()'
//		render 'homepage'
//		return
		
//		log.info 'testing email'
//		mailService.sendMail{
//			to "georgeqwu@gmail.com"
//			from "georgeqwu@gmail.com"
//			subject "hi"
//			body "hi"
//		}
		
		if (springSecurityService.isLoggedIn()) {
			
//			if (!user.emailConfirmed) {
//				render(view:"homepage_unconfirmed", model:[name:user.first_name + ' ' + user.last_name])
//				return
//			}
			
			//grabbing both the open and closed list of accounts from
			//	session if exists, and if not getting from database
			def cur_id = springSecurityService.currentUser.id
			def user = DataService.getUser(cur_id)
			//doesn't make sense to put session in services, so it'll just be a method
			def bothLists = getAccountLists(cur_id)
			
			render(view:"homepage", model: [openList:bothLists[0], closedList:bothLists[1], name:user.first_name + ' ' + user.last_name])
			
		} else {
			log.info 'not logged in'
		}
		
	}
	
	//store lists of ida and tripleboost accounts in session for purposes of showing
	//homepage, etc.
	//returns a tuple of open and closed list
	def getAccountLists (cur_id) {
		//def session = RequestContextHolder.currentRequestAttributes().getSession()
		def openList = null
		def closedList = null
		if (!session?.openList) {
			def accountLists = DataService.getAccounts(cur_id)
			session.openList = accountLists[0]
			session.closedList = accountLists[1]
			openList = session.openList
			closedList = session.closedList
		} else {
			log.info('got lists from session')
			openList = session.openList
			closedList = session.closedList
		}
		return [openList, closedList]
	}
	
	@Secured('isFullyAuthenticated()')
	def showTransactions() {
		def accountId = params.accountId
		if (!accountId) {
			render (view:"homepage_unconfirmed")
		} else {
			def valBoolean = DataService.validateUser(accountId)
			def acctDetails = DataService.getAccountDetails(accountId.toInteger())
			log.info('in showtransactions(), accountId = ' + accountId.toString())
			if (valBoolean == false) {
				render (view:'homepage_unconfirmed')
				return
			}
			def transList = DataService.getTransactions(accountId.toInteger())
			render (view:"transactions", model: [name:acctDetails[0], acctNum:acctDetails[1], transList:transList])
		}
	}
	
	def sendConfirmEmail(String v_email) {
		EmailVerifService.persistConfirmEmail(v_email)
		render(view:"auth")
	}
	
	// url action that comes from the link in the email
	@Secured('permitAll')
	def confirmEmail() {
		def code = params.id
		log.info('in confirmEmail(), code is ' + code.toString())
		def resp = EmailVerifService.verifyEmailCode(code)
		if (resp == "no") {
			render(view:"wrong_emailcode")
		} else {
			redirect(uri:'/')
		}
	}

	def editProfile() {
		log.info "in edit profile"
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		def numbers = DataService.getPhoneNumbers(cur_id)
		def address = DataService.getAddress(cur_id)
		def language = DataService.getLanguage(cur_id)
		def language_map = DataService.getAllLanguages()
		render(view:"editProfile", model: [user: user, numbers: numbers, address: address, language: language, languages: language_map])
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
		if (ContentService.is_language_available(params)) {
			flash.successmessage = g.message(code: "Successfully saved language.")
			/** To do : change language of portal here */
		} else {
			def language = Language.findById(params.language).name
			flash.errormessage = g.message(code: "EARN Portal supported languages are " + ContentService.available_languages())
		}
		ContentService.change_language(params)
		render (view: "save")
		
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
		log.info "Trying to check if Logged in"
		if (springSecurityService.isLoggedIn()) {
			flash.message = g.message(code: "You are logged in. Please log out to register.")
			redirect action: "register"
		} else if (RegisterService.is_null(params.email)) {
			render view: "denied"
		} else if (!RegisterService.vistashare_user_exists(params)) {
			flash.message = g.message(code: "Sorry, we were not able to find a user with the email: ${params.email}")
			redirect action: 'register'
		} else if (RegisterService.check_username_exists(params)) {
			flash.message = g.message(code: "Login exists for this email. Please sign in.")
			redirect action: 'auth', controller: 'login', params: [email: params.email]
		} else if (RegisterService.check_user_locked(params)) {
			flash.message = g.message(code: "You have exceeded the number of attempts to register. Please contact EARN.")
			redirect action: "register"
		} else {
			log.info "verified email"
			if (!RegisterService.numOfAttempts(params)) {
				RegisterService.resetAttempts(params)
			}
		}
		log.info "Continuing to Register Part 2"
	}
	
	@Transactional
	@Secured('permitAll')
	def registerPart3() {
		cache false
		if (springSecurityService.isLoggedIn()) {
			flash.message = g.message(code: "You are logged in. Please log out to register.")
			redirect action: "register"
			return
		}
		if (RegisterService.is_null(params.email) || RegisterService.check_user_locked(params)) {
			render view: "denied"
			return
		}
		log.info "Trying to verify last 4 digits of SSN, full name, DOB"
		log.info params
		try {
			if (RegisterService.incorrect_creds(params)) {
				log.info RegisterService.numOfAttempts(params)
				RegisterService.addAttempt(params)
				if (RegisterService.numOfAttempts(params) > 6) { // allow 6 attempts to register
					RegisterService.register_locked_account(params)
				}
				flash.message = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
				redirect action: 'register'
			} else {
				log.info "fully authenticated"
				_auth = params
			}
		} catch (java.lang.IllegalArgumentException e) {
				RegisterService.addAttempt(params)
				if (RegisterService.numOfAttempts(params) > 6) { // allow 6 attempts to register
					RegisterService.register_locked_account(params)
				}
				flash.message = g.message(code: "Sorry, we were not able to authenticate you due to missing or incorrect information.")
				redirect action: 'register'
				return
		} catch (Exception e) {
			flash.message = g.message(code: "We cannot create an account due to incomplete information for your old account. Please contact EARN.")
			redirect action: 'register'
			return
		}
		log.info "Continuing to Register Part 3"
		
	}
	@Transactional
	@Secured('permitAll')
	def registerFinish() {
		log.info "Trying to see if passwords match"
		cache false
		if (springSecurityService.isLoggedIn()) {
			flash.message = g.message(code: "You are logged in. Please log out to register.")
			redirect action: "register"
			return
		}
		if (RegisterService.is_null(params.email) || RegisterService.check_user_locked(params)) {
			render view: "denied"
		} else if (RegisterService.passwords_mismatch(params)) {
			flash.message = g.message(code: "Passwords do not match.")
			forward action: "registerPart3", params: _auth
		} else if (RegisterService.check_password_exists(params)) {
			flash.message = g.message(code: "A password has already been set for this account. Please login to change it.")
			redirect action:'auth', controller:'login', params: [email: params.email]
		} else {
			RegisterService.register_user(params)
			render (view: "registerFinish", model: [login_email: params.email])
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
