<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register new driver</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
  Manufacturer name <input type="text" name="manufacturer_name"><br>
  Manufacturer county <input type="text" name="manufacturer_country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>