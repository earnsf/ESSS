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
	
}





