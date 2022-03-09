<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<h2>
    Please indicate Driver ID and Car ID.
</h2>
<br>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="driverID"><h2>Driver ID</h2></label>
    <input type="number" id="driverID" name="driverID"><br><br>
    <label for="carID"><h2>Car ID</h2></label>
    <input type="number" id="carID" name="carID"><br><br>

    <br><br>
    <input type="submit" value="Add Driver to the Car">
    <input type="reset">
</form>

<h2><a href="/drivers/all">View all drivers to find his ID</a></h2>
</body>
</html>
