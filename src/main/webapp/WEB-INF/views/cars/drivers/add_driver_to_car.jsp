<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Select driver you want to add</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id<input type="text" name="driver_id"><br>
    Car id<input type="number" name="car_id"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
