package Service
import unity.*

class RegisterService {

	
	def is_null(input) {
		(input == null)
	}
	
	
	def vistashare_user_exists(input) {
		(User.findByVistashare_email(input.email))
	}
	
	def check_username_exists(input) {
		def user = User.findByVistashare_email(input.email)
		def locked_email = user.vistashare_email + "_accountLocked"
		def esss_user = User.findByUsername(input.email)
	    (esss_user && esss_user.username != locked_email) 
	}
	
	def check_user_locked(input) {
		def user = User.findByVistashare_email(input.email)
		(user.accountLocked)
	}
	/**
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
*/
}
