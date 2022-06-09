<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a car</title>
</head>
<body>
<h2>Set parameters to create a car:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="car_model"><br>
    Manufacturer ID <input type="number" name="car_manufacturer"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
