<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
  Car ID <input type="number" name="carId"><br>
  Driver ID <input type="number" name="driverId"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
