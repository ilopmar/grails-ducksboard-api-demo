
<%@ page import="ducksboard.api.demo.Demo" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'demo.label', default: 'Demo')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-demo" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="demo.value1.label" default="Value1" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: demoInstance, field: "value1")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="demo.value2.label" default="Value2" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: demoInstance, field: "value2")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="demo.value3.label" default="Value3" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: demoInstance, field: "value3")}</td>
				
			</tr>
		
		</tbody>
	</table>
	<div class="buttons">
		<g:form>
			<g:hiddenField name="id" value="${demoInstance?.id}" />
			<span class="button"><g:actionSubmit class="btn btn-primary" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
			<span class="button"><g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
		</g:form>
	</div>
</section>

</body>

</html>
