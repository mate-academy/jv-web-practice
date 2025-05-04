<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="number" name="driver_id">
    Car id <input type="number" name="car_id">
    <button type="submit">Add</button>
</form>
</body>
</html>
