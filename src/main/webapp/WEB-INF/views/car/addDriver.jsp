<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to Car</title>
</head>
<body>
<h1>Add your driver to Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car Id <input type="number" name="CarId"><br>
  Driver Id <input type="number" name="DriverId"><br>
  <button type="submit">add Driver</button>
</form>
</body>
</html>
