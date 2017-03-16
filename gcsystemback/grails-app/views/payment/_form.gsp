<%@ page import="gcsystemback.Payment" %>



<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'order', 'error')} ">
	<label for="order">
		<g:message code="payment.order.label" default="Order" />
		
	</label>
	<g:select id="order" name="order.id" from="${gcsystemback.Order.list()}" optionKey="id" value="${paymentInstance?.order?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'pay', 'error')} ">
	<label for="pay">
		<g:message code="payment.pay.label" default="Pay" />
		
	</label>
	<g:field name="pay" value="${fieldValue(bean: paymentInstance, field: 'pay')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'pendingAmount', 'error')} ">
	<label for="pendingAmount">
		<g:message code="payment.pendingAmount.label" default="Pending Amount" />
		
	</label>
	<g:field name="pendingAmount" value="${fieldValue(bean: paymentInstance, field: 'pendingAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'paymentDate', 'error')} ">
	<label for="paymentDate">
		<g:message code="payment.paymentDate.label" default="Payment Date" />
		
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${paymentInstance?.paymentDate}" default="none" noSelection="['': '']" />
</div>

