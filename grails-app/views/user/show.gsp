
<%@ page import="unity.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.vistashareRole}">
				<li class="fieldcontain">
					<span id="vistashareRole-label" class="property-label"><g:message code="user.vistashareRole.label" default="Vistashare Role" /></span>
					
						<span class="property-value" aria-labelledby="vistashareRole-label"><g:fieldValue bean="${userInstance}" field="vistashareRole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.vistashareUserId}">
				<li class="fieldcontain">
					<span id="vistashareUserId-label" class="property-label"><g:message code="user.vistashareUserId.label" default="Vistashare User Id" /></span>
					
						<span class="property-value" aria-labelledby="vistashareUserId-label"><g:fieldValue bean="${userInstance}" field="vistashareUserId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.salutation}">
				<li class="fieldcontain">
					<span id="salutation-label" class="property-label"><g:message code="user.salutation.label" default="Salutation" /></span>
					
						<span class="property-value" aria-labelledby="salutation-label"><g:fieldValue bean="${userInstance}" field="salutation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="user.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${userInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="user.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${userInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ssnAes}">
				<li class="fieldcontain">
					<span id="ssnAes-label" class="property-label"><g:message code="user.ssnAes.label" default="Ssn Aes" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ssnLastFour}">
				<li class="fieldcontain">
					<span id="ssnLastFour-label" class="property-label"><g:message code="user.ssnLastFour.label" default="Ssn Last Four" /></span>
					
						<span class="property-value" aria-labelledby="ssnLastFour-label"><g:fieldValue bean="${userInstance}" field="ssnLastFour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferredAddress}">
				<li class="fieldcontain">
					<span id="preferredAddress-label" class="property-label"><g:message code="user.preferredAddress.label" default="Preferred Address" /></span>
					
						<span class="property-value" aria-labelledby="preferredAddress-label"><g:fieldValue bean="${userInstance}" field="preferredAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferredCity}">
				<li class="fieldcontain">
					<span id="preferredCity-label" class="property-label"><g:message code="user.preferredCity.label" default="Preferred City" /></span>
					
						<span class="property-value" aria-labelledby="preferredCity-label"><g:fieldValue bean="${userInstance}" field="preferredCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferredState}">
				<li class="fieldcontain">
					<span id="preferredState-label" class="property-label"><g:message code="user.preferredState.label" default="Preferred State" /></span>
					
						<span class="property-value" aria-labelledby="preferredState-label"><g:fieldValue bean="${userInstance}" field="preferredState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferredZipCode}">
				<li class="fieldcontain">
					<span id="preferredZipCode-label" class="property-label"><g:message code="user.preferredZipCode.label" default="Preferred Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="preferredZipCode-label"><g:fieldValue bean="${userInstance}" field="preferredZipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferredAddressType}">
				<li class="fieldcontain">
					<span id="preferredAddressType-label" class="property-label"><g:message code="user.preferredAddressType.label" default="Preferred Address Type" /></span>
					
						<span class="property-value" aria-labelledby="preferredAddressType-label"><g:fieldValue bean="${userInstance}" field="preferredAddressType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="user.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${userInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="user.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${userInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.workPhone}">
				<li class="fieldcontain">
					<span id="workPhone-label" class="property-label"><g:message code="user.workPhone.label" default="Work Phone" /></span>
					
						<span class="property-value" aria-labelledby="workPhone-label"><g:fieldValue bean="${userInstance}" field="workPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="user.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${userInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternatePhone}">
				<li class="fieldcontain">
					<span id="alternatePhone-label" class="property-label"><g:message code="user.alternatePhone.label" default="Alternate Phone" /></span>
					
						<span class="property-value" aria-labelledby="alternatePhone-label"><g:fieldValue bean="${userInstance}" field="alternatePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="user.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${userInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateEmail}">
				<li class="fieldcontain">
					<span id="alternateEmail-label" class="property-label"><g:message code="user.alternateEmail.label" default="Alternate Email" /></span>
					
						<span class="property-value" aria-labelledby="alternateEmail-label"><g:fieldValue bean="${userInstance}" field="alternateEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateAddress}">
				<li class="fieldcontain">
					<span id="alternateAddress-label" class="property-label"><g:message code="user.alternateAddress.label" default="Alternate Address" /></span>
					
						<span class="property-value" aria-labelledby="alternateAddress-label"><g:fieldValue bean="${userInstance}" field="alternateAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateCity}">
				<li class="fieldcontain">
					<span id="alternateCity-label" class="property-label"><g:message code="user.alternateCity.label" default="Alternate City" /></span>
					
						<span class="property-value" aria-labelledby="alternateCity-label"><g:fieldValue bean="${userInstance}" field="alternateCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateState}">
				<li class="fieldcontain">
					<span id="alternateState-label" class="property-label"><g:message code="user.alternateState.label" default="Alternate State" /></span>
					
						<span class="property-value" aria-labelledby="alternateState-label"><g:fieldValue bean="${userInstance}" field="alternateState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateZipCode}">
				<li class="fieldcontain">
					<span id="alternateZipCode-label" class="property-label"><g:message code="user.alternateZipCode.label" default="Alternate Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="alternateZipCode-label"><g:fieldValue bean="${userInstance}" field="alternateZipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternateAddressType}">
				<li class="fieldcontain">
					<span id="alternateAddressType-label" class="property-label"><g:message code="user.alternateAddressType.label" default="Alternate Address Type" /></span>
					
						<span class="property-value" aria-labelledby="alternateAddressType-label"><g:fieldValue bean="${userInstance}" field="alternateAddressType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.doNotCall}">
				<li class="fieldcontain">
					<span id="doNotCall-label" class="property-label"><g:message code="user.doNotCall.label" default="Do Not Call" /></span>
					
						<span class="property-value" aria-labelledby="doNotCall-label"><g:formatBoolean boolean="${userInstance?.doNotCall}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.doNotEmail}">
				<li class="fieldcontain">
					<span id="doNotEmail-label" class="property-label"><g:message code="user.doNotEmail.label" default="Do Not Email" /></span>
					
						<span class="property-value" aria-labelledby="doNotEmail-label"><g:formatBoolean boolean="${userInstance?.doNotEmail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.doNotMail}">
				<li class="fieldcontain">
					<span id="doNotMail-label" class="property-label"><g:message code="user.doNotMail.label" default="Do Not Mail" /></span>
					
						<span class="property-value" aria-labelledby="doNotMail-label"><g:formatBoolean boolean="${userInstance?.doNotMail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.doNotMailReason}">
				<li class="fieldcontain">
					<span id="doNotMailReason-label" class="property-label"><g:message code="user.doNotMailReason.label" default="Do Not Mail Reason" /></span>
					
						<span class="property-value" aria-labelledby="doNotMailReason-label"><g:fieldValue bean="${userInstance}" field="doNotMailReason"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.blacklist}">
				<li class="fieldcontain">
					<span id="blacklist-label" class="property-label"><g:message code="user.blacklist.label" default="Blacklist" /></span>
					
						<span class="property-value" aria-labelledby="blacklist-label"><g:formatBoolean boolean="${userInstance?.blacklist}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alertNotes}">
				<li class="fieldcontain">
					<span id="alertNotes-label" class="property-label"><g:message code="user.alertNotes.label" default="Alert Notes" /></span>
					
						<span class="property-value" aria-labelledby="alertNotes-label"><g:fieldValue bean="${userInstance}" field="alertNotes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactFirstName}">
				<li class="fieldcontain">
					<span id="emergencyContactFirstName-label" class="property-label"><g:message code="user.emergencyContactFirstName.label" default="Emergency Contact First Name" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactFirstName-label"><g:fieldValue bean="${userInstance}" field="emergencyContactFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactLastName}">
				<li class="fieldcontain">
					<span id="emergencyContactLastName-label" class="property-label"><g:message code="user.emergencyContactLastName.label" default="Emergency Contact Last Name" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactLastName-label"><g:fieldValue bean="${userInstance}" field="emergencyContactLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactRelationship}">
				<li class="fieldcontain">
					<span id="emergencyContactRelationship-label" class="property-label"><g:message code="user.emergencyContactRelationship.label" default="Emergency Contact Relationship" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactRelationship-label"><g:fieldValue bean="${userInstance}" field="emergencyContactRelationship"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactAddress}">
				<li class="fieldcontain">
					<span id="emergencyContactAddress-label" class="property-label"><g:message code="user.emergencyContactAddress.label" default="Emergency Contact Address" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactAddress-label"><g:fieldValue bean="${userInstance}" field="emergencyContactAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactCity}">
				<li class="fieldcontain">
					<span id="emergencyContactCity-label" class="property-label"><g:message code="user.emergencyContactCity.label" default="Emergency Contact City" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactCity-label"><g:fieldValue bean="${userInstance}" field="emergencyContactCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactState}">
				<li class="fieldcontain">
					<span id="emergencyContactState-label" class="property-label"><g:message code="user.emergencyContactState.label" default="Emergency Contact State" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactState-label"><g:fieldValue bean="${userInstance}" field="emergencyContactState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactZipCode}">
				<li class="fieldcontain">
					<span id="emergencyContactZipCode-label" class="property-label"><g:message code="user.emergencyContactZipCode.label" default="Emergency Contact Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactZipCode-label"><g:fieldValue bean="${userInstance}" field="emergencyContactZipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactPhone}">
				<li class="fieldcontain">
					<span id="emergencyContactPhone-label" class="property-label"><g:message code="user.emergencyContactPhone.label" default="Emergency Contact Phone" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactPhone-label"><g:fieldValue bean="${userInstance}" field="emergencyContactPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactAlternatePhone}">
				<li class="fieldcontain">
					<span id="emergencyContactAlternatePhone-label" class="property-label"><g:message code="user.emergencyContactAlternatePhone.label" default="Emergency Contact Alternate Phone" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactAlternatePhone-label"><g:fieldValue bean="${userInstance}" field="emergencyContactAlternatePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergencyContactEmail}">
				<li class="fieldcontain">
					<span id="emergencyContactEmail-label" class="property-label"><g:message code="user.emergencyContactEmail.label" default="Emergency Contact Email" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactEmail-label"><g:fieldValue bean="${userInstance}" field="emergencyContactEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="user.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${userInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.householdLanguageId}">
				<li class="fieldcontain">
					<span id="householdLanguageId-label" class="property-label"><g:message code="user.householdLanguageId.label" default="Household Language Id" /></span>
					
						<span class="property-value" aria-labelledby="householdLanguageId-label"><g:fieldValue bean="${userInstance}" field="householdLanguageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceableInEnglish}">
				<li class="fieldcontain">
					<span id="serviceableInEnglish-label" class="property-label"><g:message code="user.serviceableInEnglish.label" default="Serviceable In English" /></span>
					
						<span class="property-value" aria-labelledby="serviceableInEnglish-label"><g:formatBoolean boolean="${userInstance?.serviceableInEnglish}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceableInSpanish}">
				<li class="fieldcontain">
					<span id="serviceableInSpanish-label" class="property-label"><g:message code="user.serviceableInSpanish.label" default="Serviceable In Spanish" /></span>
					
						<span class="property-value" aria-labelledby="serviceableInSpanish-label"><g:formatBoolean boolean="${userInstance?.serviceableInSpanish}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceableInCantonese}">
				<li class="fieldcontain">
					<span id="serviceableInCantonese-label" class="property-label"><g:message code="user.serviceableInCantonese.label" default="Serviceable In Cantonese" /></span>
					
						<span class="property-value" aria-labelledby="serviceableInCantonese-label"><g:formatBoolean boolean="${userInstance?.serviceableInCantonese}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseFirstName}">
				<li class="fieldcontain">
					<span id="spouseFirstName-label" class="property-label"><g:message code="user.spouseFirstName.label" default="Spouse First Name" /></span>
					
						<span class="property-value" aria-labelledby="spouseFirstName-label"><g:fieldValue bean="${userInstance}" field="spouseFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseMiddleName}">
				<li class="fieldcontain">
					<span id="spouseMiddleName-label" class="property-label"><g:message code="user.spouseMiddleName.label" default="Spouse Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="spouseMiddleName-label"><g:fieldValue bean="${userInstance}" field="spouseMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseLastName}">
				<li class="fieldcontain">
					<span id="spouseLastName-label" class="property-label"><g:message code="user.spouseLastName.label" default="Spouse Last Name" /></span>
					
						<span class="property-value" aria-labelledby="spouseLastName-label"><g:fieldValue bean="${userInstance}" field="spouseLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseDob}">
				<li class="fieldcontain">
					<span id="spouseDob-label" class="property-label"><g:message code="user.spouseDob.label" default="Spouse Dob" /></span>
					
						<span class="property-value" aria-labelledby="spouseDob-label"><g:formatDate date="${userInstance?.spouseDob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseSsnAes}">
				<li class="fieldcontain">
					<span id="spouseSsnAes-label" class="property-label"><g:message code="user.spouseSsnAes.label" default="Spouse Ssn Aes" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouseSsnLastFour}">
				<li class="fieldcontain">
					<span id="spouseSsnLastFour-label" class="property-label"><g:message code="user.spouseSsnLastFour.label" default="Spouse Ssn Last Four" /></span>
					
						<span class="property-value" aria-labelledby="spouseSsnLastFour-label"><g:fieldValue bean="${userInstance}" field="spouseSsnLastFour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.idChecked}">
				<li class="fieldcontain">
					<span id="idChecked-label" class="property-label"><g:message code="user.idChecked.label" default="Id Checked" /></span>
					
						<span class="property-value" aria-labelledby="idChecked-label"><g:formatBoolean boolean="${userInstance?.idChecked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.idCheckedDate}">
				<li class="fieldcontain">
					<span id="idCheckedDate-label" class="property-label"><g:message code="user.idCheckedDate.label" default="Id Checked Date" /></span>
					
						<span class="property-value" aria-labelledby="idCheckedDate-label"><g:formatDate date="${userInstance?.idCheckedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasChecking}">
				<li class="fieldcontain">
					<span id="exitHasChecking-label" class="property-label"><g:message code="user.exitHasChecking.label" default="Exit Has Checking" /></span>
					
						<span class="property-value" aria-labelledby="exitHasChecking-label"><g:formatBoolean boolean="${userInstance?.exitHasChecking}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasSavings}">
				<li class="fieldcontain">
					<span id="exitHasSavings-label" class="property-label"><g:message code="user.exitHasSavings.label" default="Exit Has Savings" /></span>
					
						<span class="property-value" aria-labelledby="exitHasSavings-label"><g:formatBoolean boolean="${userInstance?.exitHasSavings}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasCc}">
				<li class="fieldcontain">
					<span id="exitHasCc-label" class="property-label"><g:message code="user.exitHasCc.label" default="Exit Has Cc" /></span>
					
						<span class="property-value" aria-labelledby="exitHasCc-label"><g:formatBoolean boolean="${userInstance?.exitHasCc}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasStudentLoan}">
				<li class="fieldcontain">
					<span id="exitHasStudentLoan-label" class="property-label"><g:message code="user.exitHasStudentLoan.label" default="Exit Has Student Loan" /></span>
					
						<span class="property-value" aria-labelledby="exitHasStudentLoan-label"><g:formatBoolean boolean="${userInstance?.exitHasStudentLoan}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasCarLoan}">
				<li class="fieldcontain">
					<span id="exitHasCarLoan-label" class="property-label"><g:message code="user.exitHasCarLoan.label" default="Exit Has Car Loan" /></span>
					
						<span class="property-value" aria-labelledby="exitHasCarLoan-label"><g:formatBoolean boolean="${userInstance?.exitHasCarLoan}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitHasRetirementAccount}">
				<li class="fieldcontain">
					<span id="exitHasRetirementAccount-label" class="property-label"><g:message code="user.exitHasRetirementAccount.label" default="Exit Has Retirement Account" /></span>
					
						<span class="property-value" aria-labelledby="exitHasRetirementAccount-label"><g:formatBoolean boolean="${userInstance?.exitHasRetirementAccount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitRetirementAccountBalance}">
				<li class="fieldcontain">
					<span id="exitRetirementAccountBalance-label" class="property-label"><g:message code="user.exitRetirementAccountBalance.label" default="Exit Retirement Account Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitRetirementAccountBalance-label"><g:fieldValue bean="${userInstance}" field="exitRetirementAccountBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitCarLoanBalance}">
				<li class="fieldcontain">
					<span id="exitCarLoanBalance-label" class="property-label"><g:message code="user.exitCarLoanBalance.label" default="Exit Car Loan Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitCarLoanBalance-label"><g:fieldValue bean="${userInstance}" field="exitCarLoanBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitStudentLoanBalance}">
				<li class="fieldcontain">
					<span id="exitStudentLoanBalance-label" class="property-label"><g:message code="user.exitStudentLoanBalance.label" default="Exit Student Loan Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitStudentLoanBalance-label"><g:fieldValue bean="${userInstance}" field="exitStudentLoanBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitPaydayLoanBalance}">
				<li class="fieldcontain">
					<span id="exitPaydayLoanBalance-label" class="property-label"><g:message code="user.exitPaydayLoanBalance.label" default="Exit Payday Loan Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitPaydayLoanBalance-label"><g:fieldValue bean="${userInstance}" field="exitPaydayLoanBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitCcBalance}">
				<li class="fieldcontain">
					<span id="exitCcBalance-label" class="property-label"><g:message code="user.exitCcBalance.label" default="Exit Cc Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitCcBalance-label"><g:fieldValue bean="${userInstance}" field="exitCcBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitSavingsBalance}">
				<li class="fieldcontain">
					<span id="exitSavingsBalance-label" class="property-label"><g:message code="user.exitSavingsBalance.label" default="Exit Savings Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitSavingsBalance-label"><g:fieldValue bean="${userInstance}" field="exitSavingsBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitCheckingBalance}">
				<li class="fieldcontain">
					<span id="exitCheckingBalance-label" class="property-label"><g:message code="user.exitCheckingBalance.label" default="Exit Checking Balance" /></span>
					
						<span class="property-value" aria-labelledby="exitCheckingBalance-label"><g:fieldValue bean="${userInstance}" field="exitCheckingBalance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
