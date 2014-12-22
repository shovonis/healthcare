<%@ page import="com.ris.healthcare.individual.Individual" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'individual.label', default: 'Individual')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
    <div class="ui-tabs-nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/home')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-individual" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="firstName"
                                  title="${message(code: 'individual.firstName.label', default: 'First Name')}"/>

                <g:sortableColumn property="lastName"
                                  title="${message(code: 'individual.lastName.label', default: 'Last Name')}"/>

                <g:sortableColumn property="SSN" title="${message(code: 'individual.SSN.label', default: 'SSN')}"/>

                <g:sortableColumn property="dateOfBirth"
                                  title="${message(code: 'individual.dateOfBirth.label', default: 'Date Of Birth')}"/>

                <g:sortableColumn property="status"
                                  title="${message(code: 'individual.status.label', default: 'Status')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${individualInstanceList}" status="i" var="individualInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show"
                                id="${individualInstance.id}">${fieldValue(bean: individualInstance, field: "firstName")}</g:link></td>

                    <td>${fieldValue(bean: individualInstance, field: "lastName")}</td>

                    <td>${fieldValue(bean: individualInstance, field: "SSN")}</td>

                    <td><g:formatDate date="${individualInstance.dateOfBirth}"/></td>

                    <td>${fieldValue(bean: individualInstance, field: "status")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${individualInstanceCount ?: 0}"/>
        </div>
    </div>
</body>
</html>
