package unity

class Account {

	Integer id
	Integer earnUserId
	Integer childEarnUserId
	Integer vistashareUserId
	String externalAccountProvider
	Integer externalAccountRoutingNumber
	Long externalAccountId
	String externalAccountType
	String accountType
	String accountBrand
	Integer accountRulesId
	Integer softwareVersion
	String accountGoal
	String vistashareChildFullName
	String vistashareAccountStatus
	Date vistashareAccountStatusDate
	String earnAccountStatus
	Boolean isAccountFrozen
	Date externalAccountEnrollmentDate
	Date earnAccountOpenedDate
	Date earnAccountDeadline
	Date earnAccountGoalReachedDate
	Date earnAccountClosedDate
	String earnAccountClosedReason
	Integer incentiveGroup
	String incentiveFunder1
	Integer incentiveFunder1Percent
	Integer incentiveFunder1GlNumber
	String incentiveFunder2
	Integer incentiveFunder2Percent
	Integer incentiveFunder2GlNumber
	String incentiveFunder3
	Integer incentiveFunder3Percent
	Integer incentiveFunder3GlNumber
	String administrativePartner
	String administrativePartnerContactPerson
	String administrativePartnerAddress
	String administrativePartnerCity
	String administrativePartnerState
	String administrativePartnerZipCode
	String administrativePartnerPhone
	String administrativePartnerEmail

	static mapping = {
		table "accounts"
		version false
		//earnUserId column: 'earn_user_id'
	}

	static constraints = {
		earnUserId nullable: true
		childEarnUserId nullable: true
		vistashareUserId nullable: true
		externalAccountProvider nullable: true, maxSize: 32
		externalAccountRoutingNumber nullable: true
		externalAccountId nullable: true, unique: true
		externalAccountType nullable: true, maxSize: 9
		accountType nullable: true, maxSize: 32
		accountBrand nullable: true, maxSize: 32
		accountRulesId nullable: true
		softwareVersion nullable: true
		accountGoal nullable: true, maxSize: 32
		vistashareChildFullName nullable: true, maxSize: 128
		vistashareAccountStatus nullable: true, maxSize: 32
		vistashareAccountStatusDate nullable: true
		earnAccountStatus nullable: true, maxSize: 27
		externalAccountEnrollmentDate nullable: true
		earnAccountOpenedDate nullable: true
		earnAccountDeadline nullable: true
		earnAccountGoalReachedDate nullable: true
		earnAccountClosedDate nullable: true
		earnAccountClosedReason nullable: true, maxSize: 128
		incentiveGroup nullable: true
		incentiveFunder1 nullable: true, maxSize: 64
		incentiveFunder1Percent nullable: true
		incentiveFunder1GlNumber nullable: true
		incentiveFunder2 nullable: true, maxSize: 64
		incentiveFunder2Percent nullable: true
		incentiveFunder2GlNumber nullable: true
		incentiveFunder3 nullable: true, maxSize: 64
		incentiveFunder3Percent nullable: true
		incentiveFunder3GlNumber nullable: true
		administrativePartner nullable: true, maxSize: 32
		administrativePartnerContactPerson nullable: true, maxSize: 64
		administrativePartnerAddress nullable: true, maxSize: 64
		administrativePartnerCity nullable: true, maxSize: 32
		administrativePartnerState nullable: true, maxSize: 2
		administrativePartnerZipCode nullable: true, maxSize: 5
		administrativePartnerPhone nullable: true, maxSize: 128
		administrativePartnerEmail nullable: true, maxSize: 64
	}
}
