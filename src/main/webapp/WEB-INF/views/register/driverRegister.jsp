<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create driver</title>
</head>
<body>
<h1>Please add your data to work as driver</h1>

<form method="post" action="${pageContext.request.contextPath}/driver">
  Name <input type="text" name="driverName">
  License <input type="text" name="license">
  <button type="submit">Save</button>
</form>
</body>
</html>
