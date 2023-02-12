<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>createDriver</title>
</head>
<body>
<h1>Driver registration</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  License <input type="text" name="license_number"><br>
  <button type="submit">Register</button>
</form>
</body>
</html>
