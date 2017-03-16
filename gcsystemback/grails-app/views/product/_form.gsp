<%@ page import="gcsystemback.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="product.type.label" default="Type" />
		