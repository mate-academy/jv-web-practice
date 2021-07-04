<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}">
  Car id <input type="number" name="car_id"><br>
  Driver id <input type="number" name="driver_id"><br>
  <button type="submit">Add</button>
  <h1></h1>
  <a type="button" href = "/drivers"> Show all drivers </a>
</form>
</body>
</html>
