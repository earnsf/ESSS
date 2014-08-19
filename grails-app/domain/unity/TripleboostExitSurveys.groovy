package unity

class TripleboostExitSurveys {

	Integer earnAccountId
	Integer earnUserId
	Integer vistashareUserId
	String firstName
	String lastName
	Long externalAccountId
	String exitSurveyLanguage
	String frequencyTalkAboutMoney
	String frequencyTalkAboutEducation
	String childEducationalExpectations
	String childGradesMath
	String childGradesReadingWriting
	String childGraduatedHs
	String childEnrolledInTradeSchool
	String childGraduatedTradeSchool
	String childAppliedToCollege
	String childAcceptedToCollege
	String childEnrolledInCollege
	String childGraduatedCollege
	String childAccountKnowledge
	String childAccountContribution
	String childAccountDecision
	String childName
	String maritalStatus
	String employmentStatus
	String spouseEmploymentStatus
	String annualHouseholdIncome
	String householdSize
	String savingsAccountBalance
	String checkingAccountBalance
	String retirementAccountBalance
	String cashOtherInvestmentsBalance
	String creditCardBalance
	String studentLoanDebt
	String mortgageLoans
	String otherLoansDebtBalance
	String homeOwner
	String spendingHabits
	String savingsHabits
	String savingsHabitsDetail
	String spendingPlan
	String spendingPlanKidsInvolvement
	String threeMonthsExpensesSaved
	String billsOnTime
	String notEnoughForFoodOrShelter
	String haveFriendsAndFamily
	String confidenceToFindResources
	String controlOfFinancialFuture
	String otherCollegeNonprofits
	String depositStrategyChangeSpending
	String depositStrategySmallAmounts
	String depositStrategyDepositOnPayday
	String depositStrategyWorkMore
	String depositStrategyTaxReturn
	String depositStrategyHavingGoal
	String depositStrategyTellOthers
	String depositStrategyChildContributed
	String depositStrategyOther
	String learnedFromParticipating
	String otherExpenses
	String otherExpensesPrivateSchoolTuition
	String otherExpensesRoomBoard
	String otherExpensesOtherCollegeExpenses
	String otherExpensesMedicalDental
	String otherExpensesSatisfiedWithExpenses
	String otherExpensesOther
	String customerStatisfactionDeposits
	String customerStatisfactionBankStaff
	String customerSatisfactionEarnCustomerService
	String customerSatisfactionEarnWebsite
	String customerSatisfactionForms
	String customerSatisfactionVideos
	String customerSatisfactionOverall
	String recommendTripleboost
	String customerComments
	String surveyMonkeyRespondentId
	Integer childAge

	static mapping = {
		version false
	}

	static constraints = {
		earnAccountId nullable: true
		vistashareUserId nullable: true
		firstName nullable: true, maxSize: 64
		lastName nullable: true, maxSize: 64
		externalAccountId nullable: true
		exitSurveyLanguage nullable: true, maxSize: 64
		frequencyTalkAboutMoney nullable: true, maxSize: 64
		frequencyTalkAboutEducation nullable: true, maxSize: 64
		childEducationalExpectations nullable: true, maxSize: 64
		childGradesMath nullable: true, maxSize: 64
		childGradesReadingWriting nullable: true, maxSize: 64
		childGraduatedHs nullable: true, maxSize: 64
		childEnrolledInTradeSchool nullable: true, maxSize: 64
		childGraduatedTradeSchool nullable: true, maxSize: 64
		childAppliedToCollege nullable: true, maxSize: 64
		childAcceptedToCollege nullable: true, maxSize: 64
		childEnrolledInCollege nullable: true, maxSize: 64
		childGraduatedCollege nullable: true, maxSize: 64
		childAccountKnowledge nullable: true, maxSize: 64
		childAccountContribution nullable: true, maxSize: 64
		childAccountDecision nullable: true, maxSize:128
		childName nullable: true, maxSize: 64
		maritalStatus nullable: true, maxSize: 64
		employmentStatus nullable: true, maxSize: 64
		spouseEmploymentStatus nullable: true, maxSize: 64
		annualHouseholdIncome nullable: true, maxSize: 64
		householdSize nullable: true, maxSize: 64
		savingsAccountBalance nullable: true, maxSize: 64
		checkingAccountBalance nullable: true, maxSize: 64
		retirementAccountBalance nullable: true, maxSize: 64
		cashOtherInvestmentsBalance nullable: true, maxSize: 64
		creditCardBalance nullable: true, maxSize: 64
		studentLoanDebt nullable: true, maxSize: 64
		mortgageLoans nullable: true, maxSize: 64
		otherLoansDebtBalance nullable: true, maxSize: 64
		homeOwner nullable: true, maxSize: 64
		spendingHabits nullable: true, maxSize: 256
		savingsHabits nullable: true, maxSize: 64
		savingsHabitsDetail nullable: true, maxSize: 64
		spendingPlan nullable: true, maxSize: 64
		spendingPlanKidsInvolvement nullable: true, maxSize: 256
		threeMonthsExpensesSaved nullable: true, maxSize: 64
		billsOnTime nullable: true, maxSize: 64
		notEnoughForFoodOrShelter nullable: true, maxSize: 64
		haveFriendsAndFamily nullable: true, maxSize: 64
		confidenceToFindResources nullable: true, maxSize: 64
		controlOfFinancialFuture nullable: true, maxSize: 64
		otherCollegeNonprofits nullable: true, maxSize: 64
		depositStrategyChangeSpending nullable: true, maxSize: 64
		depositStrategySmallAmounts nullable: true, maxSize: 64
		depositStrategyDepositOnPayday nullable: true, maxSize: 64
		depositStrategyWorkMore nullable: true, maxSize: 64
		depositStrategyTaxReturn nullable: true, maxSize: 64
		depositStrategyHavingGoal nullable: true, maxSize: 64
		depositStrategyTellOthers nullable: true, maxSize: 64
		depositStrategyChildContributed nullable: true, maxSize: 64
		depositStrategyOther nullable: true, maxSize: 64
		learnedFromParticipating nullable: true, maxSize: 512
		otherExpenses nullable: true, maxSize: 512
		otherExpensesPrivateSchoolTuition nullable: true, maxSize: 512
		otherExpensesRoomBoard nullable: true, maxSize: 512
		otherExpensesOtherCollegeExpenses nullable: true, maxSize: 512
		otherExpensesMedicalDental nullable: true, maxSize: 512
		otherExpensesSatisfiedWithExpenses nullable: true, maxSize: 512
		otherExpensesOther nullable: true, maxSize: 65535
		customerStatisfactionDeposits nullable: true, maxSize: 64
		customerStatisfactionBankStaff nullable: true, maxSize: 64
		customerSatisfactionEarnCustomerService nullable: true, maxSize: 64
		customerSatisfactionEarnWebsite nullable: true, maxSize: 64
		customerSatisfactionForms nullable: true, maxSize: 64
		customerSatisfactionVideos nullable: true, maxSize: 64
		customerSatisfactionOverall nullable: true, maxSize: 64
		recommendTripleboost nullable: true, maxSize: 64
		customerComments nullable: true, maxSize: 65535
		surveyMonkeyRespondentId nullable: true, maxSize: 64
		childAge nullable: true
	}
}
