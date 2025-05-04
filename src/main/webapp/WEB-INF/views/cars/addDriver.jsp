<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id:</label><br>
    <input type="number" id="car_id" name="car_id" required><br>
    <label for="car_id">Driver id:</label><br>
    <input type="number" id="driver_id" name="driver_id" required><br><br>
    <button type="submit">Add driver</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p>
</body>
</html>

