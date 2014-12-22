<%@ page import="com.ris.healthcare.user.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="user.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${userInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="user.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="user.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="user.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
    <label for="userName">
        <g:message code="user.userName.label" default="User Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="userName" required="" value="${userInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'image', 'error')} ">
    <label for="image">
        <g:message code="user.image.label" default="Image"/>

    </label>
    <input type="file" id="image" name="image"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'providerCode', 'error')} required">
    <label for="providerCode">
        <g:message code="user.providerCode.label" default="Provider Code"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="providerCode" required="" value="${userInstance?.providerCode}"/>

</div>

