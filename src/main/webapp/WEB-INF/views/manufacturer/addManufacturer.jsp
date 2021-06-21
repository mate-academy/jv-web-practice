<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Please, crete new manufacturer`s record!</h1>
<form name="loginForm" method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input type="text" name="name"/> <br/>
    Country: <input type="text" name="country"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
