<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please, input relevant information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="car_id"><br>
    Driver`s id <input type="text" name="driver_id"><br>
    <button type="Submit">Confirm</button>
</form>
</body>
</html>
