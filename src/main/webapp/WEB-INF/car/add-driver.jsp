<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="number" name="driverId"><br>
    Car ID <input type="number" name="carId"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>