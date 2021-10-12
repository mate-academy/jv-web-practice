<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill in form below to add driver to car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver`s id <input type="text" name="driver_id"><br>
    Car`s id <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
