<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Driver</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Get me back to start!</a>
<h1>Please fill the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name" required><br>
  License Number <input type="text" name="licenseNumber" required><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
