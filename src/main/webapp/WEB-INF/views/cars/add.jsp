<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>AddCars</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer <input type="number" name="manufacturer"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
