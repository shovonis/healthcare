<%--
  Created by IntelliJ IDEA.
  User: rifatul.islam
  Date: 12/11/14
  Time: 3:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Form</title>
</head>

<body>
<g:form>
    Email        : <g:textField name="email"/>
    Password     : <g:passwordField name="password"/>
    <g:actionSubmit value="Login" action="verifyUserLogin"/>
</g:form>
</body>
</html>