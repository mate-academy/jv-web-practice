<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Driver name:  <input type="text" name="name"><br>
  License: <input type="text" name="licenseNumber"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
