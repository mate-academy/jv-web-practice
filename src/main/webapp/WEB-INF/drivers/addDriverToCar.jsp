<%--
  Created by IntelliJ IDEA.
  User: anastasiia_variichuk
  Date: 25.06.2023
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method = "post"  action = "${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type = "text" name = "carId"><br>
  Driver id <input type="text" name = "driverId"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
