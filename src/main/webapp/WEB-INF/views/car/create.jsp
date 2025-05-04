<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create car</title>
</head>
<body>
<h3>Write down values for a new car:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer id <input type="number" name="manufacturer_id" required><br>
  <button type="submit">Submit</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturers">list of manufacturers</a>
</body>
</html>
