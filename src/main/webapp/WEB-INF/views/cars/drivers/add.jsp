<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  CAR_ID <input type="text" name="car_id"><br>
  DRIVER_ID <input type="text" name="driver_id"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
