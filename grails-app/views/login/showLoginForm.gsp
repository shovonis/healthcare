<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="false" %>

<html>
<head>
    <title>Login</title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:if test="${flash.message}">
    <div style="color: red display: block">${flash.message}</div>
</g:if>

<g:form class="basic-grey">
    <h1>Please Login to HealthCare
        <span>Please Login</span>
    </h1>
    <label>
        <span>User Name :</span>
        <g:textField name="user.userName" placeholder="user name"/>
    </label>

    <label>
        <span>Password :</span>
        <g:passwordField name="user.password" placeholder="password"/>
    </label>

    <label>
        <span>Provider Code</span>
        <g:textField name="user.providerCode" placeholder="password"/>
    </label>

    <label>
        <span>&nbsp;</span>
        <g:actionSubmit class="button" value="Login" action="verifyUserLogin"/>
        <g:link action="">Forgot password? Please Contact</g:link>
    </label>
</g:form>
</body>
</html>
