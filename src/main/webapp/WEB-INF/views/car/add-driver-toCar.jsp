<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Please enter data:</h1>

<form method="post" action="${pageContext.request.contextPath}/car/add-driver-toCar">
  Car id <input type="text" name="CarId"><br>
  Driver id <input type="text" name="DriverId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
