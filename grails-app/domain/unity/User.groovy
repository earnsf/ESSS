package unity

import java.util.Set;


class User {

	transient springSecurityService
	
	String vistashareRole
	String typeEnum
	Integer vistashareUserId
	String salutation
	String firstName
	String middleName
	String lastName
	Date dob
	byte[] ssnAes
	String ssnLastFour
	String ssnOrItin
	String preferredAddress
	String preferredCity
	String preferredState
	String preferredZipCode
	String preferredAddressType
	String county
	String country
	String homePhone
	String workPhone
	String mobilePhone
	String alternatePhone
	String fax
	String vistashareEmail
	String alternateEmail
	String alternateAddress
	String alternateCity
	String alternateState
	String alternateZipCode
	String alternateAddressType
	String alternateCountry
	Boolean doNotCall
	Boolean doNotEmail
	Integer emailPrefCode
	Boolean doNotMail
	String doNotMailReason
	Boolean banned
	String alertNotes
	String gender
	Integer householdLanguageId
	Boolean serviceableInEnglish
	Boolean serviceableInSpanish
	Boolean serviceableInCantonese
	Boolean idChecked
	Date idCheckedDate
	Integer spouseId
	Boolean isEmergencyContact
	Boolean isChild
	Integer emergencyContactId
	String emergencyContactType
	Integer childRefToPrimParent
	String esssEmail
	Long esssVersion
	String esssPassword
	Boolean esssAccountExpired
	Boolean esssAccountLocked
	Boolean esssEnabled = true

	static mapping = {
		table "users"
		version false
		esssPassword column: '`password`' // sets the column name to password
	}
	
	static transients = ['springSecurityService']

	static constraints = {
		vistashareRole nullable: true, maxSize: 512
		typeEnum maxSize: 9
		vistashareUserId nullable: true, unique: true
		salutation nullable: true, maxSize: 6
		firstName maxSize: 32
		middleName nullable: true, maxSize: 32
		lastName maxSize: 64
		dob nullable: true
		ssnAes nullable: true
		ssnLastFour nullable: true, maxSize: 4
		ssnOrItin nullable: true, maxSize: 4
		preferredAddress nullable: true, maxSize: 256
		preferredCity nullable: true, maxSize: 32
		preferredState nullable: true, maxSize: 32
		preferredZipCode nullable: true, maxSize: 12
		preferredAddressType nullable: true, maxSize: 16
		county nullable: true, maxSize: 32
		country nullable: true, maxSize: 32
		homePhone nullable: true, maxSize: 32
		workPhone nullable: true, maxSize: 32
		mobilePhone nullable: true, maxSize: 32
		alternatePhone nullable: true, maxSize: 32
		fax nullable: true, maxSize: 16
		vistashareEmail nullable: true, maxSize: 64
		alternateEmail nullable: true, maxSize: 64
		alternateAddress nullable: true, maxSize: 256
		alternateCity nullable: true, maxSize: 32
		alternateState nullable: true, maxSize: 2
		alternateZipCode nullable: true, maxSize: 12
		alternateAddressType nullable: true, maxSize: 16
		alternateCountry nullable: true, maxSize: 32
		doNotCall nullable: true
		doNotEmail nullable: true
		emailPrefCode nullable: true
		doNotMail nullable: true
		doNotMailReason nullable: true, maxSize: 128
		banned nullable: true
		alertNotes nullable: true, maxSize: 4096
		gender nullable: true, maxSize: 8
		householdLanguageId nullable: true
		serviceableInEnglish nullable: true
		serviceableInSpanish nullable: true
		serviceableInCantonese nullable: true
		idChecked nullable: true
		idCheckedDate nullable: true
		spouseId nullable: true
		emergencyContactId nullable: true
		emergencyContactType nullable: true, maxSize: 128
		childRefToPrimParent nullable: true
		esssEmail blank: false, unique: true
		esssVersion nullable: true
		esssPassword blank: false
		esssAccountExpired nullable: true
		esssAccountLocked nullable: true
		esssEnabled nullable: true
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
		esssPassword = springSecurityService.passwordEncoder ? springSecurityService.encodePassword(esssPassword) : esssPassword
	}
}


