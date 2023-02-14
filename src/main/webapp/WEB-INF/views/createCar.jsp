<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>createCar</title>
</head>
<body>
<h1>Car registration</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Register</button>
</form>
</body>
</html>
