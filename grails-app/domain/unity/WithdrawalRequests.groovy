package unity

class WithdrawalRequests {

	Integer earnUserId
	String ids
	String withdrawalType
	String stage
	Date beginDate
	Date endDate
	Integer exitSurveyId
	Integer formId
	String docsIds

	static mapping = {
		version false
	}

	static constraints = {
		ids nullable: true, maxSize: 32
		withdrawalType nullable: true, maxSize: 32
		stage nullable: true, maxSize: 32
		beginDate nullable: true
		endDate nullable: true
		exitSurveyId nullable: true
		formId nullable: true
		docsIds nullable: true, maxSize: 32
	}
}
