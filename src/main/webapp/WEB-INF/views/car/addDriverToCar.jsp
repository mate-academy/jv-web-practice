<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 24.11.2022
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
  <h1>Enter cars id and Drivers id</h1>
  <form method="post" name="${pageContext.request.contextPath}/car">
    Car id <input type="text" name="car_id">
    Driver id <input type="text" name="driver_id">
  <button type="submit">Save</button>
  </form>
</body>
</html>
