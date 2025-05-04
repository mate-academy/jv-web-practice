<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>Please enter car id number and drivers id which you want to delete</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
    Car ID <input type="text" required name="carId"><br>
    Driver ID <input type="text" required name="driverId"><br>
    <button type="submit">Delete driver</button>
</form>
</body>
</html>