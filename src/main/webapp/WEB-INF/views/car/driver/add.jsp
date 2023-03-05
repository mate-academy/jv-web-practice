
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/car/driver/add">
  Driver id <input type="text" name = "driver_id"> <br><br>
  Car id    <input type="text" name = "car_id"> <br><br>
  <button type="submit"> ADD driver</button>
</form>
</body>
</html>
