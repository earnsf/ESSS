package unity

import Service.*
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

class RestController {

    @Secured('permitAll')
	def rest() {
		//gets all headernames
		//def enu = request.getHeaderNames()
		// all header names
		//while (enu.hasMoreElements()) log.info(enu.nextElement().getClass())
		
		
		def authString = request.getHeader('Authorization')
		if (!basicAuthenticate(authString)) {
			render(status:400, text:'Sorry, need correct credentials\n')
			return
		} 
		def cur_id = null
		def domain = null
		if (params.containsKey('id')&&params.containsKey('domain')) {
			cur_id = params.id
			domain = params.domain
		} else {
			render(status:400, text:'Sorry, need a domain and id\n')
		}
		String className = "unity." + domain
		//dynamically getting the class
		Class thisClass = grailsApplication.getClassForName(className)
		if (thisClass == null) {
			render(status:400, text:'Wrong domain name provided\n')
			return
		}
		def type = request.method
		log.info('type: ' + type + ' id: ' + cur_id)
		if (type == 'GET') {
			def obj = thisClass.findById(cur_id)
			def convert = new JSON(target:obj)
			render(text:convert.toString(),contentType:'application/json',encoding:'UTF-8')
			return
		}
	}
	
	def basicAuthenticate(authString) {
		log.info('authenticating')
		def encodedPair = authString - 'Basic '
		def decodedPair =  new String(new sun.misc.BASE64Decoder().decodeBuffer(encodedPair));
		if (decodedPair == 'George:mypassword') {
			return true
		} else {
			log.info('not succ auth')
			return false
		}
	}
	
}
