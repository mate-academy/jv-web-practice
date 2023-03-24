<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Add driver</title>
</head>

<body>
<h2>Add driver</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id</label><br>
    <input type="text" id="car_id" name="car_id"><br>
    <label for="driver_id">Driver id</label><br>
    <input type="text" id="driver_id" name="driver_id"><br><br>
    <input type="submit" value="Submit">
    <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
