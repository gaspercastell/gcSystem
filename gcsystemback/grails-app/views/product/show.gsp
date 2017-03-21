
<%@ page import="gcsystemback.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="product.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${productInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="product.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${productInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.sizes}">
				<li class="fieldcontain">
					<span id="sizes-label" class="property-label"><g:message code="product.sizes.label" default="Sizes" /></span>
					
						<g:each in="${productInstance.sizes}" var="s">
						<span class="property-value" aria-labelledby="sizes-label"><g:link controller="size" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.private_price}">
				<li class="fieldcontain">
					<span id="private_price-label" class="property-label"><g:message code="product.private_price.label" default="Privateprice" /></span>
					
						<span class="property-value" aria-labelledby="private_price-label"><g:fieldValue bean="${productInstance}" field="private_price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.public_price}">
				<li class="fieldcontain">
					<span id="public_price-label" class="property-label"><g:message code="product.public_price.label" default="Publicprice" /></span>
					
						<span class="property-value" aria-labelledby="public_price-label"><g:fieldValue bean="${productInstance}" field="public_price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="product.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${productInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.catalogo}">
				<li class="fieldcontain">
					<span id="catalogo-label" class="property-label"><g:message code="product.catalogo.label" default="Catalogo" /></span>
					
						<span class="property-value" aria-labelledby="catalogo-label"><g:link controller="catalog" action="show" id="${productInstance?.catalogo?.id}">${productInstance?.catalogo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.catalog_page}">
				<li class="fieldcontain">
					<span id="catalog_page-label" class="property-label"><g:message code="product.catalog_page.label" default="Catalogpage" /></span>
					
						<span class="property-value" aria-labelledby="catalog_page-label"><g:fieldValue bean="${productInstance}" field="catalog_page"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="product.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${productInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.colors}">
				<li class="fieldcontain">
					<span id="colors-label" class="property-label"><g:message code="product.colors.label" default="Colors" /></span>
					
						<g:each in="${productInstance.colors}" var="c">
						<span class="property-value" aria-labelledby="colors-label"><g:link controller="color" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
