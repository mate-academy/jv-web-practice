<%--
  Created by IntelliJ IDEA.
  User: olexa
  Date: 19.05.2022
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Hello! Fill the columns below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID: <input type="number" name="car_id">
  Driver ID: <input type="number" name="driver_id"><br>
  <br><button type="submit">Confirm</button>
</form>
</body>
</html>
