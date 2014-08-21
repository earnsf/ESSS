package unity

import java.io.BufferedWriter
import java.io.File
import java.io.FileWriter
import java.io.IOException
import java.io.FileOutputStream
import Service.*
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService
import unity.*

class DocumentController {

	def springSecurityService
	def DataService
	def EmailVerifService
	def mailService
	def ContentService
	def UserController
	
    def index() {
		
	}
	
	def upload() {
		log.info "uploading"
	}
	
	def uploaded() {
		//the kids' ids for document upload
		def id_list = []
		def file_string_list = []
		for (p in params) {
			log.info(p.key)
			log.info(p.key[5..-1])
			if (p.key.startsWith('file_')) {
				id_list.add(p.key[5..-1].toInteger())
				file_string_list.add(p.key)
			}
		}
		for (int i = 0; i < id_list.size(); i++) {
			def curFString = file_string_list[i]
			def curId = id_list[i]
			def uploadedFile = request.getFile(curFString)
			def contentType = uploadedFile.contentType
			def fileName = uploadedFile.originalFilename
			def filesize = uploadedFile.size
			def encrypted = AESencrp.encrypt(uploadedFile.getBytes())
			def curUser = User.findById(curId)
			def u = new Document(
				earn_user_id: curId, 
				vistashare_user_id: curUser.vistashare_user_id, 
				filename: fileName, 
				filesize: filesize,
				content_aes: encrypted).save(flush:true, failOnError:true)
		}
		log.info('success') 
		redirect controller:'user',action:'homepage'
		
//		for (int i = 1; i < 4; i++) {
//			def fileString = 'file'+i
//			log.info(fileString)
//			def uploadedFile = request.getFile(fileString)
//			def contentType = uploadedFile.contentType
//			def fileName = uploadedFile.originalFilename
//			//fileName = params.filename
//			def size = uploadedFile.size
//			log.info contentType
//			log.info fileName
//			log.info size
//			/**
//			log.info java.util.Arrays.toString(uploadedFile.getBytes())
//			def encrypted = AESencrp.encrypt(uploadedFile.getBytes())
//			log.info java.util.Arrays.toString(encrypted)
//			def decrypted = AESencrp.decrypt(encrypted)
//			log.info java.util.Arrays.toString(decrypted)
//			log.info (java.util.Arrays.toString(uploadedFile.getBytes()) == java.util.Arrays.toString(decrypted))
//			*/
//			def cur_id = springSecurityService.currentUser.id
//			def user = DataService.getUser(cur_id)
//			def u = new Document(earn_user_id: user.id, vistashare_user_id: user.vistashare_user_id, filename: fileName, filesize: size)
//			u.content_aes = uploadedFile.getBytes()
//			u.save(flush: true, failOnError: true)
//		}
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
