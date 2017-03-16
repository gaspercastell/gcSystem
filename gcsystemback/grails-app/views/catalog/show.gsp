
<%@ page import="gcsystemback.Catalog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'catalog.label', default: 'Catalog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-catalog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-catalog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list catalog">
			
				<g:if test="${catalogInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="catalog.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${catalogInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${catalogInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="catalog.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${catalogInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${catalogInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="catalog.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:formatDate date="${catalogInstance?.year}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${catalogInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="catalog.products.label" default="Products" /></span>
					
						<g:each in="${catalogInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${catalogInstance?.id}" />
					<g:link class="edit" action="edit" id="${catalogInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
