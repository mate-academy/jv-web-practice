<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Select driver you want to add to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's id <br><input type="number" name="driver_id" min="1" required><br>
    Car's id <br><input type="number" name="car_id" min="1" required><br><br>
    <button type="submit">Add driver to car</button>
    <button type="reset">Cancel</button>
</form>
<form action="${pageContext.request.contextPath}/index" target="_blank">
    <button>Back to main</button>
</form>
</body>
</html>