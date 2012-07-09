<%@ page import="ducksboard.api.demo.Demo" %>



			<div class="control-group fieldcontain ${hasErrors(bean: demoInstance, field: 'value1', 'error')} ">
				<label for="value1" class="control-label"><g:message code="demo.value1.label" default="Value1" /></label>
				<div class="controls">
					<g:textField name="value1" value="${demoInstance?.value1}"/>
					<span class="help-inline">${hasErrors(bean: demoInstance, field: 'value1', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: demoInstance, field: 'value2', 'error')} ">
				<label for="value2" class="control-label"><g:message code="demo.value2.label" default="Value2" /></label>
				<div class="controls">
					<g:textField name="value2" value="${demoInstance?.value2}"/>
					<span class="help-inline">${hasErrors(bean: demoInstance, field: 'value2', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: demoInstance, field: 'value3', 'error')} ">
				<label for="value3" class="control-label"><g:message code="demo.value3.label" default="Value3" /></label>
				<div class="controls">
					<g:textField name="value3" value="${demoInstance?.value3}"/>
					<span class="help-inline">${hasErrors(bean: demoInstance, field: 'value3', 'error')}</span>
				</div>
			</div>

