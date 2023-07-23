<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver adding</title>
</head>
<body>
<h2>Adding driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID<input type="number" name="carId" required><br>
    Driver ID<input type="number" name="driverId" required><br>
    <button type="submit">Add</button>
</form>
<p><a href="${pageContext.request.contextPath}/cars">Back</a></p>
</body>
</html>
