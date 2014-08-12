package unity
import Service.*

class Document {
	
	Integer id
	Integer earn_user_id
	Integer vistashare_user_id
	String filename
	Integer filesize
	byte[] content_aes
	
	static mapping = {
		table "docs"
		content_aes sqlType:'longblob'
		version false
	}
	
	static constraints = {
		earn_user_id nullable: true
		vistashare_user_id nullable: true
		filename nullable: false /** maxSize: ? */
		filesize nullable: true 
		content_aes nullable:true
	}
	
	def beforeInsert() {
		encryptDoc()
	}
	
	def beforeUpdate() {
		if (isDirty('content_aes')) { // isDirty checks if a domain class instance has been modified
			encryptDoc()
		}
	}
	
	def void encryptDoc() {
		log.info "encrypting file"
		content_aes = AESencrp.encrypt(content_aes)
	}

}
