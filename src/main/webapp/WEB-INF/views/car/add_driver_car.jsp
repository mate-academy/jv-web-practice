<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please form the below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Driver id <input type="number" name="driver_id" required><br>
    Car id<input type="number" name="car_id" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${pageContext.request.contextPath}/cars/all">See all about cars</a>
</body>
</html>
