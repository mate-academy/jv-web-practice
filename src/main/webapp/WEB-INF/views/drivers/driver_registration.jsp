<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new driver</title>
</head>
<body>
<h1>Driver registration form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  NAME <input type="text" name="driverName"><br>
  LICENSE NUMBER <input type="text" name="licenseNumber"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
