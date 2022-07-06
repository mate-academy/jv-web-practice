<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>INTERACTION</title>
</head>
<body>
<h1>CREATE CAR:</h1>

<form method="post" action="${pageContext.request.contextPath}/interaction/carRegister">
  Car model: <input type="text" name="model"><br>
  Car manufacturer: <input type="text" name="manufacturer_id"><br>
  <button type="submit">CONFIRM</button>
</form>
</body>
</html>
