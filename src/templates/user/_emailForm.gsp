<h3> Email </h3>
<g:form>
	<label for="email">New Email</label><g:textField name="email"/><br/>
	<g:submitToRemote url="[controller:'user', action:'saveEmail']" update="addEmail" value="Save Changes" />
</g:form>