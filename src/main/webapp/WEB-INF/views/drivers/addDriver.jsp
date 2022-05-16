<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add_Driver_To_Car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <br>Car_id <input type="number" name="car_id"><br>
    <br>Driver_id <input type="number" name="driver_id"><br>
    <button type="submit">Submit</button>
</form>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>
