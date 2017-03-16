<%@ page import="gcsystemback.Catalog" %>



<div class="fieldcontain ${hasErrors(bean: catalogInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="catalog.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${gcsystemback.CatalogType?.values()}" keys="${gcsystemback.CatalogType.values()*.name()}" value="${catalogInstance?.type?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: catalogInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="catalog.company.label" default="Company" />
		
	</label>
	<g:select name="company" from="${gcsystemback.Companies?.values()}" keys="${gcsystemback.Companies.values()*.name()}" value="${catalogInstance?.company?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: catalogInstance, field: 'year', 'error')} ">
	<label for="year">
		<g:message code="catalog.year.label" default="Year" />
		
	</label>
	<g:datePicker name="year" precision="day"  value="${catalogInstance?.year}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: catalogInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="catalog.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${catalogInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['catalog.id': catalogInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

