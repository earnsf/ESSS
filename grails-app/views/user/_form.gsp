<%@ page import="unity.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vistashare_role', 'error')} ">
	<label for="vistashare_role">
		<g:message code="user.vistashare_role.label" default="Vistasharerole" />
		
	</label>
	<g:textArea name="vistashare_role" cols="40" rows="5" maxlength="512" value="${userInstance?.vistashare_role}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'type_enum', 'error')} required">
	<label for="type_enum">
		<g:message code="user.type_enum.label" default="Typeenum" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type_enum" maxlength="9" required="" value="${userInstance?.type_enum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vistashare_user_id', 'error')} ">
	<label for="vistashare_user_id">
		<g:message code="user.vistashare_user_id.label" default="Vistashareuserid" />
		
	</label>
	<g:field name="vistashare_user_id" type="number" value="${userInstance.vistashare_user_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'salutation', 'error')} ">
	<label for="salutation">
		<g:message code="user.salutation.label" default="Salutation" />
		
	</label>
	<g:textField name="salutation" maxlength="6" value="${userInstance?.salutation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'first_name', 'error')} required">
	<label for="first_name">
		<g:message code="user.first_name.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="first_name" maxlength="32" required="" value="${userInstance?.first_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'middle_name', 'error')} ">
	<label for="middle_name">
		<g:message code="user.middle_name.label" default="Middlename" />
		
	</label>
	<g:textField name="middle_name" maxlength="32" value="${userInstance?.middle_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'last_name', 'error')} required">
	<label for="last_name">
		<g:message code="user.last_name.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="last_name" maxlength="64" required="" value="${userInstance?.last_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dob', 'error')} ">
	<label for="dob">
		<g:message code="user.dob.label" default="Dob" />
		
	</label>
	<g:datePicker name="dob" precision="day"  value="${userInstance?.dob}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'ssn_aes', 'error')} ">
	<label for="ssn_aes">
		<g:message code="user.ssn_aes.label" default="Ssnaes" />
		
	</label>
	<input type="file" id="ssn_aes" name="ssn_aes" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'ssn_last_four', 'error')} ">
	<label for="ssn_last_four">
		<g:message code="user.ssn_last_four.label" default="Ssnlastfour" />
		
	</label>
	<g:textField name="ssn_last_four" maxlength="4" value="${userInstance?.ssn_last_four}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'ssn_or_itin', 'error')} ">
	<label for="ssn_or_itin">
		<g:message code="user.ssn_or_itin.label" default="Ssnoritin" />
		
	</label>
	<g:textField name="ssn_or_itin" maxlength="4" value="${userInstance?.ssn_or_itin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferred_address', 'error')} ">
	<label for="preferred_address">
		<g:message code="user.preferred_address.label" default="Preferredaddress" />
		
	</label>
	<g:textArea name="preferred_address" cols="40" rows="5" maxlength="256" value="${userInstance?.preferred_address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferred_city', 'error')} ">
	<label for="preferred_city">
		<g:message code="user.preferred_city.label" default="Preferredcity" />
		
	</label>
	<g:textField name="preferred_city" maxlength="32" value="${userInstance?.preferred_city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferred_state', 'error')} ">
	<label for="preferred_state">
		<g:message code="user.preferred_state.label" default="Preferredstate" />
		
	</label>
	<g:textField name="preferred_state" maxlength="32" value="${userInstance?.preferred_state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferred_zip_code', 'error')} ">
	<label for="preferred_zip_code">
		<g:message code="user.preferred_zip_code.label" default="Preferredzipcode" />
		
	</label>
	<g:textField name="preferred_zip_code" maxlength="12" value="${userInstance?.preferred_zip_code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'preferred_address_type', 'error')} ">
	<label for="preferred_address_type">
		<g:message code="user.preferred_address_type.label" default="Preferredaddresstype" />
		
	</label>
	<g:textField name="preferred_address_type" maxlength="16" value="${userInstance?.preferred_address_type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'county', 'error')} ">
	<label for="county">
		<g:message code="user.county.label" default="County" />
		
	</label>
	<g:textField name="county" maxlength="32" value="${userInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="user.country.label" default="Country" />
		
	</label>
	<g:textField name="country" maxlength="32" value="${userInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'home_phone', 'error')} ">
	<label for="home_phone">
		<g:message code="user.home_phone.label" default="Homephone" />
		
	</label>
	<g:textField name="home_phone" maxlength="32" value="${userInstance?.home_phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'work_phone', 'error')} ">
	<label for="work_phone">
		<g:message code="user.work_phone.label" default="Workphone" />
		
	</label>
	<g:textField name="work_phone" maxlength="32" value="${userInstance?.work_phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobile_phone', 'error')} ">
	<label for="mobile_phone">
		<g:message code="user.mobile_phone.label" default="Mobilephone" />
		
	</label>
	<g:textField name="mobile_phone" maxlength="32" value="${userInstance?.mobile_phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_phone', 'error')} ">
	<label for="alternate_phone">
		<g:message code="user.alternate_phone.label" default="Alternatephone" />
		
	</label>
	<g:textField name="alternate_phone" maxlength="32" value="${userInstance?.alternate_phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="user.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" maxlength="16" value="${userInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vistashare_email', 'error')} ">
	<label for="vistashare_email">
		<g:message code="user.vistashare_email.label" default="Vistashareemail" />
		
	</label>
	<g:textField name="vistashare_email" maxlength="64" value="${userInstance?.vistashare_email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_email', 'error')} ">
	<label for="alternate_email">
		<g:message code="user.alternate_email.label" default="Alternateemail" />
		
	</label>
	<g:textField name="alternate_email" maxlength="64" value="${userInstance?.alternate_email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_address', 'error')} ">
	<label for="alternate_address">
		<g:message code="user.alternate_address.label" default="Alternateaddress" />
		
	</label>
	<g:textArea name="alternate_address" cols="40" rows="5" maxlength="256" value="${userInstance?.alternate_address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_city', 'error')} ">
	<label for="alternate_city">
		<g:message code="user.alternate_city.label" default="Alternatecity" />
		
	</label>
	<g:textField name="alternate_city" maxlength="32" value="${userInstance?.alternate_city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_state', 'error')} ">
	<label for="alternate_state">
		<g:message code="user.alternate_state.label" default="Alternatestate" />
		
	</label>
	<g:textField name="alternate_state" maxlength="2" value="${userInstance?.alternate_state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_zip_code', 'error')} ">
	<label for="alternate_zip_code">
		<g:message code="user.alternate_zip_code.label" default="Alternatezip Code" />
		
	</label>
	<g:textField name="alternate_zip_code" maxlength="12" value="${userInstance?.alternate_zip_code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_address_type', 'error')} ">
	<label for="alternate_address_type">
		<g:message code="user.alternate_address_type.label" default="Alternateaddresstype" />
		
	</label>
	<g:textField name="alternate_address_type" maxlength="16" value="${userInstance?.alternate_address_type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alternate_country', 'error')} ">
	<label for="alternate_country">
		<g:message code="user.alternate_country.label" default="Alternatecountry" />
		
	</label>
	<g:textField name="alternate_country" maxlength="32" value="${userInstance?.alternate_country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'do_not_call', 'error')} ">
	<label for="do_not_call">
		<g:message code="user.do_not_call.label" default="Donotcall" />
		
	</label>
	<g:checkBox name="do_not_call" value="${userInstance?.do_not_call}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'do_not_email', 'error')} ">
	<label for="do_not_email">
		<g:message code="user.do_not_email.label" default="Donotemail" />
		
	</label>
	<g:checkBox name="do_not_email" value="${userInstance?.do_not_email}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email_pref_code', 'error')} ">
	<label for="email_pref_code">
		<g:message code="user.email_pref_code.label" default="Emailprefcode" />
		
	</label>
	<g:field name="email_pref_code" type="number" value="${userInstance.email_pref_code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'do_not_mail', 'error')} ">
	<label for="do_not_mail">
		<g:message code="user.do_not_mail.label" default="Donotmail" />
		
	</label>
	<g:checkBox name="do_not_mail" value="${userInstance?.do_not_mail}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'do_not_mail_reason', 'error')} ">
	<label for="do_not_mail_reason">
		<g:message code="user.do_not_mail_reason.label" default="Donotmailreason" />
		
	</label>
	<g:textField name="do_not_mail_reason" maxlength="128" value="${userInstance?.do_not_mail_reason}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'banned', 'error')} ">
	<label for="banned">
		<g:message code="user.banned.label" default="Banned" />
		
	</label>
	<g:checkBox name="banned" value="${userInstance?.banned}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'alert_notes', 'error')} ">
	<label for="alert_notes">
		<g:message code="user.alert_notes.label" default="Alertnotes" />
		
	</label>
	<g:textArea name="alert_notes" cols="40" rows="5" maxlength="4096" value="${userInstance?.alert_notes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" maxlength="8" value="${userInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'household_language_id', 'error')} ">
	<label for="household_language_id">
		<g:message code="user.household_language_id.label" default="Householdlanguageid" />
		
	</label>
	<g:field name="household_language_id" type="number" value="${userInstance.household_language_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceable_in_english', 'error')} ">
	<label for="serviceable_in_english">
		<g:message code="user.serviceable_in_english.label" default="Serviceableinenglish" />
		
	</label>
	<g:checkBox name="serviceable_in_english" value="${userInstance?.serviceable_in_english}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceable_in_spanish', 'error')} ">
	<label for="serviceable_in_spanish">
		<g:message code="user.serviceable_in_spanish.label" default="Serviceableinspanish" />
		
	</label>
	<g:checkBox name="serviceable_in_spanish" value="${userInstance?.serviceable_in_spanish}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'serviceable_in_cantonese', 'error')} ">
	<label for="serviceable_in_cantonese">
		<g:message code="user.serviceable_in_cantonese.label" default="Serviceableincantonese" />
		
	</label>
	<g:checkBox name="serviceable_in_cantonese" value="${userInstance?.serviceable_in_cantonese}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'id_checked', 'error')} ">
	<label for="id_checked">
		<g:message code="user.id_checked.label" default="Idchecked" />
		
	</label>
	<g:checkBox name="id_checked" value="${userInstance?.id_checked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'id_checked_date', 'error')} ">
	<label for="id_checked_date">
		<g:message code="user.id_checked_date.label" default="Idcheckeddate" />
		
	</label>
	<g:datePicker name="id_checked_date" precision="day"  value="${userInstance?.id_checked_date}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'spouse_id', 'error')} ">
	<label for="spouse_id">
		<g:message code="user.spouse_id.label" default="Spouseid" />
		
	</label>
	<g:field name="spouse_id" type="number" value="${userInstance.spouse_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergency_contact_id', 'error')} ">
	<label for="emergency_contact_id">
		<g:message code="user.emergency_contact_id.label" default="Emergencycontactid" />
		
	</label>
	<g:field name="emergency_contact_id" type="number" value="${userInstance.emergency_contact_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emergency_contact_type', 'error')} ">
	<label for="emergency_contact_type">
		<g:message code="user.emergency_contact_type.label" default="Emergencycontacttype" />
		
	</label>
	<g:textField name="emergency_contact_type" maxlength="128" value="${userInstance?.emergency_contact_type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'child_ref_to_prim_parent', 'error')} ">
	<label for="child_ref_to_prim_parent">
		<g:message code="user.child_ref_to_prim_parent.label" default="Childreftoprimparent" />
		
	</label>
	<g:field name="child_ref_to_prim_parent" type="number" value="${userInstance.child_ref_to_prim_parent}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'is_emergency_contact', 'error')} ">
	<label for="is_emergency_contact">
		<g:message code="user.is_emergency_contact.label" default="Isemergencycontact" />
		
	</label>
	<g:checkBox name="is_emergency_contact" value="${userInstance?.is_emergency_contact}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'is_child', 'error')} ">
	<label for="is_child">
		<g:message code="user.is_child.label" default="Ischild" />
		
	</label>
	<g:checkBox name="is_child" value="${userInstance?.is_child}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>

