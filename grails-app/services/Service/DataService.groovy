package Service

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import unity.*
import grails.plugin.springsecurity.annotation.Secured

import org.apache.commons.lang.RandomStringUtils

@Transactional(readOnly=false)
class DataService {
	
	def springSecurityService

    def serviceMethod() {
		log.info 'DataService.serviceMethod()'
		def one = 1
		def two = 'two'
		return [one, two]
    }
	
	
	
	def parseDate(String input) {
		def dateOnly = input[0..9]
		def year = dateOnly[0..3]
		def month = dateOnly[5..6]
		def date = dateOnly[8..9]
		return (month+'/'+date+'/'+year)
	}
	
	def getUser(Integer cur_id) {
		def user = User.findById(cur_id)
		return user
	}
	
	def getAccounts(Integer earn_id) {
		def accountList = Account.findAllByEarnUserId(earn_id)
		log.info(accountList.size() + ' accounts found')
		def user = User.findById(earn_id)
		
		def closedList = []
		def openList = []
		log.info('found ' + accountList.size() + ' accounts for user with id 2320')
		for (i in accountList) {
			if (i.vistashareAccountStatus == 'Closed') {
				closedList.add(i)
			} else {
				openList.add(i)
				i.earnAccountOpenedDateString = parseDate(i.earnAccountOpenedDate.toString())
				i.earnAccountDeadlineString = parseDate(i.earnAccountDeadline.toString())
				if (i.accountType == 'TripleBoost') {
					def curChild = User.findById(i.childEarnUserId)
					if (curChild) {
						i.firstName = curChild.first_name
						i.lastName = curChild.last_name
						def balsList = getTransBals(i.id)
						i.transactionSaverFunds = balsList[0]
						i.transactionIncentiveBalance = balsList[1]
						i.totalFunds = i.transactionSaverFunds + i.transactionIncentiveBalance
						log.info('found child name, ' + i.firstName + ' ' + i.lastName)
					} else {
						log.info 'could not find child by id ' + i.childEarnUserId
					}
				} else {
					def curUser = User.findById(i.earnUserId)
					if (curUser) {
						i.firstName = curUser.first_name
						i.lastName = curUser.last_name
						log.info('found user name, ' + i.firstName + ' ' + i.lastName)
					} else {
						log.info 'could not find user by id ' + i.earnUserId
					}
				}
			}
		}
		log.info('finished populating lists')
		log.info(closedList.size() + ' closed accounts')
		log.info(openList.size() + ' open accounts')
		return [openList, closedList]
	}
	
	def getTransBals(Integer earn_account_id) {
		def tranList = Transaction.findAllByEarnAccountId(earn_account_id)
		log.info(tranList.size() + ' transactions found for account ' + earn_account_id.toString())
		def saver_funds = 0
		def incent_bal = 0
		for (tran in tranList) {
			if ((tran.type == 'DEPOSIT') || (tran.type == 'INTEREST')) {
				saver_funds += tran.amount
			} else {
				incent_bal += tran.amount
			}
		}
		
		return [saver_funds, incent_bal]
		
	}
	
	def getPhoneNumbers(Integer cur_id) {
		log.info "getting phone numbers"
		def user = getUser(cur_id)
		def home_number = user.home_phone
		def work_number = user.work_phone
		def mobile_number = user.mobile_phone
		def alternate_number = user.alternate_phone
		def home = "None"
		def work = "None"
		def mobile = "None"
		def alt = "None"
		/** try and catch for array out of bounds error, for invalid phone numbers */
		try {
			if (home_number) {
				home = '(' + home_number.substring(0,3) + ')    ' + home_number.substring(3,6) + '-' +
				home_number.substring(6,)
			}
		} catch (Exception e) {
			home = "invalid home number"
		}
		try {
			if (work_number) {
				work = '(' + work_number.substring(0,3) + ')    ' + work_number.substring(3,6) + '-' +
				work_number.substring(6,)
			}
		} catch (Exception e) {
			work = "invalid work number"
		}
		try {
			if (mobile_number) {
				mobile = '(' + mobile_number.substring(0,3) + ')    ' + mobile_number.substring(3,6) + '-' +
				mobile_number.substring(6,)
			}
		} catch (Exception e) {
			mobile = "invalid mobile number"
		}
		try {
			if (alternate_number) {
				alt = '(' + alternate_number.substring(0,3) + ')    ' + alternate_number.substring(3,6) + '-' +
				alternate_number.substring(6,)
			}
		} catch (Exception e) {
			alt = "invalid alt. number"
		}
		[home: home, work: work, mobile: mobile, alt: alt]
	}
	
	def getAddress(Integer cur_id) {
		log.info "getting address"
		def user = getUser(cur_id)
		def address = user.preferred_address
		def city = user.preferred_city
		def state = user.preferred_state
		def zipcode = user.preferred_zip_code
		if (!address || !city || !state) {
			address = "Address is incomplete."
			city = ""
			state = ""
			zipcode = ""
		}
		[address: address, city: city, state:state, zipcode:zipcode]	
	}
	
	def user_exists(input) {
		/** checks if email exists either in vistashare or penny */
		def vista_user = User.findByVistashare_email(input.email)
		def penny_user = User.findByUsername(input.email)
		return (vista_user || penny_user)
	}
	
	def is_invalid(input) {
		def emailPattern = /[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})/
		return (input.email == "" || !(input.email ==~ emailPattern))
	}
	
	def change_email(input) {
		log.info "Changing email..."
		def cur_id = springSecurityService.currentUser.id
		def user = getUser(cur_id)
		user.username = input.email
		user.save (flush: true, failOnError: true)
	}
	
	def is_correct_password(input) {
		def cur_id = springSecurityService.currentUser.id
		def user = getUser(cur_id)
		return (springSecurityService.passwordEncoder.isPasswordValid(user.password, input.currpassword, null))
	}
	
	def passwords_match(input) {
		return (input.newpassword == input.confirmpassword)
	}
	
	def change_password(input) {
		log.info "Changing password..."
		def cur_id = springSecurityService.currentUser.id
		def user = getUser(cur_id)
		user.password = input.newpassword
		user.save (flush: true, failOnError: true)
	}
	
	def is_valid_number(input) {
		def phone_number = input.number
		return (phone_number.matches("[0-9]+") && phone_number.length() == 10) 
	}
	
	def change_number(type, input) {
		def cur_id = springSecurityService.currentUser.id
		def user = getUser(cur_id)
		log.info "Changing phone number..."
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
		return (input.newaddress.length() > 3 && input.newcity != "" && input.newstate.length() == 2 
			&& (input.newzipcode.length() == 0 || (input.newzipcode.length() == 5 && input.newzipcode.matches("[0-9]+"))))
	}
	def change_address(input) {
		def cur_id = springSecurityService.currentUser.id
		def user = getUser(cur_id)
		log.info "Changing address..."
		user.preferred_address = input.newaddress
		user.preferred_city = input.newcity
		user.preferred_state = input.newstate.toUpperCase()
		if (input.newzipcode.length() == 5) {
			user.preferred_zip_code = input.newzipcode
		} else {
			user.preferred_zip_code = null
		}
		user.save (flush: true, failOnError: true)
		
	}
}





