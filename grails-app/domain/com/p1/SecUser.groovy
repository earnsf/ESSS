package com.p1

class SecUser {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}
	
	Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this).collect { it.secRole }
	}

	def beforeInsert() {
		encodePassword()
	}

	/** Encodes password if it has been modified */
	def beforeUpdate() {
		if (isDirty('password')) { // isDirty checks if a domain class instance has been modified
			encodePassword()
		}
	}
	
	/** Encodes the password */
	protected void encodePassword() {
		 password = springSecurityService.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
