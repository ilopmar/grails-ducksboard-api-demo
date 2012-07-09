
<%@ page import="ducksboard.api.demo.Demo" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'demo.label', default: 'Demo')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-demo" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="value1" title="${message(code: 'demo.value1.label', default: 'Value1')}" />
			
				<g:sortableColumn property="value2" title="${message(code: 'demo.value2.label', default: 'Value2')}" />
			
				<g:sortableColumn property="value3" title="${message(code: 'demo.value3.label', default: 'Value3')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${demoInstanceList}" status="i" var="demoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${demoInstance.id}">${fieldValue(bean: demoInstance, field: "value1")}</g:link></td>
			
				<td>${fieldValue(bean: demoInstance, field: "value2")}</td>
			
				<td>${fieldValue(bean: demoInstance, field: "value3")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${demoInstanceTotal}" />
	</div>
</section>

</body>

</html>
