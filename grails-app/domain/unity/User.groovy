package unity

import java.util.Set;

import unity.*;

class User {

	transient springSecurityService

	String vistashare_role
	String type_enum
	Integer vistashare_user_id
	String salutation
	String first_name
	String middle_name
	String last_name
	Date dob
	byte[] ssn_aes
	String ssn_last_four
	String ssn_or_itin
	String preferred_address
	String preferred_city
	String preferred_state
	String preferred_zip_code
	String preferred_address_type
	String county
	String country
	String home_phone
	String work_phone
	String mobile_phone
	String alternate_phone
	String fax
	String vistashare_email
	String alternate_email
	String alternate_address
	String alternate_city
	String alternate_state
	String alternate_zipCode
	String alternate_address_type
	String alternate_country
	Boolean do_not_call
	Boolean do_not_email
	Integer email_pref_code
	Boolean do_not_mail
	String do_not_mail_reason
	Boolean banned
	String alert_notes
	String gender
	Integer household_language_id
	Boolean serviceable_in_english
	Boolean serviceable_in_spanish
	Boolean serviceable_in_cantonese
	Boolean id_checked
	Date id_checked_date
	Integer spouse_id
	Boolean is_emergency_contact
	Boolean is_child
	Integer emergency_contact_id
	String emergency_contact_type
	Integer child_ref_to_prim_parent
	String username
	String password
	boolean enabled = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false

	static mapping = {
		table "users"
		version false
		username column: 'esss_email'
		password column: 'esss_password'
		enabled column: 'esss_enabled'
		accountLocked column: 'esss_account_locked'
		passwordExpired column: 'esss_password_expired'
		
	}

	static transients = ['springSecurityService']

	static constraints = {
		vistashare_role nullable: true, maxSize: 512
		type_enum maxSize: 9
		vistashare_user_id nullable: true, unique: true
		salutation nullable: true, maxSize: 6
		first_name maxSize: 32
		middle_name nullable: true, maxSize: 32
		last_name maxSize: 64
		dob nullable: true
		ssn_aes nullable: true
		ssn_last_four nullable: true, maxSize: 4
		ssn_or_itin nullable: true, maxSize: 4
		preferred_address nullable: true, maxSize: 256
		preferred_city nullable: true, maxSize: 32
		preferred_state nullable: true, maxSize: 32
		preferred_zip_code nullable: true, maxSize: 12
		preferred_address_type nullable: true, maxSize: 16
		county nullable: true, maxSize: 32
		country nullable: true, maxSize: 32
		home_phone nullable: true, maxSize: 32
		work_phone nullable: true, maxSize: 32
		mobile_phone nullable: true, maxSize: 32
		alternate_phone nullable: true, maxSize: 32
		fax nullable: true, maxSize: 16
		vistashare_email nullable: true, maxSize: 64
		alternate_email nullable: true, maxSize: 64
		alternate_address nullable: true, maxSize: 256
		alternate_city nullable: true, maxSize: 32
		alternate_state nullable: true, maxSize: 2
		alternate_zipCode nullable: true, maxSize: 12
		alternate_address_type nullable: true, maxSize: 16
		alternate_country nullable: true, maxSize: 32
		do_not_call nullable: true
		do_not_email nullable: true
		email_pref_code nullable: true
		do_not_mail nullable: true
		do_not_mail_reason nullable: true, maxSize: 128
		banned nullable: true
		alert_notes nullable: true, maxSize: 4096
		gender nullable: true, maxSize: 8
		household_language_id nullable: true
		serviceable_in_english nullable: true
		serviceable_in_spanish nullable: true
		serviceable_in_cantonese nullable: true
		id_checked nullable: true
		id_checked_date nullable: true
		spouse_id nullable: true
		emergency_contact_id nullable: true
		emergency_contact_type nullable: true, maxSize: 128
		child_ref_to_prim_parent nullable: true
		username blank: true, unique: true
		password blank: false
		is_emergency_contact nullable: false
		is_child nullable: false
	}

	def beforeInsert() {
		encodePassword()
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
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


