<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Car</title>
</head>
<body>
<h1>Create your Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car Name <input type="text" name="CarName"><br>
  Manufacturer Id <input type="number" name="ManufacturerId"><br>
  <button type="submit">Create Car</button>
</form>
</body>
</html>
