<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
  <form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
    car id<input type="number" name="car_id"><br>
    driver id<input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
