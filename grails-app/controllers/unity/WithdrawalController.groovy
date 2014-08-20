package unity

class WithdrawalController {
	
	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService

    def index() { }
	
	def exitsurvey() {
		def children = ["Phil", "Victor", "Isabella"]
		def children_list_string = "['Phil', 'Victor', 'Isabella']"
		def children_string = "Phil, Victor, and Isabella" // create method in Service that appends "and"
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		
		
		render view: "exitsurvey", model:[children: children, children_string: children_string, children_list_string:children_list_string]
	}
	
	def submitSurvey() {
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		log.info params
		def children = Eval.me(params["children_list_string"])
			
		for (int i=0; i < children.size(); i++) {
			def survey = new TripleboostExitSurveys(earnUserId: user.id, vistashareUserId: user.vistashare_user_id, firstName: user.first_name,
				lastName: user.last_name, childName: children[i])
			for (param in params.keySet()) {

				if (!(param in ["children_list_string", "action", "format", "controller" ])) {
					if (!isCollectionOrArray(params[param])) {
						survey[param] = params[param]
					} else if (params[param][i] == "null") {
						survey[param] = null
					} else if (param == "childAge") {
						survey[param] = params[param][i].toInteger()
					} else {
						survey[param] = params[param][i]
					}
				}
			}
			survey.save(failOnError: true, flush: true)
			log.info survey.id
		}
		redirect action: "exitsurvey"
		
	}
	
	boolean isCollectionOrArray(object) {
		[Collection, Object[]].any { it.isAssignableFrom(object.getClass()) }
	}
	
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
