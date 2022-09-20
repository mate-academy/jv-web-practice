<%--
  Created by IntelliJ IDEA.
  User: kirill
  Date: 19.09.2022
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="text" name="driver_id">
    Car id <input type="text" name="car_id">
    <button type="submit">Add driver to this car</button>
</form>
</body>
</html>
