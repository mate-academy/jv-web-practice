<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Car creation page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car model: <input type="text" name="model" required><br>
  Manufacturer ID: <input type="number" name="manufacturer" required><br>
  <button type="submit">CREATE</button>
</form>
<h2>Navigation:</h2>
<a href="${pageContext.request.contextPath}/cars">BACK to CARS</a><br>
<a href="${pageContext.request.contextPath}/index">BACK to START PAGE</a>
</body>
</html>
