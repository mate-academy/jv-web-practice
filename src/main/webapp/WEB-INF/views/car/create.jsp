<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Create car</title>
</head>
<body>
<h1>Enter car information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model <input type="text" name="car_model" required><br>
  Manufacturer id <input type="number" name="manufacturer_id" required><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
