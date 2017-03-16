
<%@ page import="gcsystemback.Order" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-order" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list order">
			
				<g:if test="${orderInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="order.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:link controller="user" action="show" id="${orderInstance?.client?.id}">${orderInstance?.client?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.orderDate}">
				<li class="fieldcontain">
					<span id="orderDate-label" class="property-label"><g:message code="order.orderDate.label" default="Order Date" /></span>
					
						<span class="property-value" aria-labelledby="orderDate-label"><g:formatDate date="${orderInstance?.orderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.deliveryDate}">
				<li class="fieldcontain">
					<span id="deliveryDate-label" class="property-label"><g:message code="order.deliveryDate.label" default="Delivery Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryDate-label"><g:formatDate date="${orderInstance?.deliveryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.orderAmount}">
				<li class="fieldcontain">
					<span id="orderAmount-label" class="property-label"><g:message code="order.orderAmount.label" default="Order Amount" /></span>
					
						<span class="property-value" aria-labelledby="orderAmount-label"><g:fieldValue bean="${orderInstance}" field="orderAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.clientAmount}">
				<li class="fieldcontain">
					<span id="clientAmount-label" class="property-label"><g:message code="order.clientAmount.label" default="Client Amount" /></span>
					
						<span class="property-value" aria-labelledby="clientAmount-label"><g:fieldValue bean="${orderInstance}" field="clientAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="order.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${orderInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.pendingPayment}">
				<li class="fieldcontain">
					<span id="pendingPayment-label" class="property-label"><g:message code="order.pendingPayment.label" default="Pending Payment" /></span>
					
						<span class="property-value" aria-labelledby="pendingPayment-label"><g:fieldValue bean="${orderInstance}" field="pendingPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.payments}">
				<li class="fieldcontain">
					<span id="payments-label" class="property-label"><g:message code="order.payments.label" default="Payments" /></span>
					
						<g:each in="${orderInstance.payments}" var="p">
						<span class="property-value" aria-labelledby="payments-label"><g:link controller="payment" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
