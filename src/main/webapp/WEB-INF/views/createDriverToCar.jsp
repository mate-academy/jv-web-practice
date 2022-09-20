<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form below to add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" name="carId" required><br>
    Driver ID <input type="number" name="driverId" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
