package Service

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import unity.*
import grails.plugin.springsecurity.annotation.Secured
import java.util.Date

import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly=false)
class EmailVerifService {
	
	def springSecurityService
	def DataService

    def serviceMethod() {

    }
	
	def persistConfirmEmail(String v_email) {
		String charset = (('A'..'Z') + ('0'..'9')).join()
		Integer length = 20
		def code = org.apache.commons.lang.RandomStringUtils.random(length, true, true)
		log.info(code)
		String link = "localhost:8080/p1/confirmEmail/" + code
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		def date_now = new Date()
		log.info(date_now)
		user.emailConfirmCode = code
		user.emailCodeDateSent = date_now
		user.save(flush:true, failOnError:true)
		
//		mailService.sendMail {
//			to v_email
//			from "earn.support@earn.org"
//			subject "Confirm Your Email!"
//			body "Follow this link: " + link
//		}
	}
}
