<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>INTERACTION</title>
</head>
<body>
<h1>CREATE MANUFACTURER:</h1>

<form method="post" action="${pageContext.request.contextPath}/interaction/registerManufacturer">
  Manufacturer name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">CONFIRM</button>
</form>
</body>
</html>
