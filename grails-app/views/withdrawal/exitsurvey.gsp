<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>Exit Survey</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,700,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="exitsurvey-grid.css"/>
  <asset:stylesheet src="exitsurvey.css"/>
</head>
<body class="body index clearfix">
  <g:form controller="Withdrawal" action="checkParams">
  <div id="page1" class="page1 clearfix">
    <div class="text pleaseanswer text-1">
      <p>Please answer the following questions as honestly as you can. There are no right or wrong answers.&nbsp;<br>Your answers within this survey will not affect your ability to withdraw your funds.</p>
      <p>Thank you in advance for your participation!<br></p>
</div>
	<g:if test='${flash.message}'>
          <p class="text errormessage">${flash.message}</p>
      </g:if>
    <p class="text youwillbewithdr">You will be withdrawing from 3 TripleBoost account(s), whose names are: ${children_string}</p>
    <p class="text q1">1. How old is/are ${children_string}?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-1 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <select class="ageinput" name="childAge" type="integer">
	        <option value="--" disabled selected>--</option>
	        <option value="10">10</option>
	        <option value="11">11</option>
	        <option value="12">12</option>
	        <option value="13">13</option>
	        <option value="14">14</option>
	        <option value="15">15</option>
	        <option value="16">16</option>
	        <option value="17">17</option>
	        <option value="18">18</option>
	        <option value="19">19</option>
	        <option value="20">20</option>
	        <option value="21">21</option>
	      </select>
	      <p class="text yearsold">years old</p>
	    </div>
	</g:each>
    <p class="text q2">2. How often do you talk to ${children_string} about money?<br>Please include casual conversations such as talking about spending, saving, and what the family can afford.</p>
    <g:each in="${children}">   
	    <div class="answerbox answerbox-2 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <select class="freqmoney" name="frequencyTalkAboutMoney">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="Almost every day.">Almost every day.</option>
	        <option value="At least once a week.">At least once a week.</option>
	        <option value="At least once a month.">At least once a month.</option>
	        <option value="A few times a year.">A few times a year.</option>
	        <option value="Never.">Never.</option>
	      </select>
	    </div>
	</g:each>
    <p class="text q3">3. In the last week, how much time did you spend talking with ${children_string} about his/her/their education?<br>Please include time spent talking about their classes, their teachers, what they're learning, or their extra-curricular activities.</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-3 clearfix">
	      <p class="text childnamelabel">${it} :&nbsp;</p>
	      <select class="freqeducation" name="frequencyTalkAboutEducation">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="Less than an hour">Less than an hour</option>
	        <option value="1 or 2 hours">1 or 2 hours</option>
	        <option value="3 or more hours">3 or more hours</option>
	      </select>
	    </div>
	</g:each>
    <p class="text q4">4. What do you expect from ${children_string} in terms of education?<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I expect my child to...</p>
	<g:each in="${children}">
	    <div class="answerbox answerbox-4 clearfix">
	      <p class="text childnamelabel text-11">${it} :&nbsp;</p>
	      <select class="expectations" name="childEducationalExpectations">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="Leave high school prior to graduation with a GED.">Leave high school prior to graduation with a GED.</option>
	        <option value="Graduate from high school or get a GED.">Graduate from high school or get a GED.</option>
	        <option value="Attend some college.">Attend some college.</option>
	        <option value="Graudate from a vocational or trade school.">Graudate from a vocational or trade school.</option>
	        <option value="Graduate from a 2-year or 4-year college.">Graduate from a 2-year or 4-year college.</option>
	        <option value="Attend graduate school (Master's Degree, PhD, JD, MD, etc.).">Attend graduate school (Master's Degree, PhD, JD, MD, etc.).</option>
	      </select>
	    </div>
	</g:each>
    <p class="text q5">5. What were the child's/children's most recent grades in math?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-5 clearfix">
	      <p class="text childnamelabel text-13">${it} :&nbsp;</p>
	      <select class="grades" name="childGradesMath">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="A+, A, or A-">A+, A, or A-</option>
	        <option value="B+, B, or B-">B+, B, or B-</option>
	        <option value="C+, C, or C-">C+, C, or C-</option>
	        <option value="D+, D, or D-">D+, D, or D-</option>
	        <option value="F">F</option>
	        <option value="My child's school does not have grades.">My child's school does not have grades.</option>
	      </select>
	    </div>
    </g:each>
    <p class="text q6">6. What were the child's/children's most recent grades in reading/writing?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-6 clearfix">
	      <p class="text childnamelabel text-15">${it} :&nbsp;</p>
	      <select class="grades" name="childGradesReadingWriting">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="A+, A, or A-">A+, A, or A-</option>
	        <option value="B+, B, or B-">B+, B, or B-</option>
	        <option value="C+, C, or C-">C+, C, or C-</option>
	        <option value="D+, D, or D-">D+, D, or D-</option>
	        <option value="F">F</option>
	        <option value="My child's school does not have grades.">My child's school does not have grades.</option>
	      </select>
	    </div>
	</g:each>
    <p class="text q7">7. Did ${children_string} know you were saving for him/her/them in this account?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-7 clearfix">
	      <p class="text childnamelabel text-17">${it} :&nbsp;</p>
	      <select class="yesno" name="childAccountKnowledge">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="Yes">Yes</option>
	        <option value="No">No</option>
	      </select>
	    </div>
    </g:each>
    <p class="text q8">8. Did ${children_string} contribute any of his/her/their own money to the account?<br>For example, allowance, pay from a job, gifts from friends/family, etc.</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-8 clearfix">
	      <p class="text childnamelabel text-19">${it} :&nbsp;</p>
	      <select class="yesno" name="childAccountContribution">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="Yes">Yes</option>
	        <option value="No">No</option>
	      </select>
	    </div>
	</g:each>
    <p class="text q9">9. How involved is/are ${children_string} in deciding how to spend the money in the respective TripleBoost account?</p>
    <g:each in="${children}">
	    <div class="answerbox answerbox-9 clearfix">
	      <p class="text childnamelabel text-21">${it} :&nbsp;</p>
	      <select class="howinvolved" name="childAccountDecision">
	        <option value="Select answer" disabled selected>Select answer</option>
	        <option value="My child is deciding with little or no help from me or my spouse.">My child is deciding with little or no help from me or my spouse.</option>
	        <option value="We are deciding together.">We are deciding together.</option>
	        <option value="My spouse or I are deciding with little or no input from my child.">My spouse or I are deciding with little or no input from my child.</option>
	      </select>
	    </div>
    </g:each>
    <input type="hidden" name="children_list_string" value="${children_list_string}">
    <button class="next" type="submit">
      <p>Next</p>
      <p></p>
    </button>
    <div class="bottomspace"></div>
	</g:form>
  </div>
</body>
</html>