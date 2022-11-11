<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Get me back to start!</a>
<h1>Please fill the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car Id <input type="number" name="carId" required><br>
    Driver Id <input type="number" name="driverId" required><br>
    <button type="submit">Add Driver To Car</button>
</form>
</body>
</html>
