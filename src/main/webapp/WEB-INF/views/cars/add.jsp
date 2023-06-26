<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car Registration</title>
</head>
<body>
<h1>Car Registration</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's model <input type="text" name="car_model"><br>
    Car's manufacturer <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
