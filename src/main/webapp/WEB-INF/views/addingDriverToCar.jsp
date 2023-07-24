<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver adding</title>
</head>
<body>
<h1>Please fill full the form below.</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID<input type="number" name="carId" required><br>
    Driver ID<input type="number" name="driverId" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>