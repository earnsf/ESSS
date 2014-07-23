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
			password: 'password').save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			log.info 'creating adminUser, adminRole in UserRole'
			UserRole.create adminUser, adminRole
		}
		log.info 'creating user role'
		def user = User.findByVistashare_email('Shiningfish26@gmail.com')
		if (user) {
			user.username = user.vistashare_email
			user.password = 'password'
			user.accountExpired = false
			user.accountLocked = false
			user.enabled = true
			user.passwordExpired = false
			log.info user.password
			//user.encodePassword()
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
			
			
	}
	def destroy = {
	}
}