<%@ page import="com.ris.healthcare.individual.Individual" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'individual.label', default: 'Individual')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/home')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                           args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-individual" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list individual">

        <g:if test="${individualInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="individual.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue
                        bean="${individualInstance}" field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${individualInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="individual.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue
                        bean="${individualInstance}" field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${individualInstance?.SSN}">
            <li class="fieldcontain">
                <span id="SSN-label" class="property-label"><g:message code="individual.SSN.label"
                                                                       default="SSN"/></span>

                <span class="property-value" aria-labelledby="SSN-label"><g:fieldValue bean="${individualInstance}"
                                                                                       field="SSN"/></span>

            </li>
        </g:if>

        <g:if test="${individualInstance?.dateOfBirth}">
            <li class="fieldcontain">
                <span id="dateOfBirth-label" class="property-label"><g:message code="individual.dateOfBirth.label"
                                                                               default="Date Of Birth"/></span>

                <span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate
                        date="${individualInstance?.dateOfBirth}"/></span>

            </li>
        </g:if>

        <g:if test="${individualInstance?.status}">
            <li class="fieldcontain">
                <span id="status-label" class="property-label"><g:message code="individual.status.label"
                                                                          default="Status"/></span>

                <span class="property-value" aria-labelledby="status-label"><g:fieldValue
                        bean="${individualInstance}" field="status"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: individualInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${individualInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>

</body>
</html>
