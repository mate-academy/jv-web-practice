<%--
  Created by IntelliJ IDEA.
  User: kyryl
  Date: 23.05.2022
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Select driver you want to add to specific car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id<input type="number" name="driver_id"><br>
  Car id<input type="number" name="car_id"><br>
  <button type="submit">Add driver to car</button>
</form>
</body>
</html>