package unity

class WithdrawalController {
	
	def springSecurityService
	def DataService

    def index() { }
	
	def exitsurvey() {}
	
	def withdrawal_home() {
		log.info 'in withdrawal home'
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		
//		def accountLists = DataService.getAccounts(cur_id)
//		def openList = accountLists[0]
//		def closedList = accountLists[1]
		
		def openList = null
		def closedList = null
		if (!session?.openList) {
			def accountLists = DataService.getAccounts(cur_id)
			session.openList = accountLists[0]
			session.closedList = accountLists[1]
		} else {
			log.info('got lists from session')
			openList = session.openList
			closedList = session.closedList
		}
		
		def idaList = []
		def tripleList = []
		for (t in openList) {
			if (t.accountType == 'TripleBoost') {
				log.info(t.firstName)
				tripleList.add(t)
			} else {
				idaList.add(t)
			}
		}
		log.info('size of tripleList: ' + tripleList.size().toString())
		log.info(tripleList[0].firstName)
		render(view:'withdrawal_home', model: [idaList:idaList,tripleList:tripleList])
	}
	
	def withdrawal_checklist() {
		log.info 'in withdrawal checklist'
		def tripleBoxList = []
		def idaBoxList = []
		for (p in params) {
			//log.info('key: ' + p.key)
			//log.info('value: ' + p.value + '\n')
			if (p.key.startsWith('checkBoxTriple')) {
				tripleBoxList.add([p.key,p.value])
			} else if (p.key.startsWith('checkBoxIda')) {
				idaBoxList.add([p.key,p.value])
			}
		}
		def idaListSize = params.idaListSize.toInteger()
		def tripleListSize = params.tripleListSize.toInteger()
		//log.info('ida list size: ' + idaListSize)
		//log.info('tripel list size: ' + tripleListSize)
		if (idaListSize > 0 && tripleListSize > 0) {
			if (tripleBoxList.size() > 0 && idaBoxList.size() > 0) {
				redirect(action:'withdrawal_home')
				return
			}
		} else if (idaListSize > 0) {
			if (idaBoxList.size() != 1) {
				redirect(action:'withdrawal_home')
				return
			}
		} else if (tripleListSize > 0) {
			log.info(tripleBoxList.size())
			if (tripleBoxList.size() < 1) {
				redirect(action:'withdrawal_home')
				return
			}
		}
		
		
	}
}
