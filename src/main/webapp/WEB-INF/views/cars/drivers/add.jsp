<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h4>Fill the form to add some driver to the car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id : <input type="number" name="carId"><br>
    Driver id : <input type="number" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
