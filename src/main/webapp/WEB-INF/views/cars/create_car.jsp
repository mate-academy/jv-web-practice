<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="car_model"><br>
    Manufacturer ID <input type="number" name="car_manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
