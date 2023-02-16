<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>To add driver to car fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarId<input type="text" name="car_id"><br>
    DriverId<input type="text" name="driver_id"><br>
    <button type="submit">Add driver to car</button>
</form>

</body>
</html>
