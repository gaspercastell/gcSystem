<%@ page import="gcsystemback.Size" %>



<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="size.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${sizeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'number', 'error')} ">
	<label for="number">
		<g:message code="size.number.label" default="Number" />
		
	</label>
	<g:field name="number" type="number" value="${sizeInstance.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'isClothes', 'error')} ">
	<label for="isClothes">
		<g:message code="size.isClothes.label" default="Is Clothes" />
		
	</label>
	<g:checkBox name="isClothes" value="${sizeInstance?.isClothes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'isShoes', 'error')} ">
	<label for="isShoes">
		<g:message code="size.isShoes.label" default="Is Shoes" />
		
	</label>
	<g:checkBox name="isShoes" value="${sizeInstance?.isShoes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sizeInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="size.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${sizeInstance?.active}" />
</div>

