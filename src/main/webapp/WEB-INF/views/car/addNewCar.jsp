<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new car</title>
</head>
<body>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
      Model <input type="text" name="carModel" placeholder="type your model"><br>
      Manufacturer <input type="text" name="carManufacturer" placeholder="type car manufacturer"><br>
      <button type="submit">Register</button>
  </form>
</body>
</html>
