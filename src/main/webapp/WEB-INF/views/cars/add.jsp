<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>Add car:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type = "text" name = "model"><br>
    Manufacturer id: <input type = "number" name = "manufacturerId" /><br>
    <button type = "submit">Add</button>
</form>
</body>
</html>
