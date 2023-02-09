<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to the car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="text" name="driverId"><br><br>
    <input type="hidden" name="carId" value="${id}">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
