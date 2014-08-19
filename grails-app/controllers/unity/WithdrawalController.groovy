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
		
		render view: "exitsurvey", model:[children: children, children_string: children_string, children_list_string:children_list_string]
	}
	
	def checkParams() {
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		log.info params
		def children = Eval.me(params["children_list_string"])
		for (param in params.keySet()) {
			if (!(param in ["children_list_string", "action", "format", "controller" ])) {
				if (param.size() != children.size()) {
					flash.message = "incomplete information"
					redirect action:"exitsurvey"
					return
				}
			}
		}
			
		for (int i=0; i < children.size(); i++) {
			def survey = new TripleboostExitSurveys(earnUserId: user.id, vistashareUserId: user.vistashare_user_id, firstName: user.first_name,
				lastName: user.last_name, childName: children[i])
			
			for (param in params.keySet()) {
				log.info param
				if (param == "childAge") {
					survey[param] = params[param][i].toInteger()
				} else if (!(param in ["children_list_string", "action", "format", "controller" ])) {
					survey[param] = params[param][i]
				}
			}
			survey.save(failOnError: true)
			log.info survey.id
		}
		
	}
	
	def withdrawal_home() {}
	
	def withdrawal_checklist() {}
}
