<%--
  Created by IntelliJ IDEA.
  User: grabe
  Date: 23.05.2022
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="carId"><br>
    Driver id <input type="number" name="driverId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
