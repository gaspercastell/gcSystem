
<%@ page import="gcsystemback.OrderDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderDetail.label', default: 'OrderDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="orderDetail.order.label" default="Order" /></th>
					
						<th><g:message code="orderDetail.product.label" default="Product" /></th>
					
						<g:sortableColumn property="size" title="${message(code: 'orderDetail.size.label', default: 'Size')}" />
					
						<g:sortableColumn property="color" title="${message(code: 'orderDetail.color.label', default: 'Color')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'orderDetail.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="orderAmount" title="${message(code: 'orderDetail.orderAmount.label', default: 'Order Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderDetailInstanceList}" status="i" var="orderDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderDetailInstance.id}">${fieldValue(bean: orderDetailInstance, field: "order")}</g:link></td>
					
						<td>${fieldValue(bean: orderDetailInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: orderDetailInstance, field: "size")}</td>
					
						<td>${fieldValue(bean: orderDetailInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: orderDetailInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: orderDetailInstance, field: "orderAmount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderDetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
