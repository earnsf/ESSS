import com.p1.*

class BootStrap {

    def init = { servletContext ->
		
		log.info 'begin bootstrap'
		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		
		def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
			username: 'admin',
			password: 'password').save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			log.info 'creating adminUser, adminRole in SecUserSecRole'
			SecUserSecRole.create adminUser, adminRole
		}
    }
    def destroy = {
    }
}
