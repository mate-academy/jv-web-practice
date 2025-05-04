<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create a driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name" required><br>
  License number <input type="text" name="license_number" required>
  <button type="submit">Create</button>
</form>
</body>
</html>
