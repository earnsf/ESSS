import java.nio.file.attribute.UserDefinedFileAttributeView;

import unity.*

class BootStrap {

	def init = { servletContext ->
		
		log.info 'begin bootstrap'
		// def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		log.info 'finished creating roles'
		def adminUser = User.findByUsername('test@earn.org') ?: new User(
			first_name: 'TestUser',
			last_name: '07212014',
			type_enum: 'fin_serv',
			is_emergency_contact: false,
			is_child: false,
			username: 'test@earn.org',
			password: 'password',
			accountExpired: false,
			accountLocked: false,
			enabled: true,
			passwordExpired: false).save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			log.info 'creating adminUser, adminRole in UserRole'
			UserRole.create adminUser, adminRole
		}
		log.info 'creating user role for Shiningfish'
		def user = User.findByVistashare_email('Shiningfish26@gmail.com')
		if (user) {
			user.username = user.vistashare_email
			user.password = 'password'
			user.accountExpired = false
			user.accountLocked = false
			user.enabled = true
			user.passwordExpired = false
			log.info user.password
			log.info 'setting things for shiningfish'
		}
		user.save (flush:true, failOnError: true)
		def finduser = User.findByUsername('Shiningfish26@gmail.com')
		if (finduser)
			log.info "Success"
		else
			log.info "failure"
		log.info 'success save'
		if (!user.authorities.contains(adminRole)) {
			UserRole.create user, adminRole
		}
		//s.saiga@aol.com
		def user2 = User.findById(2320)
		if (user2) {
			user2.username = user2.vistashare_email
			user2.password = 'password'
			user2.accountExpired = false
			user2.accountLocked = false
			user2.enabled = true
			user2.passwordExpired = false
			log.info user2.password
			log.info 'setting things for Saiga Fam'
		}
		user2.save (flush:true, failOnError: true)
		if (!user2.authorities.contains(adminRole)) {
			UserRole.create user2, adminRole
		}
			
			
	}
	def destroy = {
	}
}
