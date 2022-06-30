<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver adding</title>
</head>
<body>
<h1>Please input CarID and driverID for adding</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    Car ID<input type="text" name="carId"><br>
    Driver ID<input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
    <a href="${pageContext.request.contextPath}/index">go back</a>
</form>
</body>
</html>