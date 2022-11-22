<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver and Car</title>
</head>
<body>
<h1>Add driver to car</h1>

<form method="post" name="${pageContext.request.contextPath}/driver-to-car">
  Driver id <input type="text" name="driver_id">
  Car id = <input type="text" name="car_id">
  <button type="submit">Save</button>
</form>
</body>
</html>
