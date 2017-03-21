<%@ page import="gcsystemback.Color" %>



<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="color.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${colorInstance?.name}"/>
</div>

