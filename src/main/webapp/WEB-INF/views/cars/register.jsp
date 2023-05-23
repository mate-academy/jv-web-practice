<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registration</title>
</head>
<body>
<h1>Please fill the form below to register new car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/register">
  Model <input type="text" name="model"><br>
  Manufacturer Id <input type="text" name="manufacturer"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
