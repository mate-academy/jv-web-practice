<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver</title>
</head>
<body>
<h1>Add new Driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Driver name <input type="text" name="name"><br>
  Driver license <input type="text" name="license"><br>
  <button type="submit">Add new driver</button>
</form>
</body>
</html>
