<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<h1>Add Driver</h1>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="text" name="carId"><br>
  Driver id <input type="text" name="driverId"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
