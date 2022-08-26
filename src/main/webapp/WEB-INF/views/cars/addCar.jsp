<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding car settings</title>
</head>
<body>
<h1>Please choose a car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addCar">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
