<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver ID <input type="text" name="driver_id"><br>
  Car ID <input type="text" name="car_id"><br>
  <button type="submit">Add driver to car</button>
</form>
</body>
</html>
