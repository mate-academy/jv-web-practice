<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver name  <input type="text" name="driver_name"><br>
    Car model  <input type="text" name="car_model"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
