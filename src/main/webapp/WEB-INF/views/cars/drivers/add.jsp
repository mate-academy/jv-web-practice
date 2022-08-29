<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver adding</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID: <input type="number" name="carId"><br>
    Driver ID <input type="number" name="driverId"><br>
    <button type="submit"> Confirm </button>
</form>
</body>
</html>
