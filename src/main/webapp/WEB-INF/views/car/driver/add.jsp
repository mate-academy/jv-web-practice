<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car Id <input type="number" name="car_id" required><br>
    Driver id <input type="number" name="driver_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
