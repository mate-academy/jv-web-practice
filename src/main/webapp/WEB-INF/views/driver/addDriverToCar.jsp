<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill in all the fields</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id</label><br>
    <input type="text" id="car_id" name="car_id"><br>
    <label for="driver_id">Driver id</label><br>
    <input type="text" id="driver_id" name="driver_id"><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
