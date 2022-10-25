<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers to car</title>
</head>
<body>
<h1>Please enter car id number and drivers id which you want to add</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="text" required name="carId"><br>
    Driver ID <input type="text" required name="driverId"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
