package unity

import java.util.Date

class WithdrawalController {
	
	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService

    def index() { }
	
	def exitsurvey() {
		log.info('in exitsurvey()')
		def cwr = session.curWithdrawalRequest
		def ids = cwr.ids
		def children = []
		def idList = ids.split(',')
		for (i in idList) {
			log.info('id in list: ' + i)
			def curUser = Account.findById(i)
			if (curUser.childEarnUserId != null) {
				def curChild = User.findById(curUser.childEarnUserId)
				children.add(curChild.first_name)
			}
		}
		def children_list_string = "['"
		def children_string = ""
		for (int c = 0; c < children.size(); c++) {
			if (c != children.size() - 1) {
				children_list_string += children[c] + "', '"
				children_string += children[c] + ", "
			} else {
				children_list_string += children[c] + "']"
				children_string += 'and ' + children[c]
			}
		}
		log.info(children_list_string)
		log.info(children_string)
		//children = ["Phil", "Victor", "Isabella"]
		//children_list_string = "['Phil', 'Victor', 'Isabella']"
		//children_string = "Phil, Victor, and Isabella" // create method in Service that appends "and"
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		def children_size = idList.size()
		
		render view: "exitsurvey", model:[children: children, children_string: children_string, children_list_string:children_list_string, children_size:children_size]
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
		// redirect to invoice upload with correct model
		withdrawal_upload()
		return
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
		render view:'withdrawal_home', model: [idaList:idaList,tripleList:tripleList]
	}
	
	def withdrawal_checklist() {
		log.info 'in withdrawal checklist'
		//log.info('len of checkBoxIDA_: ' + 'checkBoxIDA_'.length())
		def cur_id = springSecurityService.currentUser.id
		// account ids for children or ida selected
		def tripleBoxList = []
		def idaBoxList = []
		for (p in params) {
			//log.info('key: ' + p.key)
			//log.info('value: ' + p.value + '\n')
			if (p.key.startsWith('checkBoxTriple')) {
				//log.info(p.key[15..-1])
				tripleBoxList.add(p.key[15..-1])
			} else if (p.key.startsWith('checkBoxIda')) {
				idaBoxList.add(p.key[13..-1])
			}
		}
		def idaListSize = params.idaListSize.toInteger()
		def tripleListSize = params.tripleListSize.toInteger()
		def type = null
		def ids = ''
		def status = ''
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
			} else {
				type = 'IDA'
				ids = cur_id.toString()
				//status describes survey;form;invoice
				status = '0;0;0'
			}
		} else if (tripleListSize > 0) {
			log.info(tripleBoxList.size())
			if (tripleBoxList.size() < 1) {
				redirect(action:'withdrawal_home')
				return
			} else {
				type = 'TripleBoost'
				for (int i = 0; i < tripleBoxList.size(); i++) {
					if (i != (tripleBoxList.size() - 1)) {
						ids = ids + tripleBoxList[i] + ','
						status = status + '0,'
					} else {
						ids = ids + tripleBoxList[i]
						status = status + '0;'
					}
					
				}
				log.info('TripleBoost ids to be put in: ' + ids)
				status = (status + status + status)[0..-2]
				log.info('status: ' + status)
			}
		}
		// store this information as a WithdrawalRequest
		def newWithdrawalRequest = new WithdrawalRequest(
			earnUserId:cur_id,
			ids:ids,
			withdrawalType:type,
			status:status,
			beginDate:new Date()
		).save(failOnError: true)
		session.curWithdrawalRequest = newWithdrawalRequest
		
		render view:'withdrawal_checklist'
	}
	
	def withdrawal_upload() {
		log.info('in withdrawal_upload')
		def cwr = session.curWithdrawalRequest
		def ids = cwr.ids.split(',')
		def name_list = []
		def child_list = []
		for (i in ids) {
			def cur_acc = Account.findById(i) 
			def cur_user = User.findById(cur_acc.childEarnUserId)
			name_list.add(cur_user.first_name)
			child_list.add(cur_user)
		}
		render view:'withdrawal_upload', model: [child_list:child_list]
	}

}
