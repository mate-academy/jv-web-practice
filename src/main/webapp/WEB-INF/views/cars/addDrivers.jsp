<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <br>Car ID <input type="number" name="carId"><br>
    <br>Driver ID <input type="number" name="driverId"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
