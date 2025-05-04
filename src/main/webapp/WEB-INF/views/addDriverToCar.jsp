<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver To Car</title>
</head>
<body>
<h1>    Please fill form </h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver ID <input type="text" name="driver_id"><br>
  Car ID    <input type="text" name="car_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
