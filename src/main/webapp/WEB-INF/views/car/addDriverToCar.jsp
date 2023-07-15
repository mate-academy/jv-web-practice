<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Driver to Car</title>
</head>
<body>
<h1>Please, fill the form for adding driver</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <input type="text" name="car_id"><br>
  Driver ID <input type="text" name="driver_id"><br>
  <button type="submit">Add driver</button>
</form>
</body>
</html>