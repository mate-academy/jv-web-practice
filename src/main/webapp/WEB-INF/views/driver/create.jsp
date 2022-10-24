<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Driver creating</title>
</head>
<body>
<h1>Create a new driver:</h1>
<form action="${pageContext.request.contextPath}/drivers/create" method="post">
  <label for="name">Driver name:</label>
  <input type="text" id="name" name="name" required><br><br>
  <label for="license_number">Driver license number:</label>
  <input type="number" id="license_number" name="license_number" required><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
