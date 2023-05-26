<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add car</title>
</head>
<body>
<h2>Create a new car:</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer id <input type="text" name="manufacturer_id">
  <button type="submit">Confirm</button>
</form>
</body>
</html>
