
<%@ page import="gcsystemback.Order" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-order" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="order.client.label" default="Client" /></th>
					
						<g:sortableColumn property="orderDate" title="${message(code: 'order.orderDate.label', default: 'Order Date')}" />
					
						<g:sortableColumn property="deliveryDate" title="${message(code: 'order.deliveryDate.label', default: 'Delivery Date')}" />
					
						<g:sortableColumn property="orderAmount" title="${message(code: 'order.orderAmount.label', default: 'Order Amount')}" />
					
						<g:sortableColumn property="clientAmount" title="${message(code: 'order.clientAmount.label', default: 'Client Amount')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'order.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderInstanceList}" status="i" var="orderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderInstance.id}">${fieldValue(bean: orderInstance, field: "client")}</g:link></td>
					
						<td><g:formatDate date="${orderInstance.orderDate}" /></td>
					
						<td><g:formatDate date="${orderInstance.deliveryDate}" /></td>
					
						<td>${fieldValue(bean: orderInstance, field: "orderAmount")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "clientAmount")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
