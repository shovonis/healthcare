<%@ page import="com.ris.healthcare.Individual" %>



<div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="individual.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${individualInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="individual.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${individualInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'SSN', 'error')} ">
	<label for="SSN">
		<g:message code="individual.SSN.label" default="SSN" />
		
	</label>
	<g:textField name="SSN" value="${individualInstance?.SSN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="individual.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${individualInstance?.dateOfBirth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="individual.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${individualInstance?.status}"/>

</div>

