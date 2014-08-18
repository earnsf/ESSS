package Service
import java.nio.file.attribute.UserDefinedFileAttributeView;
import grails.transaction.Transactional
import unity.*

class RegisterService {
	
	static registerAttempts = [:]
	
	def EmailVerifService
	
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
	
	def incorrect_creds(input) {
		
		def user = User.findByVistashare_email(input.email)
		log.info user.first_name
		log.info input.firstname
		log.info user.last_name
		log.info input.lastname
		log.info user.dob.toString()
		log.info user.dob.toString().substring(0, 10)
		log.info input.DOB.toString()
		log.info user.ssn_last_four
		log.info input.ssn
		(user.first_name != input.firstname || user.last_name != input.lastname ||
		user.dob.toString().substring(0, 10) != input.DOB.toString() || user.ssn_last_four != input.ssn)
	}
	
	@Transactional
	def register_locked_account(input) {
		def user = User.findByVistashare_email(input.email)
		user.username = user.vistashare_email + "_accountLocked"
		user.password = user.vistashare_email + "_accountLocked"
		user.accountExpired = false
		user.accountLocked = true
		user.enabled = true
		user.passwordExpired = false
		resetAttempts(input) // reset in case account becomes unlocked
		user.save(flush: true, failOnError:true)
	}
	
	def resetAttempts(input) {
		registerAttempts[input.email] = 1
	}
	
	def numOfAttempts(input) {
		(registerAttempts[input.email])
	}
	
	def addAttempt(input) {
		registerAttempts[input.email] += 1
	}
	
	def passwords_mismatch(input) {
		(input.password != input.confirmed_password)
	}
	
	def check_password_exists(input) {
		def user = User.findByVistashare_email(input.email)
		def locked_password = user.vistashare_email + "_accountLocked"
		(user.password != null && user.password != locked_password)
	}
	
	@Transactional
	def register_user(input) {
		def user = User.findByVistashare_email(input.email)
		user.username = input.email
		user.password = input.password
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
		EmailVerifService.persistConfirmEmail(user.username)
		log.info "successfully sent confirmation email"
	}
}
