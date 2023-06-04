<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Car</title>
</head>
<body>
<h1>Create Car form</h1>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create Car</button>
  </form>
</body>
</html>
