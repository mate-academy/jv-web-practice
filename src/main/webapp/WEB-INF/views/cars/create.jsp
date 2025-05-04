<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create new car</title>
</head>
<body>
<h1>Create new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car model <input type="text" name="model"><br>
  Manufacturer id <input type="text" name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
