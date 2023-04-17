<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Car</title>
</head>
<body>
<h1>Please enter your data</h1>

<form method="post" action="${pageContext.request.contextPath}/car/create">
  Car model <input type="text" name="Car model"><br>
  Manufacturer id <input type="tetx" name="Manufacturer id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
