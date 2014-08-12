package unity

class Transaction {

	Integer id
	Date transactionDate
	BigDecimal amount
	Integer earnUserId
	Integer vistashareUserId
	Integer earnAccountId
	Long externalAccountId
	String status
	String vistashareCategory
	String vistashareType
	String type
	Boolean adjustment
	String externalTransactionDetail
	String vistashareWithdrawalSubcategory
	String subtype
	String fundingSource
	Integer fundingSourceGlAccountNumber
	Integer vistashareTransactionId
	Long subAmount
	
	//added fields for portal
	String transactionDateString
	String amountString
	
	static transients = ['transactionDateString', 'amountString']

	static mapping = {
		version false
		table 'transactions'
		
	}

	static constraints = {
		earnUserId nullable: true
		vistashareUserId nullable: true
		externalAccountId nullable: true
		status maxSize: 16
		vistashareCategory nullable: true, maxSize: 32
		vistashareType nullable: true, maxSize: 64
		type maxSize: 32
		adjustment nullable: true
		externalTransactionDetail nullable: true, maxSize: 128
		vistashareWithdrawalSubcategory nullable: true, maxSize: 32
		subtype nullable: true, maxSize: 32
		fundingSource nullable: true, maxSize: 65535
		fundingSourceGlAccountNumber nullable: true
		vistashareTransactionId nullable: true
		subAmount nullable: true
	}
}
