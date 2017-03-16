<%@ page import="gcsystemback.Color" %>



<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="color.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${colorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="color.products.label" default="Products" />
		
	</label>
	
</div>

