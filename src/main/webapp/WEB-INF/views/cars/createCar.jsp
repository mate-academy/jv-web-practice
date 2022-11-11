<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Get me back to start!</a>
<h1>Please fill the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model <input type="text" name="model" required><br>
  Manufacturer Id <input type="number" name="manufacturerId" required><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
