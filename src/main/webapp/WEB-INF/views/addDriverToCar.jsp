<%--
  Created by IntelliJ IDEA.
  User: 38067
  Date: 25.11.2022
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Form to adding a driver to a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="text" name="car_id"><br>
    Driver id: <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
