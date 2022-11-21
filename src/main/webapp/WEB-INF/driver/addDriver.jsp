<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add a new Driver</title>
</head>
<body>
<h1>Fill out the given form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name" required><br>
  LicenseNumber <input type="text" name="licenseNumber" required><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
