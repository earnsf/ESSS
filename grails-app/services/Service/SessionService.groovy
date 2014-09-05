package Service

import grails.transaction.Transactional

@Transactional
class SessionService {
	
	def springSecurityService
	def DataService

    def serviceMethod() {

    }
	
	//store lists of ida and tripleboost accounts in session for purposes of showing
	//homepage, etc.
	//returns a tuple of open and closed list
	def getLists (cur_id) {
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
	
}
