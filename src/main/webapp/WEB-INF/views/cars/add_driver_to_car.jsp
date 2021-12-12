<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Add Driver To Car</h1>
<br>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car Id <input type="number" name="car_id"><br>
    Driver ID <input type="number" name="driver_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
