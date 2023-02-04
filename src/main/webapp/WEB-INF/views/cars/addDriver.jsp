<%--
  Created by IntelliJ IDEA.
  User: Oleksii
  Date: 04.02.2023
  Time: 02:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
  Car id: <input type="text" name="car_id"><br>
  Driver id: <input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
