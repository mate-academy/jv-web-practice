<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to a car</title>
</head>
<body>
<h1>Add new driver to a car</h1>
<form method="post" action="${pageContext.request.contextPath}/views/addDriverToCar">
    Driver`s Id: <input type="text" name="driverId"> <br>
    Car`s Id: <input type="text" name="carId"> <br>
    <button type="submit">Save</button>
</form>
</body>
</html>
