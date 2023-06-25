<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer_id <input type="text" name="manufacturer_id"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>