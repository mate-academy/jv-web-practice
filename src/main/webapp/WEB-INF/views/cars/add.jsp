<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new car</title>
</head>
<body>
<h1>Please fill out the form to create a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" required name="model"><br>
  Manufacturer <input type="number" required name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
