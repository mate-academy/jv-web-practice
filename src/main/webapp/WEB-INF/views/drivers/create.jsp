<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Please provide new driver's information:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="name"><br>
    License number: <input type="text" name="license_number"><br>
    <button type="submit">Create a driver</button>
</form>
</body>
</html>
