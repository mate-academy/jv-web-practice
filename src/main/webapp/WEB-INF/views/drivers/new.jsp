<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Driver</title>
</head>
<body>
<h1>New driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/new">
    Name: <input type="text" name="name"></br>
    License number: <input type="text" name="licenseNumber"> </br>
    <button type="submit">Create</button>
</form>
</body>
</html>
