<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<h1>Add a driver to the car: </h1>

<form method ="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type=number" name="car_id"><br>
    Driver id <input type=number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
