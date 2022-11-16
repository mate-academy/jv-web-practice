<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="driverName" placeholder="type driver name"><br>
  License number <input type="text" name="licenseNumber" placeholder="type driving license number"><br>
  <button type="submit">Register</button>
</form>
</body>
</html>
