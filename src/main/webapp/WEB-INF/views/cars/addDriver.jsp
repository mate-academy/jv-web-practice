<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill out the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
  Car id <input type="text" name="carId"><br>
  Driver id <input type="text" name="driverId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
