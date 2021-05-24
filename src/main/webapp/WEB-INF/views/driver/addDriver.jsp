<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please, crete new driver`s record!</h1>
<form name="loginForm" method="post" action="${pageContext.request.contextPath}/drivers/add">
    Nme: <input type="text" name="name"/> <br/>
    License number: <input type="text" name="license_number"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
