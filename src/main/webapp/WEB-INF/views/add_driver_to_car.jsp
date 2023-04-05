<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Please enter driver and car IDs</h1>

<form method="POST" action="${pageContext.request.contextPath}/cars/add-driver">
  Car ID <input type="number" name="car_id"><br>
  Driver ID <input type="number" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
