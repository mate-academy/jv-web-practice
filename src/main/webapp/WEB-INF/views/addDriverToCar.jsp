<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>ADD DRIVER TO CAR</h1>
<form name = "add" method = "post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="number" name="car_id" min="1"> <br>
    Driver id: <input type="number" name="driver_id" min="1"> <br>
    <input type="submit" value="ADD TO CAR">
</form>
<div>
    <button class="w3-btn w3-round-large" onclick="location.href='/index'">INDEX</button>
</div>
</body>
</html>
