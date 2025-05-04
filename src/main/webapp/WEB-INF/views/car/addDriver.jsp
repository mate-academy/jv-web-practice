<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Adding Driver to Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="number" name="car_id"><br>
  Driver id <input type="number" name="driver_id"><br>
  <button type="submit">add driver</button>
</form>
</body>
</html>
