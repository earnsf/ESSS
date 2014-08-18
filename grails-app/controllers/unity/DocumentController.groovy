package unity

import java.io.BufferedWriter
import java.io.File
import java.io.FileWriter
import java.io.IOException
import java.io.FileOutputStream
import Service.*
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService

class DocumentController {

	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService
	
    def index() {
		
	}
	
	def upload() {
		log.info "uploading"
	}
	
	def uploaded() {
		def uploadedFile = request.getFile('file')
		def contentType = uploadedFile.contentType
		def fileName = uploadedFile.originalFilename
		fileName = params.filename
		def size = uploadedFile.size
		log.info contentType
		log.info fileName
		log.info size
		/**
		log.info java.util.Arrays.toString(uploadedFile.getBytes())
		def encrypted = AESencrp.encrypt(uploadedFile.getBytes())
		log.info java.util.Arrays.toString(encrypted)
		def decrypted = AESencrp.decrypt(encrypted)
		log.info java.util.Arrays.toString(decrypted)
		log.info (java.util.Arrays.toString(uploadedFile.getBytes()) == java.util.Arrays.toString(decrypted))
		*/
		def cur_id = springSecurityService.currentUser.id
		def user = DataService.getUser(cur_id)
		def u = new Document(earn_user_id: user.id, vistashare_user_id: user.vistashare_user_id, filename: fileName, filesize: size)
		u.content_aes = uploadedFile.getBytes()
		u.save(flush: true, failOnError: true)
		
	}
	
	def getDocument() {
		def doc = Document.findById(2)
		log.info(doc.filename)
		FileInputStream fileInputStream=null
		File file = new File("/Users/georgeqwu/Documents/workspace-ggts/p1/logs/"+doc.filename)
		FileOutputStream fos = new FileOutputStream(file)
		doc.decryptDoc()
		fos.write(doc.content_aes)
		fos.flush()
		fos.close()
	}
	
}
