<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<h1>Add driver to a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car_id <input type="text" name="car_id"><br>
    Driver_id <input type="text" name="driver_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
