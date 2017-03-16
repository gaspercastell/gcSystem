<%@ page import="gcsystemback.OrderDetail" %>



<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'order', 'error')} ">
	<label for="order">
		<g:message code="orderDetail.order.label" default="Order" />
		
	</label>
	<g:select id="order" name="order.id" from="${gcsystemback.Order.list()}" optionKey="id" value="${orderDetailInstance?.order?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="orderDetail.product.label" default="Product" />
		
	</label>
	<g:select id="product" name="product.id" from="${gcsystemback.Product.list()}" optionKey="id" value="${orderDetailInstance?.product?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'size', 'error')} ">
	<label for="size">
		<g:message code="orderDetail.size.label" default="Size" />
		
	</label>
	<g:textField name="size" value="${orderDetailInstance?.size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="orderDetail.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${orderDetailInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'quantity', 'error')} ">
	<label for="quantity">
		<g:message code="orderDetail.quantity.label" default="Quantity" />
		
	</label>
	<g:field name="quantity" type="number" value="${orderDetailInstance.quantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'orderAmount', 'error')} ">
	<label for="orderAmount">
		<g:message code="orderDetail.orderAmount.label" default="Order Amount" />
		
	</label>
	<g:field name="orderAmount" value="${fieldValue(bean: orderDetailInstance, field: 'orderAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'clientAmount', 'error')} ">
	<label for="clientAmount">
		<g:message code="orderDetail.clientAmount.label" default="Client Amount" />
		
	</label>
	<g:field name="clientAmount" value="${fieldValue(bean: orderDetailInstance, field: 'clientAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailInstance, field: 'total', 'error')} ">
	<label for="total">
		<g:message code="orderDetail.total.label" default="Total" />
		
	</label>
	<g:field name="total" value="${fieldValue(bean: orderDetailInstance, field: 'total')}"/>
</div>

