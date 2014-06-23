package unity

class User {

	String vistashareRole
	Integer vistashareUserId
	String salutation
	String firstName
	String middleName
	String lastName
	Date dob
	byte[] ssnAes
	String ssnLastFour
	String preferredAddress
	String preferredCity
	String preferredState
	String preferredZipCode
	String preferredAddressType
	String county
	String homePhone
	String workPhone
	String mobilePhone
	String alternatePhone
	String fax
	String email
	String alternateEmail
	String alternateAddress
	String alternateCity
	String alternateState
	String alternateZipCode
	String alternateAddressType
	Boolean doNotCall
	Boolean doNotEmail
	Boolean doNotMail
	String doNotMailReason
	Boolean blacklist
	String alertNotes
	String emergencyContactFirstName
	String emergencyContactLastName
	String emergencyContactRelationship
	String emergencyContactAddress
	String emergencyContactCity
	String emergencyContactState
	String emergencyContactZipCode
	String emergencyContactPhone
	String emergencyContactAlternatePhone
	String emergencyContactEmail
	String gender
	Integer householdLanguageId
	Boolean serviceableInEnglish
	Boolean serviceableInSpanish
	Boolean serviceableInCantonese
	String spouseFirstName
	String spouseMiddleName
	String spouseLastName
	Date spouseDob
	byte[] spouseSsnAes
	String spouseSsnLastFour
	Boolean idChecked
	Date idCheckedDate
	Boolean exitHasChecking
	Boolean exitHasSavings
	Boolean exitHasCc
	Boolean exitHasStudentLoan
	Boolean exitHasCarLoan
	Boolean exitHasRetirementAccount
	Integer exitRetirementAccountBalance
	Integer exitCarLoanBalance
	Integer exitStudentLoanBalance
	Integer exitPaydayLoanBalance
	Integer exitCcBalance
	Integer exitSavingsBalance
	Integer exitCheckingBalance

	static mapping = {
		version false
	}

	static constraints = {
		vistashareRole nullable: true, maxSize: 192
		vistashareUserId nullable: true, unique: true
		salutation nullable: true, maxSize: 6
		firstName maxSize: 32
		middleName nullable: true, maxSize: 32
		lastName maxSize: 64
		dob nullable: true
		ssnAes nullable: true
		ssnLastFour nullable: true, maxSize: 4
		preferredAddress nullable: true, maxSize: 64
		preferredCity nullable: true, maxSize: 32
		preferredState nullable: true, maxSize: 2
		preferredZipCode nullable: true, maxSize: 5
		preferredAddressType nullable: true, maxSize: 16
		county nullable: true, maxSize: 32
		homePhone nullable: true, maxSize: 16
		workPhone nullable: true, maxSize: 16
		mobilePhone nullable: true, maxSize: 16
		alternatePhone nullable: true, maxSize: 16
		fax nullable: true, maxSize: 16
		email nullable: true, maxSize: 64
		alternateEmail nullable: true, maxSize: 64
		alternateAddress nullable: true, maxSize: 64
		alternateCity nullable: true, maxSize: 32
		alternateState nullable: true, maxSize: 2
		alternateZipCode nullable: true, maxSize: 5
		alternateAddressType nullable: true, maxSize: 16
		doNotCall nullable: true
		doNotEmail nullable: true
		doNotMail nullable: true
		doNotMailReason nullable: true, maxSize: 128
		blacklist nullable: true
		alertNotes nullable: true, maxSize: 256
		emergencyContactFirstName nullable: true, maxSize: 32
		emergencyContactLastName nullable: true, maxSize: 64
		emergencyContactRelationship nullable: true, maxSize: 16
		emergencyContactAddress nullable: true, maxSize: 64
		emergencyContactCity nullable: true, maxSize: 32
		emergencyContactState nullable: true, maxSize: 2
		emergencyContactZipCode nullable: true, maxSize: 5
		emergencyContactPhone nullable: true, maxSize: 16
		emergencyContactAlternatePhone nullable: true, maxSize: 16
		emergencyContactEmail nullable: true, maxSize: 64
		gender nullable: true, maxSize: 8
		householdLanguageId nullable: true
		serviceableInEnglish nullable: true
		serviceableInSpanish nullable: true
		serviceableInCantonese nullable: true
		spouseFirstName nullable: true, maxSize: 32
		spouseMiddleName nullable: true, maxSize: 32
		spouseLastName nullable: true, maxSize: 64
		spouseDob nullable: true
		spouseSsnAes nullable: true
		spouseSsnLastFour nullable: true, maxSize: 4
		idChecked nullable: true
		idCheckedDate nullable: true
		exitHasChecking nullable: true
		exitHasSavings nullable: true
		exitHasCc nullable: true
		exitHasStudentLoan nullable: true
		exitHasCarLoan nullable: true
		exitHasRetirementAccount nullable: true
		exitRetirementAccountBalance nullable: true
		exitCarLoanBalance nullable: true
		exitStudentLoanBalance nullable: true
		exitPaydayLoanBalance nullable: true
		exitCcBalance nullable: true
		exitSavingsBalance nullable: true
		exitCheckingBalance nullable: true
	}
}
