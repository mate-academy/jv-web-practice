<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Driver</title>
</head>
<body>
<h1>Create Driver</h1>
<form method="POST" action="${pageContext.request.contextPath}/drivers/add">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required><br><br>
  <label for="licenseNumber">License Number:</label>
  <input type="text" id="licenseNumber" name="license_number" required><br><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
