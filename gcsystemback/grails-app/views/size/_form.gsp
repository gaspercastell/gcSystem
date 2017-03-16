<%@ page import="gcsystemback.Size" %>



<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="size.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${sizeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="size.products.label" default="Products" />
		
	</label>
	
</div>

