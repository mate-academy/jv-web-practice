<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>Add driver:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
    Car id: <input type = "number" name = "carId"><br>
    Driver id: <input type = "number" name = "driverId" /><br>
    <button type = "submit">Add</button>
</form>
</body>
</html>
