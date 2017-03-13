<%@ page import="gcsystemback.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'secondLastName', 'error')} ">
	<label for="secondLastName">
		<g:message code="user.secondLastName.label" default="Second Last Name" />
		
	</label>
	<g:textField name="secondLastName" value="${userInstance?.secondLastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${userInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="user.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="rol" from="${gcsystemback.Role?.values()}" keys="${gcsystemback.Role.values()*.name()}" required="" value="${userInstance?.rol?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

