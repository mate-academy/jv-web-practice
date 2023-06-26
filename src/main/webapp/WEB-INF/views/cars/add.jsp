<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's model <input type="text" name="model"><br>
    Car's manufacturer <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>

<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="car_id"><br>
    Driver id <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
