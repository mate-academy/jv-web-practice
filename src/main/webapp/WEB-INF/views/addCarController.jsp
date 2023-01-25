<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
  <h1>Add Driver</h1>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
      Model <input type="text" name="model"><br>
      Manufacturer Id <input type="text" name="manufacturer_id"><br>
      <button type="submit">Add</button>
  </form>
</body>
</html>
