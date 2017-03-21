<%@ page import="gcsystemback.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="product.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${gcsystemback.Product$ProducType?.values()}" keys="${gcsystemback.Product$ProducType.values()*.name()}" value="${productInstance?.type?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="product.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${productInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'sizes', 'error')} ">
	<label for="sizes">
		<g:message code="product.sizes.label" default="Sizes" />
		
	</label>
	<g:select name="sizes" from="${gcsystemback.Size.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.sizes*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'private_price', 'error')} ">
	<label for="private_price">
		<g:message code="product.private_price.label" default="Privateprice" />
		
	</label>
	<g:field name="private_price" value="${fieldValue(bean: productInstance, field: 'private_price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'public_price', 'error')} ">
	<label for="public_price">
		<g:message code="product.public_price.label" default="Publicprice" />
		
	</label>
	<g:field name="public_price" value="${fieldValue(bean: productInstance, field: 'public_price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="product.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${productInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'catalogo', 'error')} ">
	<label for="catalogo">
		<g:message code="product.catalogo.label" default="Catalogo" />
		
	</label>
	<g:select id="catalogo" name="catalogo.id" from="${gcsystemback.Catalog.list()}" optionKey="id" value="${productInstance?.catalogo?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'catalog_page', 'error')} ">
	<label for="catalog_page">
		<g:message code="product.catalog_page.label" default="Catalogpage" />
		
	</label>
	<g:field name="catalog_page" type="number" value="${productInstance.catalog_page}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="product.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${productInstance?.image}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'colors', 'error')} ">
	<label for="colors">
		<g:message code="product.colors.label" default="Colors" />
		
	</label>
	<g:select name="colors" from="${gcsystemback.Color.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.colors*.id}" class="many-to-many"/>
</div>

