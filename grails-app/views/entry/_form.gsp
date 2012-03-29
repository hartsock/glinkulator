<%@ page import="glink.Entry" %>



<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="entry.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${entryInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="entry.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${entryInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="entry.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" value="${entryInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="entry.category.label" default="Category" />
		
	</label>
	<g:select id="category" name="category.id" from="${glink.Category.list()}" optionKey="id" value="${entryInstance?.category?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

