package Service

import grails.transaction.Transactional

@Transactional
class DataService {

    def serviceMethod() {
		log.info 'DataService.serviceMethod()'
    }
	
	def parseDate(String input) {
		def dateOnly = input[0..9]
		def year = dateOnly[0..3]
		def month = dateOnly[5..6]
		def date = dateOnly[8..9]
		return (month+'/'+date+'/'+year)
	}
}
