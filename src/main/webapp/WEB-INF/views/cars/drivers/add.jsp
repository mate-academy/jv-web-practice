<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Set Driver</title>
</head>
<body>
<h1>Fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car by id <input type="text" name="car_id"><br>
    Driver by id <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
