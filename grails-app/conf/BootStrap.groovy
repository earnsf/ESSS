import unity.*

class BootStrap {

    def init = { servletContext ->
		/**
		log.info 'begin bootstrap'
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
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
		**/
    }
    def destroy = {
    }
}
