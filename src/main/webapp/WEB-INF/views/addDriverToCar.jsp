<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h3>Add new driver to Car</h3>
<p>Fill in the form below</p>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car's id <input type="text" name="car_id"><br>
    Driver's id <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
<a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>

</html>