<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Taxi Service</title>
</head>
<body>
<h3>Create a new driver:</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br>
  <label for="license_number">License number:</label><br>
  <input type="text" id="license_number" name="license_number" required><br>
  <br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>

