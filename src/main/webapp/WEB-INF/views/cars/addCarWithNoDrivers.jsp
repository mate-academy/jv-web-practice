<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding a car</title>
</head>
<body>
<h1>Fill the fields below</h1>

<form method="post" action="${pageContext.request.contextPath}/addcar">
  Model <input type="text" name="model"><br>
  Manufacturer ID <input type="text" name="manufacturer"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
