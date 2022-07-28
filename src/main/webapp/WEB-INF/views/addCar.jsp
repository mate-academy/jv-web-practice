<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding Car</title>
</head>
<body>
<h1>Hello, mates!</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car Model <input type="text" name="carModel">
  Manufacturer ID <input type="text" name="manufacturerId">
  <button type="submit">Post</button>
</form>

</body>
</html>
