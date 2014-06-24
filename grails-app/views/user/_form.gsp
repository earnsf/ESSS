<%@ page import="unity.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vistashareRole', 'error')} ">
	<label for="vistashareRole">
		<g:message code="user.vistashareRole.label" default="Vistashare Role" />
		
	</label>
	<g:textField name="vistashareRole" maxlength="192" value="${userInstance?.vistashareRole}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vistashareUserId', 'error')} ">
	<label for="vistashareUserId">
		<g:message code="user.vistashareUserId.label" default="Vistashare User Id" />
		
	</label>
	<g:field name="vistashareUserId" type="number" value="${userInstance.vistashareUserId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'salutation', 'error')} ">
	<label for="salutation">
		<g:message code="user.salutation.label" default="Salutation" />
		
	</label>
	<g:textField name="salutation" maxlength="6" value="${userInstance?.salutation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="32" required="" value="${userInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="user.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" maxlength="32" value="${userInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="64" required="" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dob', 'error')} ">
	<label for="dob">
		<g:message code="user.dob.label" default="Dob" />
		
	</label>
	<g:datePicker name="dob" precision="day"  value="${userInstance?.dob}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'ssnAes', 'error')} ">
	<label for="ssnAes">
		<g:message code="user.ssnAes.label" default="Ssn Aes" />
		
	</label>
	<input type="file" id="ssnAes" name="ssnAes" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'ssnLastFour', 'error')} ">
	<label for="ssnLastFour">
		<g:message code="user.ssnLastFour.label" default="Ssn Last Four" />
		
	</label>
	<g:textField name="ssnLastFour" maxlength="4" value="${userInstance?.ssnLastFour}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferredAddress', 'error')} ">
	<label for="preferredAddress">
		<g:message code="user.preferredAddress.label" default="Preferred Address" />
		
	</label>
	<g:textField name="preferredAddress" maxlength="64" value="${userInstance?.preferredAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferredCity', 'error')} ">
	<label for="preferredCity">
		<g:message code="user.preferredCity.label" default="Preferred City" />
		
	</label>
	<g:textField name="preferredCity" maxlength="32" value="${userInstance?.preferredCity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferredState', 'error')} ">
	<label for="preferredState">
		<g:message code="user.preferredState.label" default="Preferred State" />
		
	</label>
	<g:textField name="preferredState" maxlength="2" value="${userInstance?.preferredState}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferredZipCode', 'error')} ">
	<label for="preferredZipCode">
		<g:message code="user.preferredZipCode.label" default="Preferred Zip Code" />
		
	</label>
	<g:textField name="preferredZipCode" maxlength="5" value="${userInstance?.preferredZipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferredAddressType', 'error')} ">
	<label for="preferredAddressType">
		<g:message code="user.preferredAddressType.label" default="Preferred Address Type" />
		
	</label>
	<g:textField name="preferredAddressType" maxlength="16" value="${userInstance?.preferredAddressType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'county', 'error')} ">
	<label for="county">
		<g:message code="user.county.label" default="County" />
		
	</label>
	<g:textField name="county" maxlength="32" value="${userInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homePhone', 'error')} ">
	<label for="homePhone">
		<g:message code="user.homePhone.label" default="Home Phone" />
		
	</label>
	<g:textField name="homePhone" maxlength="16" value="${userInstance?.homePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'workPhone', 'error')} ">
	<label for="workPhone">
		<g:message code="user.workPhone.label" default="Work Phone" />
		
	</label>
	<g:textField name="workPhone" maxlength="16" value="${userInstance?.workPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobilePhone', 'error')} ">
	<label for="mobilePhone">
		<g:message code="user.mobilePhone.label" default="Mobile Phone" />
		
	</label>
	<g:textField name="mobilePhone" maxlength="16" value="${userInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternatePhone', 'error')} ">
	<label for="alternatePhone">
		<g:message code="user.alternatePhone.label" default="Alternate Phone" />
		
	</label>
	<g:textField name="alternatePhone" maxlength="16" value="${userInstance?.alternatePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="user.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" maxlength="16" value="${userInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="64" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateEmail', 'error')} ">
	<label for="alternateEmail">
		<g:message code="user.alternateEmail.label" default="Alternate Email" />
		
	</label>
	<g:textField name="alternateEmail" maxlength="64" value="${userInstance?.alternateEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateAddress', 'error')} ">
	<label for="alternateAddress">
		<g:message code="user.alternateAddress.label" default="Alternate Address" />
		
	</label>
	<g:textField name="alternateAddress" maxlength="64" value="${userInstance?.alternateAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateCity', 'error')} ">
	<label for="alternateCity">
		<g:message code="user.alternateCity.label" default="Alternate City" />
		
	</label>
	<g:textField name="alternateCity" maxlength="32" value="${userInstance?.alternateCity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateState', 'error')} ">
	<label for="alternateState">
		<g:message code="user.alternateState.label" default="Alternate State" />
		
	</label>
	<g:textField name="alternateState" maxlength="2" value="${userInstance?.alternateState}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateZipCode', 'error')} ">
	<label for="alternateZipCode">
		<g:message code="user.alternateZipCode.label" default="Alternate Zip Code" />
		
	</label>
	<g:textField name="alternateZipCode" maxlength="5" value="${userInstance?.alternateZipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternateAddressType', 'error')} ">
	<label for="alternateAddressType">
		<g:message code="user.alternateAddressType.label" default="Alternate Address Type" />
		
	</label>
	<g:textField name="alternateAddressType" maxlength="16" value="${userInstance?.alternateAddressType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'doNotCall', 'error')} ">
	<label for="doNotCall">
		<g:message code="user.doNotCall.label" default="Do Not Call" />
		
	</label>
	<g:checkBox name="doNotCall" value="${userInstance?.doNotCall}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'doNotEmail', 'error')} ">
	<label for="doNotEmail">
		<g:message code="user.doNotEmail.label" default="Do Not Email" />
		
	</label>
	<g:checkBox name="doNotEmail" value="${userInstance?.doNotEmail}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'doNotMail', 'error')} ">
	<label for="doNotMail">
		<g:message code="user.doNotMail.label" default="Do Not Mail" />
		
	</label>
	<g:checkBox name="doNotMail" value="${userInstance?.doNotMail}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'doNotMailReason', 'error')} ">
	<label for="doNotMailReason">
		<g:message code="user.doNotMailReason.label" default="Do Not Mail Reason" />
		
	</label>
	<g:textField name="doNotMailReason" maxlength="128" value="${userInstance?.doNotMailReason}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'blacklist', 'error')} ">
	<label for="blacklist">
		<g:message code="user.blacklist.label" default="Blacklist" />
		
	</label>
	<g:checkBox name="blacklist" value="${userInstance?.blacklist}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alertNotes', 'error')} ">
	<label for="alertNotes">
		<g:message code="user.alertNotes.label" default="Alert Notes" />
		
	</label>
	<g:textArea name="alertNotes" cols="40" rows="5" maxlength="256" value="${userInstance?.alertNotes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactFirstName', 'error')} ">
	<label for="emergencyContactFirstName">
		<g:message code="user.emergencyContactFirstName.label" default="Emergency Contact First Name" />
		
	</label>
	<g:textField name="emergencyContactFirstName" maxlength="32" value="${userInstance?.emergencyContactFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactLastName', 'error')} ">
	<label for="emergencyContactLastName">
		<g:message code="user.emergencyContactLastName.label" default="Emergency Contact Last Name" />
		
	</label>
	<g:textField name="emergencyContactLastName" maxlength="64" value="${userInstance?.emergencyContactLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactRelationship', 'error')} ">
	<label for="emergencyContactRelationship">
		<g:message code="user.emergencyContactRelationship.label" default="Emergency Contact Relationship" />
		
	</label>
	<g:textField name="emergencyContactRelationship" maxlength="16" value="${userInstance?.emergencyContactRelationship}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactAddress', 'error')} ">
	<label for="emergencyContactAddress">
		<g:message code="user.emergencyContactAddress.label" default="Emergency Contact Address" />
		
	</label>
	<g:textField name="emergencyContactAddress" maxlength="64" value="${userInstance?.emergencyContactAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactCity', 'error')} ">
	<label for="emergencyContactCity">
		<g:message code="user.emergencyContactCity.label" default="Emergency Contact City" />
		
	</label>
	<g:textField name="emergencyContactCity" maxlength="32" value="${userInstance?.emergencyContactCity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactState', 'error')} ">
	<label for="emergencyContactState">
		<g:message code="user.emergencyContactState.label" default="Emergency Contact State" />
		
	</label>
	<g:textField name="emergencyContactState" maxlength="2" value="${userInstance?.emergencyContactState}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactZipCode', 'error')} ">
	<label for="emergencyContactZipCode">
		<g:message code="user.emergencyContactZipCode.label" default="Emergency Contact Zip Code" />
		
	</label>
	<g:textField name="emergencyContactZipCode" maxlength="5" value="${userInstance?.emergencyContactZipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactPhone', 'error')} ">
	<label for="emergencyContactPhone">
		<g:message code="user.emergencyContactPhone.label" default="Emergency Contact Phone" />
		
	</label>
	<g:textField name="emergencyContactPhone" maxlength="16" value="${userInstance?.emergencyContactPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactAlternatePhone', 'error')} ">
	<label for="emergencyContactAlternatePhone">
		<g:message code="user.emergencyContactAlternatePhone.label" default="Emergency Contact Alternate Phone" />
		
	</label>
	<g:textField name="emergencyContactAlternatePhone" maxlength="16" value="${userInstance?.emergencyContactAlternatePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergencyContactEmail', 'error')} ">
	<label for="emergencyContactEmail">
		<g:message code="user.emergencyContactEmail.label" default="Emergency Contact Email" />
		
	</label>
	<g:textField name="emergencyContactEmail" maxlength="64" value="${userInstance?.emergencyContactEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" maxlength="8" value="${userInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'householdLanguageId', 'error')} ">
	<label for="householdLanguageId">
		<g:message code="user.householdLanguageId.label" default="Household Language Id" />
		
	</label>
	<g:field name="householdLanguageId" type="number" value="${userInstance.householdLanguageId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceableInEnglish', 'error')} ">
	<label for="serviceableInEnglish">
		<g:message code="user.serviceableInEnglish.label" default="Serviceable In English" />
		
	</label>
	<g:checkBox name="serviceableInEnglish" value="${userInstance?.serviceableInEnglish}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceableInSpanish', 'error')} ">
	<label for="serviceableInSpanish">
		<g:message code="user.serviceableInSpanish.label" default="Serviceable In Spanish" />
		
	</label>
	<g:checkBox name="serviceableInSpanish" value="${userInstance?.serviceableInSpanish}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceableInCantonese', 'error')} ">
	<label for="serviceableInCantonese">
		<g:message code="user.serviceableInCantonese.label" default="Serviceable In Cantonese" />
		
	</label>
	<g:checkBox name="serviceableInCantonese" value="${userInstance?.serviceableInCantonese}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseFirstName', 'error')} ">
	<label for="spouseFirstName">
		<g:message code="user.spouseFirstName.label" default="Spouse First Name" />
		
	</label>
	<g:textField name="spouseFirstName" maxlength="32" value="${userInstance?.spouseFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseMiddleName', 'error')} ">
	<label for="spouseMiddleName">
		<g:message code="user.spouseMiddleName.label" default="Spouse Middle Name" />
		
	</label>
	<g:textField name="spouseMiddleName" maxlength="32" value="${userInstance?.spouseMiddleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseLastName', 'error')} ">
	<label for="spouseLastName">
		<g:message code="user.spouseLastName.label" default="Spouse Last Name" />
		
	</label>
	<g:textField name="spouseLastName" maxlength="64" value="${userInstance?.spouseLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseDob', 'error')} ">
	<label for="spouseDob">
		<g:message code="user.spouseDob.label" default="Spouse Dob" />
		
	</label>
	<g:datePicker name="spouseDob" precision="day"  value="${userInstance?.spouseDob}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseSsnAes', 'error')} ">
	<label for="spouseSsnAes">
		<g:message code="user.spouseSsnAes.label" default="Spouse Ssn Aes" />
		
	</label>
	<input type="file" id="spouseSsnAes" name="spouseSsnAes" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouseSsnLastFour', 'error')} ">
	<label for="spouseSsnLastFour">
		<g:message code="user.spouseSsnLastFour.label" default="Spouse Ssn Last Four" />
		
	</label>
	<g:textField name="spouseSsnLastFour" maxlength="4" value="${userInstance?.spouseSsnLastFour}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'idChecked', 'error')} ">
	<label for="idChecked">
		<g:message code="user.idChecked.label" default="Id Checked" />
		
	</label>
	<g:checkBox name="idChecked" value="${userInstance?.idChecked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'idCheckedDate', 'error')} ">
	<label for="idCheckedDate">
		<g:message code="user.idCheckedDate.label" default="Id Checked Date" />
		
	</label>
	<g:datePicker name="idCheckedDate" precision="day"  value="${userInstance?.idCheckedDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasChecking', 'error')} ">
	<label for="exitHasChecking">
		<g:message code="user.exitHasChecking.label" default="Exit Has Checking" />
		
	</label>
	<g:checkBox name="exitHasChecking" value="${userInstance?.exitHasChecking}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasSavings', 'error')} ">
	<label for="exitHasSavings">
		<g:message code="user.exitHasSavings.label" default="Exit Has Savings" />
		
	</label>
	<g:checkBox name="exitHasSavings" value="${userInstance?.exitHasSavings}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasCc', 'error')} ">
	<label for="exitHasCc">
		<g:message code="user.exitHasCc.label" default="Exit Has Cc" />
		
	</label>
	<g:checkBox name="exitHasCc" value="${userInstance?.exitHasCc}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasStudentLoan', 'error')} ">
	<label for="exitHasStudentLoan">
		<g:message code="user.exitHasStudentLoan.label" default="Exit Has Student Loan" />
		
	</label>
	<g:checkBox name="exitHasStudentLoan" value="${userInstance?.exitHasStudentLoan}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasCarLoan', 'error')} ">
	<label for="exitHasCarLoan">
		<g:message code="user.exitHasCarLoan.label" default="Exit Has Car Loan" />
		
	</label>
	<g:checkBox name="exitHasCarLoan" value="${userInstance?.exitHasCarLoan}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitHasRetirementAccount', 'error')} ">
	<label for="exitHasRetirementAccount">
		<g:message code="user.exitHasRetirementAccount.label" default="Exit Has Retirement Account" />
		
	</label>
	<g:checkBox name="exitHasRetirementAccount" value="${userInstance?.exitHasRetirementAccount}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitRetirementAccountBalance', 'error')} ">
	<label for="exitRetirementAccountBalance">
		<g:message code="user.exitRetirementAccountBalance.label" default="Exit Retirement Account Balance" />
		
	</label>
	<g:field name="exitRetirementAccountBalance" type="number" value="${userInstance.exitRetirementAccountBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitCarLoanBalance', 'error')} ">
	<label for="exitCarLoanBalance">
		<g:message code="user.exitCarLoanBalance.label" default="Exit Car Loan Balance" />
		
	</label>
	<g:field name="exitCarLoanBalance" type="number" value="${userInstance.exitCarLoanBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitStudentLoanBalance', 'error')} ">
	<label for="exitStudentLoanBalance">
		<g:message code="user.exitStudentLoanBalance.label" default="Exit Student Loan Balance" />
		
	</label>
	<g:field name="exitStudentLoanBalance" type="number" value="${userInstance.exitStudentLoanBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitPaydayLoanBalance', 'error')} ">
	<label for="exitPaydayLoanBalance">
		<g:message code="user.exitPaydayLoanBalance.label" default="Exit Payday Loan Balance" />
		
	</label>
	<g:field name="exitPaydayLoanBalance" type="number" value="${userInstance.exitPaydayLoanBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitCcBalance', 'error')} ">
	<label for="exitCcBalance">
		<g:message code="user.exitCcBalance.label" default="Exit Cc Balance" />
		
	</label>
	<g:field name="exitCcBalance" type="number" value="${userInstance.exitCcBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitSavingsBalance', 'error')} ">
	<label for="exitSavingsBalance">
		<g:message code="user.exitSavingsBalance.label" default="Exit Savings Balance" />
		
	</label>
	<g:field name="exitSavingsBalance" type="number" value="${userInstance.exitSavingsBalance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitCheckingBalance', 'error')} ">
	<label for="exitCheckingBalance">
		<g:message code="user.exitCheckingBalance.label" default="Exit Checking Balance" />
		
	</label>
	<g:field name="exitCheckingBalance" type="number" value="${userInstance.exitCheckingBalance}"/>

</div>

