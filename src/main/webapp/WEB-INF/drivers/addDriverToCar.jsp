<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
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
