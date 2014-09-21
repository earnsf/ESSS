package unity

import Service.*
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

class RestController {

    @Secured('permitAll')
	def rest() {
		//gets all headernames
		def enu = request.getHeaderNames()
		// all header names
		//while (enu.hasMoreElements()) log.info(enu.nextElement().getClass())
		def authString = request.getHeader('Authorization')
		def encodedPair = authString - 'Basic '
		def decodedPair =  new String(new sun.misc.BASE64Decoder().decodeBuffer(encodedPair));
		//list size two of username and password for credentials
		def credentials = decodedPair.split(':')
		//log.info('credentials: ' + decodedPair)
		
		def cur_id = null
		if (params.containsKey('id')) {
			cur_id = params.id
		} 
		def type = request.method
		log.info('type: ' + type + ' id: ' + cur_id)
		if (type == 'GET') {
			if (cur_id == null) {
				render(status:400, text:'Sorry, need an id for GET')
			} else {
				def user_obj = User.findById(cur_id)
				def convert = new JSON(target:user_obj)
				render(text:convert.toString(),contentType:'application/json',encoding:'UTF-8')
				return
			}
		}
	}
	
	
}
