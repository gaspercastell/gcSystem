
<%@ page import="gcsystemback.OrderDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderDetail.label', default: 'OrderDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orderDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orderDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderDetail">
			
				<g:if test="${orderDetailInstance?.order}">
				<li class="fieldcontain">
					<span id="order-label" class="property-label"><g:message code="orderDetail.order.label" default="Order" /></span>
					
						<span class="property-value" aria-labelledby="order-label"><g:link controller="order" action="show" id="${orderDetailInstance?.order?.id}">${orderDetailInstance?.order?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="orderDetail.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${orderDetailInstance?.product?.id}">${orderDetailInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="orderDetail.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${orderDetailInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="orderDetail.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${orderDetailInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="orderDetail.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${orderDetailInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.orderAmount}">
				<li class="fieldcontain">
					<span id="orderAmount-label" class="property-label"><g:message code="orderDetail.orderAmount.label" default="Order Amount" /></span>
					
						<span class="property-value" aria-labelledby="orderAmount-label"><g:fieldValue bean="${orderDetailInstance}" field="orderAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.clientAmount}">
				<li class="fieldcontain">
					<span id="clientAmount-label" class="property-label"><g:message code="orderDetail.clientAmount.label" default="Client Amount" /></span>
					
						<span class="property-value" aria-labelledby="clientAmount-label"><g:fieldValue bean="${orderDetailInstance}" field="clientAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="orderDetail.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${orderDetailInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderDetailInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderDetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
