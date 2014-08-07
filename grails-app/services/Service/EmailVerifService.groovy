package Service

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import unity.*
import grails.plugin.springsecurity.annotation.Secured
import java.util.Date
import java.lang.Thread

import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly=false)
class EmailVerifService {
	
	def springSecurityService
	def DataService
	def mailService

    def serviceMethod() {

    }
	
	def persistConfirmEmail(String v_email) {
		String charset = (('A'..'Z') + ('0'..'9')).join()
		Integer length = 20
		def code = org.apache.commons.lang.RandomStringUtils.random(length, true, true)
		log.info(code)
		String link = "localhost:8080/p1/confirmEmail/" + code
		def user = User.findByVistashare_email(v_email)
//		def cur_id = springSecurityService.currentUser.id
//		def user = DataService.getUser(cur_id)
		def date_now = new Date()
		log.info(date_now)
		user.emailConfirmCode = code
		user.emailCodeDateSent = date_now
		user.save(flush:true, failOnError:true)
		
//		log.info 'testing date functionality'
//		def date1 = new Date()
//		java.lang.Thread.sleep(1000)
//		def date2 = new Date()
//		log.info((date1.before(date2)).toString())
//		log.info((date1.after(date2)).toString())
		
//		mailService.sendMail {
//			to "georgeqwu@gmail.com"
//			from "earn.support@earn.org"
//			subject "Confirm Your Email!"
//			body "Follow this link: " + link
//		}
	}
	
	def verifyEmailCode(String code) {
		log.info('inside EmailVerifService.verifyEmailCode')
		def foundUser = User.findByEmailConfirmCode(code) 
		if (!foundUser) {
			log.info('confirm code not found')
			return "no"
		} else {
			foundUser.emailConfirmed = true
			foundUser.emailCodeDateReceived = new Date()
			foundUser.save(flush:true, failOnError:true)
			log.info('verif success')
			return "yes"
		}
	}
}
