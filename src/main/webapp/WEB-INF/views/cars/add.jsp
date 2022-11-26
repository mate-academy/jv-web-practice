<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Form for creating the car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model: <input type="text" name="car_model"><br>
    Manufacturer id: <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>