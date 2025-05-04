<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>Add driver:</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name: <input type = "text" name = "name"><br>
    License number: <input type = "text" name = "licenseNumber" /><br>
    <button type = "submit">Add</button>
</form>
</body>
</html>
