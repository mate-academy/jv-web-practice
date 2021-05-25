<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/addDrivers">
    Driver ID <label>
    <input type="number" name="driver_id">
</label><br>
    Car ID <label>
    <input type="number" name="car_id">
</label><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
