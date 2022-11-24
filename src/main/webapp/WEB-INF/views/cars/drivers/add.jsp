<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Enter cars id and Drivers id</h1>
<form method="post" name="${pageContext.request.contextPath}/car">
  Car id <input type="text" name="car_id" required>
  Driver id <input type="text" name="driver_id" required>
  <button type="submit">Save</button>
</form>
</body>
</html>