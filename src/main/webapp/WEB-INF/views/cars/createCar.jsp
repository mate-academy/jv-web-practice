<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create_Car</title>
</head>
<body>
<h1>Create car </h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  <br>Car's model: <input type="text" name="model"><br>
  <br>Manufacturer id: <input type="text" name="manufacturer_id"><br>
  <button type="submit">Submit</button>
</form>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>