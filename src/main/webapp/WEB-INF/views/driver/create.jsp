<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>New driver:</h1>
<form method = "post" action="${pageContext.request.contextPath}/drivers/create">
    Name : <input type = "text" required name = "name"><br>
    <br>
    License number : <input type = "text" required name = "license number"><br>
    <br>
    <button type="submit">Create</button>
</form>
<br><a href="/index">To main</a>
</body>
</html>
