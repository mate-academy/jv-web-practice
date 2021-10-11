<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Taxi Service - Adding driver to car</h1>
<h2>To add a driver to car, please, fulfill the form below:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id: <input type="text" name="driver_id"><br>
    Car id: <input type="text" name="car_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
