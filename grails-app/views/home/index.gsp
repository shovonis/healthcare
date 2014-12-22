<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>:::Home</title>
    <meta name="layout" content="main"/>
</head>

<body>

    <h1>Welcome to HealthCare
        <span>&nbsp;</span>
    </h1>

    <div class="snippet">
        <ul>
            <li>
                <g:link url="[action: 'index', controller: 'individual']">Individual Home</g:link>
            </li>
            <li>
                <g:link url="[action: 'index', controller: 'user']">User Home</g:link>
            </li>
            <li>
                <g:link url="[action: 'index', controller: 'admin']">Admin Home</g:link>
            </li>
        </ul>
    </div>


</body>
</html>