
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
			
				<g:if test="${userInstance?.vistashare_role}">
				<li class="fieldcontain">
					<span id="vistashare_role-label" class="property-label"><g:message code="user.vistashare_role.label" default="Vistasharerole" /></span>
					
						<span class="property-value" aria-labelledby="vistashare_role-label"><g:fieldValue bean="${userInstance}" field="vistashare_role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.type_enum}">
				<li class="fieldcontain">
					<span id="type_enum-label" class="property-label"><g:message code="user.type_enum.label" default="Typeenum" /></span>
					
						<span class="property-value" aria-labelledby="type_enum-label"><g:fieldValue bean="${userInstance}" field="type_enum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.vistashare_user_id}">
				<li class="fieldcontain">
					<span id="vistashare_user_id-label" class="property-label"><g:message code="user.vistashare_user_id.label" default="Vistashareuserid" /></span>
					
						<span class="property-value" aria-labelledby="vistashare_user_id-label"><g:fieldValue bean="${userInstance}" field="vistashare_user_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.salutation}">
				<li class="fieldcontain">
					<span id="salutation-label" class="property-label"><g:message code="user.salutation.label" default="Salutation" /></span>
					
						<span class="property-value" aria-labelledby="salutation-label"><g:fieldValue bean="${userInstance}" field="salutation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.first_name}">
				<li class="fieldcontain">
					<span id="first_name-label" class="property-label"><g:message code="user.first_name.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="first_name-label"><g:fieldValue bean="${userInstance}" field="first_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.middle_name}">
				<li class="fieldcontain">
					<span id="middle_name-label" class="property-label"><g:message code="user.middle_name.label" default="Middlename" /></span>
					
						<span class="property-value" aria-labelledby="middle_name-label"><g:fieldValue bean="${userInstance}" field="middle_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.last_name}">
				<li class="fieldcontain">
					<span id="last_name-label" class="property-label"><g:message code="user.last_name.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="last_name-label"><g:fieldValue bean="${userInstance}" field="last_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="user.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${userInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ssn_aes}">
				<li class="fieldcontain">
					<span id="ssn_aes-label" class="property-label"><g:message code="user.ssn_aes.label" default="Ssnaes" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ssn_last_four}">
				<li class="fieldcontain">
					<span id="ssn_last_four-label" class="property-label"><g:message code="user.ssn_last_four.label" default="Ssnlastfour" /></span>
					
						<span class="property-value" aria-labelledby="ssn_last_four-label"><g:fieldValue bean="${userInstance}" field="ssn_last_four"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ssn_or_itin}">
				<li class="fieldcontain">
					<span id="ssn_or_itin-label" class="property-label"><g:message code="user.ssn_or_itin.label" default="Ssnoritin" /></span>
					
						<span class="property-value" aria-labelledby="ssn_or_itin-label"><g:fieldValue bean="${userInstance}" field="ssn_or_itin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferred_address}">
				<li class="fieldcontain">
					<span id="preferred_address-label" class="property-label"><g:message code="user.preferred_address.label" default="Preferredaddress" /></span>
					
						<span class="property-value" aria-labelledby="preferred_address-label"><g:fieldValue bean="${userInstance}" field="preferred_address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferred_city}">
				<li class="fieldcontain">
					<span id="preferred_city-label" class="property-label"><g:message code="user.preferred_city.label" default="Preferredcity" /></span>
					
						<span class="property-value" aria-labelledby="preferred_city-label"><g:fieldValue bean="${userInstance}" field="preferred_city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferred_state}">
				<li class="fieldcontain">
					<span id="preferred_state-label" class="property-label"><g:message code="user.preferred_state.label" default="Preferredstate" /></span>
					
						<span class="property-value" aria-labelledby="preferred_state-label"><g:fieldValue bean="${userInstance}" field="preferred_state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferred_zip_code}">
				<li class="fieldcontain">
					<span id="preferred_zip_code-label" class="property-label"><g:message code="user.preferred_zip_code.label" default="Preferredzipcode" /></span>
					
						<span class="property-value" aria-labelledby="preferred_zip_code-label"><g:fieldValue bean="${userInstance}" field="preferred_zip_code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.preferred_address_type}">
				<li class="fieldcontain">
					<span id="preferred_address_type-label" class="property-label"><g:message code="user.preferred_address_type.label" default="Preferredaddresstype" /></span>
					
						<span class="property-value" aria-labelledby="preferred_address_type-label"><g:fieldValue bean="${userInstance}" field="preferred_address_type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="user.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${userInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="user.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${userInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.home_phone}">
				<li class="fieldcontain">
					<span id="home_phone-label" class="property-label"><g:message code="user.home_phone.label" default="Homephone" /></span>
					
						<span class="property-value" aria-labelledby="home_phone-label"><g:fieldValue bean="${userInstance}" field="home_phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.work_phone}">
				<li class="fieldcontain">
					<span id="work_phone-label" class="property-label"><g:message code="user.work_phone.label" default="Workphone" /></span>
					
						<span class="property-value" aria-labelledby="work_phone-label"><g:fieldValue bean="${userInstance}" field="work_phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobile_phone}">
				<li class="fieldcontain">
					<span id="mobile_phone-label" class="property-label"><g:message code="user.mobile_phone.label" default="Mobilephone" /></span>
					
						<span class="property-value" aria-labelledby="mobile_phone-label"><g:fieldValue bean="${userInstance}" field="mobile_phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_phone}">
				<li class="fieldcontain">
					<span id="alternate_phone-label" class="property-label"><g:message code="user.alternate_phone.label" default="Alternatephone" /></span>
					
						<span class="property-value" aria-labelledby="alternate_phone-label"><g:fieldValue bean="${userInstance}" field="alternate_phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="user.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${userInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.vistashare_email}">
				<li class="fieldcontain">
					<span id="vistashare_email-label" class="property-label"><g:message code="user.vistashare_email.label" default="Vistashareemail" /></span>
					
						<span class="property-value" aria-labelledby="vistashare_email-label"><g:fieldValue bean="${userInstance}" field="vistashare_email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_email}">
				<li class="fieldcontain">
					<span id="alternate_email-label" class="property-label"><g:message code="user.alternate_email.label" default="Alternateemail" /></span>
					
						<span class="property-value" aria-labelledby="alternate_email-label"><g:fieldValue bean="${userInstance}" field="alternate_email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_address}">
				<li class="fieldcontain">
					<span id="alternate_address-label" class="property-label"><g:message code="user.alternate_address.label" default="Alternateaddress" /></span>
					
						<span class="property-value" aria-labelledby="alternate_address-label"><g:fieldValue bean="${userInstance}" field="alternate_address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_city}">
				<li class="fieldcontain">
					<span id="alternate_city-label" class="property-label"><g:message code="user.alternate_city.label" default="Alternatecity" /></span>
					
						<span class="property-value" aria-labelledby="alternate_city-label"><g:fieldValue bean="${userInstance}" field="alternate_city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_state}">
				<li class="fieldcontain">
					<span id="alternate_state-label" class="property-label"><g:message code="user.alternate_state.label" default="Alternatestate" /></span>
					
						<span class="property-value" aria-labelledby="alternate_state-label"><g:fieldValue bean="${userInstance}" field="alternate_state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_zipCode}">
				<li class="fieldcontain">
					<span id="alternate_zipCode-label" class="property-label"><g:message code="user.alternate_zipCode.label" default="Alternatezip Code" /></span>
					
						<span class="property-value" aria-labelledby="alternate_zipCode-label"><g:fieldValue bean="${userInstance}" field="alternate_zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_address_type}">
				<li class="fieldcontain">
					<span id="alternate_address_type-label" class="property-label"><g:message code="user.alternate_address_type.label" default="Alternateaddresstype" /></span>
					
						<span class="property-value" aria-labelledby="alternate_address_type-label"><g:fieldValue bean="${userInstance}" field="alternate_address_type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alternate_country}">
				<li class="fieldcontain">
					<span id="alternate_country-label" class="property-label"><g:message code="user.alternate_country.label" default="Alternatecountry" /></span>
					
						<span class="property-value" aria-labelledby="alternate_country-label"><g:fieldValue bean="${userInstance}" field="alternate_country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.do_not_call}">
				<li class="fieldcontain">
					<span id="do_not_call-label" class="property-label"><g:message code="user.do_not_call.label" default="Donotcall" /></span>
					
						<span class="property-value" aria-labelledby="do_not_call-label"><g:formatBoolean boolean="${userInstance?.do_not_call}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.do_not_email}">
				<li class="fieldcontain">
					<span id="do_not_email-label" class="property-label"><g:message code="user.do_not_email.label" default="Donotemail" /></span>
					
						<span class="property-value" aria-labelledby="do_not_email-label"><g:formatBoolean boolean="${userInstance?.do_not_email}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email_pref_code}">
				<li class="fieldcontain">
					<span id="email_pref_code-label" class="property-label"><g:message code="user.email_pref_code.label" default="Emailprefcode" /></span>
					
						<span class="property-value" aria-labelledby="email_pref_code-label"><g:fieldValue bean="${userInstance}" field="email_pref_code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.do_not_mail}">
				<li class="fieldcontain">
					<span id="do_not_mail-label" class="property-label"><g:message code="user.do_not_mail.label" default="Donotmail" /></span>
					
						<span class="property-value" aria-labelledby="do_not_mail-label"><g:formatBoolean boolean="${userInstance?.do_not_mail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.do_not_mail_reason}">
				<li class="fieldcontain">
					<span id="do_not_mail_reason-label" class="property-label"><g:message code="user.do_not_mail_reason.label" default="Donotmailreason" /></span>
					
						<span class="property-value" aria-labelledby="do_not_mail_reason-label"><g:fieldValue bean="${userInstance}" field="do_not_mail_reason"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.banned}">
				<li class="fieldcontain">
					<span id="banned-label" class="property-label"><g:message code="user.banned.label" default="Banned" /></span>
					
						<span class="property-value" aria-labelledby="banned-label"><g:formatBoolean boolean="${userInstance?.banned}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.alert_notes}">
				<li class="fieldcontain">
					<span id="alert_notes-label" class="property-label"><g:message code="user.alert_notes.label" default="Alertnotes" /></span>
					
						<span class="property-value" aria-labelledby="alert_notes-label"><g:fieldValue bean="${userInstance}" field="alert_notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="user.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${userInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.household_language_id}">
				<li class="fieldcontain">
					<span id="household_language_id-label" class="property-label"><g:message code="user.household_language_id.label" default="Householdlanguageid" /></span>
					
						<span class="property-value" aria-labelledby="household_language_id-label"><g:fieldValue bean="${userInstance}" field="household_language_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceable_in_english}">
				<li class="fieldcontain">
					<span id="serviceable_in_english-label" class="property-label"><g:message code="user.serviceable_in_english.label" default="Serviceableinenglish" /></span>
					
						<span class="property-value" aria-labelledby="serviceable_in_english-label"><g:formatBoolean boolean="${userInstance?.serviceable_in_english}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceable_in_spanish}">
				<li class="fieldcontain">
					<span id="serviceable_in_spanish-label" class="property-label"><g:message code="user.serviceable_in_spanish.label" default="Serviceableinspanish" /></span>
					
						<span class="property-value" aria-labelledby="serviceable_in_spanish-label"><g:formatBoolean boolean="${userInstance?.serviceable_in_spanish}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.serviceable_in_cantonese}">
				<li class="fieldcontain">
					<span id="serviceable_in_cantonese-label" class="property-label"><g:message code="user.serviceable_in_cantonese.label" default="Serviceableincantonese" /></span>
					
						<span class="property-value" aria-labelledby="serviceable_in_cantonese-label"><g:formatBoolean boolean="${userInstance?.serviceable_in_cantonese}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.id_checked}">
				<li class="fieldcontain">
					<span id="id_checked-label" class="property-label"><g:message code="user.id_checked.label" default="Idchecked" /></span>
					
						<span class="property-value" aria-labelledby="id_checked-label"><g:formatBoolean boolean="${userInstance?.id_checked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.id_checked_date}">
				<li class="fieldcontain">
					<span id="id_checked_date-label" class="property-label"><g:message code="user.id_checked_date.label" default="Idcheckeddate" /></span>
					
						<span class="property-value" aria-labelledby="id_checked_date-label"><g:formatDate date="${userInstance?.id_checked_date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.spouse_id}">
				<li class="fieldcontain">
					<span id="spouse_id-label" class="property-label"><g:message code="user.spouse_id.label" default="Spouseid" /></span>
					
						<span class="property-value" aria-labelledby="spouse_id-label"><g:fieldValue bean="${userInstance}" field="spouse_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergency_contact_id}">
				<li class="fieldcontain">
					<span id="emergency_contact_id-label" class="property-label"><g:message code="user.emergency_contact_id.label" default="Emergencycontactid" /></span>
					
						<span class="property-value" aria-labelledby="emergency_contact_id-label"><g:fieldValue bean="${userInstance}" field="emergency_contact_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emergency_contact_type}">
				<li class="fieldcontain">
					<span id="emergency_contact_type-label" class="property-label"><g:message code="user.emergency_contact_type.label" default="Emergencycontacttype" /></span>
					
						<span class="property-value" aria-labelledby="emergency_contact_type-label"><g:fieldValue bean="${userInstance}" field="emergency_contact_type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.child_ref_to_prim_parent}">
				<li class="fieldcontain">
					<span id="child_ref_to_prim_parent-label" class="property-label"><g:message code="user.child_ref_to_prim_parent.label" default="Childreftoprimparent" /></span>
					
						<span class="property-value" aria-labelledby="child_ref_to_prim_parent-label"><g:fieldValue bean="${userInstance}" field="child_ref_to_prim_parent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.esss_email}">
				<li class="fieldcontain">
					<span id="esss_email-label" class="property-label"><g:message code="user.esss_email.label" default="Esssemail" /></span>
					
						<span class="property-value" aria-labelledby="esss_email-label"><g:fieldValue bean="${userInstance}" field="esss_email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.esss_password}">
				<li class="fieldcontain">
					<span id="esss_password-label" class="property-label"><g:message code="user.esss_password.label" default="Essspassword" /></span>
					
						<span class="property-value" aria-labelledby="esss_password-label"><g:fieldValue bean="${userInstance}" field="esss_password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.esss_account_expired}">
				<li class="fieldcontain">
					<span id="esss_account_expired-label" class="property-label"><g:message code="user.esss_account_expired.label" default="Esssaccountexpired" /></span>
					
						<span class="property-value" aria-labelledby="esss_account_expired-label"><g:formatBoolean boolean="${userInstance?.esss_account_expired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.esss_account_locked}">
				<li class="fieldcontain">
					<span id="esss_account_locked-label" class="property-label"><g:message code="user.esss_account_locked.label" default="Esssaccountlocked" /></span>
					
						<span class="property-value" aria-labelledby="esss_account_locked-label"><g:formatBoolean boolean="${userInstance?.esss_account_locked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.esss_enabled}">
				<li class="fieldcontain">
					<span id="esss_enabled-label" class="property-label"><g:message code="user.esss_enabled.label" default="Esssenabled" /></span>
					
						<span class="property-value" aria-labelledby="esss_enabled-label"><g:formatBoolean boolean="${userInstance?.esss_enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.is_emergency_contact}">
				<li class="fieldcontain">
					<span id="is_emergency_contact-label" class="property-label"><g:message code="user.is_emergency_contact.label" default="Isemergencycontact" /></span>
					
						<span class="property-value" aria-labelledby="is_emergency_contact-label"><g:formatBoolean boolean="${userInstance?.is_emergency_contact}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.is_child}">
				<li class="fieldcontain">
					<span id="is_child-label" class="property-label"><g:message code="user.is_child.label" default="Ischild" /></span>
					
						<span class="property-value" aria-labelledby="is_child-label"><g:formatBoolean boolean="${userInstance?.is_child}" /></span>
					
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
