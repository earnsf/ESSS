<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>Exit Survey</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,700,600" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,600,inherit,300" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="exitsurvey-grid.css"/>
  <asset:stylesheet src="exitsurvey.css"/>
  <script type="text/javascript">

  function showPage1() {
      document.getElementById('page1').style.display = "block";
      document.getElementById('page2').style.display = "none";
      document.getElementById('page3').style.display = "none";
      document.body.scrollTop = document.documentElement.scrollTop = 0;
  }
	function showPage2() {
      document.getElementById('page2').style.display = "block";
      document.getElementById('page1').style.display = "none";
      document.getElementById('page3').style.display = "none";
      document.body.scrollTop = document.documentElement.scrollTop = 0;
	}

	function showPage3() {
		document.getElementById('page3').style.display = "block";
		document.getElementById('page1').style.display = "none";
		document.getElementById('page2').style.display = "none";
	    document.body.scrollTop = document.documentElement.scrollTop = 0;
		}
	function showhideHelp() {
	  if (document.getElementById('helpgross').style.display=="block") {
		  document.getElementById('helpgross').style.display="none"
	  } else {
		  document.getElementById('helpgross').style.display="block"
      }
	}
 </script>

</head>
<body class="body index clearfix">
  <g:form controller="Withdrawal" action="submitSurvey">
  <div id="page1" class="page1 clearfix">
    <div class="text pleaseanswer text-1">
      <p>Please answer the following questions as honestly as you can. There are no right or wrong answers.&nbsp;<br>Your answers within this survey will not affect your ability to withdraw your funds.</p>
      <p>Thank you in advance for your participation!<br></p>
</div>
	<g:if test='${flash.message}'>
          <p class="text errormessage">${flash.message}</p>
      </g:if>
    <p class="text youwillbewithdr">You will be withdrawing from ${children_size} TripleBoost account(s), whose names are: ${children_string}</p>
    <p class="text q1">1. How old is/are ${children_string}?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-1 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <g:select class="ageinput" name="childAge" noSelection="['null':'--']" from="${10..21}"/>
	      <p class="text yearsold">years old</p>
	    </div>
	</g:each>
    <p class="text q2">2. How often do you talk to ${children_string} about money?<br>Please include casual conversations such as talking about spending, saving, and what the family can afford.</p>
    <g:each in="${children}">   
	    <div class="answerbox answerbox-2 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <g:select class="freqmoney" name="frequencyTalkAboutMoney" noSelection="['null':'Select answer']" from="${['Almost every day.','At least once a week.','At least once a month.','A few times a year.', 'Never.']}" valueMessagePrefix="exitsurvey.frequencyTalkAboutMoney" />
	    </div>
	</g:each>
    <p class="text q3">3. In the last week, how much time did you spend talking with ${children_string} about his/her/their education?<br>Please include time spent talking about their classes, their teachers, what they're learning, or their extra-curricular activities.</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-3 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <g:select class="freqeducation" name="frequencyTalkAboutEducation" noSelection="['null':'Select answer']" from="${['Less than an hour','1 or 2 hours','3 or more hours']}" valueMessagePrefix="exitsurvey.frequencyTalkAboutEducation"/>
	    </div>
	</g:each>
    <p class="text q4">4. What do you expect from ${children_string} in terms of education?<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I expect my child to...</p>
	<g:each in="${children}">
	    <div class="answerbox answerbox-4 clearfix">
	      <p class="text childnamelabel text-11">${it} :&nbsp;</p>
	      <g:select class="expectations" name="childEducationalExpectations" noSelection="['null':'Select answer']" from="${['Leave high school prior to graduation with a GED.','Graduate from high school or get a GED.','Attend some college.','Graduate from a vocational or trade school.','Graduate from a 2-year or 4-year college.','Attend graduate school (Master\'s Degree, PhD, JD, MD, etc.).']}" valueMessagePrefix="exitsurvey.expectations" />
	    </div>
	</g:each>
    <p class="text q5">5. What were the child's/children's most recent grades in math?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-5 clearfix">
	      <p class="text childnamelabel text-13">${it} :&nbsp;</p>
		  <g:select class="grades" name="childGradesMath" noSelection="['null':'Select answer']" from="${['A+, A, or A-','B+, B, or B-','C+, C, or C-','D+, D, or D-','F','My child\'s school does not have grades.']}" valueMessagePrefix="exitsurvey.grades"/>
	    </div>
    </g:each>
    <p class="text q6">6. What were the child's/children's most recent grades in reading/writing?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-6 clearfix">
	      <p class="text childnamelabel text-15">${it} :&nbsp;</p>
          <g:select class="grades" name="childGradesReadingWriting" noSelection="['null':'Select answer']" from="${['A+, A, or A-','B+, B, or B-','C+, C, or C-','D+, D, or D-','F','My child\'s school does not have grades.']}" valueMessagePrefix="exitsurvey.grades"/>
	    </div>
	</g:each>
    <p class="text q7">7. Did ${children_string} know you were saving for him/her/them in this account?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-7 clearfix">
	      <p class="text childnamelabel text-17">${it} :&nbsp;</p>
	      <g:select class="yesno" name="childAccountKnowledge" noSelection="['null':'Select answer']" from="${['Yes', 'No']}" valueMessagePrefix="exitsurvey"/>
	    </div>
    </g:each>
    <p class="text q8">8. Did ${children_string} contribute any of his/her/their own money to the account?<br>For example, allowance, pay from a job, gifts from friends/family, etc.</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-8 clearfix">
	      <p class="text childnamelabel text-19">${it} :&nbsp;</p>
	      <g:select class="yesno" name="childAccountContribution" noSelection="['null':'Select answer']" from="${['Yes', 'No']}" valueMessagePrefix="exitsurvey"/>
	    </div>
	</g:each>
    <p class="text q9">9. How involved is/are ${children_string} in deciding how to spend the money in the respective TripleBoost account?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-9 clearfix">
	      <p class="text childnamelabel text-21">${it} :&nbsp;</p>
	      <g:select class="howinvolved" name="childAccountDecision" noSelection="['null':'Select answer']" from="${['My child is deciding with little or no help from me or my spouse.','We are deciding together.','My spouse or I are deciding with little or no input from my child.']}"  valueMessagePrefix="exitsurvey.accountDecision" />
	    </div>
    </g:each>
    <input type="hidden" name="children_list_string" value="${children_list_string}">
    <button class="next" type="button" onClick="showPage2()">
      <p>Next</p>
      <p></p>
    </button>
    <div class="bottomspace"></div>
  </div>
  <div id="page2" class="page2 page2-1 clearfix">
    <p class="text pleaseanswercont">Please answer these following questions.</p>
    <p class="text q10">10. Your current marital status is :&nbsp;</p>
    <select class="maritalstatus maritalstatus-1" name="maritalStatus">
      <option value="Select answer">Select answer</option>
      <option value="Single (never married)">Single (never married)</option>
      <option value="Married">Married</option>
      <option value="Live with Domestic Partner">Live with Domestic Partner</option>
      <option value="Divorced">Divorced</option>
      <option value="Separated">Separated</option>
      <option value="Widowed">Widowed</option>
    </select>
    <p class="text q11">11. What accurately describes your current work status? I am </p>
    <select class="workstatus" name="employmentStatus">
      <option value="Select answer">Select answer</option>
      <option value="Employed full-time or more">Employed full-time or more</option>
      <option value="Employed part-time">Employed part-time</option>
      <option value="Self-employed">Self-employed</option>
      <option value="A stay-at-home parent who is not working outside of the home">A stay-at-home parent who is not working outside of the home</option>
      <option value="A student who is not working">A student who is not working</option>
      <option value="Disabled or retired">Disabled or retired</option>
      <option value="Unemployed or not currently working">Unemployed or not currently working</option>
    </select>
    <p class="text q12">12. What was the Adjusted Gross Income your household reported on your Form 1040 of your most recent tax return(s) ?</p>
    <p class="text adjustedgrosslabel">Adjusted gross income: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $</p>
    <input class="grossincome" name="annualHouseholdIncome" type="text">
    <button class="helpgrossbutton" onClick="showhideHelp()">
      <p>help</p>
      <p></p>
    </button>
    <p id="helpgross" class="text helpgross">To answer this question, pull out your most recent tax return(s) and look for the form labeled "Form 1040" or "Form 1040A" or "Form 1040EZ" at the top. Then look for the line labeled "adjusted gross income." If you have Form 1040, it will be on line 37. If you have Form 1040A, it will be on line 21. If you have Form 1040EZ, it will be on line 4. If you did not file taxes, please enter your annual household income before taxes. &nbsp;** Please use whole dollars. Do NOT use dollar signs or commas.</p>
    <p class="text q13">13. What is your household size?</p>
    <input class="householdsize" name="householdSize" type="text">
    <p class="text q14p1">14. How much would you estimate your household has in the following types of savings or investments right now?<br></p>
    <p class="text q14p2">Please use whole dollars and do not use commas, periods, or cents. For example, if your household has two thousand dollars in a savings account, you would write 2000 next to "Savings Accounts." <br><br>If you do not have any money in that type of account, please enter 0.<br></p>
    <p class="text accountlabel text-100">Savings accounts: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $</p>
    <input class="accountbalanceinput accountbalanceinput-1" name="savingsAccountBalance" type="text">
    <p class="text accountlabel text-110">Checking accounts: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$</p>
    <input class="accountbalanceinput accountbalanceinput-2" name="checkingAccountBalance" type="text">
    <p class="text accountlabel text-120">Retirement accounts: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$</p>
    <input class="accountbalanceinput accountbalanceinput-3" name="retirementAccountBalance" type="text">
    <p class="text accountlabel text-130">Cash and Other investments: &nbsp; &nbsp;$</p>
    <input class="accountbalanceinput accountbalanceinput-4" name="cashOtherInvestmentsBalance" type="text">
    <p class="text q15">15. How much would you estimate your household has in the following kinds of debts right now?<br></p>
    <p class="text accountlabel text-150">&nbsp;Credit card balance &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$</p>
    <input class="accountbalanceinput accountbalanceinput-5" name="creditCardBalance" type="text">
    <p class="text accountlabel text-160">Student loans &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$</p>
    <input class="accountbalanceinput accountbalanceinput-6" name="studentLoanDebt" type="text">
    <p class="text accountlabel text-170">mortgage loans &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $</p>
    <input class="accountbalanceinput accountbalanceinput-7" name="mortgageLoans" type="text">
    <p class="text accountlabel text-180">Other loans or debts &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$<br>(including money owed to friends &amp; family)&nbsp;</p>
    <input class="accountbalanceinput accountbalanceinput-8" name="otherLoansDebtBalance" type="text">
    <p class="text q16">16. Do you rent or own your primary residence?<br></p>
    <label class="homeownerlabel homeownerlabel-1 clearfix">
      <input class="rentown" name="homeOwner" value="Rent" type="radio">
      <span class="homeownerindivlabel">Rent      </span>
    </label>
    <label class="homeownerlabel clearfix">
      <input class="rentown" name="homeOwner" value="Own" type="radio">
      <span class="homeownerindivlabel">Own</span>
    </label>
    <p class="text forthenext">** For the next several questions, please think about your household's finances during the <span>LAST SIX MONTHS</span></p>
    <p class="text q17">17. Over the past six months,&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; would you say your household has been...</p>
    <select class="lastsixmonths" name="spendingHabits">
      <option value="Select answer">Select answer</option>
      <option value="Spending less money than you have had coming in.">Spending less money than you have had coming in.</option>
      <option value="Spending more money than you have had coming in.">Spending more money than you have had coming in.</option>
      <option value="Spending about the same amount of money that you have had coming in.">Spending about the same amount of money that you have had coming in.</option>
    </select>
    <p class="text q18">18. Over the past six months,&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; which most accurately describes your household?</p>
    <select class="lastsixmonths2" name="savingsHabits">
      <option value="Select answer">Select answer</option>
      <option value="We put aside money as savings every paycheck or every month.">We put aside money as savings every paycheck or every month.</option>
      <option value="We put aside money as savings where we can, but not regularly.">We put aside money as savings where we can, but not regularly.</option>
      <option value="We didn't really put aside money as savings.">We didn't really put aside money as savings.</option>
    </select>
    <p class="text q19">19. How much money did your household put aside<br>&nbsp; &nbsp; &nbsp; as savings in an average month?</p>
    <select class="habitsinput" name="savingsHabitsDetail">
      <option value="Select answer">Select answer</option>
      <option value="We did not put aside savings in a typical month.">We did not put aside savings in a typical month.</option>
      <option value="Up to $50">Up to $50</option>
      <option value="$51 - $100">$51 - $100</option>
      <option value="$101 - $200">$101 - $200</option>
      <option value="More than $200">More than $200</option>
    </select>
    <p class="text q20">20. Does your household have a a monthly spending plan?</p>
    <select class="spendingplaninput" name="spendingPlan">
      <option value="Select answer">Select answer</option>
      <option value="Yes, and we mostly stick to it.">Yes, and we mostly stick to it.</option>
      <option value="Yes, but we don't really stick to it.">Yes, but we don't really stick to it.</option>
      <option value="No, we do not have a plan.">No, we do not have a plan.</option>
    </select>
    <p class="text q21">21. How involved are your children in the household's monthly spending and saving plan?</p>
    <select class="spendingkidsinvolvement" name="spendingPlanKidsInvolvement">
      <option value="Select answer">Select answer</option>
      <option value="They are aware of the monthly plan, and participate in making choices about spending and saving.">They are aware of the monthly plan, and participate in making choices about spending and saving.</option>
      <option value="They are aware of the monthly plan, but do not participate in making choices.">They are aware of the monthly plan, but do not participate in making choices.</option>
      <option value="They don't know about the monthly spending plan.">They don't know about the monthly spending plan.</option>
      <option value="I'm not sure if my child or children are aware of the spending plan.">I'm not sure if my child or children are aware of the spending plan.</option>
    </select>
    <p class="text q22">22. Does your household currently have enough money saved to cover expenses <br>&nbsp; &nbsp; &nbsp; for three months without any earned income?</p>
    <select class="yesno22" name="threeMonthsExpensesSaved">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <p class="text q23">23. Last month, were you able to pay all of your bills on time?</p>
    <select class="yesno23" name="billsOnTime">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <p class="text q24 text-280">24. Were there times in the past six months when you did not have enough money for food or shelter?</p>
    <select class="yesno24" name="notEnoughForFoodOrShelter">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <p class="text q24 text-290">25. Do you have family or friends you could count on in an emergency?</p>
    <select class="yesno25" name="haveFriendsAndFamily">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <button class="previous" type="button" onClick="showPage1()">
      <p>Previous</p>
      <p></p>
      <p></p>
    </button>
    <button class="next2" type="button" onClick="showPage3()">
      <p>Next</p>
      <p></p>
    </button>
    <div class="bottomspace"></div>
  </div>
  <div id="page3" class="page3 page3-1 clearfix">
    <p class="text pleaseanswerfinish">You're almost done! Please answer the remaining questions.</p>
    <p class="text q26p1">26. Think about this statement:<br></p>
    <p class="text q26p2">"When I'm confronted with an issue I'm unfamiliar with, I'm confident I can find the resources to help me resolve the issue."&nbsp;<br></p>
    <p class="text q26p3">To what extent do you agree or disagree?<br></p>
    <select class="confidencetofindresources" name="confidenceToFindResources">
      <option value="Select answer">Select answer</option>
      <option value="I strongly agree">I strongly agree</option>
      <option value="I somewhat agree">I somewhat agree</option>
      <option value="I somewhat disagree">I somewhat disagree</option>
      <option value="I strongly disagree">I strongly disagree</option>
    </select>
    <p class="text q27">27. Which of the following most accurately describes how you feel about your financial future?</p>
    <select class="controloffinancialfuture" name="controlOfFinancialFuture">
      <option value="Select answer">Select answer</option>
      <option value="I am in control.">I am in control.</option>
      <option value="I am somewhat in control.">I am somewhat in control.</option>
      <option value="I am not very in control.">I am not very in control.</option>
      <option value="I am not at all in control.">I am not at all in control.</option>
    </select>
    <p class="text q28">28. Are you involved with any other programs or non-profits designed to help your child reach college?</p>
    <select class="yesno28" name="otherCollegeNonprofits">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <p class="text q29">29. What strategies did you have for making deposits into your account?<br>&nbsp; &nbsp; &nbsp; Please choose all that apply.</p>
    <label class="q29label1 clearfix">
      <input class="checkbox1" name="depositStrategyChangeSpending" value="Yes" type="checkbox">
      <span class="q29input1">Changing our spending habits.      </span>
    </label>
    <label class="q29label2 clearfix">
      <input class="checkbox2" name="depositStrategySmallAmounts" value="Yes" type="checkbox">
      <span class="q29input2">Putting aside money in small amounts.</span>
    </label>
    <label class="q29label3 clearfix">
      <input class="checkbox3" name="depositStrategyDepositOnPayday" value="Yes" type="checkbox">
      <span class="q29input3">Making deposits on payday.</span>
    </label>
    <label class="q29label4 clearfix">
      <input class="checkbox4" name="depositStrategyWorkMore" value="Yes" type="checkbox">
      <span class="q29input4">Working more hours.</span>
    </label>
    <label class="q29label5 clearfix">
      <input class="checkbox5" name="depositStrategyTaxReturn" value="Yes" type="checkbox">
      <span class="q29input5">Using money from our tax return.</span>
    </label>
    <label class="q29label6 clearfix">
      <input class="checkbox6" name="depositStrategyHavingGoal" value="Yes" type="checkbox">
      <span class="q29input6">Having a goal to work toward helped us save.</span>
    </label>
    <label class="q29label7 clearfix">
      <input class="checkbox7" name="depositStrategyTellOthers" value="Yes" type="checkbox">
      <span class="q29input7">Telling friends or family.</span>
    </label>
    <label class="q29label8 clearfix">
      <input class="checkbox8" name="depositStrategyTellOthers" value="Yes" type="checkbox">
      <span class="q29input8">Our child contributed his/her own money to the account.</span>
    </label>
    <input class="depositstrategyother" name="depositStrategyOther" placeholder="Other (please specify)" type="text">
    <p class="text q30">30. In your own words, what did you learn from participating?</p>
    <textarea class="learnedfromparticipating" name="learnedFromParticipating" placeholder="(Optional)"></textarea>
    <p class="text q31">31. Is there anything you would like to spend your money on that is not currently an allowable expense?</p>
    <select class="yesno31" name="otherExpenses" id="expenseQs">
      <option value="Select answer">Select answer</option>
      <option value="Yes"">Yes</option>
      <option value="No">No</option>
    </select>
    <div id="otherexpenses" class="container otherexpensesbox clearfix">
      <p class="text ifyes">If yes, please let us know what expense you would like to be able to spend the money on.</p>
      <label class="q31label1 clearfix">
        <input class="checkbox1-2" name="otherExpensesPrivateSchoolTuition" value="Yes" type="checkbox">
        <span class="q31input1">Tuition at a private elementary school, middle school, or high school</span>
      </label>
      <label class="q31label2 clearfix">
        <input class="checkbox2-2" name="otherExpensesRoomBoard" value="Yes" type="checkbox">
        <span class="q31input2">Room and board at college</span>
      </label>
      <label class="q31label3 clearfix">
        <input class="checkbox3-2" name="otherExpensesOtherCollegeExpenses" value="Yes" type="checkbox">
        <span class="q31input3">Other college expenses such as fees or parking</span>
      </label>
      <label class="q32label4 clearfix">
        <input class="checkbox4-2" name="otherExpensesMedicalDental" value="Yes" type="checkbox">
        <span class="q31input4">Medical or dental expenses</span>
      </label>
      <input class="otherexpensesother" name="otherExpensesOther" placeholder="Other (please specify)" type="text">
    </div>
    <p class="text q32">32. How satisfied were you with the following elements of our program?<br>&nbsp; &nbsp; &nbsp; If you did not use one of these services, please select "Not Applicable"</p>
    <p class="text q32alabel">Ease of making deposits</p>
    <select class="ratings32a" name="customerStatisfactionDeposits">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32blabel">Knowledge level of staff at the bank</p>
    <select class="ratings32b" name="customerStatisfactionBankStaff">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32clabel">EARN's customer service</p>
    <select class="ratings32c" name="customerSatisfactionEarnCustomerService">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32dlabel">EARN's WEBSite / CLient portal</p>
    <select class="ratings32d" name="customerSatisfactionEarnWebsite">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32elabel">Earn's forms &amp; materials</p>
    <select class="ratings32e" name="customerSatisfactionForms">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32flabel">Earn's videos</p>
    <select class="ratings32f" name="customerSatisfactionVideos">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q32glabel">Program overall</p>
    <select class="ratings32g" name="customerSatisfactionOverall">
      <option value="Select answer">Select answer</option>
      <option value="Excellent">Excellent</option>
      <option value="Good">Good</option>
      <option value="Average">Average</option>
      <option value="Fair">Fair</option>
      <option value="Poor">Poor</option>
      <option value="Not Applicable">Not Applicable</option>
    </select>
    <p class="text q33">33. Would you recommend the TripleBoost account to others?</p>
    <select class="yesno33" name="recommendTripleboost">
      <option value="Select answer">Select answer</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
    <p class="text q34">34. Do you have any comments for us? Do you have ideas about ways we can improve?</p>
    <textarea class="learnedfromparticipating" name="customerComments" placeholder="(Optional)"></textarea>
    <button type="button" class="previous3" onClick="showPage2()">
      <p>Previous</p>
      <p></p>
      <p></p>
    </button>
    <button class="finish" type="submit">
      <p>Finish</p>
      <p></p>
      <p></p>
    </button>
        <div class="bottomspace"></div>
  </div>
  </g:form>
</body>
</html>