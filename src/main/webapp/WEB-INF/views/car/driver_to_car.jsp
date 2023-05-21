<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver <input type="text" name="driver_id"><br>
    Car <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
