
<%@ page import="unity.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="vistashare_role" title="${message(code: 'user.vistashare_role.label', default: 'Vistasharerole')}" />
					
						<g:sortableColumn property="type_enum" title="${message(code: 'user.type_enum.label', default: 'Typeenum')}" />
					
						<g:sortableColumn property="vistashare_user_id" title="${message(code: 'user.vistashare_user_id.label', default: 'Vistashareuserid')}" />
					
						<g:sortableColumn property="salutation" title="${message(code: 'user.salutation.label', default: 'Salutation')}" />
					
						<g:sortableColumn property="first_name" title="${message(code: 'user.first_name.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="middle_name" title="${message(code: 'user.middle_name.label', default: 'Middlename')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "vistashare_role")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "type_enum")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "vistashare_user_id")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "salutation")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "first_name")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "middle_name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
