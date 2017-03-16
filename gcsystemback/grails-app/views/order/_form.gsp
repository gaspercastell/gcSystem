<%@ page import="gcsystemback.Order" %>



<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'client', 'error')} ">
	<label for="client">
		<g:message code="order.client.label" default="Client" />
		
	</label>
	<g:select id="client" name="client.id" from="${gcsystemback.User.list()}" optionKey="id" value="${orderInstance?.client?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderDate', 'error')} ">
	<label for="orderDate">
		<g:message code="order.orderDate.label" default="Order Date" />
		
	</label>
	<g:datePicker name="orderDate" precision="day"  value="${orderInstance?.orderDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryDate', 'error')} ">
	<label for="deliveryDate">
		<g:message code="order.deliveryDate.label" default="Delivery Date" />
		
	</label>
	<g:datePicker name="deliveryDate" precision="day"  value="${orderInstance?.deliveryDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderAmount', 'error')} ">
	<label for="orderAmount">
		<g:message code="order.orderAmount.label" default="Order Amount" />
		
	</label>
	<g:field name="orderAmount" value="${fieldValue(bean: orderInstance, field: 'orderAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'clientAmount', 'error')} ">
	<label for="clientAmount">
		<g:message code="order.clientAmount.label" default="Client Amount" />
		
	</label>
	<g:field name="clientAmount" value="${fieldValue(bean: orderInstance, field: 'clientAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="order.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${gcsystemback.OrderStatus?.values()}" keys="${gcsystemback.OrderStatus.values()*.name()}" value="${orderInstance?.status?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'pendingPayment', 'error')} ">
	<label for="pendingPayment">
		<g:message code="order.pendingPayment.label" default="Pending Payment" />
		
	</label>
	<g:field name="pendingPayment" value="${fieldValue(bean: orderInstance, field: 'pendingPayment')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'payments', 'error')} ">
	<label for="payments">
		<g:message code="order.payments.label" default="Payments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${orderInstance?.payments?}" var="p">
    <li><g:link controller="payment" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="payment" action="create" params="['order.id': orderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'payment.label', default: 'Payment')])}</g:link>
</li>
</ul>

</div>

