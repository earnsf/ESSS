package Service

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import unity.*
import grails.plugin.springsecurity.annotation.Secured

class ContentService {
	
	def springSecurityService
	def DataService
	
	def user_exists(input) {
		/** checks if email exists either in vistashare or penny */
		def vista_user = User.findByVistashare_email(input.email)
		def penny_user = User.findByUsername(input.email)
		return (vista_user || penny_user)
	}
	
	def is_invalid_email(input) {
		/** checks if email is invalid */
		def emailPattern = /[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})/
		return (input.email == "" || !(input.email ==~ emailPattern))
	}
	
	@Transactional
	def change_email(input) {
		/** persist new email to database */
		log.info "Changing email..."
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		user.username = input.email
		user.save (flush: true, failOnError: true)
	}
	
	def is_correct_password(input) {
		/** checks if given password is correct */
		def cur_id = springSecurityService.currentUser.id
		def user = DatService.getUser(cur_id)
		return (springSecurityService.passwordEncoder.isPasswordValid(user.password, input.currpassword, null))
	}
	
	def passwords_match(input) {
		/** checks if new password and confirm new password are the same */
		return (input.newpassword == input.confirmpassword)
	}
	
	@Transactional
	def change_password(input) {
		/** persist new password to database */
		log.info "Changing password..."
		def cur_id = springSecurityService.currentUser.id
		def user = DatService.getUser(cur_id)
		user.password = input.newpassword
		user.save (flush: true, failOnError: true)
	}
	
	def is_valid_number(input) {
		/** checks if given phone number is valid */
		def phone_number = input.number
		return (phone_number.matches("[0-9]+") && phone_number.length() == 10)
	}
	
	def is_blank_number(input) {
		/** checks for blank phone number, used to remove the phone number */
		return (input.number == "")
	}
	@Transactional
	def change_number(type, input) {
		/** persist new phone number to database */
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		log.info "Changing phone number..."
		if (input.number == "") {
			input.number = null
		}
		if (type == "home") {
			user.home_phone = input.number
		} else if (type == "work") {
			user.work_phone = input.number
		} else if (type == "mobile") {
			user.mobile_phone = input.number
		} else {
			user.alternate_phone = input.number
		}
		user.save (flush: true, failOnError: true)
	}
	
	def existAll(input) {
		/** checks if all the address fields are valid */
		return (input.newaddress.length() > 3 && input.newcity != "" && input.newstate.length() == 2
			&& (input.newzipcode.length() == 5 && input.newzipcode.matches("[0-9]+")))
	}
	
	@Transactional
	def change_address(input) {
		/** persist new address to database */
		log.info "Changing address..."
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		user.preferred_address = input.newaddress
		user.preferred_city = input.newcity
		user.preferred_state = input.newstate.toUpperCase()
		user.preferred_zip_code = input.newzipcode
		user.preferred_address_type = input.addresstype
		user.save (flush: true, failOnError: true)
		
	}
	
	def is_language_available(input) {
		/** checks if language is available in portal */
		def language = Language.findById(input.language).name
		(language in available_languages())
	}
	
	def available_languages() {
		/** lists the available languages the portal can support */
		["English", "Cantonese", "Spanish"]
	}
	
	@Transactional
	def change_language(input) {
		/** persist new language to database */
		log.info "Changing language"
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		user.household_language_id = input.language.toInteger()
		user.save (flush: true, failOnError: true)
	}
}
