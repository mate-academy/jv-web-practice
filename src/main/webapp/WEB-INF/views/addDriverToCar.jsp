<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/car/addDriverToCar">
  Driver ID <input type="text" name="driver_id"><br/>
  Car ID <input type="text" name="car_id"><br/>
  <button type="submit">Add driver to car</button>
</form>
</body>
</html>
