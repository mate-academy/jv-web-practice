<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car ID <input type="text" name="carId"><br>
    Driver ID <input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
