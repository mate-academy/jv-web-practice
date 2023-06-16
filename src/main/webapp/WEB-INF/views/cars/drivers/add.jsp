<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/cars/addDriver">
    Car id: <input type="number" name="carId"><br>
    Driver id: <input type="number" name="driverId"><br>
    <button type="submit">Add Driver</button>
</form>
</body>
</html>
