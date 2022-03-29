<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating new manufacturer</title>
</head>
<body>
<h1>New manufacturer:</h1>
<form method= "post" action = "${pageContext.request.contextPath}/manufacturers/create">
    Name : <input type = "text" required name = "name"><br>
    <br>
    Country : <input type = "text" required name = "country"><br>
    <br>
    <button type="submit">Create</button>
</form>
<br><a href="/index">To main</a>
</body>
</html>
