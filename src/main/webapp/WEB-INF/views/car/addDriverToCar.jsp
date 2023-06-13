<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="number" name="driver_id"><br>
    Car id <input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
