<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding the driver to the car</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id # <input type="number" name="driver_id" value="0"><br>
    Car id # <input type="number" name="car_id" value="0"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
