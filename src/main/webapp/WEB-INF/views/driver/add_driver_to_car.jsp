<%--
  Created by IntelliJ IDEA.
  User: oleg
  Date: 10.05.2022
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body><h2>
<form method="post" action="${pageContext.request.contextPath}/driver/add_driver_to_car">
    Driver ID: <input type="text" name="driver_id"><br>
    Car ID: <input type="text" name="car_id"><br>
    <button type="submit">Add driver to car</button>
</form>
</h2>
</body>
</html>
