package Service

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import unity.*
import grails.plugin.springsecurity.annotation.Secured
import java.util.Date

import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly=false)
class WithdrawalService {
	
	def springSecurityService
	
	
}
