<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver into the car</title>
</head>
<body>
<h1>Enter a unique driver ID, and unique car ID:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add-driver">
    Unique driver ID <input type="text" name="driverId"><br>
    Unique car ID <input type="text" name="carId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>