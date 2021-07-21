<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Please fill all fields and press ENTER</h1>
<form action="${pageContext.request.contextPath}/cars/add" method="post">
    Model <input type="text" name="car_model"><br>
    Manufacturers id <input type="number" name="car_manufacturer_id"><br>
    <button type="submit">ENTER</button>
</form>
</body>
</html>
